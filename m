X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/19
Message-ID: <CAOGQQ28ioAO40Ya8GmDnqU_9jBYOWg_gZ4MFiELUetdRQXM9Ag@mail.gmail.com>
Date: Wed, 22 Jul 2026 18:07:03 -0300
From: Marco Benatto <mbenatto@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Darrick J. Wong" <djwong@...nel.org>
Subject: Re: RefluXFS: LPE in the Linux kernel via XFS reflink race (CVE-2026-64600)
Content-Type: text/plain; charset=utf-8

Hello,

thanks Qualys team to work on this!

While disabling reflink once the filesystem is created is not possible
we manage to mitigate the issue using the following SystemTap script:

probe begin {
        printf("refluxfs mitigation loaded\n")
}

probe module("xfs").function("xfs_file_remap_range").call {
        $remap_flags = 0xffff
}

probe module("xfs").function("xfs_file_remap_range").return {
        $return = -95
}

probe end {
        printf("refluxfs mitigation unloaded\n")
}


it works by clearing the flags needed at xfs_file_remap_range
function, which works as the 'entry point' for reflink operations in
XFS, and forcing
it to skip the whole reflink code. We opted to return the -EOPNOTSUPP
errno because applications may expect this error code to fallback to a
non-CoW strategy
when copying/duplicating datablocks.

While not ideal, this may at least offer a protection layer in case
the users cannot apply the patches right away.

On a side note, this same procedure is also achievable using kprobe if
SystemTap is not available.

Marco Benatto
Red Hat Product Security
secalert@...hat.com for urgent response

On Wed, Jul 22, 2026 at 1:48 PM Qualys Security Advisory <qsa@...lys.com> wrote:
>
>
> Qualys Security Advisory
>
> RefluXFS: Local Privilege Escalation via XFS reflink direct-I/O race
> (CVE-2026-64600)
>
>
> ========================================================================
> Contents
> ========================================================================
>
> Foreword
> Summary
> Am I affected?
> Background: XFS, reflink, and copy-on-write
> Analysis
> Exploitation
> Acknowledgments
> Timeline
>
>
> ========================================================================
> Foreword
> ========================================================================
>
> A few weeks ago, Anthropic gave us access to Claude Mythos Preview. As
> an experiment, we pointed it at the Linux kernel and asked it to find a
> vulnerability similar to Dirty COW. The initial passes came up empty, so
> we refined our prompts: we first narrowed the scope to race conditions,
> next to the core mm/ and fs/ directories, and last to the filesystems in
> the fs/*/ directories. After several iterations, the model discovered a
> race condition in the XFS filesystem, wrote a proof of concept (an LPE
> to full root), which we then reviewed and successfully tested on the
> default installation of a Fedora Server 44. Finally, we asked the model
> to draft a "Qualys Security Advisory" for this vulnerability, validated
> it ourselves, and what follows is the result of this entire experiment.
>
>
> ========================================================================
> Summary
> ========================================================================
>
> We discovered a race condition in the Linux kernel's XFS filesystem
> that allows an unprivileged local user to overwrite the on-disk
> contents of any file they can read, on any XFS filesystem created
> with reflink support (which has been the mkfs.xfs default since
> 2019).  We named it RefluXFS: the write refluxes -- flows backward --
> from the attacker's own copy into the original file.
>
> The attacker reflink-clones a target file (for example /etc/passwd,
> or a SUID-root binary such as /usr/bin/su) into a scratch file they
> own, then races concurrent O_DIRECT writes on that scratch file.  A
> lock-drop window in the kernel's copy-on-write allocation path lets
> one of those writes land, not in the attacker's own storage, but in
> the physical block that still backs the original file.  The change is
> made directly on disk, persists across reboot, produces no kernel log
> output, and does not touch the target file's inode -- so a modified
> SUID-root binary keeps its SUID bit.
>
> To the best of our knowledge, this vulnerability was introduced in
> February 2017 (Linux 4.11) by commit 3c68d44a2b49 ("xfs: allocate
> direct I/O COW blocks in iomap_begin"), and is present in every
> mainline and stable kernel since.  It requires no capability, module,
> sysctl, or non-default configuration.
>
> Last-minute note: on Thursday, July 16, 2026, the patch for this
> vulnerability was merged into the Linux kernel source tree (commit
> 2f4acd0, "xfs: resample the data fork mapping after cycling ILOCK").
>
>
> ========================================================================
> Am I affected?
> ========================================================================
>
> You are affected if, and only if, all three of these are true:
>
>   1. Your kernel is v4.11 or later (April 2017) and does not carry
>      the fix.  Practically every currently-supported Linux kernel.
>
>   2. You have an XFS filesystem with reflink=1 in its superblock.
>
>   3. That XFS filesystem holds both a file worth attacking (a root-
>      owned configuration file or SUID-root binary) and a directory an
>      unprivileged local user can write to.
>
> Condition 3 is met by every default single-volume install: /var/tmp
> is world-writable and lives on the root filesystem alongside /etc and
> /usr/bin.
>
> To check condition 2 on your root filesystem:
>
>   $ xfs_info / | grep reflink=
>            =                       reflink=1    bigtime=1 inobtcount=1 nrext64=1
>
> If that prints "reflink=1", you are exposed.  If it prints
> "reflink=0", or if xfs_info fails because / is not XFS, you are not
> exposed via the root filesystem -- repeat the check for any other
> mounted XFS.
>
> Reflink has been the mkfs.xfs default since xfsprogs 5.1.0 (July
> 2019), and Red Hat backported that default into xfsprogs 4.17.0-2.el8
> for RHEL 8.0 GA (May 2019) ahead of upstream.  It is a superblock
> feature fixed at mkfs time; there is no mount option or sysctl to
> turn it off afterwards.
>
> Distributions whose default installer creates a reflink=1 XFS root
> filesystem, and which are therefore exploitable out of the box:
>
>   RHEL 8, 9, 10; CentOS Stream 8, 9, 10; Rocky and AlmaLinux 8, 9, 10
>   Oracle Linux 8, 9, 10  (RHCK 4.18/5.14/6.12, and UEK R6/R7/8)
>   CloudLinux 8, 9, 10
>   Fedora Server >= 31
>   Amazon Linux 2023
>   Amazon Linux 2 AMIs from December 2022 (2.0.20221210.1) onward
>
> Distributions whose default installer does NOT use XFS for the root
> filesystem (Debian, Ubuntu, Fedora Workstation, SLES, openSUSE, Arch)
> are not exploitable in their default configuration -- but become so
> if the administrator selected XFS during installation, provided the
> shipped xfsprogs was recent enough to enable reflink by default.
>
> RHEL and CentOS 7 are not affected in any configuration: the RHEL 7
> kernel (3.10) predates XFS reflink support entirely, and its xfsprogs
> (4.5.0) has no -m reflink option.  For the same reason, an in-place
> RHEL 7 -> 8 Leapp upgrade (which preserves the on-disk superblock) is
> not exploitable -- only fresh RHEL 8-and-later installs are.
>
>
> ========================================================================
> Background: XFS, reflink, and copy-on-write
> ========================================================================
>
> XFS is a journaling filesystem that has been part of the Linux kernel
> since 2001 and is the default root filesystem on Red Hat Enterprise
> Linux and its derivatives.
>
> Reflink is XFS's copy-on-write file cloning feature.  When you run
> "cp --reflink source dest" (or the underlying ioctl(FICLONE)), the
> filesystem does not copy any data: instead, it records that both
> files' extent maps point at the same physical blocks on disk, and
> increments a reference count on those blocks in a dedicated on-disk
> btree.  The two files are now sharing storage.
>
> That sharing is invisible to applications until one of them writes.
> When a program writes to a shared block, XFS performs copy-on-write
> (CoW): it allocates a fresh private block for the writer, redirects
> the write there, remaps that file's extent from the old shared block
> to the new private one, and decrements the old block's reference
> count.  The other file still points at the old block, which now has
> one fewer owner.  The two files have diverged only where they were
> actually written to.  (Internally, XFS tracks the pending new block
> in a second per-file extent map -- the "CoW fork" -- until the write
> completes and the block is moved into the file's main extent map, the
> "data fork".)
>
> FICLONE requires only read permission on the source file and write
> permission on the destination.  Any unprivileged user can therefore
> reflink-clone /etc/passwd (mode 0644) or /usr/bin/su (mode 04755) into
> a file they own -- provided both live on the same XFS filesystem
> (FICLONE returns -EXDEV across filesystems).
>
> None of this is a bug.  The bug is in what happens next.
>
>
> ========================================================================
> Analysis
> ========================================================================
>
>     Rally round the family!
>     With a pocket full of shells
>         -- Rage Against The Machine, "Bulls On Parade"
>
> When a program issues an O_DIRECT write to a reflinked file, XFS must
> first decide whether the target block is shared (and therefore needs
> a copy-on-write) or private (and can be written in place).  That
> decision is made in xfs_direct_write_iomap_begin(), which reads the
> file's data-fork extent map under the inode's ILOCK, then hands the
> resulting mapping ("imap") to xfs_reflink_allocate_cow():
>
> ------------------------------------------------------------------------
> fs/xfs/xfs_iomap.c
>  910         error = xfs_bmapi_read(ip, offset_fsb, end_fsb - offset_fsb, &imap,
>  911                                &nimaps, 0);
>  ...
>  920                 /* may drop and re-acquire the ilock */
>  921                 error = xfs_reflink_allocate_cow(ip, &imap, &cmap, &shared,
> ------------------------------------------------------------------------
>
> xfs_reflink_allocate_cow() -> xfs_reflink_fill_cow_hole() then needs a
> transaction to reserve a copy-on-write block.  Allocating an XFS
> transaction may need to wait for log space, and doing so while
> holding the ILOCK could deadlock -- so the function drops the ILOCK,
> allocates the transaction, and re-acquires the ILOCK:
>
> ------------------------------------------------------------------------
> fs/xfs/xfs_reflink.c
>  458         xfs_iunlock(ip, *lockmode);
>  ...
>  461         error = xfs_trans_alloc_inode(ip, &M_RES(mp)->tr_write, dblocks,
>  462                         rblocks, false, &tp);
>  ...
>  466         *lockmode = XFS_ILOCK_EXCL;
>  467
>  468         error = xfs_find_trim_cow_extent(ip, imap, cmap, shared, &found);
>  469         if (error || !*shared)
>  470                 goto out_trans_cancel;
> ------------------------------------------------------------------------
>
> Line 468 re-checks whether the block is still shared.  It re-reads
> the file's copy-on-write fork (correctly), and it queries the on-disk
> reference-count btree (correctly) -- but it queries the refcount at
> imap->br_startblock, the physical block number captured back at line
> 910, before the lock was dropped.  It never re-reads the data fork.
>
> Meanwhile, block-aligned O_DIRECT writes on the same inode hold only
> the inode's IOLOCK in shared mode (xfs_file_dio_write_aligned()) -- a
> coarser I/O-path lock, distinct from the ILOCK dropped above -- so a
> second writer can run through this same path concurrently.  If that
> second writer completes an entire copy-on-write cycle -- allocate a
> fresh block Y, write it, and have xfs_reflink_end_cow() remap the
> file's data fork from the old shared block X to Y and drop
> refcount(X) from 2 to 1 -- all inside the first writer's lock-drop
> window, then the first writer's re-check at line 468 asks "is block X
> still shared?", the refcount btree answers "no, refcount is 1", and
> the first writer returns with *shared=false and imap still pointing
> at X.
>
> The caller falls through the "not shared, write in place" branch and
> hands imap straight to the direct-I/O layer as an IOMAP_MAPPED extent.
> The direct-I/O path has no revalidation hook, so the write bio is
> submitted to physical block X.
>
> But block X is no longer this file's block.  The second writer's
> end_cow already remapped this file to Y.  Block X now has exactly one
> owner: the reflink source -- /etc/passwd.
>
>
> ========================================================================
> Exploitation
> ========================================================================
>
>     We don't need the key
>     We'll break in
>         -- Rage Against The Machine, "Know Your Enemy"
>
> Our exploit opens /etc/passwd read-only, then per attempt:
>
>   1. Reflink-clones /etc/passwd into a scratch file under /var/tmp
>      (open O_RDWR|O_CREAT|O_TRUNC, then ioctl FICLONE on the same fd).
>      The first block of both files now points at the same physical
>      block X; refcount(X) = 2.
>
>   2. Releases 32 threads, barrier-synchronized so they all start at
>      once, each opening the clone O_RDWR|O_DIRECT and issuing one
>      4KB write at offset 0.  Every thread enters fill_cow_hole() with
>      imap = X and drops the ILOCK to wait for a transaction.
>
>   3. Whichever thread gets its transaction first completes the full
>      CoW cycle -- allocate Y, write, end_cow remaps clone from X to Y,
>      refcount(X) drops from 2 to 1.
>
>   4. Whichever thread gets its transaction second re-checks "is X
>      still shared?", sees refcount(X) = 1, and its write is submitted
>      in place -- to block X, which is now solely /etc/passwd's block.
>
>   5. If no thread landed in the window this round, go back to step 1
>      (the O_TRUNC there frees the previous round's CoW block).  Eight
>      background threads doing ftruncate/fdatasync loops on scratch
>      files widen the window by making transaction allocation stall
>      for log space.
>
> The payload written to block X is a byte-for-byte copy of the
> original /etc/passwd with one surgical edit: the "x" is shifted out of
> "root:x:0:0:...", leaving "root::0:0:..." followed by a blank line,
> and every subsequent byte at its original offset.  The root account
> now has an empty password; "su" now grants a root shell with no
> password.
>
> On our Fedora 44 test machine the race typically wins in under ten
> seconds (a few hundred to a few thousand rounds).  There is no crash,
> no WARN, no dmesg output.  The write is at the block layer and
> survives reboot; the target's inode metadata (mode, owner, mtime,
> size) is never touched, so a SUID-root binary target keeps its SUID
> bit.  The target's page cache is not invalidated (the write went
> through the clone's address_space, not the target's), so the attacker
> must drop it -- posix_fadvise(POSIX_FADV_DONTNEED) -- before the
> change becomes visible to buffered readers or execve().
>
> The one prerequisite that can accidentally get in the way: the
> target's block must start with refcount == 1 (so that step 1 raises
> it to 2 and step 3 drops it back to exactly 1).  If something has
> already reflinked /etc/passwd -- an administrator's "cp /etc/passwd
> /etc/passwd.bak", for instance, since coreutils >= 9.0 defaults cp to
> --reflink=auto -- refcount(X) starts at >= 2 and the race can never
> fire against that block.  This is detectable via FIEMAP (the
> FIEMAP_EXTENT_SHARED flag on the target's first extent).  For
> /etc/passwd, an unprivileged user can reset it by running chsh (which
> rewrites the file via rename() and gives it fresh unshared blocks);
> where chsh is not installed, a SUID-root binary is a better target,
> since such binaries are unlikely to have been reflinked.
>
>
> ========================================================================
> Acknowledgments
> ========================================================================
>
> We thank the XFS maintainers and the Linux kernel security team (Carlos
> Maiolino, Greg Kroah-Hartman, Darrick J. Wong, Linus Torvalds, David
> Woodhouse, Willy Tarreau, in particular) for their work on this release.
> We also thank the members of the linux-distros mailing list (Sam James,
> Caryl Takvorian, Denis Pilipchuk, Salvatore Bonaccorso, Solar Designer,
> in particular). Finally, we dedicate this advisory to The Lord of the
> Rings.
>
>
> ========================================================================
> Timeline
> ========================================================================
>
> 2026-07-07: Advisory and proof of concept sent to the XFS maintainer and
> the Linux kernel security team.
>
> 2026-07-14: Patch committed to the XFS kernel development tree by Carlos
> Maiolino and Darrick J. Wong.
>
> 2026-07-15: Advisory sent to the linux-distros mailing list.
>
> 2026-07-16: Patch merged into the Linux kernel source tree by Linus
> Torvalds.
>
> 2026-07-22: Coordinated Release Date (16:00 UTC).
>

