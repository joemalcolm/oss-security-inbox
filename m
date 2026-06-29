X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/5
Message-ID: <trinity-dae8cf01-252d-4bec-854d-9eff3f7ed5ac-1782751566176@trinity-msg-rest-gmx-gmx-live-5556f6f97d-x94lh>
Date: Mon, 29 Jun 2026 16:46:06 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-70100: lwext4 divide-by-zero in ext4_block_set_lb_size
Content-Type: text/plain; charset=utf-8


Product:    lwext4
Affected:   lwext4 1.0.0, commit 58bcf89a121b72d4fb66334f1693d3b30e4cb9c5
CVE:        CVE-2025-70100
CWE:        CWE-369 (Divide By Zero)
CVSS 3.1:   5.5 MEDIUM (CISA-ADP: AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:   Alexander A. Shvedov (@sigdevel) & Daniil Dulov

Description:
  A divide-by-zero vulnerability exists in lwext4 when mounting or parsing a
  crafted EXT4 filesystem image with an invalid logical block size.

  ext4_mount() reads the logical block size from the filesystem superblock and
  forwards it to ext4_block_set_lb_size(). ext4_block_set_lb_size() then uses
  lb_size in arithmetic without validating that the value is non-zero:

      src/ext4_blockdev.c:127
      Function: ext4_block_set_lb_size()

      src/ext4.c:421
      Function: ext4_mount()

  A malformed image that results in lb_size == 0 triggers a Floating Point
  Exception. Under AddressSanitizer the crash is reported as an FPE, while
  standard builds terminate at runtime due to the missing validation. An
  attacker who can supply a malformed EXT4 image to an application using
  lwext4 for mounting or image processing can cause denial of service.

Reproduction:
  The issue is reproducible with the public PoC image using the fuzzing harness:

      ./afl_ext4_mount_read ./sig8_2_lwext4_ext4_blockdev_c_127

ASan log excerpt:
  AddressSanitizer:DEADLYSIGNAL
  ==1900824==ERROR: AddressSanitizer: FPE on unknown address 0x55f254cc29e9
      #0 0x55f254cc29e9 in ext4_block_set_lb_size
         /home/labuser/target/2025/lwext4/src/ext4_blockdev.c:127:34
      #1 0x55f254cb2b5b in ext4_mount
         /home/labuser/target/2025/lwext4/src/ext4.c:421:2
      #2 0x55f254cb12d1 in ext4g_mount
         /home/labuser/target/2025/fuzz/ext4_mount_read/src/ext4_glue.c:59:13
      #3 0x55f254cb0c7d in LLVMFuzzerTestOneInput
         /home/labuser/target/2025/fuzz/ext4_mount_read/fuzz_ext4_mount_read.c:17:9
  SUMMARY: AddressSanitizer: FPE
    /home/labuser/target/2025/lwext4/src/ext4_blockdev.c:127:34
    in ext4_block_set_lb_size

Fix:
  The issue is addressed in lwext4 v1.0.1, released by Aladdin-R-D. Users
  should upgrade to v1.0.1 or apply the corresponding upstream patch.

References:
  https://github.com/gkostka/lwext4/issues/90
  https://github.com/sigdevel/pocs/blob/main/res/lwext4/2/sig8_2_lwext4_ext4_blockdev_c_127
  https://github.com/Aladdin-R-D/lwext4/releases/tag/v1.0.1
  https://www.cve.org/CVERecord?id=CVE-2025-70100
  https://nvd.nist.gov/vuln/detail/CVE-2025-70100
  https://infosec.exchange/@sigdevel/116668952003072580
  https://bdu.fstec.ru/vul/2025-15478

——
Best regards, Alexander A. Shvedov
@sigdevel
