X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/27/6
Message-ID: <aj78qPhyTGc/C5MY@256bit.org>
Date: Sat, 27 Jun 2026 00:26:48 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Arbitrary Code Execution via C Omni-Completion in Vim < 9.2.0735
Content-Type: text/plain; charset=utf-8

Arbitrary Code Execution via C Omni-Completion in Vim < 9.2.0735
================================================================
Date: 26.06.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements (CWE-94),
     Inclusion of Functionality from Untrusted Control Sphere (CWE-829)

## Summary
The C omni-completion script in `runtime/autoload/ccomplete.vim` interpolates
the `typeref:` / `typename:` extension field of a `tags` entry, without
escaping, into a `:vimgrep` pattern that is run through `:execute`.  Because
`:vimgrep` honors the bar (`|`) as a command separator, a crafted tag field
can close the search pattern and append an arbitrary Ex command.  Opening a
hostile `.c` file whose project `tags` file contains such an entry and
invoking C omni-completion runs that command as the editing user.

## Description
`runtime/ftplugin/c.vim` installs `omnifunc=ccomplete#Complete` on every C
buffer when Vim has filetype plugins enabled.  When the user invokes omni-
completion with `CTRL-X CTRL-O` on a structure-member access (for example
`myvar.field`), the completer looks up the variable in the `tags` files,
reads the type from the entry's `typeref:` (or `typename:`) field, and
searches the `tags` files for members of that type.

The member search builds a `:vimgrep` command and runs it with `:execute`.
The type name taken from the tag field is concatenated directly into the
search pattern with no escaping, while the file-name argument is passed
through `escape()`.  The `typeref:` field is parsed verbatim by `taglist()`;
its only constraint is that it contains no internal whitespace, so the
characters `/ | ' " ( )` all survive.

`:vimgrep` carries the `EX_TRLBAR` attribute, which means an unescaped bar in
the constructed command line terminates the `:vimgrep` and begins a new Ex
command.  A tag field of the form `x/|<command>|"` therefore closes the
regular expression with `/`, starts a fresh Ex command after `|`, and comments
out the remainder of the generated line.

## Impact
Arbitrary local code execution as the user running Vim, with that user's full
credential set, file-system access, and network egress.  Realistic delivery
vectors include:

- cloning or checking out a third-party repository that ships a `tags` file
  alongside its C sources,
- extracting a source tarball or archive whose layout places a hostile `tags`
  file next to the `.c` file being inspected,
- auditing a malware sample or untrusted source tree in its own directory.

Exploitation requires:

- Vim with filetype plugins enabled (`filetype plugin on`, the default in
  `runtime/defaults.vim` and most distribution `vimrc` files),
- a `tags` file reachable through the `'tags'` option (the default `./tags`
  resolves to the attacker's file in the conventional ctags workflow, where
  Vim's working directory is the project root),
- the victim opening the hostile `.c` file and invoking C omni-completion on a
  member access.

The severity is rated Medium because the user must manually invoke omni-
completion on a member access after opening the file; the bug does not fire on
file-open alone and the `ccomplete.vim` produces an error message, which makes
the whole attack quite noticeable.

## Acknowledgements
The Vim project would like to thank Cipher / Causal Security
(https://causalsecurity.com/) for reporting and analyzing the issue and
providing a proof of concept.

## References
The issue has been fixed as of Vim patch [v9.2.0735](https://github.com/vim/vim/releases/tag/v9.2.0735).
- [Commit](https://github.com/vim/vim/commit/6b611b0d15603c52ebdad17172b0232b4f65704e)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-mf92-v4xw-j45x)


Thanks,
Christian
-- 
Ich schoß ihn über seinen eigenen Haufen.
		-- Heinz Erhardt
