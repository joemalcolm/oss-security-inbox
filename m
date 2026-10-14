X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/14/6
Message-ID: <CAARiyJr3C_in2_bU=UV_tFApGhJsgVkR_Es+CQVa3vOz8E48Sg@mail.gmail.com>
Date: Wed, 14 Oct 2026 12:11:48 +0200
From: Tomasz Kaye <tomasz.brain@...il.com>
To: oss-security@...ts.openwall.com
Subject: Godot 4.x: heap out-of-bounds read in OptimizedTranslation message lookup
Content-Type: text/plain; charset=utf-8

Three memory-safety bugs in Godot 4's untrusted-file parsers were
publicly disclosed on 2026-09-21 [1]. This thread covers the
OptimizedTranslation bug.

Affected versions:
Godot 4.7-stable, official release build, verified. Earlier versions
presumed affected. The loader has been in the engine since 2014
(commit 0b806ee0fc). Unpatched as of 2026-10-13 (master, 4.7.2, 4.7.1,
4.7).

Description:
OptimizedTranslation::get_message
(core/string/optimized_translation.cpp) looks up strings through a
hash table read verbatim from the compiled translation resource. A
crafted .translation or .tres resource of this type is a full control
surface: the uint32_t table entry is used as an index into the bucket
table with no bounds check — only the sentinel 0xFFFFFFFF is rejected
— and the bucket's string offset is used against the strings array
without a bounds check. As of 4.7-stable the unchecked bucket load is
at line 259 and the unchecked string read at line 277; the identical
pattern is present in get_translated_message_list() (line 299).

Impact:
Crash: the first tr() call through a far out-of-range entry faults,
deterministically on stock 64-bit binaries, editor and export
templates. Information disclosure: tr() returns bytes read from an
attacker-chosen offset past the end of the strings buffer reaching
GDScript callers, game UI, logs, or network output. The translation
loader ships in export templates; an exported game that loads player-
or community-supplied translation resources runs this code on
untrusted input.

Reproduction:
Archive godot47_optimized_translation_oob_repro.zip (README,
bug_analysis.md, make_repro.py; crash and info-leak variants of the
crafted resource), with extracted contents and per-bug README:
https://github.com/bitbutter/godot-security-pocs/tree/main/2026-09-untrusted-file-parsers/optimized-translation
SHA-256: 19cc54698b40c15e214ce310307fc854b58e631e577c61647aca12ab442d0a70
Crash variant: the first tr() call faults on a stock 64-bit binary.
Leak variant: tr() returns heap bytes as the translated string;
confirmed during the audit on an official 4.7 build without
instrumentation. Under AddressSanitizer the leak variant reports
heap-buffer-overflow READ at optimized_translation.cpp:277. The same
archive was distributed with the original report and is linked from
the correspondence section of the disclosure post [1].

Fix status:
Unpatched as of 2026-10-13 (master, 4.7.2, 4.7.1, 4.7).

CVE status:
Requested from MITRE's CVE Numbering Authority of Last Resort (CNA-LR)
on 2026-09-20, prior to publication. No IDs assigned as of 2026-10-14;
this thread will be self-replied when IDs arrive.

Timeline
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
