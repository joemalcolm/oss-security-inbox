X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/12/7
Message-ID: <as1YDsAw/f/85aM0@256bit.org>
Date: Mon, 12 Oct 2026 23:58:38 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Command Execution via Rmd Syntax Highlighting in Vim < 9.2.1178
Content-Type: text/plain; charset=utf-8

Command Execution via Rmd Syntax Highlighting in Vim < 9.2.1178
===============================================================
Date: 12.10.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command
     (CWE-78), Improper Input Validation (CWE-20)

## Summary
The R Markdown syntax script in `runtime/syntax/rmd.vim` collects the language
names of code chunks from the buffer and passes them to `globpath()`.  The
script strips non-word characters from each name with a regular expression,
which a crafted byte sequence can make stop early, so text from the file
reaches `globpath()` unfiltered.  On Unix, `globpath()` hands such a pattern to
the shell, which allows arbitrary command execution when the file is opened.

## Description
With the default `g:rmd_dynamic_fenced_languages`, `s:CheckRmdFencedLanguages()`
reads the language name of every code chunk in the buffer and calls
`s:IncludeLanguage()` for names it has not seen yet, which checks for a
matching syntax file using `globpath()`.

The name was trimmed with `substitute(v:val, '\W.*', '', '')`.  The NFA regexp
engine treats an overlong UTF-8 encoding of NUL as the end of the text, so the
pattern does not match and the rest of the name is kept.  If the name contains
backticks, `globpath()` passes it to the shell for expansion.

## Impact
Arbitrary command execution in the context of the user running Vim, when the
user opens a crafted R Markdown or Quarto file (`.rmd`, `.smd`, `.qmd` and
similar).

Exploitation requires:
- a Unix-like system (on Windows `globpath()` does not invoke the shell),
- syntax highlighting enabled
- the victim opening a crafted file.

The severity is rated Medium because the user must open a crafted file of a
specific rmd file type.

## Acknowledgements
The Vim project would like to thank github user tylerni7-ant for reporting and
analyzing the issue.

## References
The issue has been fixed as of Vim patch [v9.2.1178](https://github.com/vim/vim/releases/tag/v9.2.1178).
- [Commit](https://github.com/vim/vim/commit/7670338d8b695c476de868dabd34d68d6de2443b)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-x2w5-pj55-7hpc)


Thanks,
Christian
-- 
Wo man arbeitet, da ist genug; wo man aber mit Worten umgeht, da ist
Mangel.
		-- Salomo
