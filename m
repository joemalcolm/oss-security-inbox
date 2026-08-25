X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/25/8
Message-ID: <ao4I6V4jQwlICU2w@256bit.org>
Date: Tue, 25 Aug 2026 23:28:09 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Cc: Yee Cheng Chin <ychin.macvim@...il.com>, "T.J. Townsend" <tj@...k.me>, Ken Takata <ktakata65536@...il.com>, Jiaqi Zhou <zeertzjq@...look.com>, Dominique Pelle <dominique.pelle@...il.com>, mattn.jp@...il.com, sthen@...nbsd.org, adamw@...ebsd.org, James McCoy <jamessan@...essan.com>, Yegappan Lakshmanan <yegappanl@...il.com>, Doug Kearns <dougkearns@...il.com>, glepnir <glephunter@...il.com>, Hirohito Higashi <h.east.727@...il.com>, Daniel Horecki <morr@...r.pl>, Zdenek Dohnal <zdohnal@...hat.com>
Subject: [vim-security] Arbitrary Ex Command Execution via File Names in C Omni-Completion in Vim < 9.2.1011
Content-Type: text/plain; charset=utf-8

Arbitrary Ex Command Execution via File Names in C Omni-Completion in Vim < 9.2.1011
====================================================================================

Date: 25.08.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Control of Generation of Code ('Code Injection') (CWE-94),
     Inclusion of Functionality from Untrusted Control Sphere (CWE-829),
     Improper Neutralization of Argument Delimiters in a Command ('Argument Injection') (CWE-88)

## Summary

The C omni-completion script in `runtime/autoload/ccomplete.vim` looks up
struct members by building a `:vimgrep` command and running it with
`:execute`.  Besides the type name, that command line also holds the list of
tags file names returned by `tagfiles()`.  Those names were escaped for the
space, the backslash, `#` and `%`, but not for the bar.  Since `:vimgrep`
accepts another command after a bar, a file name whose name contains one
ends the `:vimgrep` command early and what follows is executed as an Ex
command when the user invokes omni-completion on a member access.

This is the same defect in the same command line as GHSA-cx73-phcg-3j5g,
fixed in patch [v9.2.0845](https://github.com/vim/vim/releases/tag/v9.2.0845),
which addressed only the type name.  Unlike that issue, no crafted tags file
content is needed here: the file name itself carries the payload.

## Description

`runtime/ftplugin/c.vim` sets `omnifunc=ccomplete#Complete` on C buffers
when filetype plugins are enabled.  When completing a member access, and the
declaration is not found in the buffer itself, `StructMembers()` searches the
tags files:

    var fnames: string = tagfiles()
      ->map((_, v: string) => escape(v, ' \#%'))
      ->join()
    ...
    execute 'silent! keepjumps noautocmd '
      .. n .. 'vimgrep ' .. '/\t\V' .. escape(typename, '/\') .. '\m\(\t\|$\)/j '
      .. fnames

`tagfiles()` returns the names of the tags files in effect for the buffer,
derived from the `'tags'` option.  The names are appended unquoted to the
`:vimgrep` argument list.

The `:vimgrep` command is defined with the `EX_TRLBAR` flag, so a bar ends
the command and starts a new one.  A bar in a file name is therefore not
part of the name but a command separator, and the remainder of the line is
parsed and executed as an independent Ex command by the same `:execute`.
Escaping the space limits what such a command can contain, but does not
prevent it, and `ccomplete.vim` is a `vim9script` file, so the injected text
is parsed with Vim9 syntax.  The leading `:silent!` suppresses the resulting
error, so the injected command runs without a visible failure.

The issue has been addressed by escaping the bar in the tags file names as
well.

## Impact

Arbitrary Ex command execution, and through commands such as `:!` arbitrary
operating-system command execution, in the context of the user running Vim.
Exploitation requires:

- Vim with filetype plugins enabled
- a tags file whose path contains a bar, for example because it is stored in
  a directory whose name contains one, and a `'tags'` value under which that
  file is found,
- the victim opening a C file from that tree and invoking omni-completion
  with `CTRL-X CTRL-O` on a member access whose type is only known from the
  tags file.

The severity is rated Medium.  The payload travels in a path rather than in
file content, so it is not visible to review that inspects files only.  On
the other hand a bar in a directory name is unusual and conspicuous, it is
not a valid character in file names on MS-Windows, and the crafted name has
no effect until the user deliberately invokes omni-completion on a type that
is not declared in the edited buffer, since the completion would otherwise
not consult the tags files at all.

## Acknowledgements

The Vim project would like to thank Yazan Balawneh, Cystack.ps for reporting
the issue.

## References

The issue has been fixed as of Vim patch [v9.2.1011](https://github.com/vim/vim/releases/tag/v9.2.1011).

- [Commit](https://github.com/vim/vim/commit/331d5d67028505c5b6043603a57d1e8497b922b5)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-r77m-8m55-rpr6)

Best,
Christian
-- 
Auge um Auge - und die ganze Welt wird blind sein.
		-- Mahatma Gandhi
