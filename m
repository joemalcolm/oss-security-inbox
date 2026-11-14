X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/11
Message-ID: <avipWZHBB4GQhIYq@256bit.org>
Date: Sat, 14 Nov 2026 19:32:57 +0100
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Command Execution via PowerShell Keyword Lookup in Vim < 9.2.1346
Content-Type: text/plain; charset=utf-8

Command Execution via PowerShell Keyword Lookup in Vim < 9.2.1346
=================================================================

Date: 14.11.2026
Severity: Low
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command
     (CWE-78)

## Summary

The fix for [GHSA-r5v6-q6j8-8qw2](https://github.com/vim/vim/security/advisories/GHSA-r5v6-q6j8-8qw2)
in `runtime/ftplugin/ps1.vim` quotes the argument of `K` for PowerShell by
doubling ASCII single quotes.  PowerShell also treats the typographic quotes
U+2018, U+2019, U+201A and U+201B as single quotes, which were not doubled.  A
crafted line in a PowerShell script can therefore still execute arbitrary
commands when the user selects it and presses `K`.

## Description

The PowerShell filetype plugin defines a `:GetHelp` command and sets
`keywordprg` to it.  The command passes the argument of `K` to PowerShell
as `Get-Help -Full '<arg>'` via `-Command`, doubling every `'` in the
argument to keep it inside the single-quoted string.

The PowerShell language accepts `'`, `‘`, `’`, `‚` and `‛` as
single-quote characters.  A typographic quote in the argument therefore
terminates the string, and the text following it is executed as PowerShell
code, e.g. for the line:

    x’;./hook.ps1;’

## Impact

Arbitrary command execution in the context of the user running Vim.
Exploitation requires:

- Vim with filetype plugins enabled and PowerShell (`pwsh` or
  `powershell.exe`) installed
- the victim opening a crafted PowerShell script, selecting the crafted
  line in Visual mode and invoking the keyword lookup with `K`.

The severity is rated Low because Normal-mode `K` is not affected and
exploitation requires the victim to deliberately select the crafted text in
Visual mode and invoke the keyword lookup.

## Acknowledgements

The Vim project would like to thank Zachariah Mithani for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.1346](https://github.com/vim/vim/releases/tag/v9.2.1346).

- [Commit](https://github.com/vim/vim/commit/188a790b05a282926b311503245f5119a5f6f3ed)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-XXXX)
- [Previous advisory](https://github.com/vim/vim/security/advisories/GHSA-r5v6-q6j8-8qw2)



Best,
Christian
-- 
Wie man sein Kind nicht nennen sollte: 
  Claire Grube 
