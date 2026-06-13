X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/21
Message-ID: <trinity-56db5235-c4d3-4ba5-9938-2a614d87fa0c-1781383743775@trinity-msg-rest-gmx-gmx-live-6759fbb69b-pdhff>
Date: Sat, 13 Jun 2026 20:49:03 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-52292: Stack-based Buffer Overflow in GPAC/MP4Box via filein_process on crafted MP4 file during DASH segmentation
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (2.5-DEV-rev1174-g3017379f1-master)
CVE:       CVE-2025-52292
CWE:       CWE-121 (Stack-based Buffer Overflow)
CVSS 3.1:  8.8 HIGH (AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box processes a crafted MP4 file during DASH segmentation,
  the filein_process() function in filters/in_file.c builds a status
  string for the current file/track using sprintf() into a fixed-size
  1024-byte stack buffer (szStatus). If the source path/basename or
  the values derived from ctx->src expand into an overly long status
  string, the formatted output exceeds the destination buffer.

  AddressSanitizer reports a stack-buffer-overflow at
  filters/in_file.c:700, a WRITE of size 1811 into the szStatus
  object allocated in the filein_process() stack frame. The crash is
  reachable while MP4Box processes a crafted MP4 file through
  DASH/file-list handling.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -dash 1000 /dev/null 1_poc.mp4

Asan-log:
==2331746==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7f37a4e18bf0 at pc 0x56076a64df94 bp 0x7ffc2cb8d280 sp 0x7ffc2cb8ca20
WRITE of size 1811 at 0x7f37a4e18bf0 thread T0
    #0 0x56076a64df93 in vsprintf (/home/user/target/mp4box_dyn/gpac/bin/gcc/MP4Box+0x9bf93) (BuildId: 654ddade294ab0279dd2744403a0c06a089af997)
    #1 0x56076a64f18e in sprintf (/home/user/target/mp4box_dyn/gpac/bin/gcc/MP4Box+0x9d18e) (BuildId: 654ddade294ab0279dd2744403a0c06a089af997)
    #2 0x7f37a908bec7 in filein_process /home/user/target/mp4box_dyn/gpac/src/filters/in_file.c:700:3

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/1/1_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3129
  https://www.cve.org/CVERecord?id=CVE-2025-52292
  https://infosec.exchange/@sigdevel/116707273214520860


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

