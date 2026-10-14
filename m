X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/14/8
Message-ID: <CAARiyJpKUG+_c6VE=mNb+91NNbt1tTKXTuFN6dnM5MsPEskooA@mail.gmail.com>
Date: Wed, 14 Oct 2026 17:27:18 +0200
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Godot 4.x: heap out-of-bounds write via negative string length in binary resource loader
Content-Type: text/plain; charset=utf-8

Three memory-safety bugs in Godot 4's untrusted-file parsers were
publicly disclosed on 2026-09-21 [1]. This thread covers the binary
resource loader bug.

Affected versions:
Godot 4.7-stable, official release build, verified. Earlier versions
presumed affected. The parser has been in the engine since the day it
was open-sourced in 2014 (commit 0b806ee0fc). Unpatched as of
2026-10-13 (master, 4.7.2, 4.7.1, 4.7).

Description:
ResourceLoaderBinary::get_unicode_string
(core/io/resource_format_binary.cpp:864) reads a 32-bit string length
from the file. A length with the high bit set is negative; the size
guard does not catch the negative value, and the subsequent copy uses
the value as a huge unsigned size, writing past the end of the
undersized heap buffer. AddressSanitizer reports heap-buffer-overflow
WRITE at resource_format_binary.cpp:872.

Impact:
Attacker-controlled heap out-of-bounds write on load. The binary
resource loader ships in export templates; an exported game that loads
player- or community-supplied .res files runs this code on untrusted
input.

Reproduction:
Archive godot47_binres_oob_repro.zip (README, bug_analysis.md,
make_repro.py regenerates the crafted resource), with extracted
contents and per-bug README:
https://github.com/bitbutter/godot-security-pocs/tree/main/2026-09-untrusted-file-parsers/binres
SHA-256: 920daf712f53fd8e0085bfc148c5ea5c6839d4136bf6e0d13a14a3e4385a4620
Trigger paths (Windows): placing the crafted .res in a project folder
crashes the editor on startup (resource-dependency scan, no user
action); a headless script load exits with STATUS_HEAP_CORRUPTION
(0xC0000374). Under AddressSanitizer or PageHeap, a 4 KiB payload
yields an immediate heap-buffer-overflow WRITE at
resource_format_binary.cpp:872. The same archive was distributed with
the original report and is linked from the correspondence section of
the disclosure post [1].

Fix status:
Unpatched as of 2026-10-13 (master, 4.7.2, 4.7.1, 4.7).

CVE status:
Requested from MITRE's CVE Numbering Authority of Last Resort (CNA-LR)
on 2026-09-20, prior to publication. No IDs assigned as of 2026-10-14;
this thread will be self-replied when IDs arrive.

Timeline (dates and links only):
2026-06-23 — reported privately to security@...otengine.org with
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
