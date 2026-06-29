X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/2
Message-ID: <akKVu6Gtl-N2lT5D@mertle>
Date: Mon, 29 Jun 2026 11:56:43 -0400
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: Symlink Traversal Privilege Escalation via getfattr/setfattr, getfacl/setfacl/chacl, libacl
Content-Type: text/plain; charset=utf-8

On 2026-06-29 14:27:01, Andreas Gruenbacher wrote:
> 
> Major Issues Fixed:
> 
>   - The libacl library functions acl_get_file(), acl_set_file(),
>     acl_extended_file(), and acl_delete_def_file() take a pathname argument
>     and follow symbolic links.  When a privileged user calls one of those
>     functions, an attacker that controls a pathname component can replace a
>     file or directory with a symbolic link and redirect the operation to a
>     different file.  This can lead to local privilege escalation.
> 
>     The library functions cannot be fixed without breaking compatibility; the
>     described behaviour is by design.
> 
>     Instead, version 2.4.0 of the acl package introduces the additional
>     functions acl_get_file_at(), acl_set_file_at(), acl_extended_file_at(), and
>     acl_delete_def_file_at().  These functions each take a dirfd file
>     descriptor argument and an at_flags argument and accept the
>     AT_SYMLINK_NOFOLLOW and AT_EMPTY_PATH flags.  Use these functions to
>     control when to follow symbolic links.
> 
>     In addition, the libacl functions acl_get_fd(), acl_set_fd(), and
>     acl_extended_fd() functions always operate on the access ACL; the library
>     previously did not offer a way to operate on the default ACL of a directory
>     file descriptor.  The new functions remove that restriction.
>
> ...
>
> Several of the issues pointed out here were identified by OpenAI Codex

This OpenAI guy sounds really smart:

* https://lists.nongnu.org/archive/html/acl-devel/2018-02/msg00000.html
* https://codeberg.org/mjo/apply-default-acl/src/branch/master/src/libadacl.c#L601
