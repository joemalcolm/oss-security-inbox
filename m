X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/28/1
Message-ID: <akFHCXZVKpRQLtC9@256bit.org>
Date: Sun, 28 Jun 2026 18:08:41 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Arbitrary Code Execution via PHP Omni-Completion in Vim < 9.2.0736
Content-Type: text/plain; charset=utf-8

Arbitrary Code Execution via PHP Omni-Completion in Vim < 9.2.0736
==================================================================
Date: 28.06.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements (CWE-94),
     Inclusion of Functionality from Untrusted Control Sphere (CWE-829)

## Summary
The PHP omni-completion script in `runtime/autoload/phpcomplete.vim`
interpolates a class or trait name, taken from the contents of the edited
buffer, into a `search()` pattern that is run via `win_execute()` without
escaping.  A name containing a single quote can terminate the `search()`
string argument early; because the bar (`|`) is honored as an Ex command
separator, the remainder of the name is then run as Ex commands.  Via the
`:!` command this allows arbitrary command execution.

## Description
`runtime/ftplugin/php.vim` installs `omnifunc=phpcomplete#Complete` on every
PHP buffer when Vim has filetype plugins enabled.  When the user invokes
omni-completion with `CTRL-X CTRL-O`, `phpcomplete#GetClassContentsStructure()`
locates a class declaration by building a `search()` command and running it
through `win_execute()`:

    call win_execute(popup_id,
      \ 'call search(''\c\(class\|interface\|trait\)\_s\+'
      \ .. a:class_name .. '\(\>\|$\)'')')

The class name is concatenated into the single-quoted `search()` argument
without neutralizing the single quote.  A `'` in the name ends that string
early, and the `:call` command honors the `EX_TRLBAR` attribute, so a bar
following the quote begins a new Ex command that `win_execute()` then runs.

The name passed to this function can originate from the buffer's own contents
(for example a class or trait name parsed from the file), so a crafted PHP
file can place an injecting value where a class name is expected.

## Impact
Arbitrary Ex command execution, and via the `:!` command arbitrary operating-
system command execution, in the context of the user running Vim.

Exploitation requires:

- Vim with filetype plugins enabled (`filetype plugin on`, the default in
  `runtime/defaults.vim` and most distribution `vimrc` files),
- the PHP omni-completion function in use
  (`omnifunc=phpcomplete#Complete`, set by the bundled PHP ftplugin),
- the victim opening a crafted PHP file and invoking omni-completion.

The severity is rated Medium because the user must open the crafted file and
manually invoke omni-completion; the bug does not fire on file-open alone.

## Acknowledgements
The Vim project would like to thank Hirohito Higashi for reporting, analyzing
and fixing the issue.

## References
The issue has been fixed as of Vim patch [v9.2.0736](https://github.com/vim/vim/releases/tag/v9.2.0736).
- [Commit](https://github.com/vim/vim/commit/43afc581a37a35762dd0ef292f038b9dc5680a24)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-fh26-8f79-wj97)


Best,
Christian
-- 
Nur auf dem Boden harter Arbeit bereitet sich normalerweise der
Einfall vor.
		-- Max Weber
