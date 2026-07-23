X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/19
Message-ID: <amKIRxkWY6A9Hl65@256bit.org>
Date: Thu, 23 Jul 2026 23:31:51 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Heap Buffer Overflow in Text Property Handling in Vim < 9.2.0841
Content-Type: text/plain; charset=utf-8

Heap Buffer Overflow in Text Property Handling in Vim < 9.2.0841
================================================================

Date: 23.07.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Integer Overflow or Wraparound (CWE-190),
     Heap-based Buffer Overflow (CWE-122)

## Summary

The number of text properties attached to a line is stored in the memline
as a 16-bit value.  When adding a property, `prop_add_one()` in
`src/textprop.c` computes the new count as `(uint16_t)(proplen + 1)`
without checking the existing count against the 16-bit ceiling.  On a line
that already holds 65535 text properties the increment wraps to zero, so
the buffer allocated for the rewritten line reserves no space for any
property records, while the existing records are then copied into it.  This
writes far past the end of the allocation.

## Description

Text properties are stored inline in the memline entry for a line, in the
layout `[text][NUL][prop_count][textprop_T...][vtext...]`, where
`prop_count` is a `uint16_t`.  When `prop_add()` adds a property,
`prop_add_one()` obtains the current count from `get_text_props()` and
computes the new one:

    uint16_t new_propcount = (uint16_t)(proplen + 1);

The size of the replacement line is then derived from that value:

    new_line_len = (int)textlen + (int)PROP_COUNT_SIZE
                    + new_propcount * (int)sizeof(textprop_T)
                    + vtext_total;
    newtext = alloc(new_line_len);

When `proplen` is already 65535, `proplen + 1` is 65536, which does not fit
in a `uint16_t` and truncates to zero.  The allocation therefore contains
room for the line text and the count field but for no property records at
all.  The subsequent copies, which move the existing records into the new
buffer, are driven by `proplen` rather than by the truncated count, so all
65535 existing records are written into a buffer sized for none of them.

The existing validation of the property block, added in patch 9.2.0670,
checks the structural consistency of the stored data but does not impose an
upper bound on the property count, so nothing prevents a line from reaching
65535 properties.

The data written past the allocation consists of the existing `textprop_T`
records, whose field values derive from the arguments of earlier
`prop_add()` calls.

## Impact

An out-of-bounds heap write of attacker-influenced data, which typically
results in a crash and may be usable for further exploitation.
Exploitation requires:

- Vim built with the `textprop` feature, which is included in the "huge"
  feature set used by most distributions,
- 65536 text properties being added to a single line of a buffer, either by
  a Vim script the user runs, or by a plugin that derives text properties
  from data the attacker controls, such as the contents of an opened file.

The severity is rated Medium because reaching the 16-bit ceiling on a
single line does not occur in normal use and requires either a script
written for the purpose or a plugin driven with crafted input.

## Acknowledgements

The Vim project would like to thank Github user @Wang1rrr for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.0841](https://github.com/vim/vim/releases/tag/v9.2.0841).

- [Commit](https://github.com/vim/vim/commit/a9336b476fd1a182e3f79b5f83c0ffb04f8a922b)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-hm4g-pjfx-m27j)


Thanks,
Chris
-- 
Theorie ist, wenn man alles weiß und nix funktioniert; Praxis ist, wenn
alles funktioniert und keiner weiß, warum.
