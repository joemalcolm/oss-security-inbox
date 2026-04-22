X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/22/8
Message-ID: <aej+xp8kzTsXycYF@256bit.org>
Date: Wed, 22 Apr 2026 19:00:54 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] OS Command Injection in netrw affects Vim < 9.2.0383
Content-Type: text/plain; charset=utf-8

OS Command Injection in netrw affects Vim < 9.2.0383
=====================================================
Date: 21.04.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') (CWE-78)

## Summary
An OS command injection vulnerability exists in the `netrw` standard
plugin bundled with Vim. By inducing a user to open a crafted URL (e.g.,
using the `sftp://` or `file://` protocol handlers), an attacker can
execute arbitrary shell commands with the privileges of the Vim process.

## Description
When Netrw processes remote or local URLs such as `sftp://host/path` or
`file://host/path`, it may create temporary files to store transferred
content. The temporary file name is derived in part from the original
file name, including its suffix.

The vulnerability exists because the suffix extraction logic in
`s:GetTempfile()` previously allowed arbitrary characters after the `.` 
in a filename. This permitted shell metacharacters (e.g., `;`, `|`, `&`) 
to be embedded in the suffix and propagated into the generated temporary 
file name.

Since this temporary file name was passed to external commands (such as
`sftp` or configured file handlers) without proper escaping, attackers 
could inject arbitrary shell commands. 

## Impact
The vulnerability allows for arbitrary shell command execution in the 
context of the Vim process. Exploitation requires the user to open a 
specially crafted URL, and the injected payload is typically visible in 
the filename, making stealthy exploitation less likely. Therefore, the 
severity is rated medium.

## Acknowledgements
The Vim project would like to thank Joshua Rogers of [AISLE Research 
Team](https://aisle.com/) for reporting the issue.

## References
The issue has been fixed as of Vim patch [v9.2.0383](https://github.com/vim/vim/releases/tag/v9.2.0383).
- [Commit](https://github.com/vim/vim/commit/405e2fb6d54d5653523809e2853d99d1c000a5fc)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-85ch-p2qr-m5gx)


Best,
Christian
-- 
Majestät ist das Vermögen, ohne Rücksicht auf Belohnung oder
Bestrafung recht oder unrecht zu handeln.
		-- Goethe, Maximen und Reflektionen, Nr. 730
