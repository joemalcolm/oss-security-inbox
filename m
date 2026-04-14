Received: (qmail 15425 invoked by uid 550); 14 Apr 2026 03:53:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27815 invoked from network); 14 Apr 2026 03:29:48 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1776137380; cv=none;
        d=google.com; s=arc-20240605;
        b=GaTRtHb3wT5oy92vU+sDiKRRQ6inv6iwvPTGJw0bt8d1B/dEufcVD13hLdfV8+Dv3z
         ZPzYlu3WujB9f9Us5FbPLQo+SZUmA8Vfx08aQ/jAjs4ectg56Q0jN0d8+Pidw2eCgumL
         0/rpJZUe7bY0cxHolKmDAWYlYvKSx5DyOAiRsmewO5It+y0JP+6Roub8KkkDSdxAw50k
         QLyPeLkujoT2//wbxz8UKQx06vsHZdQl9ZYNsmE0dDPUJfFnrlb+IgNIc0t8cKiQTrEX
         6u5RpA4NDs9Rkr30Wfllv8genhzqmtXmFgCdt/IfbM5Ar26PhgNVDzAN/EzcV+CrndE/
         0q0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=aRZ+a/4d+pzGto/pye2tQtEUawtoExF38S6kkBSZu10=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=hy7YMzvKwe1epTV30T1c2vFpE6TkDMaHo542o/6VCKxzLeC4wwDfmngkHaCrOkq2Dg
         3M91mt2o6sLhc2H16+x5NJpMPPkzB7fthgFS6lio9KO/M1hsPtlf3e2GpJOaa8ecpFx5
         9/yJcy6A07y5jKRxNcXVquwIqchjXyCFJqaPMEUW2PX1Skpr6IqA12a/J46fG4zhLlDj
         Nl3SwYnBAhRyP6Rjfhhs7ZDcPofgD0XpsjQfO5qu4nNUM0atlNCZGli1zItVWxGESZfs
         N+jBojCtQC5pCE2WWvR3eextcoh9lhCYtLIYlL8Qy7VvzTfZ4rzH42/XWNh3f7UTpIIN
         4tBg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776137380; x=1776742180; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aRZ+a/4d+pzGto/pye2tQtEUawtoExF38S6kkBSZu10=;
        b=UJzPFoqJXaMqfd3w6vfyOuFl6xwwgesOIA+6dEOTTIAgwymK317dtZNp59f4fqCL5U
         hli2saOUSPELRDrCQXf5qqkiECqVg1oO2QZn1p8C3NAXzmROzkDZnCrMSki7lXMkZ6B+
         DhQaobcr+Qx+K2RnqKp3NXZ9KBhPKQN5JX6p8gwG38pStg/O7I7VE+7qKYfBMr1ODLch
         0QgwOE2yKQwK3+2QpyHOtX+DxJ8jENIG/Omsr6vSQwTtQKEXC1plR0JYVFARC39jgOF6
         2dfSqKWyCT0MNCR5TJyu9Q+NMJFxDjA50NsOUkg80gd7KBfS9vqEO9ki1gAJ5mmHJqMY
         FdDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776137380; x=1776742180;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aRZ+a/4d+pzGto/pye2tQtEUawtoExF38S6kkBSZu10=;
        b=G/5ZwV+iheOkHWfukYJdaEWCd5Tzq1aXSn1DLGEdvaKh6J+tcLG8qXWQJPUijo6Axw
         HZEDpwR4v7Qajlt652579Q0PQMoR4F7pwZDe2ocXWmw7X5QeI7gECzQWBHY0bHevpOgr
         CvMSyD9eXaw9tyVowFh2Iy5rZJ/1R5poLmxliGt9CJiaThIYH9VkMzPn+xEYS8SGgHPF
         jv9l+FukBieO3ECipX6B1lPPC65BQFhG0Vvgq7/75WZviwgY73uZw2+yrDqMJE3h469C
         /CIqFXSuaZx2TagBscu3bSzATusiJkCL1AcHQDZaasNCU+NAcMqixXalEawbM2ZoFY+p
         U29w==
X-Gm-Message-State: AOJu0Yy8AgjEaT7g2zq83Og5+ew7uimOrNFX6RBskXq0mgL+SULmKZNo
	ShwLLVwP0sSuTu1MVEYQplpOYwozXTO45TKpXZuKI3yR7pbSDOpI+jNQypOndml4+tCLutuop8a
	shV3+kY3MUSaqmXaAHP14QZfzibFVZst0SldnzIY=
X-Gm-Gg: AeBDiet0tnX+eYHW876/iCiTb1ZP0SiUeAIKLPpQtYBaKts0bDmAVAXHgmGvOnAsIZ8
	uPZnUZQvcliKxuTk6626/DoFV98yXVEhPe9/20TTcKs/98604diSyPJNE9TRQZ3gvVns0yn+J1t
	oWbIShrNbAKwTTzOkM9dJM0LdgGZtuC+rnZH6ftBo12AtUkaOJkBpW8efLevgN0MuIWZdTP8nqT
	kKajnXx3p5j9bZnZVUKhLbwvUIH0sRdqPAES8jHX8OqTZRsZWv3sf26YVGJL+SAA+ERIlD1QVSC
	B1+VpJcVnOKtV0l45ftO98W+/2OfXCl6sssU6ojx1pu/u0bmHB9Ce/ZaDKGn0FZuyPAoB9sLG90
	QORXmuPI=
X-Received: by 2002:a5d:6f03:0:b0:43c:f4e8:675a with SMTP id
 ffacd0b85a97d-43d642c95dcmr9504543f8f.5.1776137379903; Mon, 13 Apr 2026
 20:29:39 -0700 (PDT)
MIME-Version: 1.0
From: Abhinav Agarwal <abhinavagarwal1996@gmail.com>
Date: Mon, 13 Apr 2026 20:29:13 -0700
X-Gm-Features: AQROBzAqCVQnH5gLl-4NflceVA_gjTECixtj1B-MDufVLu-BmZ43Lf0HUtIk34I
Message-ID: <CAK3hNHapgvw6Se3MrissbL8kJCF7oBbmvxDB6fQ6jjQdx70W_A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] wolfSSL ML-DSA: same-process heap reuse exposes private signing
 material, enabling signature forgery

Affected: wolfSSL v5.7.2 through v5.9.0-stable (native ML-DSA builds
with --enable-mldsa / --enable-dilithium; not included in
--enable-all)
Fixed in: PRs #10100, #10113 (development branch, no release)
CWE: CWE-244 / CWE-226
CVE: None assigned.

wolfSSL's ML-DSA-44 signing function (dilithium_sign_with_seed_mu() in
dilithium.c) frees a ~50KB heap block containing private signing
material (s1, s2, t0 in NTT form) without clearing it. For a
same-process attacker able to allocate and read a same-size heap
block, the key material is recoverable. On glibc tcache, the PoC
recovers s1 from the freed block and forges signatures on arbitrary
messages -- verified against the compiled libwolfssl binary on three
Linux distributions and macOS.

wolfSSL already fixed this exact pattern -- missing ForceZero before
free of private key material -- in dilithium keygen (643427040),
ed25519 signing (5f7bc0f3a), and ed448 signing (109e765b5). The ML-DSA
signing path was missed.

FIPS 204 Section 3.6.3 requires implementations "shall ensure that any
potentially sensitive intermediate data is destroyed as soon as it is
no longer needed."

Root Cause
----------

dilithium_sign_with_seed_mu() in wolfcrypt/src/dilithium.c (v5.9.0):

  Line 8222: XMALLOC allocates a block holding y, w0, w1, c, z, ct0,
and -- with WC_DILITHIUM_CACHE_PRIV_VECTORS off (default) -- also s1,
s2, t0 in NTT form. For ML-DSA-44, s1 is at offset 21504.

  Lines 8417, 8958: XFREE without ForceZero.

The fix is one line:

  +    ForceZero(y, allocSz);
       XFREE(y, key->heap, DYNAMIC_TYPE_DILITHIUM);

Attack Chain
------------

  1. Application signs M1. wolfSSL allocates 50KB block with s1/s2/t0,
frees without zeroing.
  2. Same-process code calls malloc(50176). On glibc tcache, this
returns the same block. Read s1 from offset 21504.
  3. Forge a signature on different message M2 using s1 + public key
via hint reconstruction (no s2 or t0 needed).
  4. wc_dilithium_verify_msg() accepts the forged signature.

s1 is the static signing key. One recovery = full signing key compromise.

Proof of Concept
----------------

  poc_heap_forgery_v2.c -- end-to-end forgery (includes dilithium.c
for access to static NTT functions).
  verify_forged.c -- companion verifier linked against the compiled
libwolfssl binary, not inlined code.

  $ ./poc
  --- heap reuse ---
  got 12530/12544 nonzero dwords in block
  s1 at offset 21504: 1024/1024 nonzero
  --- forging sig on m2 ---
    forged on attempt 2 (kf=4)
  FORGERY OK - wc_dilithium_verify_msg accepted forged sig on m2

  $ ./verify_forged
  VERIFIED - linked libwolfssl accepted the forged signature

Tested on v5.9.0-stable, gcc -O2: Ubuntu 22.04 x86_64 (10/10), Amazon
Linux 2023 (5/5), Ubuntu 20.04 (5/5), macOS ARM64 (pass).

Source + build instructions + full advisory:
  https://abhinavagarwal07.github.io/posts/wolfssl-mldsa-forgery/

Vendor Response
---------------

wolfSSL confirmed the finding, patched it within two days (PRs #10100,
#10113), and credited me in the commits. wolfSSL evaluated the
heap-reuse PoC and acknowledged it is "correct in using the data
obtained from the heap buffer." They classified the finding as a bug
rather than a vulnerability: "an attacker cannot simply call malloc()
after the signing operation and then read all that memory."

Timeline
--------

  2026-03-28  Report sent to wolfSSL with forgery PoC
  2026-03-30  wolfSSL confirmed. PR #10100.
  2026-03-30  Heap block addendum + patch sent.
  2026-03-31  PR #10113. Declined CVE.
  2026-04-02  wolfSSL reaffirmed. Ticket closed.
  2026-04-09  Heap-reuse PoC sent to wolfSSL.
  2026-04-10  wolfSSL evaluated, acknowledged correctness, maintained
classification.
  2026-04-13  Public disclosure.

References
----------

  https://github.com/wolfSSL/wolfssl/pull/10100
  https://github.com/wolfSSL/wolfssl/pull/10113
  FIPS 204: https://csrc.nist.gov/pubs/fips/204/final (Section 3.6.3)

Abhinav Agarwal
https://github.com/abhinavagarwal07
