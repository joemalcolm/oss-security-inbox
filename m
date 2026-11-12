X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/12/7
Message-ID: <avYh8eF//6SfAo+K@256bit.org>
Date: Thu, 12 Nov 2026 21:30:41 +0100
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Command Execution via CSS Omni-Completion in Vim < 9.2.1342
Content-Type: text/plain; charset=utf-8

Command Execution via CSS Omni-Completion in Vim < 9.2.1342
===========================================================
Date: 12.11.2026
Severity: Low
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command
     (CWE-78)

## Summary
The CSS omni-completion script in `runtime/autoload/csscomplete.vim` passes
the file name after an `@...ort` rule from the buffer to `glob()` without
escaping it.  On Unix, `glob()` hands a pattern containing backticks to the
shell, which allows arbitrary command execution when the user completes an
`@...ort` file name in a crafted CSS file.

## Description
When completing after `@...ort "` or `@...ort url(`,
`csscomplete#CompleteCSS()` takes the text typed so far and calls
`glob(filestart . '*')` to find matching files.  The text is taken directly
from the current line and not escaped.

If it contains backticks, `glob()` uses the shell for the expansion
and the text between the backticks is executed as a shell command.

## Impact
Arbitrary command execution in the context of the user running Vim, when the
user uses omni completion (`CTRL-X CTRL-O`) on a crafted `@...ort` line in a
CSS file.

Exploitation requires:
- a Unix-like system (on Windows `glob()` does not invoke the shell),
- filetype plugins enabled, so that 'omnifunc' is set for CSS files,
- the victim opening a crafted CSS file and using omni completion with the
  cursor after the crafted `@...ort` value.

The severity is rated Low because, unlike opening the file alone, the user
must explicitly invoke omni completion on a crafted suspicious line.

## Acknowledgements
The Vim project would like to thank Github user Magashwarahan for reporting the
issue.

## References
The issue has been fixed as of Vim patch [v9.2.1342](https://github.com/vim/vim/releases/tag/v9.2.1342).
- [Commit](https://github.com/vim/vim/commit/cd50664ab086a37839e3d12754040dbc324dbfa7)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-pp46-p33v-78rf)


Best,
Christian
-- 
Wie man sein Kind nicht nennen sollte: 
  Sam A. Riter 
