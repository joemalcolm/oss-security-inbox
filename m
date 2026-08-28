X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/28/4
Message-ID: <R3P7n9I-CK3htaSivHZopNQR6_O-RXVN8uBC88EyTSyGLNqJ9vQAwVIAkPiVSIPYvqSuGoKAyVnIi1SiQthMfSaQ2-pMfdIcVS7qLyg3-yc=@pm.me>
Date: Fri, 28 Aug 2026 17:02:36 +0000
From: "t.preissl" <t.preissl@...me>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Multiple Integer Overflows in U-Boot Filesystem Parsing (CVE-2025-70290 through CVE-2025-70293)
Content-Type: text/plain; charset=utf-8

-----BEGIN SECURITY ADVISORY-----

Title: Multiple Integer Overflows in U-Boot Filesystem Handling
Author: Timo Preißl <t.preissl@...ton.me>
Date: 2026-02-11
CVEs: CVE-2025-70290, CVE-2025-70291, CVE-2025-70292, CVE-2025-70293
Affected: Denx U-Boot <= v2026.01-rc4
Fixed in: v2026.04-rc1 (commit adccdb2)

== Overview ==

Multiple integer overflow vulnerabilities were discovered in the U-Boot
bootloader's filesystem handling code and command-line interface. These
flaws can lead to heap memory under-allocation followed by heap-based
buffer overflows, potentially allowing Arbitrary Code Execution (ACE)
in the pre-boot environment.

== Vulnerability Details ==

--- CVE-2025-70290: ZFS Metadata Integer Overflow ---

Component: fs/zfs/zfs.c, function zfs_nvlist_lookup_nvlist
Impact: A crafted ZFS filesystem image with malformed on-disk metadata
can trigger an integer overflow during the size calculation
passed to calloc(), resulting in an undersized allocation and
subsequent out-of-bounds memory access.
Fix: Validation of allocation size using __builtin_add_overflow.

--- CVE-2025-70291: Heap Buffer Overflow in do_mv Command ---

Component: fs/fs.c, function do_mv
Impact: Missing length checks in the directory move command allow an
integer overflow during string length addition. An attacker
with U-Boot shell access can trigger an under-allocation,
resulting in a heap buffer overflow via strcpy().
Fix: Safe addition of string lengths using compiler intrinsics.

--- CVE-2025-70292: SquashFS Integer Overflow ---

Component: fs/squashfs/sqfs.c, function sqfs_concat_tokens
Impact: Manipulated token lists trigger an overflow in
sqfs_get_tokens_length(), causing heap under-allocation
subsequently overflown by strcpy().
Fix: Validation of total token length before allocation.

--- CVE-2025-70293: EXT4 Block Group Descriptor Table Integer Overflow ---

Component: fs/ext4/ext4_write.c, function ext4fs_get_bgdtable
Impact: An integer overflow in the block group descriptor table size
calculation results in an undersized buffer being passed to
memcpy(), causing memory corruption.
Fix: Guarded multiplication of block group count and descriptor size.

== Patch ==

All issues are fixed in the U-Boot master branch.

Commit: adccdb2f605a6e8e046712398712398123
"fix integer overflows in filesystem code"

https://source.denx.de/u-boot/u-boot/-/commit/adccdb2

== Timeline ==

Patch series submitted to upstream mailing list:
https://lore.kernel.org/u-boot/20251231100831.119142-1-t.preissl@proton.me/T/

Fix merged: v2026.04-rc1
-----END SECURITY ADVISORY-----
