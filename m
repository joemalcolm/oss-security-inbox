X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/9
Message-ID: <179067057264.3668835.3504071279258768205@notcve.org>
Date: Tue, 29 Sep 2026 10:29:32 +0200
From: advisories@...cve.org
To: oss-security@...ts.openwall.com
Subject: [NotCVE-2026-0018] game-music-emu (libgme) through 0.6.5 Unbounded GYM Command Loop Allows Heap Out-of-Bounds Read
Content-Type: text/plain; charset=utf-8

----------------------------------------------------------------------------
NotCVE Advisory — NotCVE-2026-0018
----------------------------------------------------------------------------

[-] Summary:
An out-of-bounds read in the GYM playback path of game-music-emu (libgme),
the open-source video game music emulation library, allows an attacker who
supplies a crafted .gym file to read heap memory past the end of the
allocation holding the file contents, potentially terminating the process.
CVSS:3.1 5.4 (AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:L).

[-] Affected:
game-music-emu (libgme) through 0.6.5 (present since at least 0.5.5), and
master as of commit fe8da4b. No fixed version is verified: upstream issue
#166, opened on 13 July 2026, describes the parse_frame defect and has had
no maintainer response.

[-] Technical Description:
The command loop of Gym_Emu::parse_frame() in gme/Gym_Emu.cpp is

  while ( (cmd = *pos++) != 0 )

and terminates only on a 0x00 byte, with no bound against data_end.
Operands are then read unconditionally after the opcode: int data = *pos++
and, for a YM2612 port-0 register write (cmd == 1), a second
int data2 = *pos++. A file whose final frame ends mid-command therefore
reads 1 to 2 bytes past the end of the buffer. The if ( pos >= data_end )
check only runs after the loop has already walked off the end.

A second, broader unbounded scan exists in run_dac(), which looks ahead
with while ( (cmd = *p++) != 0 ) and no data_end bound at all. When the
final frame contains a DAC write (YM2612 register 0x2A on port 0) and no
0x00 follows before the end of the allocation, it can walk arbitrarily far
past the buffer, stopping on whatever zero byte adjacent heap memory
supplies. This second path is confirmed by reading the source at master
and 0.6.5, but is not exercised by the supplied proof-of-concept files.

Reachability: both paths run from gme_start_track() as soon as playback
begins (Music_Emu::start_track() -> ... -> Gym_Emu::play_frame() ->
parse_frame()). The file only needs the 428-byte GYMX header for
gme_identify_header() to route it to Gym_Emu. FFmpeg's
libavformat/libgme.c and VLC's modules/demux/gme.c both hand
attacker-supplied bytes to this path. The metadata (track length) path is
not affected.

Weaknesses:
CWE-125: Out-of-bounds Read
CWE-126: Buffer Over-read
CAPEC-540: Overread Buffers

[-] Credit:
Discovered by netspacer1124 (https://github.com/netspacer1124).

[-] Full Details and Updates:
https://notcve.org/notcve/NotCVE-2026-0018

[-] Main References:
https://github.com/libgme/game-music-emu/issues/166
https://raw.githubusercontent.com/libgme/game-music-emu/0.6.5/gme/Gym_Emu.cpp
https://github.com/libgme/game-music-emu

[-] About NotCVE:
NotCVE (https://notcve.org) assigns public, timestamped NotCVE IDs to
vulnerabilities not acknowledged by vendors. Vendor will not assign a CVE?
Request a NotCVE: https://notcve.org/form/ · Contributors:
https://notcve.org/hall/
