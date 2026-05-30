Received: (qmail 3460 invoked by uid 550); 30 May 2026 16:48:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3424 invoked from network); 30 May 2026 16:48:56 -0000
Date: Sat, 30 May 2026 18:48:45 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <ahsU7bRbPbLYQpwF@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Out-of-bounds Read in Terminal Screen Snapshot in Vim
 < 9.2.565

Out-of-bounds Read in Terminal Screen Snapshot in Vim < 9.2.565
================================================================
Date: 30.05.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Out-of-bounds Read (CWE-125)

## Summary
The `update_snapshot()` function in `src/terminal.c` copies the visible
terminal screen into the scrollback buffer when a snapshot is taken.  For
each screen cell it walks the cell's `chars[]` array with no upper bound,
stopping only when it encounters a NUL terminator.  When a cell legitimately
fills all `VTERM_MAX_CHARS_PER_CELL` (6) slots — a base character plus five
combining marks — the bundled libvterm returns the array without a
terminating NUL, so the loop reads past the fixed six-element array and
appends the out-of-bounds values to a buffer reserved for only six
characters.  A program whose output is rendered inside a `:terminal` window
can trigger this with a short byte sequence and no Vim scripting, leading to
a crash.

## Description
`update_snapshot()` is invoked whenever the terminal's visible screen is
snapshotted into the scrollback buffer, for example when the user enters
Terminal-Normal mode with `CTRL-W N`, or when the terminal job exits.  For
each cell it retrieves the cell with `vterm_screen_get_cell()` and emits its
characters with:

    for (i = 0; (c = cell.chars[i]) > 0 || i == 0; ++i)
        ga.ga_len += utf_char2bytes(c == NUL ? ' ' : c,
             (char_u *)ga.ga_data + ga.ga_len);

The loop has no `i < VTERM_MAX_CHARS_PER_CELL` guard and relies on the array
being NUL-terminated.  The bundled libvterm fills `cell.chars[]` with up to
`VTERM_MAX_CHARS_PER_CELL` entries and only writes a terminator when fewer
than that many characters are present.  A cell holding a base glyph plus five
combining marks therefore fills all six slots and is returned unterminated,
so the loop reads `cell.chars[6]` and beyond — past the end of the array —
and appends each out-of-bounds value to the snapshot buffer, which was grown
for only `VTERM_MAX_CHARS_PER_CELL` characters.

## Impact
A program running inside a `:terminal` window normally controls only its own
output and cannot affect the parent Vim process's memory.  By emitting a
single cell that fills all six character slots, such a program causes Vim to
read past a fixed-size array and append attacker-influenced, out-of-bounds
values to a buffer sized for only six characters.  The reliably reproduced
outcome is an out-of-bounds read leading to a crash (denial of service) of
the editor.

## Mitigation
The issue is fixed as of Vim patch v9.2.0565, which bounds the loop in
`update_snapshot()` with `i < VTERM_MAX_CHARS_PER_CELL`, mirroring the
existing bound in `handle_pushline()`.

## Acknowledgements
The Vim project would like to thank github user andrejtomci for reporting and
analyzing the issue and suggesting a fix.

## References
The issue has been fixed as of Vim patch [v9.2.565](https://github.com/vim/vim/releases/tag/v9.2.0565).
- [Commit](https://github.com/vim/vim/commit/63680c6d3d52477817b49cd1a66e7aabe8a7aa19)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-47gw-8gc3-mgcm)


Thanks,
Chris
-- 
Je mehr man getrunken, desto mehr lobt man den Wirt und sein Bier.
		-- Jean Paul
