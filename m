X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/8
Message-ID: <179067044684.3667765.7808481475513690258@notcve.org>
Date: Tue, 29 Sep 2026 10:27:26 +0200
From: advisories@...cve.org
To: oss-security@...ts.openwall.com
Subject: [NotCVE-2026-0017] game-music-emu (libgme) 0.6.5 and Earlier AY Loader NULL Pointer Dereference Allows Denial of Service
Content-Type: text/plain; charset=utf-8

----------------------------------------------------------------------------
NotCVE Advisory — NotCVE-2026-0017
----------------------------------------------------------------------------

[-] Summary:
A NULL pointer dereference in the AY file loader of game-music-emu
(libgme), the open-source video game music emulation library, allows an
attacker who supplies a crafted .ay file to terminate any application that
begins playback of it. CVSS:3.1 6.5 (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H).

[-] Affected:
game-music-emu (libgme) 0.6.5 and earlier (present in 0.6.0 and 0.6.5),
and master as of commit fe8da4b. Default builds; no fixed version is
verified.

[-] Technical Description:
get_data() resolves the format's internal 16-bit relative offsets and
returns 0 when an offset word is 0x0000, as well as when the target would
fall outside the file buffer. The data-block copy loop in
Ay_Emu::start_track_() (gme/Ay_Emu.cpp) uses that result without testing
it:

  - the block's source pointer comes from get_data( file, blocks, 0 ) and
    is never compared against NULL;
  - the only guard before the copy, if ( len > uint32_t (file.end - in) ),
    compares len against the low 32 bits of the buffer's end address when
    in == NULL, so it does not reliably clamp;
  - execution reaches memcpy( mem.ram + addr, in, len ) with in == NULL.

The process terminates with SIGSEGV. The invalid access is a read from
address 0, so no attacker-controlled data is read or written; the impact
is denial of service of the process that parses the file.

Reachability: the AY handler is part of a default build
(option(USE_GME_AY ... ON)) and is reached from the public entry point
gme_start_track() via Music_Emu::start_track(). The condition is a
two-byte field in an otherwise structurally valid file, so it survives
type detection and track enumeration. FFmpeg documents optional use of the
library; the researcher additionally names VLC, Kodi and Audacious as
consumers.

Commit ae10a8f ("Ay_Emu.cpp: Don't read farther than buffer allows",
July 2026) changed get_data() to return 0 instead of asserting when the
pointer is out of range. That widens the set of inputs that produce a NULL
return in release builds and does not add the missing check.

Weaknesses:
CWE-476: NULL Pointer Dereference
CWE-252: Unchecked Return Value
CAPEC-165: File Manipulation

[-] Credit:
Discovered by netspacer1124 (https://github.com/netspacer1124).

[-] Full Details and Updates:
https://notcve.org/notcve/NotCVE-2026-0017

[-] Main References:
https://github.com/libgme/game-music-emu
https://github.com/libgme/game-music-emu/blob/0.6.5/gme/Ay_Emu.cpp
https://github.com/libgme/game-music-emu/commit/ae10a8f

[-] About NotCVE:
NotCVE (https://notcve.org) assigns public, timestamped NotCVE IDs to
vulnerabilities not acknowledged by vendors. Vendor will not assign a CVE?
Request a NotCVE: https://notcve.org/form/ · Contributors:
https://notcve.org/hall/
