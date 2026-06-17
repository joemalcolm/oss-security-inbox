X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/17/10
Message-ID: <ajMQ0Wnbpe20TaZG@256bit.org>
Date: Wed, 17 Jun 2026 23:25:37 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Out-of-bounds Read in Text Property Count in Vim < 9.2.0670
Content-Type: text/plain; charset=utf-8

Out-of-bounds Read in Text Property Count in Vim < 9.2.0670
===========================================================
Date: 17.06.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Out-of-bounds Read (CWE-125)

## Summary

`get_text_props()` in `src/textprop.c` reads a `uint16` property count stored
inline after a line's text and returns it as the number of 32-byte
`textprop_T` entries that follow.  The only check is a floor that guarantees
room for a single entry; the count is never checked against the amount of data
actually present.  A line that declares a large count while carrying little
data causes consumers to read far past the end of the line buffer.  Such a
line can be delivered through a crafted undo file, leading to a crash.

## Description

When text properties are present, a line is stored as
`[text][NUL][prop_count (uint16)][textprop_T ...][vtext ...]`.
`get_text_props()` validates only that the property data is large enough for
one entry and then returns `prop_count` unchanged:

```C
    if (propdata_len < PROP_COUNT_SIZE + sizeof(textprop_T))
    {
        iemsg(e_text_property_info_corrupted);
        return 0;
    }
    mch_memmove(&prop_count, text + textlen, PROP_COUNT_SIZE);
    *props = text + textlen + PROP_COUNT_SIZE;
    return (int)prop_count;
```

Consumers use the returned count as a loop bound, reading
`sizeof(textprop_T)` (32) bytes per iteration with no re-check against the real
line length, so a count of 65535 against a single stored entry reads about two
megabytes past the line.  An attacker authors both a source file and its
sibling undo (`.un~`) file; the saved line text in the undo file is patched so
that, on undo, the restored line declares a property count far larger than its
data.  The next consumer, such as `prop_list()` or a screen redraw, then reads
out of bounds.  The same unbounded count is used by the unpacked-memline path
and by the line-deletion code, which are affected in the same way.

## Impact

Undo files are normally trusted data written by Vim itself, but Vim reads a
sibling `.un~` file when `'undofile'` is enabled and the file's content hash
matches, so a repository or archive that ships a malicious source/undo pair can
deliver the crafted line.  The trigger is user-interaction-gated: `'undofile'`
must be enabled, the user must open the file and undo, and a consumer must then
inspect the line (for example by displaying it).  When that happens, the
out-of-bounds read can leak adjacent memory through property metadata returned
by `prop_list()` and crash the editor.

## Acknowledgements

The Vim project would like to thank Cipher / Causal Security
(https://causalsecurity.com/) for reporting and analyzing the issue and
suggesting a fix.

## References

The issue has been fixed as of Vim patch [v9.2.0670](https://github.com/vim/vim/releases/tag/v9.2.0670).
- [Commit](https://github.com/vim/vim/commit/b2338ca90643e2f01ecb6547c1172716aaec4f79)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-f36c-2qcp-7gpw)


Thanks,
Christian
-- 
Wer beim Schlachter klingelt, muß sich nicht wundern, wenn kein Schwein
aufmacht.
