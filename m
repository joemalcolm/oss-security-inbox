X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/09/1
Message-ID: <87tsnzba6s.fsf@gentoo.org>
Date: Wed, 09 Sep 2026 00:22:19 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Security fixes in libfuse-3.18.3
Content-Type: text/plain; charset=utf-8

From https://github.com/libfuse/libfuse/releases/tag/fuse-3.18.3

"""
Security Fixes

    fuse_session_custom_io() is disabled unless libfuse is built with
    -Denable-custom-io=true, and returns -ENOTSUP otherwise. The
    hello_ll_uds example is built only with that option, and enabling it
    warns at configure time.
    Reason is a custom io peer might not be a kernel and can
    forge requests that libfuse parses without bounds checks, crashing or
    corrupting the filesystem process. See doc/README.custom-io.

    fusermount3: resolve the mountpoint once, through an O_PATH|O_NOFOLLOW
    descriptor. A symlink swapped in between the type check and the second
    lookup could redirect the mount.

    fusermount3: run the auto-unmount probe as the calling user. It opened the
    caller-supplied mountpoint with elevated privileges before, so a symlink
    could get an attacker-chosen path opened as root.

    mount_util: terminate the /bin/mount and /bin/umount argument
    vectors with --. fsname reaches them straight from -ofsname= in
    setuid-root fusermount3, and the child raises the real uid to 0 before
    execle(), so an unprivileged caller controlled a positional operand of a
    mount(8) that was not in restricted mode.

    mount_util: skip the mtab update entirely for option-like mount arguments.
    BusyBox mount(8) does not honour --.

    fusermount3: unmount through unmount_fuse() when passing the device
    descriptor to the caller fails, so that path drops privileges and runs the
    fusermount3 -u checks instead of calling umount2() as root on a
    caller-supplied path.

    fusermount3 and lib: pass UMOUNT_NOFOLLOW on the kernel and non-setuid
    unmount paths.

    fusermount3: check the fstat() return value when validating the
    communication file descriptor.

    fusermount3: fix an out-of-bounds read at index -1 in get_mnt_opts()
    when the option string is empty, which a read-only mount with no further
    options reaches.

    util: avoid a pointer underflow when trimming fuse.conf lines.

    fusermount3: reject a negative mount_max other than the documented -1.
    A typo such as -2 made the limit comparison always true and blocked every
    non-root mount.

    lib: relay the KILLPRIV_V2 kill-suidgid flags to the filesystem in the new
    fuse_file_info::kill_suidgid. Only setattr saw them before, so a
    filesystem that had taken over clearing suid/sgid never learned of it on
    O_TRUNC open and on write, and the bits survived.

Note: fuse_file_info::kill_suidgid is new in 3.18.3 and FUSE_VERSION
carries no patch level. A filesystem built against these headers but running
against an older 3.18 library finds the field permanently zero, so require
3.18.3 at run time as well.
"""

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
