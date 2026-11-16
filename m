X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/16/9
Message-ID: <trinity-4464dde2-d743-4d63-ae3c-fe499f0c1588-1794850947814@trinity-msg-rest-gmx-gmx-live-6b6d8476df-p9jjn>
Date: Mon, 16 Nov 2026 17:42:27 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-71470: MicroQuickJS: Out-of-Bounds Read in build_backtrace via Crafted JavaScript Input
Content-Type: text/plain; charset=utf-8

Product:   MicroQuickJS (mquickjs, mqjs)
Affected:  Revisions before commit 99eed3f94cb66ea7e02fd3472ca7374dee31bb89
           Reproduced at commit 27a2391cc5a54bf8fa683979be56b266523a1374
Fixed:     99eed3f94cb66ea7e02fd3472ca7374dee31bb89
CVE:       CVE-2025-71470
CWE:       CWE-125 (Out-of-bounds Read)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MicroQuickJS crashes in build_backtrace() at mquickjs.c:3981 while
  executing crafted JavaScript. During function-call setup, JS_Call()
  can raise an exception without synchronizing ctx->sp and ctx->fp with
  the current stack and frame pointers. In particular, attempting to call
  a non-function value reaches this path. Backtrace construction then
  follows stale frame metadata and performs an out-of-bounds read.

  In the supplied ASan/UBSan run, UBSan reports misaligned JSValue loads
  at mquickjs.c:3981 and mquickjs.c:4009, followed by an ASan read SEGV
  in build_backtrace(). JSValue requires 8-byte alignment on the tested
  x86_64 build. The issue was reproduced at commit
  27a2391cc5a54bf8fa683979be56b266523a1374.

Impact:
  Executing attacker-controlled JavaScript causes an mqjs process crash
  and denial of service. Applications embedding the affected engine may
  also be affected when they execute such input. The supplied evidence
  demonstrates an invalid read and process termination; information
  disclosure and arbitrary code execution were not demonstrated.

Reproduction:
  Build MicroQuickJS with AddressSanitizer and UndefinedBehaviorSanitizer
  using the following compiler flags:

    -g -O1 -fno-omit-frame-pointer -fsanitize=address,undefined

  Run the supplied JavaScript sample with the instrumented mqjs binary:

    ./mqjs mquickjs_c_3981

ASan/UBSan log excerpt:
  mquickjs.c:3981:19: runtime error: load of misaligned address 0x7fb3a49ff81d for type 'JSValue', which requires 8 byte alignment
  mquickjs.c:4009:14: runtime error: load of misaligned address 0x7fb3a49ff805 for type 'JSValue', which requires 8 byte alignment
  ==1243892==ERROR: AddressSanitizer: SEGV on unknown address 0x7fb37c9ff857
  ==1243892==The signal is caused by a READ memory access.
      #0 in build_backtrace mquickjs.c:3981
      #1 in JS_ThrowError mquickjs.c:933
      #2 in JS_Call mquickjs.c:5507
      #3 in JS_Run mquickjs.c:11765

Fix:
  Update to a MicroQuickJS revision containing commit
  99eed3f94cb66ea7e02fd3472ca7374dee31bb89 or apply that patch.
  The fix saves the current stack/frame pointers before raising call-setup
  exceptions and corrects the corresponding exception-handling paths.

    https://github.com/bellard/mquickjs/commit/99eed3f94cb66ea7e02fd3472ca7374dee31bb89

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/mquickjs/1/mquickjs_c_3981

References:
  https://github.com/bellard/mquickjs/issues/24
  https://github.com/bellard/mquickjs/commit/99eed3f94cb66ea7e02fd3472ca7374dee31bb89
  https://www.cve.org/CVERecord?id=CVE-2025-71470
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/71xxx/CVE-2025-71470.json

——
Best regards, Alexander A. Shvedov
@sigdevel
