X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/15/6
Message-ID: <atE5bDhTfX2hqna9@256bit.org>
Date: Thu, 15 Oct 2026 22:37:00 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Ex Command Execution via Cargo Quickfix Hooks in Vim < 9.2.1201
Content-Type: text/plain; charset=utf-8

Ex Command Execution via Cargo Quickfix Hooks in Vim < 9.2.1201
===============================================================
Date: 15.10.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements used in a Command
(CWE-77), Improper Neutralization of Special Elements used in an OS Command
(CWE-78)

## Summary
The Rust support in `runtime/autoload/cargo/quickfix.vim` changes to the
directory of the nearest `Cargo.toml` before running `:make` and restores the
previous directory afterwards.  The directory names were passed unescaped to
the `:lchdir` and `:chdir` Ex commands, so a crafted directory name can inject
arbitrary Ex commands, including running shell commands, when the user runs
`:make` in a Rust buffer.

## Description
When the cargo compiler is active for a Rust buffer, the `QuickFixCmdPre` and
`QuickFixCmdPost` autocommands call `cargo#quickfix#CmdPre()` and
`cargo#quickfix#CmdPost()`.  `CmdPre()` determines the directory of the
nearest `Cargo.toml` and changes into it using:

    execute 'lchdir! ' . l:nearest

The directory name is not escaped.  Since `:lchdir` treats `|` as a command
separator, a directory name such as `x|call system('...')` containing a
`Cargo.toml` file causes the text after the `|` to be executed as an Ex
command.  `CmdPost()` restores the previous directory in the same unescaped
way.

## Impact
Arbitrary Ex command execution, and therefore arbitrary shell command
execution, in the context of the user running Vim, when the user runs `:make`
on a Rust file inside a crafted directory tree, e.g. a cloned repository.

Exploitation requires:

* a system that allows to use "|" in a directory name
* a Rust buffer using the cargo compiler,
* the victim running `:make` within a crafted directory tree.

## Acknowledgements
The Vim project would like to thank github user @Dalvelac for reporting the issue.

## References
The issue has been fixed as of Vim patch [v9.2.1201](https://github.com/vim/vim/releases/tag/v9.2.1201).

- [Commit](https://github.com/vim/vim/commit/b93c000ddfc27c6a1192bcba77204709536cf094)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-4vf6-278g-hq7j)


Best,
Christian
-- 
Ist erst die letzte Klammer zu, hat der Lispler seine Ruh.
