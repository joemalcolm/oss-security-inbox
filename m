X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/29
Message-ID: <amO/eHs6lzMp42Tq@256bit.org>
Date: Fri, 24 Jul 2026 21:39:36 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Arbitrary Ex Command Execution in C Omni-Completion in Vim < 9.2.0845
Content-Type: text/plain; charset=utf-8

Arbitrary Ex Command Execution in C Omni-Completion in Vim < 9.2.0845
======================================================================

Date: 23.07.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Control of Generation of Code ('Code Injection') (CWE-94),
     Inclusion of Functionality from Untrusted Control Sphere (CWE-829)

## Summary

The C omni-completion script in `runtime/autoload/ccomplete.vim` looks up
struct members by building a `:vimgrep` command that contains the type name
taken from the `typeref:` field of a tags file entry, and running it with
`:execute`.  The value was escaped only for the pattern delimiter and the
backslash.  That is not sufficient: a value containing an unterminated
collection makes Vim's own pattern skipping fail, after which the command
parser looks for a command separator across the whole argument.  A crafted
tags file can therefore run arbitrary Ex commands, and through them shell
commands, when the user invokes omni-completion on a member access.

This is a bypass of the fix released as patch v9.2.0735 for
GHSA-mf92-v4xw-j45x, which prevented the same injection only for values
containing the pattern delimiter.

## Description

`runtime/ftplugin/c.vim` sets `omnifunc=ccomplete#Complete` on C buffers
when filetype plugins are enabled.  When completing a member access, and the
declaration is not found in the buffer itself, `StructMembers()` searches the
files listed in the tags file:

    execute 'silent! keepjumps noautocmd '
      .. n .. 'vimgrep ' .. '/\t' .. escape(typename, '/\') .. '\(\t\|$\)/j '
      .. fnames

`typename` comes verbatim from the `typeref:` or `typename:` extension field
of a tags entry, which Vim returns unchanged.

The `:vimgrep` command may be followed by another command after a bar, so
before looking for that bar Vim first skips over the search pattern.  When
skipping the pattern does not end at the closing delimiter, the routine
returns a failure and the caller silently falls back to the beginning of the
argument, after which the first unescaped bar is treated as a command
separator.

Skipping the pattern fails on an unterminated collection: an opening bracket
makes the pattern skipping look for the matching closing bracket and run to
the end of the text instead.  A `typeref:` value that opens a bracket and
then contains a bar therefore ends the `:vimgrep` command early, and what
follows the bar is executed as an Ex command.  No delimiter character is
needed, so the escaping applied by the earlier fix does not prevent it.  The
leading `:silent!` suppresses the resulting error, so the injected command
runs without a visible failure.

The issue has been addressed by matching the field literally, using the
"very nomagic" mode for the part of the pattern that holds the value, so
that no character in it can affect how the pattern is parsed.

## Impact

Arbitrary Ex command execution, and through commands such as `:!` arbitrary
operating-system command execution, in the context of the user running Vim.
Exploitation requires:

- Vim with filetype plugins enabled, which is the default in
  `runtime/defaults.vim` and in most distribution configurations, so that
  the C omni-completion function is installed on C buffers,
- a tags file under the attacker's control, which is ordinary data to
  receive together with source code, for example in a cloned repository or
  an unpacked archive,
- the victim opening a C file from that tree and invoking omni-completion
  with `CTRL-X CTRL-O` on a member access whose type is only known from the
  tags file.

The severity is rated Medium because the crafted tags file has no effect
until the user invokes omni-completion, which is a deliberate action, and
because the type must not be declared in the edited buffer, since the
completion would otherwise not consult the tags file at all.

## Acknowledgements

The Vim project would like to thank Threonine for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.0845](https://github.com/vim/vim/releases/tag/v9.2.0845).

- [Commit](https://github.com/vim/vim/commit/2f628d8104958fa7421664f792ca6d4f7a39a10f)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-cx73-phcg-3j5g)

Best,
Chris
-- 
Verurteile niemanden, bevor du nicht in seiner Lage warst.
		-- Talmud (Literaturwerk des Judentums)
