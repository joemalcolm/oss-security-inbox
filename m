Received: (qmail 23954 invoked by uid 550); 11 May 2026 18:20:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24526 invoked from network); 11 May 2026 18:10:07 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778522998; cv=none;
        d=google.com; s=arc-20240605;
        b=aPkfKCpCbr3D3qQ9vbpPcF/6D7NYzhFSVB7YBEr5Zd9dz9yA6w6z+1kG3wDFgDQLWP
         Sjakbwe3EWiHZIS6FCXv9MNkZesgeRyssBeUsH+rEW9DmwHVpIb7NzAo3tG+gbUujP6J
         6nlllo6vxyzGxEEzrcsERdHSPMVCQlUlsy6kEINKVpZpojC/mqcueNpehLbmc1zDzbMF
         C1CaroXpFmizbnClyIPhMH5gafaYA2mSerb5Mz7Mej+nzJrlHvLCCNWf/F6kkAXvDHXO
         C+/BrQCUwLFibbcshGTo8odgAy8ZDVoF5NUmB9aXADnsKQKdWmkAuPfSy5xcNXEjkWKD
         xN9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=G3Q98iZh22DxzkcGcbqx1a9n2W0XfvzWk0NheLcXSoU=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=JuYh2B6u1h/lnE2urtRuB6++cccOD6TXiY8m7VzDw2U7c4UScyTDlFtiSm5IdbRVn1
         UTEUSyKjnEIHuRq7heRt/SnU7qcK8Ixt3ajlUGeOtiszXH8/gBoze2oVG2Di1OSbdCV7
         3LTSfewSV1UwnPKXxj3ZB2cKe+jDgOKppwy4oknCpFgVzGTb3Cy30lV0Q3ttv5tH/Yp+
         w5KzXvyz+8WxcNVLIRVJgYUSWI/r1HBsLPCxbJqwTJGVyj+FeVhv1aE+TiP/6iy8En2T
         nAwSHPb2TZItA8Eg59IjbQjjgMEM466lczzh9Jbrkr5YQvhVXDQ1b14CsvB60GddmNwi
         O05A==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778522998; x=1779127798; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G3Q98iZh22DxzkcGcbqx1a9n2W0XfvzWk0NheLcXSoU=;
        b=diayZOdRMXGocceh6AOxlpPUHqNsgWQ52sS4fDwauKpTWv5Lr0fgsROO8kyALfTRTJ
         OxUvfi8ixnGSjCSqv8OCjlBCusS5/G2uptVf7cD5ZUOCkAVCgEDj6Ej3QkONlBuFL+Ed
         ovfsDRvUoIOa9A+e00ktorRu0VLIBCMAJSuQqt+WPuERbmSVz/vDDkUUHQtY3TLgb7c2
         3e9Uaglahg2JjRWBh1m78Ude9GDoTSDXHtg7qbqofdB33ZrJcijMQNvd/aUUYU+edqjv
         rab64q9QOeFcIQfeTGSri3T+7etCaIHzX9mmwsNX3sFL0AIeBb1tE1CYucFzeZl3qAM+
         vtAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778522998; x=1779127798;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G3Q98iZh22DxzkcGcbqx1a9n2W0XfvzWk0NheLcXSoU=;
        b=ZbajVVGJmwf1Rmrpuk6ZJU15JzQ6zWu1rUPtec91QmOJLw6nCVK0gYjhqP5/oejxXe
         Ivu8JWuS5w9ykVnjehVbCmd7zBLg5AeKspUECTS1VUZyWTTx6ngGiZJxmuUK75DMKVZX
         PKzNyqRj2E6zSIeuVxJDCUtQ8Lcv8Fvvt0oymEqxH1YZK+u+DsufMRc9TPh/GECIuT5I
         VyFNLjBCX68r6QGLHfxNr7SbvENWcVDIQ4VdopJuWPs3n36/xgg227NS0CjN4zEzudBp
         n26l1zlZosz/cKBs4/E4/hDaGAlOVCPDajRt1PiF2uuv45XXLfqI3rHGOVfZgeBIi4GC
         sJAw==
X-Gm-Message-State: AOJu0Yx0KzfqxxFFba61J/20JtG3vhGAXx7Lu1TgaACSIbmvGv4gVj6N
	NCfZeNOBAxVGHU1VtNJapb2lnIiPwsuzuP/4+qiPHzOl/3wHouO211+o15E64EvDrhmhwn+AzS4
	bu+plbYmDilV7k8tqdgVEIq8ca3uabBzVptmVlPg=
X-Gm-Gg: Acq92OFa3TZDjhRcKIASUPf78zgrJ2x/nX+oEz3dXhfT3ivjGr2V2V8ZfI7RlFd6S5C
	syJ/xPH37t0GT37al07nfhqWOda6KHsRi9WzoGQ+3YKWagQtePO1nelnylfLwhEXjkA2bHDk5Bg
	/eUjDbeApkoMqQzX1o6qj1ajYbrTuWr/XPk/xU3ZEMLCVU5sLpBuw+uWnByR4Tb+poAD7yBIEQZ
	VunXEHycXJYiaZNLTY1BhegTSL3yIcnQshv7xW4tcpi0XtZED4voCnuFBfFm3m3yGf/wRRriUCx
	KSDB1gEBTXodU0YKEbq3sEfQccVP8STho48U/nHFSr+pIbW2p7p0yosCnViEYZtLohZTFeujzKE
	HcNonSuM=
X-Received: by 2002:a05:600c:3595:b0:48a:5664:f44a with SMTP id
 5b1f17b1804b1-48e5325018dmr225268645e9.2.1778522998308; Mon, 11 May 2026
 11:09:58 -0700 (PDT)
MIME-Version: 1.0
From: Abhinav Agarwal <abhinavagarwal1996@gmail.com>
Date: Mon, 11 May 2026 11:08:00 -0700
X-Gm-Features: AVHnY4IFWulkNnkoRXGWeTdMN9Cd5KRgm01tlleCVMluqtFA5I-rBoEC4vlHFQE
Message-ID: <CAK3hNHb=ej5D1QQpeY_X9EKk1Nn0jq_0bPtdLgTMTi4-aUqieg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] OpenSSL ARM64 SM2 scalar multiplication timing side-channel (no CVE)

OpenSSL's optimized SM2 scalar multiplication in ecp_sm2p256.c has
data-dependent branches on the secret scalar, unlike the equivalent
P-256 code (ecp_nistz256.c) in the same codebase.

The function ecp_sm2p256_point_P_mul_by_scalar() processes the 256-bit
scalar in 4-bit nibble windows. When a nibble is zero, point_add is
skipped entirely:

    for (i = 63; i >= 0; --i) {
        index = (k[i / 16] >> (4 * (i % 16))) & 0x0f;
        // ...
        if (index)
            ecp_sm2p256_point_add(R, R, &precomputed[index]);
    }

This is called during SM2 decryption (sm2_crypt.c:360) with the static
private key d as the scalar. A second function (point_G_mul_by_scalar)
has the same pattern with 8-bit byte windows for SM2 signing
(sm2_sign.c:295), where the scalar is the ephemeral nonce k.

AFFECTED PLATFORMS: ARM64 measured. The optimized ARM64 path is present
in OpenSSL 3.2.0 through 3.6.1 and current master. RISC-V compiles the
same source path on current master, confirmed by code inspection only.
x86_64 does not compile this optimized ecp_sm2p256 path.

MEASURED EVIDENCE (ARM64 Neoverse-N1):
- Direct EC_POINT_mul: r = -0.9828, slope = -389 ns/zero nibble
  (100 crafted keys, Fisher-Yates shuffled)
- Full SM2 decrypt (EVP_PKEY_decrypt): r = -0.9752 (shuffled crafted
  keys), r = -0.9829 (random keygen keys)
- Blind zero-nibble-count inference: 80% within +/-2 nibbles
  (40 keys, attacker has no key access)
- x86_64 control: optimized symbol absent, no comparable signal
  (r = 0.152)

INFORMATION LEAKAGE: The timing allows estimating the zero-nibble count
of the private key. That count has about 3 bits of entropy for a random
256-bit scalar (B(64, 1/16)). Full key recovery from this timing
signal alone has not
been demonstrated. The same non-constant-time control flow may also be
relevant to local cache side channels; this report demonstrates only
timing leakage.

CVE-2025-9231 fixed a timing issue in modular inversion in the same
file. The scalar multiplication loop was not modified as part of that
fix.

CONTEXT: SM2 is used in Chinese commercial-cryptography deployments;
the affected optimized path targets ARM64 and RISC-V.

DISCLOSURE:
- 2026-05-02: Reported to openssl-security@openssl.org with full
  evidence (correlation data, 4 independent PoCs, negative controls)
- 2026-05-06: OpenSSL response: handle as regular bug/hardening, no
  CVE. Asked for a public GitHub issue.

Full write-up:
https://abhinavagarwal07.github.io/posts/openssl-sm2-timing/?utm_campaign=openssl&src=oss

GitHub issue:
https://github.com/openssl/openssl/issues/31133

Evidence artifacts (PoC source, tarballs, transcripts) available on
request.

-- Abhinav Agarwal
