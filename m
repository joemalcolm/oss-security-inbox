X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/21/2
Message-ID: <ajhExzTp27d6WG88@256bit.org>
Date: Sun, 21 Jun 2026 22:08:39 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Arbitrary Code Execution via Python Omni-Completion Docstrings in Vim < 9.2.0699
Content-Type: text/plain; charset=utf-8

Arbitrary Code Execution via Python Omni-Completion Docstrings in Vim < 9.2.0699
================================================================================
Date: 2026-06-21
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Control of Generation of Code (CWE-94)

## Summary
Vim's Python omni-completion executes reconstructed function and class
definitions from the current buffer with `exec()` as part of populating the
completion dictionary. When reconstructing that source, each scope's docstring
is inserted verbatim between triple quotes with no escaping, so a hostile
buffer can break out of the triple-quoted literal and execute attacker-
controlled Python during omni-completion. This is the same class of issue as
GHSA-65p9-mwwx-7468 (patch 9.2.0597), whose fix sanitised parameter
defaults/annotations and class base lists but left the docstring path
untouched.

## Description
In `runtime/autoload/python3complete.vim` (and the legacy
`pythoncomplete.vim`), the `get_code()` methods build the source later passed
to `exec()` and emit each docstring as `'"""' + self.docstr + '"""'`.
`self.docstr` comes straight from buffer content, and the `doc()` helper only
strips leading and trailing quote and whitespace characters, so a `"""`
embedded in the middle of a docstring survives. A class-body docstring written
as a single-quoted source string keeps the embedded `"""` as one string token
through `doc()`, then breaks out of the generated triple-quoted literal: the
reconstructed `class` body becomes string concatenation around an attacker
expression, which Python evaluates at class-definition time when `exec()` runs.

## Impact
An attacker who can convince a user to open or edit a hostile Python
buffer and trigger Python omni-completion (CTRL-X CTRL-O, or a plugin
that invokes the completion function) can execute Python code in the
user's Vim process. The code runs with the user's privileges.

Vim built without `+python3` and `+python` is not affected. Triggering
omni-completion in the hostile buffer is required; opening the file
alone is not sufficient.

## Acknowledgements
The Vim project would like to thank Chenyuan Mi for reporting and analyzing the
issue and suggesting a fix.

## References
The issue has been fixed as of Vim patch [v9.2.0699](https://github.com/vim/vim/releases/tag/v9.2.0699).
- [Commit](https://github.com/vim/vim/commit/cce141c42740f122dd8486ae04e21c2a81016ba8)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-ppj8-wqjf-6fp3)
- [Github Security Advisory GHSA-65p9-mwwx-7468](https://github.com/vim/vim/security/advisories/GHSA-65p9-mwwx-7468) (prior fix for the same surface)


Thanks,
Christian
-- 
Flaschen mit einem schwergängigen Schraubverschluß lassen sich
leichter öffnen, wenn man sie vorsichtig mit einem Hammer zerschlägt.
