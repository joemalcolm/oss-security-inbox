X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/7
Message-ID: <179067032099.3666653.10486620282212629769@notcve.org>
Date: Tue, 29 Sep 2026 10:25:20 +0200
From: advisories@...cve.org
To: oss-security@...ts.openwall.com
Subject: [NotCVE-2026-0016] game-music-emu VGM Command Interpreter Unvalidated 0xE0 PCM Seek Offset Allows Out-of-Bounds Read and Denial of Service
Content-Type: text/plain; charset=utf-8

----------------------------------------------------------------------------
NotCVE Advisory — NotCVE-2026-0016
----------------------------------------------------------------------------

[-] Summary:
An out-of-bounds read in the VGM command interpreter of game-music-emu
(libgme), the open-source video game music emulation library, allows an
attacker who supplies a crafted .vgm or .vgz file to crash the hosting
process or to have adjacent heap memory influence the rendered audio, via
a PCM seek command whose offset is never validated. CVSS:3.1 7.1
(AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:H).

[-] Affected:
game-music-emu (libgme) through 0.6.5, and master as of commit fe8da4b.
Default builds; no fixed version is verified.

[-] Technical Description:
Vgm_Emu_Impl::run_commands() in gme/Vgm_Emu_Impl.cpp handles VGM command
0xE0 (cmd_pcm_seek) by building an interior pointer straight from file
content:

  case cmd_pcm_seek:
      pcm_pos = pcm_data + pos [3] * 0x1000000L + pos [2] * 0x10000L +
              pos [1] * 0x100L + pos [0];
      pos += 4;
      break;

pcm_data points into the decompressed file buffer, set by a preceding 0x67
(cmd_data_block) command. The 32-bit little-endian operand is
attacker-controlled and is compared neither against the declared
data-block size nor against data_end, so pcm_pos can be placed up to 4 GiB
past the end of the allocation. The following 0x80-0x8F (cmd_pcm_delay)
case then executes write_pcm( vgm_time, *pcm_pos++ ), dereferencing the
pointer without a bounds check of its own. The reporter's AddressSanitizer
log records a SEGV on a read at Vgm_Emu_Impl.cpp:255 in run_commands().

When the computed address is unmapped the read faults and the process
terminates; when it is mapped, the byte read becomes part of the decoded
audio, so memory adjacent to the file buffer can influence
attacker-observable output.

Reachability: the VGM emulator is part of the default build, and the
command stream runs during gme_start_track(), on the file-open path. VLC's
modules/demux/gme.c calls gme_start_track() from its demuxer Open
function, and FFmpeg links the library when built with --enable-libgme. No
authentication, privileges or configuration change are needed; the file
only has to reach a libgme consumer.

Upstream issue #165 reports a related but different overread in the same
function (unchecked command argument bytes); it is not this defect.

Weaknesses:
CWE-823: Use of Out-of-range Pointer Offset
CWE-125: Out-of-bounds Read
CAPEC-540: Overread Buffers
CAPEC-129: Pointer Manipulation

[-] Credit:
Discovered by netspacer1124 (https://github.com/netspacer1124).

[-] Full Details and Updates:
https://notcve.org/notcve/NotCVE-2026-0016

[-] Main References:
https://github.com/libgme/game-music-emu
https://raw.githubusercontent.com/libgme/game-music-emu/0.6.5/gme/Vgm_Emu_Impl.cpp
https://github.com/videolan/vlc/blob/master/modules/demux/gme.c

[-] About NotCVE:
NotCVE (https://notcve.org) assigns public, timestamped NotCVE IDs to
vulnerabilities not acknowledged by vendors. Vendor will not assign a CVE?
Request a NotCVE: https://notcve.org/form/ · Contributors:
https://notcve.org/hall/
