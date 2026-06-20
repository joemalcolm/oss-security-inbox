X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/20/3
Message-ID: <ajbAz/hpBZG3f18u@256bit.org>
Date: Sat, 20 Jun 2026 18:33:19 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Out-of-bounds Read with Text Properties in Vim >= 9.2.0320 && Vim < 9.2.0679
Content-Type: text/plain; charset=utf-8

Out-of-bounds Read with Text Properties in Vim >= 9.2.0320 && Vim < 9.2.0679
============================================================================
Date: 20.06.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Out-of-bounds Read (CWE-125)

## Summary

A crafted undo or swap file can store a virtual-text property whose offset and
length point outside the line's property data. When Vim restores or displays
such a line it converts the offset into a pointer and reads the virtual text
without bounds checking, causing an out-of-bounds read that can crash Vim or
disclose adjacent heap memory.

This completes GHSA-f36c-2qcp-7gpw (patch 9.2.0670): that patch validated only
the property *count*; the per-property virtual-text offset and length were
still taken from the untrusted file unchecked.

## Details

Since patch 9.2.0320, text properties are stored inline after a line:

```
[text][NUL][prop_count (uint16)][textprop_T ...][virtual text ...]
```

For a virtual-text property (`tp_id < 0`), `tp_text_offset` is the byte offset
of its string relative to the `prop_count` position. On load the offset is
turned into a pointer (`count_ptr + tp_text_offset`) and the string is later
read as `tp_len + 1` bytes.

`text_prop_count_valid()` (9.2.0670) only ensures the `textprop_T` array fits
within the property data; it does not constrain `tp_text_offset` or `tp_len`. A
file with `tp_id < 0` and an out-of-range offset therefore yields a wild
pointer, and reading the virtual text reads out of bounds. The unchecked
conversion is reachable when:

- restoring a line from an undo/swap file, and
- displaying or querying a line's properties (`get_text_props()`, used by
  screen drawing, `charset.c`, and `prop_list()`/`prop_find()`).

## Impact

Out-of-bounds read leading to a crash (denial of service) and potentially
disclosure of adjacent heap memory. Exploitation requires the victim to open a
maliciously crafted undo or swap file, so attack complexity is high and user
interaction is required. Severity: Medium.

## Patch

Fixed by validating, for every virtual-text property, that `tp_text_offset` and
`tp_len` lie within the available property data before the offset is converted
to a pointer (`text_prop_vtext_valid()`), applied on both the undo/swap restore
and the display path. Update to patch 9.2.0679.

## Workarounds

Do not load undo files (`:rundo`) or recover swap files from untrusted sources.

## References

The issue has been fixed as of Vim patch [v9.2.0679](https://github.com/vim/vim/releases/tag/v9.2.0679).
- [Commit](https://github.com/vim/vim/commit/b3faeecc976d3031d7c0675623516ec60c30f949)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-ww8h-47xp-hp4w)
- [GHSA-f36c-2qcp-7gpw](https://github.com/vim/vim/security/advisories/GHSA-f36c-2qcp-7gpw) - the count check this completes
- Introduced in patch [v9.2.0320](https://github.com/vim/vim/releases/tag/v9.2.0320) (inline text-property storage format)


Thanks,
Christian
-- 
Sich mit wenigem begnügen ist schwer, sich mit vielem begnügen
unmöglich.
		-- Marie von Ebner-Eschenbach
