X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/4
Message-ID: <trinity-437fd63a-56da-4ade-b815-a6223ac18d1c-1782750944322@trinity-msg-rest-gmx-gmx-live-5556f6f97d-82c9b>
Date: Mon, 29 Jun 2026 16:35:44 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-70099: lwext4 NULL pointer dereference in ext4_dir_en_get_name_len
Content-Type: text/plain; charset=utf-8

Product:    lwext4
Affected:   lwext4 1.0.0, commit 58bcf89a121b72d4fb66334f1693d3b30e4cb9c5
CVE:        CVE-2025-70099
CWE:        CWE-476 (NULL Pointer Dereference)
CVSS 3.1:   7.5 HIGH (AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)
Reporter:   Alexander A. Shvedov (@sigdevel) & Daniil Dulov

Description:
  A NULL pointer dereference exists in lwext4 when processing a crafted EXT4
  filesystem image containing malformed directory entries.

  During directory iteration, ext4_dir_entry_next() may call the inline helper
  ext4_dir_en_get_name_len() with a NULL or otherwise invalid directory entry
  pointer. ext4_dir_en_get_name_len() then reads the name_len field without
  validating the pointer first:

      include/ext4_dir.h:126
      Function: ext4_dir_en_get_name_len()

      src/ext4.c:3233
      Function: ext4_dir_entry_next()

  This results in a segmentation fault while reading from address 0x6. An
  attacker who can supply a crafted or corrupted EXT4 image to an application
  using lwext4 for parsing or directory traversal can cause an abnormal process
  termination. No evidence of code execution was observed.

Reproduction:
  The issue is reproducible with the public PoC image using the fuzzing harness:

      ./afl_ext4_mount_read ./sig11_2_1_lwext4_ext4_dir_h_126

ASan log excerpt:
  AddressSanitizer:DEADLYSIGNAL
  ==1900815==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000006
  ==1900815==The signal is caused by a READ memory access.
      #0 0x561280525f64 in ext4_dir_en_get_name_len
         /home/labuser/target/2025/lwext4/include/ext4_dir.h:126:19
      #1 0x561280525f64 in ext4_dir_entry_next
         /home/labuser/target/2025/lwext4/src/ext4.c:3233:16
      #2 0x561280518d54 in LLVMFuzzerTestOneInput
         /home/labuser/target/2025/fuzz/ext4_mount_read/fuzz_ext4_mount_read.c:29:30
  SUMMARY: AddressSanitizer: SEGV
    /home/labuser/target/2025/lwext4/include/ext4_dir.h:126:19
    in ext4_dir_en_get_name_len

Fix:
  The issue is addressed in lwext4 v1.0.1, released by Aladdin-R-D. Users
  should upgrade to v1.0.1 or apply the corresponding upstream patch.

References:
  https://github.com/gkostka/lwext4/issues/89
  https://github.com/sigdevel/pocs/blob/main/res/lwext4/1/sig11_2_1_lwext4_ext4_dir_h_126
  https://github.com/Aladdin-R-D/lwext4/releases/tag/v1.0.1
  https://www.cve.org/CVERecord?id=CVE-2025-70099
  https://nvd.nist.gov/vuln/detail/CVE-2025-70099
  https://infosec.exchange/@sigdevel/116668939725424227
  https://bdu.fstec.ru/vul/2025-15477


——
Best regards, Alexander A. Shvedov
@sigdevel
