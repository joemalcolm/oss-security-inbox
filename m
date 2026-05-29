Received: (qmail 18118 invoked by uid 550); 29 May 2026 19:56:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5681 invoked from network); 29 May 2026 19:16:28 -0000
Date: Fri, 29 May 2026 21:16:18 +0200
From: Christian Brabandt <cblists@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <ahnmAr9bSJY5May/@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cblists@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Arbitrary Code Execution via Python Omni-Completion
 in Vim < 9.2.561

Arbitrary Code Execution via Python Omni-Completion in Vim < 9.2.561
====================================================================
Date: 29.05.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Control of Generation of Code (CWE-94),
     Inclusion of Functionality from Untrusted Control Sphere (CWE-829)

## Summary
The Python omni-completion script in `python3complete.vim` for Vim with the
`+python3` interpreter enabled (and the legacy `pythoncomplete.vim` for builds
with the `+python` interpreter) executes the `import` and `from` statements
found in the current buffer through Python's import machinery.  Because the
buffer's working directory is on `sys.path`, opening a hostile `.py` file
with a sibling Python package and invoking omni-completion runs that
package's top-level code as the editing user.

## Description
`runtime/ftplugin/python.vim` installs `omnifunc=python3complete#Complete`
on every Python buffer when Vim has `+python3` (or `+python`).
When the user invokes omni-completion with `CTRL-X CTRL-O` in insert mode, the
completer parses the buffer with an embedded Python tokenizer, regenerates a
Python source string from the parsed scope, and passes it to `exec(src,
self.compldict)` to populate the completion dictionary.

The regenerated source re-emits every top-level `import X` and
`from X import Y` statement that the parser harvested from the buffer.
Additionally, the completer extends `sys.path` with `['.', '..']` so
that sibling modules in the buffer's working directory are importable.
The combined effect: invoking omni-completion on a `.py` file runs
Python's import machinery on attacker-supplied module names with the
attacker's working directory on the search path.

A crafted `.py` file containing `import evil_pkg` and a sibling
`evil_pkg/__init__.py` in the same directory will execute the
`__init__.py` code when the victim opens the file and presses
`CTRL-X CTRL-O`.

## Impact
Arbitrary local code execution as the user running Vim, with the user's
full credential set (SSH keys, cloud credentials, etc.), file-system
access, and network egress.  Realistic delivery vectors include:

- reviewing a third-party Python contribution by checking out a fork
  branch and opening any `.py` file in it,
- auditing an extracted source tarball, malware sample, or repository
  whose layout the attacker controls,
- opening a `.py` file from any downloaded archive where the extracted
  layout places a hostile package next to the file being inspected.

Exploitation requires:

- Vim built with `+python3` (or `+python3/dyn` with a working Python 3
  runtime)
- Filetype plugins enabled (`filetype plugin on`, the default in
  `runtime/defaults.vim` and most distribution `vimrc`s).
- The victim opens the hostile `.py` file from the attacker-controlled
  working directory and invokes omni-completion.

The severity is rated Medium because the user must manually invoke omni-
completion after opening the file; the bug does not fire on file-open alone.

## Mitigation
As of Vim patch v9.2.0561 the omni-completer no longer executes
`import` or `from` statements harvested from the buffer by default.
Users who require completion of imported module members (for example
`os.<C-X><C-O>` offering `getcwd`, `path`, etc.) can opt back in with: >

    let g:pythoncomplete_allow_import = 1

Setting this variable re-enables the import-execution behavior and
should only be used when editing code from trusted sources.  When the
variable is unset or `0`, in-buffer symbols (classes, functions,
variables defined in the file) still complete normally; only completion
of names that would require executing imports is unavailable.

## Acknowledgements
The Vim project would like to thank github user tonghuaroot for
reporting, analyzing the issue, providing a proof of concept
and suggesting a fix.

## References
The issue has been fixed as of Vim patch [v9.2.0561](https://github.com/vim/vim/releases/tag/v9.2.0561).
- [Commit](https://github.com/vim/vim/commit/4b850457e12e1a678dd209f2868154f7553cbf8d)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-52mc-rq6p-rc7c)


Best,
Christian
-- 
There's so much to say but your eyes keep interrupting me.
