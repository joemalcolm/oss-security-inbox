X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/18
Message-ID: <ao9bkeMXd0xhgKJB@256bit.org>
Date: Wed, 26 Aug 2026 23:33:05 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Integer Overflow in Undo File Entry Size Check in Vim < v9.2.1014 && Vim >= v8.1.0688
Content-Type: text/plain; charset=utf-8

Integer Overflow in Undo File Entry Size Check in Vim < v9.2.1014 && Vim >= v8.1.0688
=====================================================================================

Date: 26.08.2026
Severity: Low
CVE: *requested, not yet assigned*
CWE: Integer Overflow or Wraparound (CWE-190),
     Out-of-bounds Write (CWE-787)

## Summary

When Vim reads a persistent undo file it allocates an array holding the
lines of an undo entry, with the number of lines taken from the file.  The
check that guards this allocation against an overflow of the multiplication
compares against the size of a pointer, while the array is allocated using
the size of its actual element type, which is three times larger on a
32-bit system.  The check therefore accepts a line count for which the
multiplication does not fit, resulting in an allocation that is much smaller
than requested.

Only 32-bit builds of Vim are affected.

## Description

`unserialize_uep()` in `src/undo.c` reads the number of lines of an undo
entry from the file and allocates the array for them:

    if (uep->ue_size < LONG_MAX / (int)sizeof(char_u *))
        array = U_ALLOC_LINE(sizeof(undoline_T) * uep->ue_size);

The multiplication is computed with type `size_t`, which wraps around
instead of failing when the result does not fit.  The check exists to
prevent that, but it uses the size of a pointer where the allocation uses
the size of `undoline_T`.  On a 32-bit system a pointer is 4 bytes and
`undoline_T` is 12, so the check permits a line count three times larger
than the one at which the multiplication starts to wrap.

For a line count in that range the allocation succeeds with a size much
smaller than needed, and the loop that follows fills the array using the
line count from the file, writing past the end of the allocation.

Until patch v8.1.0688 the array held plain pointers and the check was
correct.  That patch changed the element type to `undoline_T` so that text
properties are restored by undo, and updated the allocation but not the
check.

On 64-bit builds the line count is read as a 32-bit value and the
multiplication cannot overflow a 64-bit `size_t`, so those builds are not
affected.

The issue has been addressed by using the size of `undoline_T` for the
check as well.

## Impact

Heap out-of-bounds write in the process running Vim, when a crafted undo
file is read.  This happens either explicitly with `:rundo`, or
automatically when `'undofile'` is set and Vim finds a matching undo file
for the edited file.

The values written are a heap pointer and two lengths derived from the undo
file rather than freely chosen data, and the write proceeds sequentially
from the end of the allocation, so the expected consequence is heap
corruption leading to a crash.

The severity is rated Low.  Besides being limited to 32-bit builds, a
crafted file must contain a valid entry for every line up to the point
where the allocation ends, which for the smallest overflowing line count
means an undo file of well over a hundred megabytes.  Whether the wrapped
allocation succeeds at all depends on the memory available to a 32-bit
process.

## Acknowledgements

The Vim project would like to thank Yazan Balawneh, Cystack.ps for reporting
the issue.

## References

The issue has been fixed as of Vim patch [v9.2.1014](https://github.com/vim/vim/releases/tag/v9.2.1014).

- [Commit](https://github.com/vim/vim/commit/e41756455701b9419f2493ab2e2e0f01557fe939)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-cvc5-p4x9-3f9f)


Best,
Christian
-- 
Bienen sind gar nicht so fleißig, sie können nur nicht langsam fliegen.
