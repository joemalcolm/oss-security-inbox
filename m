X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/1
Message-ID: <CAHc6FU43XoqpizzC+B+HowLpQgeczKBqtcsBELeJ-Ya8AxxpOw@mail.gmail.com>
Date: Mon, 29 Jun 2026 14:27:01 +0200
From: Andreas Gruenbacher <agruenba@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Symlink Traversal Privilege Escalation via getfattr/setfattr, getfacl/setfacl/chacl, libacl
Content-Type: text/plain; charset=utf-8

I've been notified about the following kinds of symbolic link related problems:

  - CWE-59: Improper Link Resolution Before File Access ('Link Following')
  - CWE-367: Time-of-check Time-of-use (TOCTOU) Race Condition

in the attr and acl packages, specifically:

  - in the getfattr and setfattr utilities,
  - in the getfacl, setfacl, and chacl utilities, and
  - in some functions provided by the libacl library.

These issues have been assigned CVE numbers CVE-2026-54369, CVE-2026-54370, and
CVE-2026-54371, which are public now.

These issues are fixed in the following package updates:

  - acl-2.4.0
  - attr-2.6.0

You probably want to upgrade to the latest versions of these packages even on
old distributions.  See Compatibility Notes below for how backwards
compatibility is handled.

The updated packages are available at:

  https://download.savannah.nongnu.org/releases/attr/
  https://savannah.nongnu.org/projects/attr

  https://download.savannah.nongnu.org/releases/acl/
  https://savannah.nongnu.org/projects/acl


Major Issues Fixed:

  - The libacl library functions acl_get_file(), acl_set_file(),
    acl_extended_file(), and acl_delete_def_file() take a pathname argument
    and follow symbolic links.  When a privileged user calls one of those
    functions, an attacker that controls a pathname component can replace a
    file or directory with a symbolic link and redirect the operation to a
    different file.  This can lead to local privilege escalation.

    The library functions cannot be fixed without breaking compatibility; the
    described behaviour is by design.

    Instead, version 2.4.0 of the acl package introduces the additional
    functions acl_get_file_at(), acl_set_file_at(), acl_extended_file_at(), and
    acl_delete_def_file_at().  These functions each take a dirfd file
    descriptor argument and an at_flags argument and accept the
    AT_SYMLINK_NOFOLLOW and AT_EMPTY_PATH flags.  Use these functions to
    control when to follow symbolic links.

    In addition, the libacl functions acl_get_fd(), acl_set_fd(), and
    acl_extended_fd() functions always operate on the access ACL; the library
    previously did not offer a way to operate on the default ACL of a directory
    file descriptor.  The new functions remove that restriction.

    It will be up to each individual program to start using these new library
    functions where appropriate.

  - When walking directory trees, the getfacl, setfacl, chacl, and getfattr
    utilities constructed the full pathname of each file in the tree
and use that
    pathname to access the file.  When a privileged user used those utilities,
    an attacker that controlled a pathname component could replace a
directory with
    a symbolic link and redirect the operation to a different file, leading to
    a local privilege escalation.

    This is fixed by using directory file descriptors and operating relative to
    those directory file descriptors.

  - When resolving the final pathname component, the getfacl, setfacl, chacl,
    getfattr, and setfattr utilities in some cases used functions that resolve
    symbolic links.  This includes the above mentioned libacl functions, but
    also stat(), chmod(), and chown().

    This is fixed by using symlink-safe functions throughout the code.

  - When restoring a backup, the setfacl and setfattr utilities read the full
    pathnames of files from the backup.  When those pathnames were resolved,
    pathname components that are symbolic links were traversed.  An attacker
    that controlled a pathname component could replace it with a symbolic link,
    causing a privileged user to operate on a file other than the one intended.
    This could lead to the same kind of local privilege escalation as discussed
    before.

    This is fixed by using openat2(RESOLVE_NO_SYMLINKS) to resolve the
    directory components of a pathname, but see Compatibility Notes below for
    the details.


Minor Issues Fixed:

  - When a symbolic link was specified on the command line but symbolic link
    traversal was disabled using option -P (--physical), the getfacl and
    setfacl utilities previously silently ignored the symlink.  Now, an ELOOP
    ("Too many levels of symbolic links") error will result instead.

  - acl_delete_entry() now verifies that the specified entry belongs to the
    specified acl.

  - Numeric uids and gids that cannot be represented in types uid_t and gid_t
    are checked more carefully and invalid numbers are rejected.

  - Functions acl_get_file(), acl_get_file_at(), and acl_get_fd() will retry
    several times when the size of an ACL grows unexpectedly; previously, they
    only grew the allocated buffer once before giving up.

  - When passed a directory file descriptor, function perm_copy_fd() didn't
    copy the default ACL from one directory to the other.  It now does.

  - setfacl --restore accidentally ignored leading whitespace in filenames.  It
    no longer does.

  - setfacl --restore accidentally called chmod() when in --test mode.  It no
    longer does.

  - When the setfattr --restore option was used multiple times, a buffer was
    accessed after being freed. This no longer happens.

  - When the setfattr -h (--no-dereference) option was given after --restore,
    it was ignored.  Now, the options can be passed in any order.

  - The -h (--no-dereference) option of getfattr prevented getfattr from
    recursing into "symbolic link directories".  This is wrong.  When dirlink
    is a symbolic link that refers to a directory, "getfattr -Rh
dirlink" will now
    visit that directory.  The -P (--physical) option can be used to prevent
    that.

  - Similarly, when a symbolic link referring to a directory was specified on
    the getfacl or setfacl command line, the -R option did not cause that
    directory to be visited.  This has been fixed so that those directories
    will now be visited.  The -P (--physical) option can be used to prevent
    that.


Compatibility Notes

  - libacl now exports the new functions acl_get_file_at(),
    acl_set_file_at(), acl_delete_def_file_at(), and acl_extended_file_at(),
    which are declared in <sys/acl.h>.  This may cause conflicts in programs
    that define functions of the same name and link against libacl.

    One such program is GNU tar which defines its own versions of functions
    like acl_get_file_at().  The fix is to rename those functions.  (In the
    case if GNU tar, a fix is already on the way.)

  - As mentioned above, the --restore option of setfacl and setfattr can now
    use openat2(RESOLVE_NO_SYMLINKS) to resolve the directory components of a
    pathname.  However, since the behaviour would change significantly from
    before, this is not the default.  Instead,

    + Option --restore can now be combined with option -P (--physical), which
      will cause openat2(RESOLVE_NO_SYMLINKS) to be used.

    + When the openat2() system call is available and option -P (--physical) is
      not used together with --restore, setfattr and setfacl will now warn that
      the operation may be unsafe.

    + In addition, when the openat2() system call is available and setfattr
      --restore is used without option -h (--no-dereference), a different
      warning will be issued as that operation may also be unsafe.

    + The warnings can be disabled using the --disable-unsafe-restore-warnings
      configure option.  This is to allow preserving the historic behaviour on
      systems where the additional warnings could be irritating or cause
      scripts to malfunction.

    + When the --restore and the -P (--physical) options are combined on a
      system that doesn't support openat2(), the operation will fail.

  - Support for specific AT_* flags in system calls has changed in recent
    years.  For example, fchmodat() has gained support for the
    AT_SYMLINK_NOFOLLOW and AT_EMPTY_PATH flags in October 2023.
    The xattrat() system calls still do not support the AT_EMPTY_PATH flag
    today.  When support for a specific flag is requested but not
available, libacl
    and the utilities will fall back to emulating the requested feature using
    openat(), the magic symlink "/proc/self/fd/<num>", and
    "/proc/self/fd/<num>/path/name" pathname resolution.  This depends the
    /proc filesystem being mounted in the standard location; when /proc is not
    available, these operations will fail.


Credits:

Thanks to Andrew Tridgell <tridge60@...il.com> for reporting the symlink
following problem in libacl and the directory tree traversal problem in the
utilities.

Several of the issues pointed out here were identified by OpenAI Codex; again,
thanks to Andrew Tridgell for helping out by performing those scans.

Thanks to Wade Sparks <wsparks@...ncheck.com> and Marcus Meissner
<meissner@...e.de> for helping with the disclosure process.

Regards,
Andreas

