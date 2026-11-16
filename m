X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/16/6
Message-ID: <trinity-04479c60-4cb8-4d23-9b6b-2b833ae542fa-1794850704329@trinity-msg-rest-gmx-gmx-live-868fdc48d9-fbv7n>
Date: Mon, 16 Nov 2026 17:38:24 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129490: littlefs: Type Confusion and Stack Out-of-Bounds Read in lfs_dir_traverse via Crafted v1 Image Migration
Content-Type: text/plain; charset=utf-8

Product:   littlefs (including littlefs-fuse migration support)
Affected:  Through v2.11.3, when built with LFS_MIGRATE
           Reproduced at commit 6cb4e86540eca0d9ba62500a298385c9d863c8be
           littlefs-fuse v2.7, commit 423fc82, bundling littlefs v2.11.3
Fixed:     No confirmed upstream fix release; proposed patch in PR #1224
CVE:       CVE-2026-129490
CWE:       CWE-843 (Access of Resource Using Incompatible Type)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  A crafted littlefs v1 filesystem image passed to lfs_migrate() can cause
  lfs_dir_traverse() to interpret malformed metadata as the reserved
  LFS_FROM_USERATTRS pseudo-tag. Its buffer pointer still refers to the
  stack-local struct lfs_diskoff disk, but the USERATTRS branch casts it
  to an array of struct lfs_attr. Reading attribute fields then accesses
  memory beyond the 8-byte disk object.

  ASan reports a stack-buffer-overflow READ of size 4 at lfs.c:1059.
  On the commit path, values read beyond the object can subsequently be
  used as attribute buffer pointers and lengths. Non-sanitized builds
  have been observed to terminate with SIGSEGV or an assertion failure.

  The issue was reproduced in littlefs v2.11.3 at commit
  6cb4e86540eca0d9ba62500a298385c9d863c8be. It requires LFS_MIGRATE
  and migration of crafted v1 input; littlefs-fuse enables this support
  and exposes it through lfs --migrate.

Impact:
  Migrating an attacker-controlled image can crash the hosting process,
  causing denial of service. Native crash behavior depends on stack
  contents and is not deterministic on every run. The local report records
  an ASan finding in all 20 instrumented runs. Information disclosure and
  arbitrary code execution were not demonstrated.

Reproduction:
  On Linux with the FUSE development dependencies installed, build the
  tested littlefs-fuse revision with AddressSanitizer and UBSan:

    git clone https://github.com/littlefs-project/littlefs-fuse
    cd littlefs-fuse
    git checkout 423fc82
    make CC=clang CFLAGS="-O1 -g -fno-omit-frame-pointer -fsanitize=address,undefined" LFLAGS="-fsanitize=address,undefined -lfuse"

  Place the supplied .img sample in the build directory, then run:

    cp 1_lfs_dir_traverse_lfs_c_1059.img /tmp/littlefs-cve-2026-129490.img
    ./lfs --migrate --block_size=512 --block_count=32 /tmp/littlefs-cve-2026-129490.img

  Migration modifies the image; make a fresh copy before each run.
  A stock build made with make also exhibits SIGSEGV or SIGABRT, although
  some runs instead return LFS_ERR_NOSPC. The .img sample is 16384 bytes.

ASan log excerpt (local fuzz harness):
  ==1701061==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7b5cb2a01330
  READ of size 4 at 0x7b5cb2a01330 thread T0
      #0 in lfs_dir_traverse lfs.c:1059:32
      #1 in lfs_dir_splittingcompact lfs.c:2139:23
      #2 in lfs_dir_relocatingcommit lfs.c:2348:13
      #3 in lfs_dir_orphaningcommit lfs.c:2432:17
      #4 in lfs_dir_commit lfs.c:2604:19
      #5 in lfs_migrate_ lfs.c:5829:23
      #6 in lfs_migrate lfs.c:6551:11

  Address is located in stack of thread T0 at offset 304 in frame
  lfs_dir_traverse (lfs.c:917):
      [288, 296) 'disk' (line 927) <== Memory access at offset 304 overflows this variable

Fix:
  As of 2026-11-16, upstream issue #1213 and proposed fix PR #1224 are open.
  No merged fix or fixed release is confirmed in these references.
  The proposed patch rejects on-disk synthetic FROM tags before traversal
  can interpret their data as internal pointers.

    https://github.com/littlefs-project/littlefs/pull/1224

  Until a reviewed fix is deployed, avoid migrating untrusted v1 images,
  or disable migration support by building without LFS_MIGRATE where
  migration is not required.

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/littlefs/1/1_lfs_dir_traverse_lfs_c_1059.img

References:
  https://github.com/littlefs-project/littlefs/issues/1213
  https://github.com/littlefs-project/littlefs/pull/1224
  https://github.com/littlefs-project/littlefs/blob/v2.11.3/lfs.c#L1056-L1063
  https://github.com/sigdevel/pocs/blob/main/res/littlefs/1/fuzz_migrate.c
  https://www.cve.org/CVERecord?id=CVE-2026-129490
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/129xxx/CVE-2026-129490.json

——
Best regards, Alexander A. Shvedov
@sigdevel
