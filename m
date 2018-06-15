X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4716" "Friday" "15" "June" "2018" "07:55:37" "-0700" "Anthony Liguori" "aliguori@amazon.com" "<cig332r2l8rtee.fsf@u44850075a5a8574dc8a1.ant.amazon.com>" "118" "[oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak" "^CC:" nil nil "6" "2018061514:55:37" "[oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak" (number mark "        aliguori@ama Jun 15  118/4716  " thread-indent "\"[oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29967 invoked by uid 550); 15 Jun 2018 15:23:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9821 invoked from network); 15 Jun 2018 14:56:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1529074563; x=1560610563;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=c8XdVr4D27TBSbTHuNliqqYUqqV4CXTC9NfOCTwAc2U=;
  b=cARSoN+Yp5oapghILFXeHcJPpi+CLJdQfJ4i+BG+OBgJTwdpm5EsXWGq
   yEGXZ7cBVev1x4EXOCSFjibHajjJsFK/UCnZ9NVRE8kDpbK+GXLhBToZm
   gliPwRxWd3fNEiYNTtstZC70RkHHK+4XwqphJ5L/KEjRb+0FMJQLueEpx
   k=;
X-IronPort-AV: E=Sophos;i="5.51,227,1526342400"; 
   d="scan'208";a="746313281"
User-Agent: Notmuch/0.17 (http://notmuchmail.org) Emacs/24.3.1 (x86_64-pc-linux-gnu)
Message-ID: <cig332r2l8rtee.fsf@u44850075a5a8574dc8a1.ant.amazon.com>
MIME-Version: 1.0
Content-Type: text/plain
CC: <thomas.prescher@cyberus-technology.de>, <jsteckli@amazon.de>
Date: Fri, 15 Jun 2018 07:55:37 -0700
From: Anthony Liguori <aliguori@amazon.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak
To: <oss-security@lists.openwall.com>

Affected Software / Hardware:
All operating system kernels / hypervisors using Lazy FPU context switching
running on Intel CPUs
(more details below)

Summary:
The FPU register state (legacy/MMX/SSE/AVX/AVX-512 registers) can be
leaked across process or virtual machine boundaries using speculative execution
on Intel CPUs when the hypervisor or operating system kernel uses lazy FPU
context switching.

Impact:
Any information in the above registers is accessible to a local attacker.

Mitigation:
Operating systems and hypervisor need to switch to eager FPU context switching
or clear FPU register state on context switch. Relying on CR0.TS to protect
FPU registers is insufficient.

Credit:
This issue was reported to Intel by Amazon and Cyberus Technology.  The issue
was discovered by Julian Stecklina (jsteckli@amazon.de) and Thomas Prescher
(thomas.prescher@cyberus-technology.de).

This issue was also independently discovered by Zdenek Sojka - SYSGO AG
(http://sysgo.com) and Colin Percival.

Detailed Description
====================

Technical Description
---------------------

Lazy FPU context switching optimizes context switch times by lazily saving and
restoring the content of legacy FPU/MMX/SSE/AVX/AVX-512 registers. When the
kernel switches from task A to task B, task A's register content stays in the
FPU, but the FPU is disabled via CR0.TS. If task B touches the FPU, a #NM
exception is generated, the kernel switches the register content, and enables
the FPU agan. From that point task B can use the FPU.

Between the context switch to task B and the #NM exception that would trigger
the actual context switch, the FPU registers contain task A's register content
and the FPU is disabled. 

The attack works by speculatively reading the task A's FPU register contents
from task B in this time frame and retrieving the contents via a cache
side-channel. Let's call task A the victim and task B the attacker.

The attacker loads XMM0 with 0 and installs a SIGSEGV handler. Then he gives the
victim (task A) a chance to run by sleeping. Afterwards, the attacker flushes
the cache line pointed to by mem + 64 (see below), runs the following code:

; Cause a page fault and execute the below code speculatively until the
; processor rolls-back execution and delivers the page fault.
mov dword [0], 0

; Read xmm0. This would cause a #NM exception because the FPU is disabled, but
; it is never delivered, because execution is rolled back to the page fault.
movq rax, xmm0

; Now mask a bit in the value we read and touch memory depending on the result.
; If the bit contained 0, we touch [mem] otherwise we touch [mem + 64]. This cache
; side-effect survives when the CPU discards this speculative execution flow!
and rax, 1               ; mask bit 0
shl rax, 6               ; align to cache line (64 bytes)
mov dword [mem + rax], 0 ; access buffer with offset depending on xmm0 content

After handling the SIGSEGV, the attacker probes the access latency of [mem +
64]. If it's fast, the bit was 1, because the cache line was pulled in by the
speculatively executed code. If it's slow, we read a 0.

Because the kernel has not seen the #NM exception, the FPU registers still
contain the victim's FPU register content. The attacker can continue leaking
different bits from different registers.

Working exploit code that leaks one XMM register for Linux and FreeBSD is
attached to this email.

Affected Hardware
-----------------

We have reproduced this issue on the Intel Core microarchitecture from Sandy
Bridge to Skylake. Until there is a detailed list by Intel, it's reasonable to
assume that all current Intel CPUs are affected.

Other CPU architectures that allow similar lazy context switching mechanisms
might be affected as well.

Affected Software
-----------------

The following is an incomplete list of vulnerable system software.

Affected operating systems:
- Linux:
 - kernel versions < 4.9 with non-default boot parameters (`eagerfpu=off`) are affected
 - kernel versions < 4.6 running on affected Intel CPUs prior to Haswell [10] or with custom boot parameters (`eagerfpu=off` or `noxsave`)
 - kernel versions < 3.7 on all affected CPUs
- FreeBSD
- ...

Affected hypervisors:
- KVM when run on affected Linux version
- All Xen versions
- ...

Mitigation
----------

For Linux versions between 3.7 and 4.8, it is sufficient to add eagerfpu=on to
the kernel command line. Linux starting from 4.9 has no lazy switching code
anymore and are not affected.

Linux 4.4.y releases up to 4.4.137 haves a bug present that does not respect
the eagerfpu=on command line.  This is expected to be fixed in the 4.4.138
release.

Other operating systems and hypervisors need a source code fix.
