X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/21/2
Message-ID: <20260721150816.GA6076@localhost.localdomain>
Date: Tue, 21 Jul 2026 15:09:03 +0000
From: Qualys Security Advisory <qsa@...lys.com>
To: Eduardo Barretto <eduardo.barretto@...onical.com>
CC: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: LPE in snapd and other vulnerabilities
Content-Type: text/plain; charset=utf-8


Qualys Security Advisory

Local Privilege Escalation in set-capabilities versions of snap-confine
(CVE-2026-8933)


========================================================================
Contents
========================================================================

Summary
Analysis
Exploitation
Acknowledgments
Timeline


========================================================================
Summary
========================================================================

We discovered a vulnerability (a Local Privilege Escalation from any
user to full root) in snap-confine, "a program used internally by snapd
to construct the execution environment for snap applications."

Counter-intuitively, only set-capabilities versions of snap-confine are
vulnerable, set-uid-root versions are not; in particular:

- default installations of Ubuntu Desktop 26.04 and 25.10 are vulnerable
  and exploitable (they ship a set-capabilities
  /usr/lib/snapd/snap-confine);

- default, up-to-date installations of Ubuntu Desktop 24.04 are also
  vulnerable and exploitable (they ship a set-capabilities
  /snap/snapd/current/usr/lib/snapd/snap-confine).


========================================================================
Analysis
========================================================================

After the publication of CVE-2026-3888 and the release of Ubuntu 26.04
Beta, we decided to re-assess the security of snap-confine. One of the
most fundamental changes between Ubuntu 24.04 and Ubuntu 26.04 is that
/usr/lib/snapd/snap-confine is not set-uid-root anymore; instead, it is
set-capabilities now, undoubtedly for security reasons (the Principle of
Least Privilege):

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME="Ubuntu Resolute Raccoon (development branch)"
VERSION_ID="26.04"

$ stat /usr/lib/snapd/snap-confine
Access: (0755/-rwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)

$ getcap /usr/lib/snapd/snap-confine
/usr/lib/snapd/snap-confine cap_chown,cap_dac_override,cap_dac_read_search,cap_fowner,cap_setgid,cap_setuid,cap_sys_chroot,cap_sys_ptrace,cap_sys_admin,cap_sys_resource=p
------------------------------------------------------------------------

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME="Ubuntu 24.04.3 LTS"

$ stat /usr/lib/snapd/snap-confine
Access: (4755/-rwsr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)

$ stat /snap/snapd/current/usr/lib/snapd/snap-confine
Access: (0755/-rwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)

$ getcap /snap/snapd/current/usr/lib/snapd/snap-confine
/snap/snapd/current/usr/lib/snapd/snap-confine cap_chown,cap_dac_override,cap_dac_read_search,cap_fowner,cap_sys_chroot,cap_sys_ptrace,cap_sys_admin=p
------------------------------------------------------------------------

Unfortunately, belatedly we realized that this change has a potentially
dangerous consequence: because snap-confine is not set-uid-root anymore,
it runs with the effective uid of our unprivileged user (but with near-
root capabilities), and all the files and directories that it creates
therefore do not belong to root anymore, but to our unprivileged user.

For example, snap-confine creates a /tmp/snap.rootfs_XXXXXX directory at
line 511, and a file inside this directory at line 450, and even though
snap-confine quickly changes the ownership of this directory and file to
root at lines 362 and 454, a small window of time exists when they are
under the complete control of our unprivileged user (between lines 511
and 362, and between lines 450 and 454):

------------------------------------------------------------------------
 507 static void sc_bootstrap_mount_namespace(const struct sc_mount_config *config) {
 508     char scratch_dir[] = "/tmp/snap.rootfs_XXXXXX";
 ...
 511     if (mkdtemp(scratch_dir) == NULL) {
 ...
 523     sc_do_mount(scratch_dir, scratch_dir, NULL, MS_BIND, NULL);
 ...
 530     sc_do_mount("none", scratch_dir, NULL, MS_UNBINDABLE, NULL);
 ...
 535         sc_do_mount("none", scratch_dir, "tmpfs", 0, "uid=0,gid=0");
 536         sc_replicate_base_rootfs(scratch_dir, config->rootfs_dir, config->mounts);
------------------------------------------------------------------------
 354 static void sc_replicate_base_rootfs(const char *scratch_dir, const char *rootfs_dir,
 355                                      const struct sc_mount *root_mounts) {
 ...
 362     if (chown(scratch_dir, 0, 0) < 0) {
 ...
 397         sc_must_snprintf(full_path, sizeof(full_path), "%s/%s", scratch_dir, ent->d_name);
 ...
 446         } else if (ent->d_type == DT_REG) {
 ...
 450             int fd = open(full_path, O_CREAT | O_TRUNC, 0644);
 ...
 454             if (fchown(fd, 0, 0) < 0) {
------------------------------------------------------------------------


========================================================================
Exploitation
========================================================================

Our basic idea for exploiting this vulnerability is to transform it into
an arbitrary file creation, by winning these two race conditions:

- first, immediately after the creation of the /tmp/snap.rootfs_XXXXXX
  directory at line 511, and while this directory still belongs to our
  unprivileged user, we quickly create a symlink inside this directory,
  whose target is an arbitrary file in the filesystem, and whose name is
  the name of one of the files that snap-confine will create at line 450
  (for example, when setting up the sandbox for the firefox snap,
  snap-confine will create a file named default256.png);

- second, immediately after the creation of our arbitrary file at line
  450 (which succeeds because this open() does not specify O_NOFOLLOW,
  and because snap-confine runs with near-root capabilities), and while
  this file still belongs to our unprivileged user, we quickly change
  its permissions to 0666 so that we can still write to it even after
  snap-confine changes its ownership to root at line 454.

However, to implement this exploit in practice, we must overcome two
major problems:

1/ After the creation of the /tmp/snap.rootfs_XXXXXX directory at line
511, but before the creation of our arbitrary file at line 450, snap-
confine mounts a temporary filesystem onto /tmp/snap.rootfs_XXXXXX at
line 535; but we cannot create the symlink to our arbitrary file inside
this directory because it is not visible from outside the sandbox that
snap-confine is setting up (because of the two mounts at lines 523 and
530, which make this temporary filesystem private).

The solution to this first problem is surprisingly simple: immediately
after the creation of the /tmp/snap.rootfs_XXXXXX directory, and while
this directory still belongs to our unprivileged user, we quickly mount
a FUSE filesystem onto it (with fusermount), which allows us to unmount
(with fusermount -u -z) every filesystem that snap-confine later mounts
onto it, at lines 523 and 535.

As a result, when snap-confine reaches line 450, /tmp/snap.rootfs_XXXXXX
is simply back to the directory that was originally created at line 511
and that still belongs to our unprivileged user: inside this directory
we can create the symlink to our arbitrary file, and finally
snap-confine creates this arbitrary file at line 450.

2/ In reality, this arbitrary file creation is not entirely arbitrary,
because snap-confine itself is confined by a highly restrictive AppArmor
profile; for example, we cannot create or write to any file in /etc. To
solve this second problem we inspected snap-confine's AppArmor profile,
and one of the few allow-read-write rules caught our attention:

    /run/udev/** rw,

We therefore exploit our arbitrary file creation to create a .rules file
in /run/udev/rules.d, write PROGRAM="/bin/sh -c id>>/tmp/pwned" into it,
and mount and unmount a FUSE filesystem (any FUSE filesystem) to trigger
the execution of this arbitrary command with full root privileges (via
the systemd-udevd daemon):

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME="Ubuntu Resolute Raccoon (development branch)"
VERSION_ID="26.04"

$ id
uid=1001(jane) gid=1001(jane) groups=1001(jane),100(users)

$ ./exploit
scratch directory for constructing namespace: /tmp/snap.rootfs_ZW0eZT
ndirs 1
nregs 0
-rw-r--r-- 1 root root 78 Apr 21 21:00 /tmp/pwned
/run/udev/rules.d:
total 12
-rw-rw-rw- 1 root root  36 Apr 21 21:00 2064396357-default256.png.rules
-rw-r----- 1 root root 265 Apr 21 20:20 90-netplan.rules
-rw-r----- 1 root root  98 Apr 21 20:20 99-netplan-enp0s3.rules
uid=0(root) gid=0(root) groups=0(root)
uid=0(root) gid=0(root) groups=0(root)
------------------------------------------------------------------------

------------------------------------------------------------------------
$ cat /etc/os-release
PRETTY_NAME="Ubuntu 24.04.3 LTS"

$ id
uid=1001(jane) gid=1001(jane) groups=1001(jane),100(users)

$ ./exploit
scratch directory for constructing namespace: /tmp/snap.rootfs_AkYmf6
ndirs 1
nregs 0
-rw-r--r-- 1 root root 78 Apr 21 13:09 /tmp/pwned
/run/udev/rules.d:
total 8
-rw-rw-rw- 1 root root  36 Apr 21 13:09 429214770-default256.png.rules
-rw-r----- 1 root root 162 Apr 21 12:47 90-netplan.rules
uid=0(root) gid=0(root) groups=0(root)
uid=0(root) gid=0(root) groups=0(root)
------------------------------------------------------------------------


========================================================================
Acknowledgments
========================================================================

We thank everyone at Canonical who worked on this release (Eduardo
Barretto and Zygmunt Krynicki in particular). We also thank the members
of the linux-distros list (Caryl Takvorian in particular).


========================================================================
Timeline
========================================================================

2026-04-22: We sent our advisory and exploit to the Ubuntu Security
Team.

2026-07-13: The Ubuntu Security Team sent their patches to the
linux-distros list.

2026-07-14: We sent our advisory to the linux-distros list.

2026-07-21: Coordinated Release Date (14:00 UTC).
