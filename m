X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/17
Message-ID: <ao9S+sGJSDr9fmSq@256bit.org>
Date: Wed, 26 Aug 2026 22:56:26 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Out-of-bounds Access in libvterm Resize Handling in Vim < 9.2.1013
Content-Type: text/plain; charset=utf-8

Out-of-bounds Access in libvterm Resize Handling in Vim < 9.2.1013
==================================================================

Date: 26.08.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Out-of-bounds Write (CWE-787),
     Improper Validation of Specified Quantity in Input (CWE-1284)

## Summary

The bundled libvterm keeps the terminal size in two places: `VTermState`,
which holds the cursor position and the bounds used to clamp it, and
`VTermScreen`, which owns the storage for the cells and the line
information.  The `CSI 8 ; rows ; cols t` sequence, with which a program
running in a terminal window asks for a new size, was written into
`VTermState` unchanged, while the screen clamped it to `VTERM_MAX_ROWS` and
`VTERM_MAX_COLS` when allocating the storage.  The clamped value was not
reported back, so the state kept the requested size.  All later bound checks
then used a size that is much larger than the allocated line information,
and ordinary text output could move the cursor beyond it, reading and
writing past the end of the allocation.

## Description

Programs in a terminal window can send `CSI 8 ; rows ; cols t` to
request a new size.  The only limit on the values is the one the argument
parser applies to any numeric argument, about 1.07 billion.  `on_resize()`
in `src/libvterm/src/state.c` stored them directly:

    state->rows = rows;
    state->cols = cols;

and raised `scrollregion_bottom` accordingly, before calling the resize
callback.  That callback, `resize()` in `src/libvterm/src/screen.c`, clamps
the size to `VTERM_MAX_ROWS` and `VTERM_MAX_COLS`, both 1000, and allocates
the `VTermLineInfo` array for the clamped number of rows.  It updates the
screen's own size but has no way to correct the state, and `on_resize()`
does not read the size back.

After a request such as `CSI 8 ; 50000 ; 200 t` the state therefore reports
50000 rows while the line information holds 1000 entries.  Because the
scroll region was widened as well, `linefeed()` no longer scrolls at the
bottom of the screen, it only advances the cursor row.  Printing more than
1000 lines, or printing enough text to wrap that often, moves the cursor
past the end of the array.

The issue has been addressed by clamping the requested size to the same
limits the screen uses, at the start of `on_resize()`, before the state is
updated and before any storage is allocated.

## Impact

Heap out-of-bounds read and write in the process running Vim.  The values
written are small fixed constants rather than attacker-controlled data and
the offset follows the amount of output produced, so the demonstrated
consequence is memory corruption leading to a crash.  There is no channel
through which the program in the terminal can observe what is read.

Exploitation requires:

- Vim compiled with the `terminal` feature and a terminal window open,
- output rendered in that window from a program under the attacker's
  control, for example a connection to a malicious SSH server, a file shown
  with a pager, or the log of a compromised build tool,
- the escape sequence and the following output to arrive together, without
  Vim redrawing in between, which happens for any program producing a
  continuous stream of output.

No privileges on the host running Vim are needed and the sequence is
ordinary output on the program's own standard output stream.  The severity
is rated Medium because the impact demonstrated is a denial of service
rather than control over the process, and because the attacker must already
have output displayed in a terminal window.

This is the second issue in the same sequence in the bundled libvterm.
Patch v9.2.0569 rejected missing, zero and negative dimensions, however the values
above the supported maximum remained unchecked.

## Acknowledgements

The Vim project would like to thank Yazan Balawneh, Cystack.ps for reporting
the issue.

## References

The issue has been fixed as of Vim patch [v9.2.1013](https://github.com/vim/vim/releases/tag/v9.2.1013).

- [Commit](https://github.com/vim/vim/commit/e4f51e505ae0d64c4797c89314ecff1be88135be)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-vfc7-mhvm-gjp8)
- [Related patch v9.2.0569](https://github.com/vim/vim/releases/tag/v9.2.0569)


Best,
Christian
-- 
Wer selbst keine Handlungskompetenzen hat, kann nicht
wissen, wie man diese am besten vermittelt bekommt.
		-- Nils Krüger
