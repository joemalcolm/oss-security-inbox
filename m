X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/20/2
Message-ID: <aja3KmvSYfWSajz+@256bit.org>
Date: Sat, 20 Jun 2026 17:52:10 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] PowerShell Command Injection in zip.vim via Crafted Archive Entry Names in Vim > 9.1.1783 && Vim < 9.2.0678
Content-Type: text/plain; charset=utf-8

PowerShell Command Injection in zip.vim via Crafted Archive Entry Names in Vim > 9.1.1783 && Vim < 9.2.0678
===========================================================================================================
Date: 20.06.2026
Severity: Moderate
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command (CWE-78)

## Summary

When the bundled zip plugin `autoload/zip.vim` falls back to PowerShell to
browse, read, extract, update or delete entries in a zip archive, it builds the
PowerShell command by inserting archive entry names that are quoted only for the
shell, not for PowerShell.  A crafted entry name can break out of the intended
string context and cause PowerShell to execute arbitrary commands with the
privileges of the user running Vim, triggered by opening, viewing or extracting
the archive.  The PowerShell fallback was introduced in patch 9.1.1784.

## Description

The PowerShell helper functions assemble a script such as

    $fileEntry = $zip.Entries | Where-Object { $_.FullName -eq <name> }

and quote `<name>` with Vim's `shellescape()`.  `shellescape()` quotes for the
current `'shell'`, not for PowerShell.  The resulting script is handed to
PowerShell via `pwsh -Command` / `powershell -Command`, and PowerShell — not the
shell — parses it.  Inside a PowerShell double-quoted string, the subexpression
operator `$(...)` and variable references such as `$name` are expanded and
executed.  When `'shell'` is `cmd.exe` (the Windows default), `shellescape()`
produces a double-quoted result and has no reason to escape `$` for `cmd.exe`,
so an entry name containing a `$(...)` subexpression survives quoting and is
evaluated by PowerShell.

For example, an archive whose entry is named with an embedded `$(...)`
expression causes that expression to run when the entry is browsed, viewed or
extracted.  All of the PowerShell code paths (browse, read, extract, delete,
update) are affected, because they all relied on shell-level quoting for values
that are interpreted by PowerShell.

## Impact

An attacker who can have a victim open a crafted zip archive in Vim can achieve
arbitrary command execution as that user.  The read/browse path is reached
merely by opening the archive and viewing an entry, without an explicit extract
step.

The practical reach is limited.  The PowerShell helpers are only used as a
fallback, when an external `unzip`/`zip` is not available (or the external
command fails), on a typical installation that handles zip files these tools are
present, so the vulnerable code is not normally reached.  Exploitation has been
confirmed on Windows where `'shell'` is `cmd.exe`, because
that yields the double-quoted form PowerShell interpolates.  The underlying
problem is not platform-specific, and other configurations that use a
PowerShell `'shell'` (for example PowerShell Core on Unix) may also be
affected, depending on the quoting `shellescape()` produces on that platform.

Code executes with the privileges of the user running Vim.

## Acknowledgements

The Vim project would like to thank DDugs for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.0678](https://github.com/vim/vim/releases/tag/v9.2.0678).
- [Commit](https://github.com/vim/vim/commit/b2cc9be119d51212bf0d3f2a99)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-x5fg-h5w9-9frf)


Thanks,
Christian
-- 
Mit einer geballten Faust kann man keinen Händedruck wechseln.
		-- Indira Gandhi
