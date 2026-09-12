X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/12/2
Message-ID: <aqWQIV4n+b7frOwK@256bit.org>
Date: Sat, 12 Sep 2026 19:47:13 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Ex Command Injection in sign_jump() in Vim < v9.2.1090
Content-Type: text/plain; charset=utf-8

Ex Command Injection via Unescaped Buffer Name in sign_jump() in Vim < v9.2.1090
================================================================================

Date: 12.09.2026
Severity: Low
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Argument Delimiters in a Command ('Argument Injection') (CWE-88),
     Improper Control of Generation of Code ('Code Injection') (CWE-94)

## Summary

When jumping to a sign in a buffer that is not displayed in any window, Vim
re-opens that buffer by building an Ex command line from the buffer's file
name and executing it.  The file name is interpolated without escaping, so a
name containing the Ex command separator `|` is split into two commands, the
second of which is taken from the file name.

## Description

`sign_jump()` in `src/sign.c` handles the case where the buffer holding the
sign is not shown in any window:
```c
    char_u *cmd = alloc(STRLEN(buf->b_fname) + 25);
    if (cmd == NULL)
        return -1;

    sprintf((char *)cmd, "e +%ld %s", (long)lnum, buf->b_fname);
    do_cmdline_cmd(cmd);
```
`buf->b_fname` is stored as given and is not escaped via
`fnameescape()`. Unix permits `|` in a file name, and
`do_cmdline_cmd()` treats it as a command separator, so a buffer named
`pwn|:silent !cmd` results in two Ex commands being executed: the `:edit`,
which fails, and whatever follows the bar.

The branch is reached only when the buffer is not displayed in any window,
that is when `buf_jump_open_win()` returns NULL.  It is used by the
`:sign jump` command and by the `sign_jump()` function.

The issue has been addressed by opening the buffer by its number with
`do_ecmd()` instead of synthesizing a command line, so that no escaping is
required.

## Impact

Arbitrary Ex command execution, and through commands such as `:!` arbitrary
operating system command execution, in the context of the user running Vim.
Vim must be built with `+signs`, which is the default in normal builds.

The severity is rated Low.  Execution requires a buffer whose name contains
`|` or a newline, a sign placed in that buffer, the buffer not being shown in
any window, and `:sign jump` or `sign_jump()` being invoked on it.  These are
deliberate steps by the user rather than a consequence of opening a file, and
the commands run with no privilege beyond the user's own account.

## Acknowledgements

The Vim project would like to thank Ahmed Ibrahim (@skeletonsec) for
reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.1090](https://github.com/vim/vim/releases/tag/v9.2.1090).

- [Commit](https://github.com/vim/vim/commit/2942c934ec7c68791b9da7ab6c29ae4987f7a2fb)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-x9jf-rjm6-vxqh)


Best,
Christian
-- 
Sperma light = Macht schwanger, aber nicht dick!
