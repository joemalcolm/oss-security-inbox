X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/16/13
Message-ID: <ajG+aOs2rTD+fmoq@256bit.org>
Date: Tue, 16 Jun 2026 23:21:44 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Vimscript Code Injection in netrw NetrwLocalRmFile() via crafted filename affects Vim < 9.2.0663
Content-Type: text/plain; charset=utf-8

Vimscript Code Injection in netrw NetrwLocalRmFile() via crafted filename affects Vim < 9.2.0663
================================================================================================
Date: 16.06.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Control of Generation of Code (CWE-94) /
     Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') (CWE-78)

## Summary
A Vimscript code injection vulnerability exists in `s:NetrwLocalRmFile()` in
the netrw plugin (`runtime/pack/dist/opt/netrw/autoload/netrw.vim`) when
deleting a local file from the browser.  A filename derived from the buffer's
directory listing is interpolated into an Ex command line passed to
`:execute` with only the backslash character escaped, allowing a crafted
filename containing a bar (`|`) to terminate the intended command and execute
arbitrary Vimscript, including shell commands via `:call system()` and `:!`.

## Description
`s:NetrwLocalRmFile()` removes a file and wipes its buffer.  The sibling sinks
in the same file guard the Ex context with `fnameescape()`, for example:

    exe "sil! keepj keepalt file ".fnameescape(a:newname)

The delete handler, however, escapes only the backslash character and passes
the value straight to `:execute`:

    let rmfile = s:NetrwFile(netrw#fs#ComposePath(a:path,
                   escape(a:fname, '\\')))->fnamemodify(':.')
    ...
    execute printf('silent! bwipeout %s', rmfile)

`escape(a:fname, '\\')` neutralizes only `\`; the subsequent `ComposePath`,
`NetrwFile`, and `fnamemodify` calls join and normalize the path but do not
remove `|` or a newline.  When the value reaches `:execute`, a `|` terminates
the `bwipeout` command and begins the next, so the remainder of the filename
is run as Ex commands.  A file named `x|call system('cmd')|y` turns the
deletion into `silent! bwipeout x`, `call system('cmd')`, `y`, and the
injected `:call system(...)` runs an arbitrary shell command.
The filename reaches `s:NetrwLocalRmFile()` through the `D` mapping, which
reads the filename from the current line of the netrw directory listing and,
after confirmation, deletes the entry.

## Impact
The vulnerability allows arbitrary Vimscript execution, and by extension
arbitrary shell command execution, with the privileges of the user running
Vim.  Exploitation requires:
- a Unix-like system on which a filename may contain a bar (`|`),
- a crafted file present in a directory the victim browses with netrw, and
- the victim to delete that specific entry (press `D`, then confirm with `y`).

The severity is rated Medium because exploitation requires a planted file with
an unusual name and a deliberate delete action by the victim on that specific
entry, although the resulting primitive is full command execution as the
victim user.
Note: due to the nature of the issue, it seems unlikely that a user would
delete such a suspicious filename.

## Acknowledgements
The Vim project would like to thank Cipher / Causal Security
(https://causalsecurity.com/) for reporting and analyzing the issue.

## References
The issue has been fixed as of Vim patch [v9.2.0663](https://github.com/vim/vim/releases/tag/v9.2.0663).
- [Commit](https://github.com/vim/vim/commit/55bc757a5d436e59d50fe43f7cda94b118f86cb2)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-vhh8-v6wx-hjjh)


Thanks,
Christian
-- 
There are probably better ways to do that, but it would make the parser
more complex.  I do, occasionally, struggle feebly against complexity...  :-)
		-- Larry Wall in <7886@...-devvax.JPL.NASA.GOV>
