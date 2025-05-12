Received: (qmail 16323 invoked by uid 550); 12 May 2025 15:24:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16290 invoked from network); 12 May 2025 15:24:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1747063470; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=r+RNhGVlgyJYWC3MOCi+L9Awb34oDiMTH1yzREUeN3w=;
	b=o4pRttKu4aNRuqVza3az/88bKlqZf72dg9F6HMP6LMW8+Id5TSuvt18X26OnVFvllUMNph
	roflWyDleCFE4hCBcAAkRfSB/KJtBl0Ox+H7DSC3X7gbGeyqYiFqFGx5Ji6P2mS/tzmmqW
	D7nQbctUlQRbKro9b49QbgsE5O5Jc9c=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1747063470;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=r+RNhGVlgyJYWC3MOCi+L9Awb34oDiMTH1yzREUeN3w=;
	b=tWIsCmbKSoLz5Dqb6KHHFIPLPUpNKH9zz2DnWM/7oihikaW9MtlESCiqFLGlbewY+BSmag
	KdY+0JsqMnFMHLDA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1747063470; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=r+RNhGVlgyJYWC3MOCi+L9Awb34oDiMTH1yzREUeN3w=;
	b=o4pRttKu4aNRuqVza3az/88bKlqZf72dg9F6HMP6LMW8+Id5TSuvt18X26OnVFvllUMNph
	roflWyDleCFE4hCBcAAkRfSB/KJtBl0Ox+H7DSC3X7gbGeyqYiFqFGx5Ji6P2mS/tzmmqW
	D7nQbctUlQRbKro9b49QbgsE5O5Jc9c=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1747063470;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=r+RNhGVlgyJYWC3MOCi+L9Awb34oDiMTH1yzREUeN3w=;
	b=tWIsCmbKSoLz5Dqb6KHHFIPLPUpNKH9zz2DnWM/7oihikaW9MtlESCiqFLGlbewY+BSmag
	KdY+0JsqMnFMHLDA==
Date: Mon, 12 May 2025 17:24:26 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aCISrQTbLQjaxBZS@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wi6MT1cnXJlX+60b"
Content-Disposition: inline
Subject: [oss-security] screen: Multiple Security Issues in Screen (mostly affecting release
 5.0.0 and setuid-root installations)

--wi6MT1cnXJlX+60b
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="+ehj30zAjJLI/FRp"
Content-Disposition: inline
Date: Mon, 12 May 2025 17:24:26 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: screen: Multiple Security Issues in Screen (mostly affecting release
 5.0.0 and setuid-root installations)


--+ehj30zAjJLI/FRp
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

these issues in Screen have been shared with the distros mailing list on
2025-04-30 and publication is due today. We also offer a rendered
version of this report on our blog [1].

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In July 2024, the upstream Screen maintainer asked us [2] if we could
have a look at the current Screen code base. We treated this request
with lower priority, since we already had a cursory look at Screen a few
years earlier, without finding any problems. When we actually found time
to look into it again, we were surprised to find a local root exploit in
the Screen 5.0.0 major version update affecting distributions that ship
it as setuid-root (Arch Linux and NetBSD). We also found a number of
additional, less severe issues that partly also affect older Screen
versions still found in the majority of distributions.

Attached to this email you can find two sets of patches for the issues
described in this report, one for screen-4.9.1 and another for
screen-5.0.0. These patch sets apply against the screen-4.9.1 and
screen-5.0.0 release tarballs, respectively. Due to difficulties in the
communication with upstream we do not currently have detailed
information about bugfixes and releases published on their end.

The next section provides an overview of the Screen configurations and
versions found on common Linux and UNIX distributions. Section 3)
discusses each security issue we discovered in detail. Section 4) takes
a look at possible further issues in Screen's setuid-root
implementation. Section 5) gives general recommendations for the
improvement of Screen's security posture. Section 6) points out problems
we encountered during the coordinated disclosure process for these
issues. Section 7) provides an affectedness matrix which gives a quick
overview of the situation on various Linux and UNIX systems.

2) Overview of Screen Configurations and Versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In August 2024 a version 5.0.0 major release of Screen was published by
upstream. By now Arch Linux, Fedora 42 and NetBSD 10.1 ship this new
version of Screen. A lot of refactoring changes made their way into this
Screen release that are in some cases dating back more than ten years.
Some of the issues discussed in this report have only been introduced in
the 5.0.0 release of Screen, while others also affect Screen 4.9.1 (and
older), which is still the version found in the majority of Linux and
UNIX distributions at the time of writing.

Any source code references in this report are based on the upstream
5.0.0 release tag [3], unless noted otherwise. Affectedness information
is provided for both the current 5.0.0 release and the more widespread
4.9.1 Screen release for each vulnerability discussed below.

NOTE: At the time of writing we often experienced HTTP 502 "Bad Gateway"
errors trying to access Screen's Git web front end. Retrying a few
seconds later usually resolved the error.

About the Screen Multi-User Mode
--------------------------------

Screen offers a multi-user mode which allows to attach to Screen
sessions owned by other users in the system (given the proper
credentials). These multi-user features are only available when Screen
is installed with the setuid-root bit set. This configuration of Screen
results in highly increased attack surface, because of the complex
Screen code that runs with root privileges in this case.

A Screen multi-user session is identified by its name, which needs to
have a `<user>/` prefix. The following command line would create such a
session:

    user1$ screen -S user1/my-multi-user-session

To manage access to a multi-user session, Screen maintains access
control lists (acls) that can be configured in Screen's configuration
file (`~/.screenrc`), or by sending commands to a running Screen session
(see `screen(1)` man page [4]). These acls are based on the account
names of other users and can optionally be protected by a password.
Access can be restricted to "read-only", a mode in which no input can be
passed to the terminal.

Of the systems we looked into, only Arch Linux, FreeBSD and NetBSD
install Screen with the setuid-root bit set. On Gentoo Linux the
setuid-root bit is optionally assigned if the "multiuser" USE flag is
set. Some distributions install Screen with a setgid bit assigned to let
it run with specific group credentials. This is the case on Gentoo Linux
by default, which installs Screen as setgid-utmp, allowing Screen to
create login records in the system-wide utmp database. Fedora Linux
installs Screen as setgid-screen, which allows Screen to place sockets
into a system-wide directory in `/run/screen`.

3) Security Issues
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

3.a) Local Root Exploit via `logfile_reopen()` (CVE-2025-23395)
---------------------------------------------------------------

This issue affects Screen 5.0.0 when it runs with setuid-root
privileges. The function `logfile_reopen()` [5] does not drop privileges
while operating on a user supplied path. This allows unprivileged users
to create files in arbitrary locations with `root` ownership, the
invoking user's (real) group ownership and file mode 0644. All data
written to the Screen PTY will be logged into this file. Also already
existing files can be abused for logging in this manner: the data will
be appended to the file in question, but the file mode and ownership
will be left unchanged.

Screen correctly drops privileges when it initially opens the logfile.
The privilege escalation becomes possible as soon as Screen believes it
is necessary to reopen the logfile. Screen checks this by calling
`stolen_logfile()` [6] before writing to the file. The call to
`logfile_reopen()` happens when the link count of the originally opened
logfile drops to zero, or if it unexpectedly changes in size. This
condition can be triggered at will on the end of the unprivileged user.

This is a reproducer which shows how to achieve a basic local root
exploit on an affected system:

    # create a Screen session using a custom logfile path
    (shell1) user$ screen -Logfile $HOME/screen.log
    # enter the key combination to enable logging to the configured path
    (screen) user$ <ctrl-a> H
=20=20=20=20
    # in another shell remove the logfile that Screen just created and
    # replace it by a symlink to a privileged location
    (shell2) user$ rm $HOME/screen.log; ln -s /etc/profile.d/exploit.sh \
        $HOME/screen.log
=20=20=20=20
    # back in the Screen session, echo an exploit command which will be log=
ged to
    # the now redirected logfile.
    #
    # This needs to be done via `echo` for adding a leading newline to prev=
ent the
    # bash prompt from breaking the exploit. Similarly the trailing semicol=
on
    # is necessary to prevent following control characters from becoming pa=
rt of
    # the shell command.
    (screen) user$ echo -e "\nchown $USER /root;"
=20=20=20=20
    # now perform a new login as root and watch the exploit being executed.
    # you will likely see a range of shell errors during login as well.
    root# ls -lhd /root
    drwxr-x--- 5 user root 4.0K Dec 30  2020 .

This is just one naive approach to achieve a local root exploit, which
is not very well hidden (because of strange error messages) and requires
the actual `root` user to login to trigger it. There are likely many
other ways to exploit this, however, for example by writing new
configuration files for tools like `sudo`, or by appending code to
privileged shell scripts found in /usr/bin and similar locations.

### Bugfix

The problem was introduced via an old commit 441bca708bd [7], which has
only now become part of the 5.0.0 release. In this commit the
`lf_secreopen()` function was removed, which was considered unneeded.

Patch 0001 in the attached screen-5.0.0-patches.tar.gz addresses the
issue by reintroducing the secure file handling during logfile reopen.

### Affected Distributions

#### Arch Linux

Arch Linux is fully affected by this issue, since it ships the version
5.0.0 release and assigns the setuid-root bit. Screen is not installed
by default on Arch, however.

#### Fedora Linux

The affected 5.0.0 version is only found in the recently released Fedora
42. Screen runs with setgid-screen credentials there, to be able to
write in the `/run/screen` directory. A private directory with mode 0700
is created in there for each user that runs a Screen multi-user session.
Due to this, the exploit will not allow to write in other users' session
directories, it will only be possible to create files directly in
`/run/screen`. The only attack vector we can imagine here is to cause a
local DoS scenario by claiming the names of other users' session
directories, should they not yet exist. Another attack vector could be
to try and fill up the free disk space of the /run file system (a TMPFS)
to break other system services.

#### Gentoo Linux

Gentoo Linux is not affected in its stable Screen ebuild, which is still
based on Screen version 4.9.1.

When using Gentoo's unstable 'app-misc/screen-9999' ebuild, then the
affected version 5.0.0 will be installed, however. If the "multiuser"
USE flag is also set, then the setuid-root bit will be applied,
resulting in a fully vulnerable Screen.

Without this USE flag, Screen runs as setgid-utmp on Gentoo Linux, which
allows to use this exploit to overwrite the `/var/log/wtmp` database.
This makes it possible to violate the integrity of the database or even
to craft login entries which could adversely influence other privileged
programs in the system that rely on this information.

#### FreeBSD

FreeBSD still uses version 4.9.1. If Screen were to be upgraded to 5.0.0
then FreeBSD would be affected as well, since Screen is installed as
setuid-root by default.

#### NetBSD

On NetBSD the affected Screen 5.0.0 version can be installed and it will
by default run with setuid-root privileges. This makes it fully affected
by the issue.

3.b) TTY Hijacking while Attaching to a Multi-User Session (CVE-2025-46802)
---------------------------------------------------------------------------

This issue is found in the `Attach()` function when the `multiattach`
flag is set (i.e. Screen attempts to attach to a multi-user session).
The function performs a `chmod()` [8] of the current TTY to mode 0666.
The path to the current TTY is stored in the `attach_tty` string:

    if ((how =3D=3D MSG_ATTACH || how =3D=3D MSG_CONT) && multiattach) {
        /* snip */
        if (chmod(attach_tty, 0666))
            Panic(errno, "chmod %s", attach_tty);
        tty_oldmode =3D tty_mode;
    }

Fortunately the TTY path which is calculated within Screen is
sufficiently probed for correctness. In particular, `isatty()` needs to
be true for FD 0 (which is used for determining the TTY path) and the
resulting path needs to reside in /dev. Otherwise this `chmod()` would
have led to another local root exploit.

The original TTY mode is restored towards the end of the function in
line 284 [9]. We are not completely sure about the purpose of this
temporary permission change, maybe it is supposed to allow the Screen
daemon of the target session (which might have different credentials) to
access the client's TTY for the purposes of the attach procedure.

The issue with this temporary TTY mode change is that it introduces a
race condition allowing any other user in the system to open the
caller's TTY for reading and writing for a short period of time. We made
some simple tests based on Linux's inotify API, and we managed to open
affected TTYs every second or third attempt using a simple Python script
this way.

The impact of this issue is that an attacker can intercept data typed
into the TTY and also inject data into it. An attacker could attempt to
mislead the owner of the TTY into entering a password, or gain other
sensitive information. Also, control sequences can be injected into the
affected TTY which adds further possibilities to confuse the victim or
to exploit issues in an involved terminal emulator.

There also exist return paths in the `Attach()` function where the
original mode is never restored again. This happens in line 160 [10],
for instance, where the process explicitly exits if the target session
is not found and the "quiet" command line argument has been set. A
simple reproducer of this aspect is as follows:

    # inspect the current TTY permissions, which are safe
    user$ ls -l `tty`
    crw--w---- 1 user tty 136, 1 Feb  5 12:18 /dev/pts/1
    # attempt to attach to some non-existing session of the root user.
    # note that this only works if the target user's session directory (e.g.
    # in $HOME/.screen) already exists, otherwise the logic terminates early
    # and the `chmod()` does not happen.
    user$ screen -r -S root/some-session -q
    # observe the now unsafe TTY permissions
    user$ ls -l `tty`
    crw-rw-rw- 1 user tty 136, 1 Feb  5 12:19 /dev/pts/1

The `Panic()` function, which is mostly used in `Attach()` to stop
process execution, correctly restores the old TTY mode [11]. Only code
paths that use `return` or `eexit()` suffer from this missing TTY mode
restore.

### Bugfix

We assume that the problematic `chmod()` calls are most likely only
remnants of past times, when this insecure approach was used to grant
the target Screen session access to the new client's PTY. These days
Screen passes the PTY file descriptor securely via the UNIX domain
socket to the target session.

Thus to fix this, the temporary `chmod()` to mode 666 can be dropped.
This is what is done in patch 0001 in the attached
screen-4.9.1-patches.tar.gz and patch 0004 in the
screen-5.0.0-patches.tar.gz.

Shortly before the publication of this report it was pointed out to us
that this patch likely breaks some reattach use cases [12] in Screen. We
can confirm this problem, but at the same time found out that this
specific use case was obviously already broken before, even in Screen
4.9.1 [13]. For this reason we decided not to move the publication date
again or to adjust this patch in a hurry with uncertain results. The
patch still fixes the security issue and upstream can now fix this
regression, that already seems to have existed earlier, in the open.

### Affected Distributions

Unlike the previous issue, this one is not limited to the current 5.0.0
release. The observed behaviour has been present in Screen versions
since at least the year 2005. All Linux distributions and BSDs we
checked suffer from this, if they provide multi-user support in Screen
by installing it setuid-root.

This issue theoretically also affects Screen if it is *not* installed
setuid-root, because the caller always has permission to modify the mode
of its own TTY. Screen refuses to continue the operation, however, if
the target session is not owned by the caller and no root privileges are
available. The problematic code still triggers when a user attempts for
some reason to join a multi-user session owned by itself. An example
invocation that leads to this would be `screen -r -S $USER/some-session
-q`. Systems that are affected by this lighter variant of the issue are
marked as partly affected in section 7).

3.c) Screen by Default Creates World Writable PTYs (CVE-2025-46803)
-------------------------------------------------------------------

In Screen version 5.0.0 the default mode of pseudo terminals (PTYs)
allocated by Screen was changed from 0620 to 0622, thereby allowing
anyone to write to any Screen PTYs in the system. Security-wise this
results in some of the issues that have been outlined in issue 3.b),
without the information leak aspects, however.

The history of the default PTY mode in Screen is rather complex. Let's
have a look at the situation in version 4.9.1 (and a lot of older
versions):

- There is a 0622 default mode in the code in process.c line 207 [14].
  This is only a fallback that should not become active unless the code
  is compiled in unusual ways.
- A default mode of 0620 is applied in configure.ac line 811 [15], which
  results in a safe default when compiling Screen using autotools.
- In acconfig.h line 81 [16] the following is stated:
=20=20
  > define PTYMODE if you do not like the default of 0622, which allows pub=
lic write to your pty.
=20=20
  Thus in this version there is an inconsistency between the default
  mode on autoconf level and the default on source code level, but in
  the end the (safe) autoconf default wins.

Now let's look at the situation in Screen version 5.0.0:

- The configure.ac file was rewritten from scratch in commit df1c012227 [17=
].
  This change drops the 0620 default mode on autoconf level.
- In a follow-up commit 78a961188f7 [18] the pty-mode configure switch
  was reintroduced, this time with default mode 0622.
- Thus in version 5.0.0 there is no longer a mismatch between the source
  code level default and the autoconf level default, but the default is
  now unsafe.

### Bugfix

We couldn't find any Screen release notes for version 5.0.0, except for
a few ChangeLog entries. It seems it was not a deliberate decision to
change the default PTY Mode to 0622.

Patch 0002 in the attached screen-5.0.0-patches.tar.gz addresses the
issue by restoring the safe default PTY mode in the configure.ac script.
Note that you will need to run `autoreconf` to make the change
effective.

We recommend to packagers to actively pass the configure switch
`--with-pty-mode=3D0620` to make this choice explicit, also on older
releases of Screen.

### Affected Distributions

Gentoo Linux and Fedora Linux pass an explicit safe `--with-pty-mode` to
Screen's configure script. For distributions other than the ones listed
as affected below, we did not check if they are either doing the same,
or if they are relying on the safe default present in older Screen
releases.

#### Arch Linux

On Arch Linux the package build does not pass the `--with-pty-mode`
switch, resulting in the new default being applied, thus making Screen
on current Arch Linux vulnerable to this issue.

#### NetBSD

NetBSD is affected by this issue the same way as Arch Linux is.

3.d) File Existence Tests via Socket Lookup Error Messages (CVE-2025-46804)
---------------------------------------------------------------------------

This is a minor information leak when running Screen with setuid-root
privileges that is found in older Screen versions, as well as in version
5.0.0. The code in screen.c starting at line 849 [19] inspects the
resulting `SocketPath` with root privileges, and provides error messages
that allow unprivileged users to deduce information about the path that
would otherwise not be available.

An easy way to achieve this is by using the `SCREENDIR` environment
variable. Following is an example that works on current Arch Linux:

    # this can be used to test whether /root/.lesshst exists and is a regul=
ar file
    user$ SCREENDIR=3D/root/.lesshst screen
    /root/.lesshst is not a directory.
=20=20=20=20
    # this allows to deduce that the directory /root/.cache exists
    user$ SCREENDIR=3D/root/.cache screen
    bind (/root/.cache/1426.pts-0.mgarch): Permission denied
=20=20=20=20
    # this tells us that the path /root/test does not exist
    user $ SCREENDIR=3D/root/test screen
    Cannot access /root/test: No such file or directory

### Bugfix

Patch 0002 in the attached screen-4.9.1-patches.tar.gz and patch 0005 in
the attached screen-5.0.0-patches.tar.gz address the problem by only
outputting generic error messages when Screen is installed setuid-root
and when the target path is not controlled by the real UID of the
process.

### Affected Distributions

All distributions we considered are affected.

3.e) Race Conditions when Sending Signals (CVE-2025-46805)
----------------------------------------------------------

In socket.c lines 646 [20] and 882 [21] time-of-check/time-of-use
(TOCTOU) race conditions exist with regards to sending signals to user
supplied PIDs in setuid-root context.

The `CheckPid()` function [22] drops privileges to the real user ID and
tests whether the kernel allows to send a signal to the target PID using
these credentials. The actual signal is sent later via `Kill()`,
potentially using full root privileges. By this time, the PID that was
previously checked could have been replaced by a different, privileged
process. It might also be possible to trick the (privileged) Screen
daemon process into sending signals to itself, since a process is always
allowed to send signals to itself.

Currently this should only allow to send SIGCONT and SIGHUP signals,
thus the impact is likely only in the area of a local denial of service
or a minor integrity violation.

The issue affects both Screen version 5.0.0 and older version 4
releases, when Screen is installed setuid-root. This issue results from
an incomplete fix [23] for CVE-2023-24626: before this incomplete fix,
the signals in question could be sent to arbitrary processes even
without winning a race condition.

### Bugfix

Patch 0003 in the attached screen-4.9.1-patches.tar.gz and patch 0006 in
the attached screen-5.0.0-patches.tar.gz address the problem by sending
the actual signal with real UID privileges, just like `CheckPid()` does.

### Affected Distributions

All distributions we considered are affected.

3.f) Bad `strncpy()` Use Leads to Crashes when Sending Commands
---------------------------------------------------------------

We believe this is a non-security issue, but one that still should be
fixed with priority. The issue is only found in Screen version 5.0.0.

In commit 0dc67256 [24] a number of `strcpy()` calls have been replaced
by `strncpy()`. The author obviously was not aware of the unfortunate
semantics that `strncpy()` has. This function is not intended for safe
string handling, but to maintain zero padded buffers of fixed length.
For this reason, `strncpy()` does not stop writing data to the
destination buffer when the first `\0` byte is encountered, but it
writes out zeroes until the buffer is completely filled.

Apart from leading to bad performance, this also triggers a bug in
attacher.c line 465. The following change has been applied there:

    -      strcpy(p, *av);
    +      strncpy(p, *av, MAXPATHLEN);
           p +=3D len;

These lines are part of the following for loop, which processes command
line parameters to send them to a running Screen session.

    for (; *av && n < MAXARGS - 1; ++av, ++n) {
            size_t len;
            len =3D strlen(*av) + 1;
            if (p + len >=3D m.m.command.cmd + ARRAY_SIZE(m.m.command.cmd) =
- 1)
                    break;
            strncpy(p, *av, MAXPATHLEN);
            p +=3D len;
    }

The call to `strncpy()` always passes `MAXPATHLEN` bytes as destination
buffer size. This is correct for the first iteration of the `for` loop,
when `p` points to the beginning of the `struct Message.command.cmd`
buffer declared in screen.h line 148 [25]. It is no longer correct for
following iterations of the `for` loop, however, when `p` is incremented
by `len`. This means future `strncpy()` calls will write an excess
amount of `\0` bytes beyond the end of the buffer.

The result of this can be observed on current Arch Linux when passing
more than one command argument to a running Screen instance:

    # create a new screen session
    user$ screen -S myinstance
=20=20=20=20
    # and detach from it again
    (screen) user$ <Ctrl A> d
=20=20=20=20
    # now try to send a command to the running session
    user$ screen -S myinstance -X blankerprg /home/$USER/blanker
    *** buffer overflow detected ***: terminated
    Aborted (core dumped)

The two command arguments lead to two iterations in the `for` loop described
above; the second iteration will trigger the buffer overflow detection. The
visible error only occurs when Screen is compiled with the `_FORTIFY_SOURCE`
feature enabled. Otherwise no errors are seen, not even when compiling with
`-fsanitize=3Daddress`, likely because after the end of the target buffer
another long buffer `char message[MAXPATHLEN * 2]` follows (thus only
application payload data is overwritten).

This issue allows the caller to overwrite `MAXPATHLEN` bytes of memory
following the `cmd` buffer with zeroes, which can cause integrity
violation in Screen, particularly when it runs setuid-root. Since an
equally sized buffer `writeback[MAXPATHLEN]` follows in memory, there
should be no possibilities to exploit this issue to the advantage of an
attacker, however.

To fix this, `MAXPATHLEN` needs to be replaced by the actually remaining
amount of bytes in `p`. Furthermore ideally all `strncpy()` calls should
be replaced by `snprintf(target, target_size, "%s", source)` to avoid
the unintended effect of zero padding the target buffer.

We wondered how this issue could be present in Screen 5.0.0 for such a
long time without anybody noticing. One part of the explanation likely
is that Screen version 5.0.0 is only present in few distributions so
far. Another aspect is that perhaps only few users are using this
feature to send commands to running Screen sessions. We still found a
report from not too long ago on the screen-users mailing list [26] that
seems to refer to exactly this issue.

### Bugfix

Patch 0003 in the attached screen-patches-5.0.0.tar.gz addresses this
problem by changing `strncpy()` to `snprintf()` and by properly passing
the amount of remaining space in the target buffer.

### Affected Distributions

All distributions shipping screen-5.0.0 are affected.

4) Possible Further Issues in Screen's setuid-root Implementation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

While working on the bugfix for issue 3.e), we also noticed that the
original (incomplete) bugfix for CVE-2023-24626 introduced a regression
to the multi-user mode in Screen when the target session is running as
non-root. In this case the target session drops privileges to some UID X
and then attempts to send a signal to some UID Y (of the client), which
will always fail.

This shows that there are actually three different UIDs to be considered
in Screen's multi-user mode: effective UID 0 to perform privileged
operations, the real UID of the user creating the session and the real
UID of the user attaching to a session. We don't believe that the
current Screen code takes this properly into account.

This also brought to our attention that Screen multi-user sessions
created by `root` will "drop privileges" to the real UID of the creating
user, which will be UID 0, and thus effectively perform no privilege
drop at all.

5) General Recommendations
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

=46rom the changes in Screen 5.0.0 we can see that there have been
attempts for a longer time to refactor the code base, which was still
written in K&R style C before that. During this refactoring some of the
long established security logic has been broken, however, which led to
issues 3.a) and 3.c). Before doing further refactoring, some kind of
test suite could be helpful to verify various security properties of the
implementation. Also anybody who works on this code base obviously
should have knowledge about the many dangers that linger in setuid-root
binaries.

Even after fixing the issues we identified during our review, there are
still many areas left that make us worry as outlined in the previous
section. There is also a range of file system operations where security
is hanging by a thread.

There is furthermore a broad design issue in Screen: it runs with
elevated privileges all the time, and only selectively drops privileges
for operations that are considered dangerous. For a robust setuid-root
program this should be the other way around: privileges should be
dropped by default and only raised for operations that actually require
elevated privileges.

To make Screen acceptable for running setuid-root we suggest to
implement a design change in this regard and to carefully review each
privileged operation that remains for its security. We also suggest to
add logic to remove any environment variables except those that are
explicitly allowed in the setuid-root context. Other environment
variables like PATH should be sanitized to point only to trusted system
directories.

Given all this, we don't recommend to install Screen setuid-root at all
at the moment (neither version 5.0.0 nor the older 4.9 versions). An
alternative could be to offer the multi-user feature only in an opt-in
fashion, e.g. by allowing only members of a trusted group to run a
multi-user version of Screen.

6) Problematic Coordinated Disclosure Process and Upstream Status
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

When we reported these issues to upstream in February 2025, we offered
the usual coordinated disclosure process based on our policy [27].
Upstream expressed a lot of interest in keeping the issues private to
develop bugfixes before publication. A time frame of one to two months
was communicated to us for this purpose. We were not too happy with this
long embargo period, but we understand that many upstreams are lacking
resources, thus we agreed to these terms.

About a month later some activity ensued on upstream's end and discussions
about bugfixes started. These discussions were not too fruitful, but we
still believed that upstream would be able to deal with the issues - given =
it
was upstream itself that asked us to perform a security review for Screen.

No further communication happened, however, until about two weeks before
the maximum 90 days embargo period we offer, when we inquired upstream
about the current status and pointed out the publication date coming
close. We had to find out that upstream did not use the long time period
up to this point to work on the bugfixes. Meanwhile further
distributions like NetBSD updated to Screen 5.0.0, becoming fully
affected by issue 3.a), unaware of the risk.

It was only at this point that we realized that upstream was not
sufficiently familiar with the Screen code base, not capable of fully
understanding the security issues we reported and that they did not
clearly state that they need more help than us only reviewing patches
they come up with.

The communication with upstream became increasingly problematic:
upstream suddenly wanted to publish bugfixes earlier than we suggested,
even though many issues were still unaddressed. We tried to dissuade
upstream and quickly involved the distros mailing list [28] to make
other distributors aware of the issues. We exceptionally suggested a
publication date beyond our maximum 90 days embargo to the list, to
accommodate for the chaotic situation that the embargo ended up in.

After some further not very productive attempts to develop patches in
cooperation with upstream, we decided to take the matter into our own
hands. We developed the missing bugfixes and adjusted and properly
documented the patches that had already been drafted by upstream. In
doing this, we deduced that a dedicated upstream would likely have been
able to complete the coordinated disclosure process within about two
weeks.

We are not satisfied with how this coordinated disclosure developed, and
we will try to be more attentive to such problematic situations early on
in the future. This experience also sheds light on the overall situation
of Screen upstream. It looks like it suffers from a lack of manpower and
expertise, which is worrying for such a widespread open source utility.
We hope this publication can help to draw attention to this and to
improve this situation in the future.

7) Affectedness Matrix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

|System        |Screen Version|Special Privileges                        |A=
ffected by                  |Comment                                       =
         |
|--------------|--------------|------------------------------------------|-=
----------------------------|----------------------------------------------=
---------|
|Arch Linux    |5.0.0         |setuid-root                               |3=
.a, 3.b, 3.c, 3.d, 3.e, 3.f |                                              =
         |
|Debian 12.10  |4.9.0         |                                          |3=
.b (partly)                 |                                              =
         |
|Ubuntu 24.04.2|4.9.1         |                                          |3=
.b (partly)                 |                                              =
         |
|Fedora 42     |5.0.0         |setgid-screen                             |3=
.b (partly), 3.f            |5.0.0 is only found in the recently released F=
edora 42 |
|Gentoo        |4.9.1         |setgid-utmp                               |3=
.b (partly)                 |5.0.0 is available via the unstable ebuild    =
         |
|              |              |(setuid-root if multiuser USE flag is set)| =
                            |                                              =
         |
|openSUSE TW   |4.9.1         |                                          |3=
.b (partly)                 |                                              =
         |
|FreeBSD 14.2  |4.9.1         |setuid-root                               |3=
.b, 3.d, 3.e                |                                              =
         |
|NetBSD 10.1   |5.0.0         |setuid-root                               |3=
.a, 3.b, 3.c, 3.d, 3.e      |update to 5.0.0 was only released recently    =
         |
|              |              |                                          |3=
.f (without visible crash)  |                                              =
         |
|OpenBSD 7.7   |4.9.1         |                                          |3=
.b (partly)                 |                                              =
         |

8) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2024-07-01: A review request from upstream was forwarded to us [2].
2025-01-08: We started working on the review.
2025-02-07: We privately reported the issues to the Screen upstream by emai=
l, offering coordinated disclosure.
2025-02-07: Upstream expressed that they will need 1 - 2 months of time to =
work on the issues, likely requiring most of the 90 days maximum embargo pe=
riod we offered.
2025-02-11: We created private bugs [29] in the GNU Savannah bug tracker to=
 deal with each finding.
2025-03-11: Some discussions started in the private GNU Savannah bugs about=
 patches for a couple of the findings.
2025-04-29: After nearly a month without visible activity, and the 90 days =
maximum embargo time approaching, we asked upstream for the current status =
and procedures for publication of the report.
2025-04-30: Upstream started taking up work again, trying to come up with f=
ixes until the end of the 90 day embargo period. We offered advice on the v=
arious patches in the private GNU Savannah bugs.
2025-04-30: Following some unclarity in the discussion with upstream regard=
ing CVE assignment, we decided to assign CVEs for the security relevant iss=
ues.
2025-04-30: Upstream declared its intention to publish something on the wee=
kend, while bugfixes were still missing. We urged them not to do this. In t=
he light of this we quickly forwarded a draft of this report to the distros=
 mailing list [28] to give other distributors the chance to react to these =
findings before they go public.
2025-05-05: Although we did not get a clear answer, upstream ended up not p=
ublishing one-sidedly. Given the chaotic situation we suggested a publicati=
on date of 2025-05-12 to the distros mailing list, which was a few days aft=
er the 90 days maximum embargo period we usually offer upstream.
2025-05-07: Further attempts to develop the missing bugfixes in cooperation=
 with upstream seemed futile. We started to develop all necessary patches o=
n our own, some of them based on patches that had already been discussed in=
 the upstream Savannah bugs. We shared the finished and tested patches for =
screen 4.9.1 and screen 5.0.0 with the distros mailing list and upstream.
2025-05-08: Upstream complained about wrong `Author:` tags in some of the p=
atches we distributed (we did not receive formally finished patches from up=
stream, only copy/paste snippets). Thus we adjusted the authorship informat=
ion for these patches to accommodate for this complaint and shared the upda=
ted result with the distros mailing list again.
2025-05-12: Publication of the report happened as planned on our blog and o=
n the oss-security mailing list.

9) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

- Screen GNU Savannah Project Page [30]
- openSUSE Bugzilla Screen Review Bug [2]
- Links to Private GNU Savannah Bugs (it seems upstream cannot make them ac=
cessible even after publication) [29]

[1]: https://security.opensuse.org/2025/05/12/screen-security-issues.html
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1227243
[3]: https://git.savannah.gnu.org/cgit/screen.git/tag/?h=3Dv.5.0.0
[4]: https://linux.die.net/man/1/screen
[5]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/logfile.c?h=3Dv.=
5.0.0#n81
[6]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/logfile.c?h=3Dv.=
5.0.0#n101
[7]: https://git.savannah.gnu.org/cgit/screen.git/commit/?id=3D441bca708bd1=
97ae15d031ccfd2b42077eeebedc
[8]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/attacher.c?h=3Dv=
.5.0.0#n120
[9]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/attacher.c?h=3Dv=
.5.0.0#n284
[10]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/attacher.c?h=3D=
v.5.0.0#n160
[11]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/screen.c?h=3Dv.=
5.0.0#n1554
[12]: https://bugzilla.suse.com/show_bug.cgi?id=3D1242269#c9
[13]: https://bugzilla.suse.com/show_bug.cgi?id=3D1242269#c12
[14]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/process.c?h=3Dv=
.4.9.1#n207
[15]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/configure.ac?h=
=3Dv.4.9.1#n811
[16]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/acconfig.h?h=3D=
v.4.9.1#n81
[17]: https://git.savannah.gnu.org/cgit/screen.git/commit/?id=3Ddf1c012227
[18]: https://git.savannah.gnu.org/cgit/screen.git/commit/?id=3D78a961188f7
[19]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/screen.c?h=3Dv.=
5.0.0#n849
[20]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/socket.c?h=3Dv.=
5.0.0#n646
[21]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/socket.c?h=3Dv.=
5.0.0#n882
[22]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/socket.c?h=3Dv.=
5.0.0#n555
[23]: https://git.savannah.gnu.org/cgit/screen.git/patch/?id=3De9ad41bfedb4=
537a6f0de20f00b27c7739f168f7
[24]: https://git.savannah.gnu.org/cgit/screen.git/commit/?id=3D0dc67256
[25]: https://git.savannah.gnu.org/cgit/screen.git/tree/src/screen.h?h=3Dv.=
5.0.0#n148
[26]: https://lists.gnu.org/archive/html/screen-users/2024-12/msg00000.html
[27]: https://en.opensuse.org/openSUSE:Security_disclosure_policy
[28]: https://oss-security.openwall.org/wiki/mailing-lists/distros
[29]: https://bugzilla.suse.com/show_bug.cgi?id=3D1227243#c8
[30]: https://savannah.gnu.org/projects/screen

Best Regards

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--+ehj30zAjJLI/FRp
Content-Type: application/gzip
Content-Disposition: attachment; filename="screen-4.9.1-patches.tar.gz"
Content-Transfer-Encoding: base64

H4sIAAAAAAAAA+1aeXPbNhbvv+GnePVOEskWFV463SRNbSf1NLG9PrbtZDMqRYISGorU8rCtafLd
9z0APCTLdrJNM7O7wiQWD+Dh4eGdP8IwDFN3s8z1pixpe/o8YZcsyvSMzeZx4iYL3eh2u/os9pke
R/rJ+a+pnsV6wNtzN/Om33xKM7B1DYN+zV5H/Bqm44hfeoXtG7NDF52OSf0su2f1vgHjk6j/yZan
mZsAfDObsCTNIpbc2g/ffw2Gvm57mcQzMPqD8aBn23bfcZjRcZ3uwHZtxnpW1/W6Y39s+d1x0BnA
mziCMzYHsweGMRT/wMLN1IjMEN6gIk25m8IrJUv4bqYetQvxfp+iJNs+e6btuxkbws/Mb0EPhy6Q
ktUB0xp2BkOjAzsGUtbO8vHvzMuG8Pbkxfnej2A+sd9Bpa9DUAoLpcICKRSQwgJySwoLWQwBv9Zg
7x8HOk2iO92+YWna+ZSntYHeFEdBHEA2ZTSQxgk6giJ2ncVpBiF/z8IFuJCwWeTizHGgzV18kfEZ
S1swZkGcsJJGwEMGPku9hM+zOIErFA92T5lP5KkX6t+EZVrK0pQjx5fcFY8vjg5/AT+euTyCNPbe
s6ytOBZ8NprguSjKlDhxPQZeHPk8Iwp+nvBoAldT7k3BjRYQI70ESIMBieGNli5SXDdSiCCes6ji
FjlMmOvTeDfy4SpBktGkJW6yaY6zhWF8lVJnbcp/d733+BoZO+OzOUoFZRJf0uKRzTCecA/Zwhcs
Q5G1NV3XtdrmwQeweqDf3jRAsTEWYVfAzuZgXWcNLCFkkosbTUidnC5KHCdFYaQNvalpPg8CHDvh
GbhPagyMazcaj3x2DZ7dcVnPbbfN7tjsmAzQI3Udh3hfGqvt7Owsj//+e9B7dqsHO/i3C3jLrjOW
RCjzDPUbBZ6ccORODhkF/q4Gf+OBzwJ4c/H6/PDi7OBUK8bgWhLYnuVhxne1OiHxSJJoyZtRTlTj
q4gudjW91jnLFiPS4Ja4ikOfbmha4EFEE+Oco7OD84OLw30UduZmuGPlLHM+Z2+td6I/Q+UKxBLN
rtEawI7ZGchFUvdpfIW9NJCNB9CgsY2SSrOpwYMTN+JegyVJFLdgix5vNZHdaozUayUeZLglDA/H
6itjpaE+TLdKYWLvilZtrfC0lMFuwR4LApIUvtLN3QdPtmHmvkdzQ+vYi6MMpUdW8B62nxQD0CBC
NaIU+G59sY2EZfiyRqLRbMJ3T8FoSpH1nJZposx6xqrMHhCN5dXVyJCAqIsXxmlNnG/Nd+oF2Wrt
ufGuBY/8fDZD2ZkkkAeSwbpEngm2dDHxH+oX4Kbsa2MUpZuyRQGqNx8VO4UczlCX8rTRrHT89fHe
T6ITMSQ6PoWzw1cjei7FZFkOaZZldlalJNt1in4EZd8od6F5852yAzGxVNqvrWEfS3sBVK6ahQmV
+lv5pjR6ek7rdyy7Zdqw45jmegGQVvAoZychc1Oa2bjVltWurtMbHbkLU1asZY3kahJbozkAdwm0
rja1zqtK/lkCFmq2wm1hlM2aeyrFX3mrjtFpmQ7KtN+VMn2hHPZLHmE0QAXcP3j54vRVzcxSYVsf
C2r6DR+t3ymaP+riQ27roq0JZFkcsl/NH95rjwVz5crZNc8ahrQIXNbpwfnF6RHefVyOfmVEHZeX
KvL1uh3b802MfK5lM9NdjnxlZxn3ylthuLbR6qPh2sq91YLXaBrPyDDKoKKcJ92XIWs1sOHy6tGr
drusE8VGY+QRU/6I+dmRO2Nv37z45ez8FCOX8L6GMRARyzB6lV1RXtWgC9dridHb2+BeNosohvaJ
80VIDCiz4Zhe8BS5W5Rx4Yxl57JHI0tyDLGP0kxY1xp1gXItyDnN2kyzdprJJ4/A6PV6u9VeSvpB
iH0DL8rChtGCl6NXB+cvX6PDKnweqRf2+ZZEAY8eiRv8ezw63f/59AP9HB+9/hUvfj6lCwxI6HDl
W+VuKRxZBjncrvK4aAuHRwejf7w4RZM4G708agg1bdaD3f6IEsk5anPxFOAnHobVi5bw6z/8etDc
/XwjIvshFyX7132afp9R3fRkMrovMCfHLDmM43kbUj6ZtmkTV9zgClHpJmX8kF18Ns4nZmNLSGQo
k01Kk8eYA4syIYWAiqmH6T+jtV7tE0x62aCFRVMYJ5+GZgia1XYGbUPTvlz9h/W3pb+4jLmvUxKN
ySPHRDXymJ6xNEO7w1wIazjMpHUMOu9V8X+t7325+r/nWMZK/e/Ylrmp/79GE/W/ySzX7Pl9x+6x
TmD1Hd9lLus4gTF2epY1dvpsbDDb+Cr1vz0kCMC+pf63qP4X+ior61JfgfQVavoKQl/X1/6Oph1G
yuT1JI4zqp5F6k+FsJcnCUEKGJyxHMaiPnUnaN0TjpWte4WMXk0ZVdSax5KMynM0hWkKUUzBxKMy
foycjReCGOUpsvQWrMqqeuriTIu5QAkW2tS9ZG04jyssg8rnOMJ6Os6zeZ7BhKHksDRb4YgvrUFT
a2jLxWHcRWeX5UIYaYuYjnB2RQMnmEvuRakPPk9QzHGyUJU+06onxMwV7eaNJWVE84oJHCHNMAgU
DM/iBCkwpB8yH4m7kwhjM/fSCsOgWl0MxH0SWAiW8ClMWTgP8nB1pYL5M5FzIDuYsKDV4my11bdR
OROm4IZrRR8Hxnnok/+PGPMl5uIK7SEZaw3WnrRBibrAQX47E2jLCW7qb3DFsykkLie8Zp7wS1xP
wY8mMhYFnpKQEvavHJWQ+U2xSobszDDaZEo0yESIwmYCnBHb41HUk8qTkUoIbAXS3JtqNxS5hZtJ
ar7EHSf0ZxLGY9yQSzfhLimeIIVvcId8zfWSOE2lWtNsYywcUNfwdub+HiccE5o4wN4pcg7ptJCW
5+bEuFi9kBTaUItqEVTQRAE5ZSb5ARw01/vaEqwj8SwaCgMoO6yDcgzUclQ1ieXsNLGute4Cd25P
b1VW225jeLHsgf/p6a1pWlbL7GAGSRdW/94UsorhInCrrAUr4gZtHm2dzBYpI9NNlb8sFwR7blT5
E1knFWNlqlDlLkT827PR4dn+4WmjyisxL9q5b2ZMtnYKEiUs8rQEPMr3n8edGPJRcLhKADPZrQNh
2spToimsH04/isatC7yHffjwAWT3NeuCVbYeUoYvnXjlDdt/1crWQX9yIcKrNIsyUsBLVcFAC/m2
BkOVue+6dZDRS8eNJv4wpbWIgTd5um+WarH/iah34A5hfzqTNyX/2bJX0hfyV3+EHdURA9N0OlTN
mmanT3DMf2TsjRv1XZMkavQMY8ncifP9MtCiVGaYjwIlBPLLA/a/qYL3TfBnzOKGTn82d1/MQOQC
6O0bKjWoxhWevHrUgsdPHjdVHVrN8gPmE8XXFFHBP36YPlYTiXEKJMFbQguwzC5YgB2UTBKyqHSX
TXxkKhzB7DtCMTCN/BTFkE3qV9FESYcRD6v1mPYhxjmfgwlDqnx3IIhrJXOxhdjzaR15qxZ6FIPM
BrD0jHPM2zAhRBMS9ec6Ey8ofXFz/hxGvrgZA7xJJ9Kr+IqNh6niAAcHMf2HZyjl57CVbqGst5Zp
yp2p42ermFmRrozLS5VUdBy/74377XbXszuGFawkFUVnlVQUt/IzykAoE/5IXRrHcQjbPB1RN8GF
wDMmBdY5WQK1K0+DsWqOKkzpK15Witusa83a8K2GrJPxp1D+k8nDHbN/MRdCUkxDKrskVq7uqCzB
J4/Eze5fhKz8dzTDMGy9UEzdjyM901PcGD3lk8gNU51KAFFg6VX5QyDQl8R/zNXzH45tdjb4z9do
Av8JOr5h2YY/7gVdk5nOwOn0bG/s9Z2u2es5XYeNbcvyna+C/3SGhj20+7fgPzbhP4W+DgEV9jHW
16iwoBRWVeyE6dTq9bUoUEdU6bA3Zeg9OJ2oCPLIEyU3ndLAmJ7Efu4p1MD3Eyp2FAVbt5yu1W3h
K62AbYgNcklnh6/2jo/OBZKC1z9enAgCyZhn4pzJyeF+qg5igDyIQRW5LLIVVpDmQYACk4iyC+fH
e+fHFyvnPGQZ74Wc5iYgJWHzEHtoPEtZGBBa41YyIPgiJqfZAvSfGbKBPHkLL2SSnzzCiZcGaGoA
0vUYv2QSRYgTPuEoaBpFMMcyatUCN7xyF+nyluTCU5fQUbUvbfiJsblW3wFkTmI/ddAIDoNSukTG
9bIcCUn6EKA7T7UQ1SmhIz8ClMoE/HKlcJcoFoiUooxyipNMnls5pG1js5W1jfMJ7YUb0vf1RV0T
6NjPJFHJpUCBJP4jOMNNjsRZm8epxMeKLLSAZETcw2LHp82RqNVhJAEWj77oVseBiqEo/TwqlFrg
bhhlfyE0j9BPklYhF1dT4lDHin6bc/832vRL7ssJs0pdSlK/QoMkQvBhtS1NVFYm4CxM/v0CssN/
mN0KY0Cqc5aECzIqwVucK9Sykk4bjiN4zaP8GpCTwMclFuhSrk4/KbzLDehAVbGOQmnwvTy3JNQT
7VEwWUzGo8s4vKT+y0aRlhKFUqJqzUhHIVwa0o+JkXhMCCgyc/uhK9zKs+PRycHB6d7pwT5mLTRL
SyMuJtMCCavgLMuEtaiXhumnAKxLZAuzvhVkq38nsHVrDqpSz3bb73YtM1j9bntHDtq36aDBDv2Y
ZlHPzNXhloRleRKtHuagpGpHHRQSOCp9+ruISHcaOHIkxrcEIdzIMgdcOhqzWz07FZM03tP3QzGQ
BlEHzOBKiGQ6z9F1P9lGrrZBRpqtl+g62vADGgdLtuC7yJ274ez7fILOwnPDjHnTNvPzZ2KZA7Mr
zgAMLJN+8REWeblH8GYE21d8t6rPqP2hTuXIuqLMWoXykgGj5hM2CxEj70gOPcXsNKPzg+jGCLiH
ORZCPrvkHmsXR3ioyfMFvHac5qdy4dUn053au0qySx9VVQ+1ReJTeL19rN9KBDDxZvOG+qI94tGI
vgjM9Gcz8YGy+SkCkAcnhsXhxcBHO2HSpc1EfY6UhgQS6Pjn260W3DLbW+MdIRWP/2k8xoKseEpV
WSPKw7D5tQRWO7ZEX4kLPtAxBJgQ0rcUdAJpPdwILEEdD612uDhSKTTNMVomlveYQNHvOk17IKX7
pyRbMItXi+KUwvPaNcry6OL16+XTY4UUb5Pg3dJbklx5NgagQmgbHEuqlHlU1zUqDuWJA/SMx6Oj
46Mf6LQXHWJowndUnBb6dru6VXYnPtAsC6A6L7N2VfeqxXozugOclcFeFdVLc1LGV8y5Zkb1unZi
BadADQoo/DTyMEv4dZNgl+LRfJEs3R+xX87luY1Bt0OHTAc9A3/uUDE6u4vbXsqSgqXIJ1GtuS80
WX7meC5wGtv+gupSIDJyZpilE8CwjimYP6RPdCuslE5yRcvEantdsdq+edtq6w6rtmb5bQKziCIJ
81nEMZsRi7W6f6GXWV78sPhMIucXOZtIDiU8RZe3eygpA9MaOCQE/B1IKZzKlJxmWnHexeR/zxl9
zM3oeLv6kDd2fYrOjYd+UxhRe9bGvZhhmdJ25/XDlDdiiAJj9PpEQkarNFoVprciq5s9YaU1/kUs
B6E7UcfpVjtQe14Y09q3w2o3yKmfMVmB0RMy3/Lr99SdozPBzaBzQP/H6M+mbdqmbdqmbdqmbdqm
bdqmbdqmbdqmbdqmbdqmbdqmbdqmbdqmbdqm/S+1fwNsCleoAFAAAA==

--+ehj30zAjJLI/FRp
Content-Type: application/gzip
Content-Disposition: attachment; filename="screen-5.0.0-patches.tar.gz"
Content-Transfer-Encoding: base64

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

--+ehj30zAjJLI/FRp--

--wi6MT1cnXJlX+60b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmgiEqoACgkQFMQFyXGS
NVMz/Q//RWs7cSDjNn4pmjRkePzhRZ0to0iTnl0oiy/Yvn0KfN2fTdGRUL8qEYYV
dJggiSGiRVgCaXFAGgSBV6PHqbljXSc5HNKMh2yseHNpXvTvdHun49q/YJOSIRNN
LBtrB3wGVmI3NMyGoY0rSZZvl1wV6uMBSQk3I2fECjgQQFErZaKiRLOxV6O7e2k7
MCS+XAwvrJkqJS6Y3vh3gOuXEz9G/WUjsEXjNrHlXrqRdmWIz2RfBG0tJ/nCmxDy
nK5WulANDykD7eLsKOcvRSRrrTJWsBdMdhziyvNCgpDoSp5St+wmfczhhQW8rZkb
jMAjdabm6bytWyQqiw3z/hrFKcrwYQ/jf77rCKWvv6z9w+OcLbABzzuKeMmqmXW9
VtFKCqrohPfepHNmLMiVL3907ByH5kD7Ule1m75GRmvWYfOuTavbty6h1+IgkF+8
ePseCWWRz813BjGL2ba7602RTo3TLdJ8HxVfXeDM2PKB/1LINyoRAGFwPBOiQNm4
kNXVKixDSduTjIf8gIX8e2fHNzKsHZbTLDm2RGX3Y+oK/wSlRznEv48g+DlAxeYc
IRtw+vx0kvKyGwcfJRXrkJ3VOhSGtOnlzuS3Y5Lvc1V1J/Y9btGjwGd+R/UkFCR3
Nu+7s4HUusmZnYc2yQcJlm5AWHwepV84987wt7HVDfCp1NEG9gw=
=JMWT
-----END PGP SIGNATURE-----

--wi6MT1cnXJlX+60b--
