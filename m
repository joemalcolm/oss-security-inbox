X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/08/5
Message-ID: <avDwqaDCJthZMrYD@256bit.org>
Date: Sun, 8 Nov 2026 22:59:05 +0100
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security]: Heap Buffer Overflow with Crafted Spell File in Vim < 9.2.1309
Content-Type: text/plain; charset=utf-8

Heap Buffer Overflow with Crafted Spell File in Vim < 9.2.1309
==============================================================
Date: 08.11.2026
Severity: Low
CVE: *requested, not yet assigned*
CWE: Access of Resource Using Incompatible Type (CWE-843), Out-of-bounds Read
(CWE-125)

## Summary
A crafted spell file (`.spl`) containing two SN_SOFO sections causes Vim to
free the soundfolding items of the first section as if they were SN_SAL
items, reading beyond the allocated memory.  The spell file can be loaded by
a modeline, so opening a file is enough to trigger the issue.

## Description
The SN_SAL and SN_SOFO sections of a spell file both store their
soundfolding information in `sl_sal`.  For an SN_SOFO section, `set_sofo()`
uses `sl_sal` as an array of 256 `int *` pointers.  Before doing so, it calls
`free_sal_items()` to free any previous contents, which treats the array as
`salitem_T` entries.

Vim only writes either an SN_SAL or an SN_SOFO section, but the spell file
reader accepted any number of them.  When a second SN_SOFO section follows
the first one, `free_sal_items()` interprets the `int *` array as
`salitem_T` entries, reading beyond the end of the allocation and passing
the read values to `vim_free()`.

Since `'spelllang'` accepts the name of a `.spl` file and can be set from a
modeline together with `'spell'`, a crafted spell file is loaded when a file
containing such a modeline is opened.

## Impact
A heap out-of-bounds read, resulting in a crash of Vim.  An invalid free has
not been demonstrated but cannot be ruled out.

Exploitation requires:

* the crafted `.spl` file and a file with a modeline setting `'spell'` and
  `'spelllang'` to it, e.g. in a cloned repository or an extracted archive,
* `'modeline'` being enabled
* a multi-byte `'encoding'` such as utf-8 (the default in most environments).

## Acknowledgements
The Vim project would like to thank pangflame for reporting the issue.

## References
The issue has been fixed as of Vim patch [v9.2.1309](https://github.com/vim/vim/releases/tag/v9.2.1309).

- [Commit](https://github.com/vim/vim/commit/bdcb63d47fa5e86406a7b04a0ab62638018fb6b5)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-26qr-jvfj-hcwm)

Thanks,
Christian
-- 
Fenster verschmutzen viel weniger, wenn man die Scheiben herausnimmt.
