X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/17
Message-ID: <amKIF03IxtOBbwKW@256bit.org>
Date: Thu, 23 Jul 2026 23:31:03 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Arbitrary Code Execution via Shell Keyword Lookup in Vim < 9.2.0839
Content-Type: text/plain; charset=utf-8

Arbitrary Code Execution via Shell Keyword Lookup in Vim < 9.2.0839
===================================================================

Date: 23.07.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command
     (CWE-78)

## Summary

The shell filetype plugins `runtime/ftplugin/sh.vim` and
`runtime/ftplugin/zsh.vim` install a buffer-local `keywordprg` that
interpolates its argument into a `bash -c` or `zsh -c` command without
shell escaping.  Because a `keywordprg` beginning with `:` is escaped with
`fnameescape()`, which does not neutralize shell metacharacters, and because
`K` in Visual mode passes the whole selection verbatim, a crafted line in a
shell script can execute arbitrary commands when the user selects it and
presses `K`.  `runtime/ftplugin/ps1.vim` is affected in the same way through
PowerShell.

## Description

When a buffer's filetype resolves to bash, zsh or PowerShell, the bundled
filetype plugin defines a keyword lookup command and points `keywordprg` at
it, for example:

    command! -buffer -nargs=1 ShKeywordPrg silent exe
      \ ':hor term bash -c "help "<args>" 2>/dev/null || man "<args>""'
    setlocal keywordprg=:ShKeywordPrg

For a `keywordprg` that starts with `:`, Vim escapes the argument of `K`
with `vim_strsave_fnameescape()` (`src/normal.c`), which uses
`PATH_ESC_CHARS` (`src/vim.h`).  That set omits the shell metacharacters
`;`, `&`, `(`, `)` and `>`; those appear only in `SHELL_ESC_CHARS`, which is
used exclusively for a `keywordprg` that is not an Ex command.  The filetype
plugin adds no escaping of its own, so these characters reach the inner
`bash -c` unchanged and terminate the intended command.

In Visual mode, `K` passes the entire selection rather than the keyword
under the cursor, so shell metacharacters are preserved.  In Normal mode the
argument is restricted to 'iskeyword' characters, which excludes these
metacharacters, and the issue does not arise.

The same pattern applies to `runtime/ftplugin/zsh.vim`, which builds a
`zsh -c` command, and to `runtime/ftplugin/ps1.vim`, which passes the
argument to PowerShell via `-Command`.

## Impact

Arbitrary operating-system command execution in the context of the user
running Vim.  Exploitation requires:

- Vim with filetype plugins enabled
- the buffer's filetype resolving to sh, bash, zsh or PowerShell
- the victim opening a crafted file, selecting the crafted line in Visual
  mode and invoking the keyword lookup with `K`.

The severity is rated Medium because Normal-mode `K` is not affected and
exploitation requires the victim to deliberately select the crafted text in
Visual mode and invoke the keyword lookup; the bug does not fire on
file-open alone.

## Acknowledgements

The Vim project would like to thank Github user @manus-use for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.0839](https://github.com/vim/vim/releases/tag/v9.2.0839).

- [Commit](https://github.com/vim/vim/commit/c5a82fe013e73c98004ad7cd4f906b1ad1ed610e)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-r5v6-q6j8-8qw2)



Thanks,
Chris
-- 
Von wem stammt der Ausspruch: lernen, lernen und nochmals lernen?
Von Lenin.
Ja, aber wann hat er das gesagt?
Na, als er das Zeugnis von Ulbricht gesehen hat!
