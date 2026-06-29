X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/6
Message-ID: <trinity-2bf248b1-6d8b-4c9c-9692-ba2b868a8556-1782751701108@trinity-msg-rest-gmx-gmx-live-5556f6f97d-9kpz2>
Date: Mon, 29 Jun 2026 16:48:21 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-70101: lwext4 out-of-bounds read in ext4_ext_binsearch_idx
Content-Type: text/plain; charset=utf-8

Product:    lwext4
Affected:   lwext4 1.0.0, commit 58bcf89a121b72d4fb66334f1693d3b30e4cb9c5
CVE:        CVE-2025-70101
CWE:        CWE-125 (Out-of-bounds Read)
CVSS 3.1:   6.5 MEDIUM (CISA-ADP: AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:N/A:N)
Reporter:   Alexander A. Shvedov (@sigdevel) & Daniil Dulov

Description:
  An out-of-bounds read exists in lwext4 when traversing the extent tree of a
  crafted EXT4 filesystem image.

  ext4_ext_binsearch_idx() performs a binary search over extent index entries
  using pointers derived from the EXT_FIRST_INDEX and EXT_LAST_INDEX macros.
  These macros compute bounds from the eh_entries and eh_depth fields of the
  extent header. A crafted image can encode eh_entries == 0 while eh_depth
  indicates an internal node, causing invalid pointer calculations and an
  out-of-bounds read during the binary search:

      src/ext4_extent.c:815
      Function: ext4_ext_binsearch_idx()

      src/ext4_extent.c:896
      Function: ext4_find_extent()

  The crash is reached during directory iteration through ext4_find_extent(),
  ext4_extent_get_blocks(), ext4_dir_iterator_seek(), and ext4_dir_entry_next().
  An attacker who can supply a crafted EXT4 image to an application using
  lwext4 for mounting or directory traversal can cause denial of service.

Reproduction:
  The issue is reproducible with the public PoC image using the fuzzing harness:

      ./afl_ext4_mount_read ./sig11_lwext4_ext4_extent_815

ASan log excerpt:
  AddressSanitizer:DEADLYSIGNAL
  ==1900657==ERROR: AddressSanitizer: SEGV on unknown address 0x521000062a28
      #0 0x5616a13f5f94 in ext4_ext_binsearch_idx
         /home/labuser/target/2025/lwext4/src/ext4_extent.c:815:13
      #1 0x5616a13f5f94 in ext4_find_extent
         /home/labuser/target/2025/lwext4/src/ext4_extent.c:896:3
      #2 0x5616a13f7eb2 in ext4_extent_get_blocks
         /home/labuser/target/2025/lwext4/src/ext4_extent.c:2038:8
      #3 0x5616a13e6b20 in ext4_fs_get_inode_dblk_idx_internal
         /home/labuser/target/2025/lwext4/src/ext4_fs.c:1370:12
      #4 0x5616a13ddd1e in ext4_dir_iterator_seek
         /home/labuser/target/2025/lwext4/src/ext4_dir.c:244:7
      #5 0x5616a13d6ea0 in ext4_dir_entry_next
         /home/labuser/target/2025/lwext4/src/ext4.c:3226:6
  SUMMARY: AddressSanitizer: SEGV
    /home/labuser/target/2025/lwext4/src/ext4_extent.c:815:13
    in ext4_ext_binsearch_idx

Fix: https://github.com/Aladdin-R-D/lwext4/releases/tag/v1.0.1

References:
  https://github.com/gkostka/lwext4/issues/91
  https://github.com/sigdevel/pocs/blob/main/res/lwext4/3/sig11_lwext4_ext4_extent_815
  https://github.com/Aladdin-R-D/lwext4/releases/tag/v1.0.1
  https://www.cve.org/CVERecord?id=CVE-2025-70101
  https://nvd.nist.gov/vuln/detail/CVE-2025-70101
  https://infosec.exchange/@sigdevel/116668958927817708
  https://bdu.fstec.ru/vul/2025-15479


——
Best regards, Alexander A. Shvedov
@sigdevel
