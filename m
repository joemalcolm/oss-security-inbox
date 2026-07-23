X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/21
Message-ID: <amKIa/xO8v3PEBRd@256bit.org>
Date: Thu, 23 Jul 2026 23:32:27 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Out-of-bounds Access in Popup Opacity Handling in Vim >= 9.2.0469 && Vim < 9.2.0843
Content-Type: text/plain; charset=utf-8

Out-of-bounds Access in Popup Opacity Handling in Vim >= 9.2.0469 && Vim < 9.2.0843
===================================================================================

Date: 23.07.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Buffer Underwrite (CWE-124),
     Out-of-bounds Read (CWE-125)

## Summary

A popup window created with the "clipwindow" option is clipped to its host
window rather than to the screen.  When such a popup is anchored to a text
property and the host window is scrolled so that the anchor moves above the
visible area, the popup's window row is negative by design, and the rows
clipped off the top are recorded separately.  The code that marks the screen
cells covered by a popup using the "opacity" option did not account for
this: it iterated from the popup's window row without a lower bound, so it
indexed the screen-sized array before its start.  This causes a read outside
the allocated array, and a write outside it when the stored value is smaller
than the popup's z-index.

## Description

`popup_mark_opacity_zindex()` in `src/popupwin.c` fills an array holding, for
each screen cell, the highest z-index of an opacity popup covering that
cell.  The array is allocated for the current screen size, and the cell
offset is computed as the row multiplied by the number of screen columns
plus the column.

The loop over the popup's rows was bounded above, by the popup height and by
the number of screen rows, but not below.  For a "clipwindow" popup whose
anchor has scrolled above the top of the host window, the window row is
negative, so the computed offset is negative as well and refers to memory
before the array.  The value found there is compared with the popup's
z-index, which is set from Vim script, and overwritten when it is smaller.

The column dimension is not affected, because the popup's window column is
always clamped to a non-negative value.  A related function that reads the
same array checks its arguments before indexing, so only the marking code
was affected.

The issue has been addressed by making the popup's window row always refer
to the first visible row, and recording the rows clipped off the top only in
the separate top offset, so that no consumer of the window row has to clamp
it.

## Impact

A read outside the bounds of a heap array, and a conditional write of a
16-bit value outside it.  The written value comes from the popup's z-index
and the affected offsets follow from the scroll position and the popup
geometry, so both are influenced by the Vim script that creates the popup.
In a default layout the accesses fall into a neighbouring array used for the
popup mask, and the editor continues to run, so the effect is silent.

Exploitation requires Vim script that creates a popup using the
"clipwindow", "opacity" and text property anchor options together, and a
host window that is scrolled so the anchor leaves the visible area.  The
issue is therefore reachable from a plugin or from a script the user runs,
but not from opening a file, since a modeline cannot call functions.

The severity is rated Medium because the affected code can only be reached
by running Vim script, and because the write is constrained: it stores a
16-bit value and only where the value already present is smaller, so it can
raise the affected memory but not set it to an arbitrary value.

## Acknowledgements

The Vim project would like to thank @tdjackey for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.0843](https://github.com/vim/vim/releases/tag/v9.2.0843).

- [Commit](https://github.com/vim/vim/commit/975e191dc817d8d00abca7197c4529a417c2f805)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-pmvp-6rcj-98p4)


Thanks,
Chris
-- 
Wer Glück im Spiel hat, hat auch Geld für die Liebe.
