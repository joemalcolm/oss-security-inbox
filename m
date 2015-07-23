X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["16757" "Thursday" "23" "July" "2015" "04:13:28" "+0200" "Solar Designer" "solar@openwall.com" "<20150723021328.GA2298@openwall.com>" "412" "Re: [oss-security] Security issues in LXC (CVE-2015-1331 and CVE-2015-1334)" nil nil nil "7" "2015072302:13:28" "[oss-security] Security issues in LXC (CVE-2015-1331 and CVE-2015-1334)" (number mark "U       solar@openwa Jul 23  412/16757 " thread-indent "\"Re: [oss-security] Security issues in LXC (CVE-2015-1331 and CVE-2015-1334)\"\n") "<2ECE9D9EEF1F524185270138AE23265954E56C4A@S0MSMAIL112.arc.local>" ("<2ECE9D9EEF1F524185270138AE23265954E56C4A@S0MSMAIL112.arc.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11389 invoked by uid 550); 23 Jul 2015 02:13:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11366 invoked from network); 23 Jul 2015 02:13:44 -0000
Message-ID: <20150723021328.GA2298@openwall.com>
References: <2ECE9D9EEF1F524185270138AE23265954E56C4A@S0MSMAIL112.arc.local>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
In-Reply-To: <2ECE9D9EEF1F524185270138AE23265954E56C4A@S0MSMAIL112.arc.local>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 23 Jul 2015 04:13:28 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security issues in LXC (CVE-2015-1331 and CVE-2015-1334)
To: oss-security@lists.openwall.com

--wac7ysb48OaltWcw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 22, 2015 at 04:16:57PM +0000, Fiedler Roman wrote:
> To help others discover similar issues, not only in container virtualization
> e.g. LXC, Docker, Vserver,  OpenVZ, but also other programs, I've written up
> the basic analysis methods used during testing in [1]. Detection examples
> for the not yet disclosed vulnerabilities are omitted and will be included
> in future release.
> 
> Roman
> 
> [1] https://service.ait.ac.at/security/2015/LxcSecurityAnalysis.txt (.html)

Good stuff!  To have it archived along with oss-security postings, I've
attached a copy of your LxcSecurityAnalysis.txt to this message.

Alexander

--wac7ysb48OaltWcw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="LxcSecurityAnalysis.txt"

Preamble:
=========

Title: LXC Security Analysis
Keywords: LXC container virtualisation security evaluation results
          vulnerabilities analysis methods Linux privilege-escalation
          examples
Associated CVEs: CVE-2015-1331, CVE-2015-1334
URL: https://service.ait.ac.at/security/2015/LxcSecurityAnalysis.txt (.html)
Authors: Roman Fiedler <roman.fiedler a-t ait.ac.at>
         AIT Austrian Institute of Technology
         Digital Safety & Security Department
         http://www.ait.ac.at/
Version: 20150722-2


Introduction:
=============

This document describes various analysis methods applied during
routine LXC security testing. The purpose is to enable security
researchers to analyze and improve software quality using quite
simple means also available on most production setups.

Considerations for test selection:

* Userspace tools for startup, maintenance, shutdown are quite
  simple to analyze and understand, so number of capable attackers
  might be higher. They are also specific to only one or some
  container virtualization technologies, so number of developers,
  security engineers working on them is much smaller.

* Kernel code audit/analysis is quite an effort. Also attacker
  will have hard time: discovery and exploit development also
  hard for him, risk to crash kernel and hence being detected
  quite high. As many of those bugs would also yield local root
  privilege escalation in many operation modes (not just with
  LXC), quite a few people are working on that topic raising the
  bar for new findings.

Test methods described in this document:

* Analysis of passed host resources to guest: File descriptors,
  memory, capabilities mostly using /proc file system and small
  helper tools.

* Analysis of syscall logs: Symlink vulnerabilities, access
  to untrusted resources by privileged process. For filtering
  regular expressions give a good overview to select interesting
  targets for closer analysis, e.g. source code review.

* Trinity syscall fuzzing of guest: As kernel security analysis
  is more complex and likelihood of findings lower (too many eyes
  searching already), so just apply lightweight fuzzing. Try to
  kick in findings into the kernel bug tracking process and let
  them resolve those issues.


Analysis of Host/Guest Interaction Tools:
=========================================

* Analysis of passed host resources to guest:

This step of analysis is necessary as the container may run untrusted
or malicious code, that should not be able to access any resources
of the process invoking LXC actions. Resources of interest can
be:

  * Open file descriptors to host files
  * TTY of interactive terminal starting LXC action
  * Memory content of host process
  * Capabilities of host process

Methods:

  * File descriptors leaks:

At first a listing of all open file descriptors of the most risky
processes in guest is required. Those processes are "init" and
the processes injected by other means, e.g. "/bin/sh" from lxc-attach.
For testing purposes, it might be necessary to replace a "normal"
executables, e.g. /bin/init, with a rouge variant, that does not
modify or release any resources to see the information as it would
be immediately after entering the LXC execution context.

The analysis of the /proc filesystem is usually sufficient. Sometimes
distinction between filedescriptor referencing host or guest resource
is not trivial, in that case comparison of referenced inode will
help. Here two guest descriptors, one refering to a PTY on the
host, the other one to a guest PTY.

# stat -L -c "%d:%i" /proc/self/fd/0
12:5
# stat -L -c "%d:%i" /proc/self/fd/0
36:3

  * TTY access:

Each process can have a controlling TTY, opening of /dev/tty will
return a file descriptor to it. If a host process does not care
to initialize a new controlling TTY before invoking the guest
process, guest will have access to the controlling TTY of the
process invoking the LXC tool, hence may control the process outside
the guest. Issues like that were discussed e.g. in [7].

  * Host process memory content:

If host process becomes visible in the guest context before performing
an execve and thus flushing all guest virtual memory (VM) resources,
a rogue process may read /proc/[pid]/mem or via PTRACE. The easiest
way to detect that is to check the /proc/[pid]/exe link. While
referencing a host executable, e.g. lxc-attach, the VM was not
yet flushed and might be accessible. Such a state can also be
turned into a file descriptor leak: by opening the exe, guest
gets access to the host file, other issues may then allow to turn
that into read-write access and implant arbitrary code on host
side.

As execve usually occurs quite rapidly when entering the guest
context, it might be necessary to slow down the process, e.g.
by use of debugger, recompilation with sleep() calls.

  * Host process capabilities:

As the host process has to have higher privileges compared to
the guest process, it was allowed to see the host file system
and enter the guest context, the process has to drop them while
entering. The process will reside in both pid spaces of host and
guest, hence /proc/[pid]/status can be consulted on host and in
guest. Any leaks of that kind can be exploited, if guest process
manages to inject code into that process, e.g. using PTRACE, or
make the process execute arbitrary code via other means.

Analysis examples:

  * lxc-start:

To see the proc data as init would see it immediately after start
and before doing any modifications to it, create custom /sbin/init
to list whole /proc/1 entry directly and start the container.

cat <<EOF > sbin/init
#!/bin/sh
ls -alR /proc/1 > /proc.log
EOF
chmod 0755 sbin/init

This listing does not show any problematic FDs leaked to the guest
for LXC version present on Ubuntu Trusty.

The TTY leak via /dev/tty open is an issue for lxc-start, but
only when not invoked in daemon mode. The same issue was already
raised for lxc-attach, see [7] for more information.

Replacing init with

/root/TtyPushbackSignaling --NoSignal -- "touch /file-on-host" < /dev/tty

and running

lxc-start --name [name] &

will create /file-on-host on host. Plain foreground start does
not seem affected as TTY input seems to be cleaned up before process
termination althogh the component doing that was not checked,
hence there still may be side effects depending on the input data,
e.g use of escape characters. This still affects e.g. Ubuntu Trusty.

  * lxc-attach:

With same test as above, some file descriptors referencing host
files show up.

    * Leak of caller TTY to guest:

When lxc-attach is run from interactive terminal, guest may inject
arbitrary data into TTY stream. The commands are executed after attach
completes. The issue was already raised in [7]. A workaround is
to execute only "screen lxc-attach ..." to get a fresh PTY just
for attaching. The issue affects all LXC versions, but attaching
to an untrusted container is deemed bad practice, so administrators
should just not do that.

    * Host process capabilities leak:

Undisclosed vulnerability


* Analysis of syscall logs:

Before performing any deeper code analysis, searching syscall
traces for obvious errors and highly risky access patterns is
quite useful to narrow down the number of relevant targets for
analysis. The simplest way to do that is to use "strace" running
as root on host as it is allowed to attach to any process.

  * Check for files, directories writable by other user:

Search the syscall logs for calls interacting with the file system,
e.g.

grep -E -e '^(\[pid [0-9]+\] )?(access|chdir|creat|mkdir|mount|open|readlink|stat|symlink|unlink)(at)?\('

Any operation performed by process with different privilege level
on data writable by other process is highly suspicious, operations
on data just influencable by other process may be checked later
on. Bear in mind, that for multiple operations, e.g. stat and
open, that a malicious user might change the resource in between
(time of check time of use vulnerability TOCTOU).

After selection of targets, verify that program did not temporarily
drop privileges before access, e.g. by searching for setuid, setresuid
and alike.

grep -E -e '^(\[pid [0-9]+\] )?(set|sete|setfs|setres)(uid|gid)\('

Especially for container virtualization, where namespace switching
is quite common, also include those calls:

grep -E -e '^(\[pid [0-9]+\] )?((chroot|pivot_root|setns)\(|open(at)?\(".*(gid_map|uid_map|attr/(current|exec)))'


Analysis examples:

  * lxc-start check:

To have simpler log, replace /sbin/init of guest with /bin/true.
Trace all syscalls:

strace -s256 -f /usr/bin/lxc-start --name [name] 2>&1 | tee /tmp/test.log

Watch out for use of any untrusted resources from new container
rootfs, those are any access operations on the container rootfs
main location, e.g. /var/lib/lxc/[name]/root, or the intermediate
mount at /usr/lib/x86_64-linux-gnu/lxc. Both locations are quite
visible using the regular expression from the methods section
above. Results:

    * Host arbitrary file creation CVE-2015-1331: [2][3]

While host /run/lock is world writable, all lxc tools just attempt
to create the required directory and lock file.

[pid 20275] mkdir("/", 0755)            = -1 EEXIST (File exists)
[pid 20275] mkdir("/run/", 0755)        = -1 EEXIST (File exists)
[pid 20275] mkdir("/run/lock/", 0755)   = -1 EEXIST (File exists)
[pid 20275] mkdir("/run/lock/lxc//", 0755) = -1 EEXIST (File exists)
[pid 20275] mkdir("/run/lock/lxc//var/", 0755) = -1 EEXIST (File exists)
[pid 20275] mkdir("/run/lock/lxc//var/lib/", 0755) = -1 EEXIST (File exists)
[pid 20275] mkdir("/run/lock/lxc//var/lib/lxc", 0755) = -1 EEXIST (File exists)
[pid 20275] ...
[pid 20275] open("/run/lock/lxc//var/lib/lxc/test-guest", O_RDWR|O_CREAT, 0600) = 4

Thus any file can be created with root privileges, e.g. files
controlling software behavior, e.g. /etc/suid-debug, /forcefsck,
/etc/ssh/sshd_not_to_be_run, or creation of directories in unexpected
places. To exploit the vulnerability, an unprivileged user on
host just has to set an appropriate symbolic link before root
creating or starting any container on the host.

    * Undisclosed host root file system access from guest [6]



  * lxc-attach check:

The method is the same as above. Results:

    * Undisclosed host code execution with uid=0:

Various flaws can be used in a combined symlink or overmount attack
(see CVE-2015-1334 [4][5]) together with yet undisclosed vulnerability
to run arbitrary code on the host.

As shown below, the parent process changes the UID to the guest
uid-namespace uid-0 (which is not the host uid=0), but does not
drop the all privileges, see setuid manpage on that. Hence is
still allowed to modify the apparmor policy (changeprofile). The
process is already running in the guest scope, a setns call before
the calls shown below has done that. Hence it is operating on
the untrusted guest content:

[pid 19997] open("/proc/15975/ns/user", O_RDONLY|O_CLOEXEC) = 3
...
[pid 19997] setns(3, 0)                 = 0
[pid 19997] close(3)                    = 0
...
[pid 19997] clone(Process 19998 attached
 <unfinished ...>
...
[pid 19997] <... clone resumed> child_stack=0x7ffd9b084960, flags=CLONE_PARENT|SIGCHLD) = 19998
...
[pid 19998] setgid(0)                   = 0
[pid 19998] setgroups(0, [])            = 0
[pid 19998] setuid(0)                   = 0
...
[pid 19998] open("/proc/23/attr/current", O_WRONLY) = 3
[pid 19998] write(3, "changeprofile lxc-container-default", 35) = 35
[pid 19998] close(3)
...
[pid 19998] open("/proc/self/status", O_RDONLY) = 3
[pid 19998] ...
[pid 19998] read(3, "Name:\tlxc-attach\nState:\tR ...
[pid 19998] close(3)                    = 0
[pid 19998] prctl(PR_SET_SECCOMP, 0x2, 0x7fed603a9190, 0x7fed603a93a0, 0) = 0
...
[pid 19998] execve("/bin/sh", ["/bin/sh"], [/* 19 vars */]) = 0

If a malicious guest unmounted the guest /proc system, the policy
write will not reach the target, thus the security policy is not
applied. The process can also be abused to open any existing file
and write the "changeprofile..." string into it. Also seccomp
will not be enabled if an attacker controlled /proc/self/status
file does not indicate support for it.

Solutions to solve should include using the /proc system outside
the guest as the process is visible here also. See [8] for patch.

Together with another undisclosed vulnerability (see [4]), this
can also be turned into host uid=0 code execution.


  * lxc-stop check:

Same method. No problematic calls found.


Trinity Syscall Fuzzing of Guest:
=================================

* Method:

To get just an estimation, how stable your kernel is regarding
an container virtualized guest, standard syscall fuzzer "trinity"
can be used inside guest. Usually it can be installed via the
packet manager, e.g. "apt-get install trinity" on Ubuntu systems.

Trinity is not intended to be run as root, as it might reboot
or crash the system without detection of any vulnerabilities just
due to the high privileges of the invoker. Hence to run it as
root and avoid it terminating on change-uid syscall or long delays
when trinity attempts to perform sleep operations, following command
line was used:

/usr/bin/trinity --monochrome --quiet --children 32 --exclude clock_nanosleep --exclude setresuid --exclude setresuid16 --exclude setreuid --exclude setreuid16 --exclude setuid --exclude setuid16 --dangerous

Trinity will quite quickly mess up the /dev directory by renaming
or unlinking /dev/zero and alike. Applying "chown root.root . dev"
from outside guest to the guest root improves this situation.
This can only be done after startup of the container, otherwise
startup will fail as changes to "dev" will be attempted.

Trinity will hang from time to time, so an additional monitor script
increase the effective run time in unattended tests:

(while true; do sleep 120; pkill -KILL trinity; done) < /dev/null > /dev/null 2>&1 &
while true; do mv /tmp/trinitydir/test.log /tmp/TrinityLastRun.log; rm -rf /tmp/trinitydir; mkdir -p /tmp/trinitydir && cd /tmp/trinitydir && trinity --monochrome --quiet --children 32 --exclude clock_nanosleep --exclude setresuid --exclude setresuid16 --exclude setreuid --exclude setreuid16 --exclude setuid --exclude setuid16 --dangerous > test.log 2>&1; tail -30 test.log; sleep 3; done


* Results:

While trinity will quite quickly crash the host when run in a
privileged guest, standard testing did not show any crashes related
to memory safety (buffer overflows, use after free, paging problems),
just deadlocks. As this would just ease the detection of an attacker
and limit his opportunities, this issues will be tracked down
and handled when there is sufficient time (funding) for analysis.
Currently known issues:

  * cgroups deadlock with scheduler fail (not yet analyzed)
  * futex problem (not yet analyzed)


References:
===========

[1] LXC Homepage: https://linuxcontainers.org/
[2] Arbitrary file creation bug report: https://bugs.launchpad.net/ubuntu/+source/lxc/+bug/1470842
[3] CVE-2015-1331 arbitrary file creation: https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-1331
[4] CVE-2015-1334 bug report (undisclosed): https://bugs.launchpad.net/ubuntu/+source/lxc/+bug/1475050
[5] CVE-2015-1334 Apparmor/SElinux evasion: https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-1334
[6] Bug report host file system access (undisclosed): https://bugs.launchpad.net/ubuntu/+source/lxc/+bug/1476662
[7] Issue on TTY command injection: http://www.openwall.com/lists/oss-security/2014/12/15/5
[8] LXC fix announcement 2015-07-22: https://lists.linuxcontainers.org/pipermail/lxc-users/2015-July/009697.html
[9] Open source security list announcement 2015-07-22: http://www.openwall.com/lists/oss-security/2015/07/22/4
[10] USN-2675-1 2015-07-22: http://www.ubuntu.com/usn/usn-2675-1/

--wac7ysb48OaltWcw--
