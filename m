X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/14/9
Message-ID: <CAARiyJqH-qg=ywD-ghnhN--Qw1fEgXLr68q8+WOQ55MJEz+Y0w@mail.gmail.com>
Date: Wed, 14 Oct 2026 17:27:33 +0200
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Godot 4.x: heap out-of-bounds write in Radiance HDR image loader
Content-Type: text/plain; charset=utf-8

Three memory-safety bugs in Godot 4's untrusted-file parsers were
publicly disclosed on 2026-09-21 [1]. This thread covers the HDR
loader bug.

Affected versions:
Godot 4.7-stable, official release build (commit 5b4e0cb0f), verified.
Earlier 4.x presumed affected. The loader was added in May 2017
(commit bb20f230ad). Unpatched as of 2026-10-13 (checked on master,
4.7.2, 4.7.1, 4.7).

Description:
ImageLoaderHDR::load_image (modules/hdr/image_loader_hdr.cpp, lines
104-118) decodes Radiance HDR run-length data. Run and dump counts
read from the file are trusted without checking them against the
reserved image buffer. A crafted .hdr file directs the decoder to
write attacker-controlled data past the end of the heap buffer.

Impact:
Attacker-controlled heap out-of-bounds write, confirmed by
heap-corruption crash on the official 4.7 release build
(STATUS_HEAP_CORRUPTION, 0xC0000374). Reachable when Godot imports a
malicious .hdr file. The HDR loader ships in export templates; an
exported game that loads player- or community-supplied .hdr files
(mods, downloads, uploads) runs this code on untrusted input.

Reproduction:
Archive (evil4ch.hdr, ok.hdr, repro.gd, verify.ps1, project.godot),
with extracted contents and per-bug README:
https://github.com/bitbutter/godot-security-pocs/tree/main/2026-09-untrusted-file-parsers/hdr
SHA-256 of the original archive (godot47_hdr_oob_repro.zip):
604982a1d0f8b0b7f19ec9a75d565f51a7879f2cdddf898c58234bef6e54f380
verify.ps1 runs both files through an official 4.7 build; the crafted
file exits with STATUS_HEAP_CORRUPTION (0xC0000374), the valid
baseline exits 0. The same archive was distributed with the original
report and is linked from the correspondence section of the disclosure
post [1].

Fix status:
Unpatched as of 2026-10-13 (master, 4.7.2, 4.7.1, 4.7).

CVE status:
Requested from MITRE's CVE Numbering Authority of Last Resort (CNA-LR)
on 2026-09-20, prior to publication. No IDs assigned as of 2026-10-14;
this thread will be self-replied when IDs arrive.

Timeline (dates and links only):
2026-06-22 — reported privately to security@...otengine.org with
reproduction and suggested patch.
2026-09-18 — public notice: https://github.com/godotengine/godot/issues/123608
2026-09-19 — vendor response classifying the issues as not security
issues: https://github.com/godotengine/godot/issues/123608

Credit:
Found during an automated audit directed by the reporter (LLM-driven
source analysis; Claude Code — discovery by Opus 4.8, report and
reproduction by Sonnet 4.6). Reproductions verified against official
release binaries. Reported and disclosed by Tomasz Kaye.

[1] https://axeghost.offprint.app/a/3mvs6zo4blo23-three-memory-safety-bugs-in-godots-untrusted-file-parsers
