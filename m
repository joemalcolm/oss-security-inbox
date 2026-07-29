X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/29/8
Message-ID: <dzp2vbih7jcsxjmcnxnefgi435b7re4kwxvxmvlxrmkra2p5br@vv5ckstkijym>
Date: Wed, 29 Jul 2026 13:04:15 -0700
From: Pawan Gupta <pawan.kumar.gupta@...ux.intel.com>
To: oss-security@...ts.openwall.com
Subject: Backports available - cBPF JIT spray hardening
Content-Type: text/plain; charset=utf-8

Hi All,

This is an inform distro maintainers about recently upstreamed hardening
against speculative execution attacks using BPF JIT spraying.

The backports are available here:

  6.1  - https://lore.kernel.org/all/20260727-cbpf-jit-spray-hardening-6-1-y-v1-0-eb80dcf1eb6e@linux.intel.com
  6.6  - https://lore.kernel.org/all/20260717-cbpf-jit-spray-hardening-6-6-y-v1-0-e04f1b2893de@linux.intel.com
  6.12 - https://lore.kernel.org/all/20260715-cbpf-jit-spray-hardening-6-12-y-v1-0-d8585a9aed80@linux.intel.com
  6.18 - https://lore.kernel.org/all/20260713-cbpf-jit-spray-hardening-6-18-y-v1-0-755f60c55705@linux.intel.com
  7.1  - https://lore.kernel.org/all/20260709-cbpf-jit-spray-hardening-7-1-y-v1-0-5ac5a2d6797f@linux.intel.com

6.1 backport is queued. Others are part of LTS kernels.

5.15 and older do not support pack allocator for BPF on which the hardening
is based on. So the series is not directly applicable to 5.15 and older,
and may need custom hardening patches.

Please let me know if there are any questions.

Thanks,
Pawan
