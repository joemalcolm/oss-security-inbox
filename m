X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/02/2
Message-ID: <CAK3hNHa4DECq3yFmJt-OFCuJE_tr7dvz3aXto7msVvjOETXK6A@mail.gmail.com>
Date: Sat, 1 Aug 2026 23:29:40 -0700
From: Abhinav Agarwal <abhinavagarwal1996@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE requested] iwd <= 3.12: stack buffer overflow in the 802.11k beacon report handler, plus three parser/validation bugs (no fix upstream)
Content-Type: text/plain; charset=utf-8

An adjacent attacker can overflow iwd's stack with a spoofed 802.11k request
once 17 BSS entries are cached.  Hardened builds abort; a representative
unhardened ARM32 layout permits saved-LR control.  No network credentials
are required on WPA2 without PMF.

One maintainer reviewed and confirmed the findings and patches, verified
them against the spec, and applied them locally - but they remain unmerged.

  Affected:   all four coexist in 1.30 through 3.12 (latest release).
              They arrived separately, so older versions have a subset.
  Repository: https://git.kernel.org/pub/scm/network/wireless/iwd.git
  Write-up:   https://abhinavagarwal07.github.io/posts/iwd-rrm-stack-overflow/?src=oss
  PoC:        https://github.com/abhinavagarwal07/iwd-security-poc

1. RRM beacon report stack buffer overflow
   CWE-121.  CVSS 3.1: 8.8 High
   CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H
   src/rrm.c:334 and :370, rrm_report_beacon_results()
   Introduced 1.1, commit 1f01819c701e

   rrm_report_beacon_results() builds a Radio Measurement Report action
   frame in uint8_t frame[512] on the stack.  The loop appends one 31-byte
   record per matching BSS - a 5-byte Measurement Report IE header plus a
   26-byte packed rrm_beacon_report - and advances the write pointer with
   "ptr += report_len + 5" and no bounds check.  After the 3-byte action
   header, 16 records fit.  Record 17 writes frame[499..529].  The BSS list
   is the station's own scan cache, so the count is a property of the RF
   environment - but an attacker can deterministically reach the threshold
   by transmitting additional fake beacons.

   rrm_frame_watch_cb() requires STATION_STATE_CONNECTED (rrm.c:727), then
   does a bare memcmp of the frame's address_2 against the connected AP's
   MAC (rrm.c:733).  There is no PMF requirement, so on WPA2 without
   802.11w that source address is whatever the attacker puts in it.  One
   request clears all three per-BSS filters: a wildcard BSSID
   (ff:ff:ff:ff:ff:ff) skips the BSSID compare, omitting the SSID
   sub-element skips the SSID compare, and mode=TABLE permits channel=0,
   which makes bss_in_request_range() return true unconditionally.  Every
   cached BSS is then reported.

   Request fields and attacker-generated beacon metadata make parts of each
   overflowing record attacker-controlled.

   Outcomes are build-dependent:
     * Hardened distro builds abort in __stack_chk_fail.
     * In the tested no-canary x86-64 build, the zeroed scan_start_time
       field overwrote saved RIP, producing a crash without control.
     * In a representative unhardened ARM32 layout, the saved lr is
       reachable and holds attacker bytes.  I demonstrated pc hijack on
       armhf in a harness reproducing that frame layout (exit code 42 from
       win()).  That shows the primitive reaches the return address on the
       ABI; it is not an exploit against a shipped binary, since the record
       and field that land on lr depend on the build's register allocation.

   FORTIFY_SOURCE does not help.  Each individual memcpy is in bounds; the
   overflow comes from the loop accumulating them.

   Evidence - AddressSanitizer on a real iwd 3.12 daemon, driven over
   mac80211_hwsim with 21 cached BSSes and the action frame sent via
   NL80211_CMD_FRAME:

     ==67193==ERROR: AddressSanitizer: stack-buffer-overflow
     WRITE of size 26 at 0x7ffe8136a2a0 thread T0
         #3 in rrm_report_beacon_results src/rrm.c:367
       [384, 896) 'frame' (line 334) <== Memory access at offset 896
                                         overflows this variable

2. HE Capabilities validator reads the wrong byte
   CWE-125.  CVSS 3.1: 4.3 Medium
   CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N
   src/ie.c:2714 vs src/band.c:631
   Introduced 1.30, commit 53988a728533

   The Channel Width Set is bits B1-B7 of PHY Capabilities byte 0, element
   body offset 6 (802.11ax-2021 s9.4.2.248.3).  The validator
   ie_validate_he_capabilities() reads offset 7 while
   band_estimate_he_rx_rate() and wiphy.c read offset 6 from the same
   pointer, so its length guards (len < 26 for the 160 MHz MCS map, len <
   30 for 80+80) are keyed on the wrong byte.  A
   22-byte body with hec[6]=0x1C and hec[7]=0x00 passes validation, then
   drives the estimator into both branches, reading hec[23..24] and
   hec[27..28].  The local adapter must also advertise the width, since the
   two sets are ANDed.

   Passive scanning reaches this path before association.  In a real beacon
   the OOB reads consume attacker-controlled bytes from the following
   element, influencing the rate used for BSS ranking.  Only the HE
   Capabilities element must be malformed.

   The fix is one character: (ptr + 7) -> (ptr + 6).

3. mde_equal() compares its first argument to itself
   CWE-697.  CVSS 3.1: 3.1 Low
   CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:L/A:N
   src/ft.c:385
   Introduced 1.14, commit 2c0234e1

     return memcmp(mde1, mde1, mde1[1] + 2) == 0;

   mde2 is never read, so the check always passes.  Its only caller is
   ft_parse_ies() (ft.c:667), where it should confirm the target AP echoed
   the Mobility Domain element the station sent on the 802.11r FT
   Authentication Response and FT-over-DS paths.  Not an authentication
   bypass - __ft_rx_associate() compares correctly at ft.c:496 and the FTE
   MIC there is keyed on PMK-R1 - but a response carrying an arbitrary
   mobility domain ID and FT capability flags passes the authentication
   stage into FTE parsing and key derivation.  Finding 4 sits on that path,
   one call later.

4. FTE sub-element length underflows a uint8_t
   CWE-191 -> CWE-125.  CVSS 3.1: 3.1 Low
   CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L
   src/ie.c:1919, ie_parse_fast_bss_transition()
   Introduced 0.1, commit e4c168cc

   The sub-element loop never checks the declared length against the bytes
   remaining.  The case handlers copy on the declared length alone, so a
   6-byte R1KH-ID copy runs with zero bytes left, and "len -= subelem_len +
   2" on a uint8_t wraps rather than going negative (2 - 8 == 250), so the
   loop keeps walking past the element.  The declared-length checks bound
   every write into the fixed-size ie_ft_info fields, so there is no
   out-of-bounds write; the reads are unbounded.  The scored impact is the
   read running off the end, not disclosure: ft_parse_fte() then requires
   the parsed r0khid to equal the station's own (ft.c:361), so corrupted
   values are discarded rather than echoed back, and I have no extraction
   channel.

   ft_parse_fte() parses before it validates (ft.c:353 parse, ft.c:357
   checks), on the FT Authentication Response path where the FTE carries no
   MIC at all - the code requires mic_element_count == 0.  Nothing
   cryptographic sits between a rogue AP's response and the parser.  The
   reassociation path has the same ordering (parse ft.c:513, MIC ft.c:524).
   Reaching it needs the station to attempt an FT roam to a BSS the attacker
   controls.  Finding 3 removes the MDID check on that same path.

Who this affects:

  Hardened desktop packages are expected to abort through the stack canary.
  Embedded builds without stack protection may expose control-flow
  corruption; on Yocto and Buildroot that is a per-image configuration
  choice.

  SteamOS uses iwd by default - steamos-customizations-git ships
  /usr/lib/NetworkManager/conf.d/10-steamos-defaults.conf with
  "wifi.backend=iwd" - and currently ships iwd 3.9-1.2, which contains all
  four defects. Not tested but appears to be affected. PSIRT was notified.

Mitigation:

  The PoC repository contains four independently applicable patches.  See
  patches/README.md for backport notes.

Coordination timeline:

  2026-05-12  Reported to Intel via Intigriti
  2026-05-19  Reported to the iwd maintainers
  2026-05-21  Patches sent to iwd maintainers
  2026-05-22  Intigriti closed the submission as out of scope
  2026-05-28  Maintainers confirmed all four findings
  2026-06-29  Valve PSIRT notified (SteamOS ships iwd as default)
  2026-07-21  Notified the maintainers of a 27 July publication date
  2026-08-01  This advisory, write-up and PoC code

CVE assignment:

  CVE requested with MITRE:
    CAN-2026-2051869  finding 1, RRM beacon report stack buffer overflow
    CAN-2026-2051870  finding 2, HE Capabilities validator byte offset
    CAN-2026-2051871  finding 3, mde_equal() self-comparison
    CAN-2026-2051872  finding 4, FTE sub-element uint8_t underflow

Credits: Abhinav Agarwal
