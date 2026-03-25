Received: (qmail 13993 invoked by uid 550); 26 Mar 2026 00:30:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25933 invoked from network); 25 Mar 2026 23:22:56 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1774480967; cv=none;
        d=google.com; s=arc-20240605;
        b=AKUNQlyv63y24YlPXDlIovZVDqqfswC+ilcPeYjyEm32uE9opf03gcMSr4hGv3XhEx
         4Bq12RIx6NzGuymKFneD+CK4bnBP1uizUulhHzFdpxngLomCJ+iXoGMGEdMCqwcJvyJi
         tEAfqSAIu6P4jRnP+7Ls9I/cL2r3gUAADitRBtMnCShgri2gvjwKT0aSzuSOGVB9wGUo
         IVfp5xOyR4NBqATDZawr1jXnPuh99/I8zTu6EPYJXGGNcp77sqQg8aBIcNObm16lpWMX
         sv/fHOSb4yVHHbkACBvcsn26e5Dwt7fi6yCoNddwhbTiJXVM2aPLCFqMxho26bihB0TW
         U7Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=JWw6yHncxq9bVXPESOShvgofRdKHLUsHwNBPXgsADQo=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=jV/URyqPoBSWYFslm/7GIbtMmEk93/d3tle1aR/s02xlnTB/zfm+bm5RWbHca8dQAO
         gjHyEfCQT4hTaXwX24EC4CNeisyE23bWIIuoyrTxEzZEvJ+auZ/2nozqUwngd/9g26Ti
         nR0HPW/0HnMeRdxDDU56oVFGzFvMTtrCUWSEJEBb/fbTRUc0A111qGQB2YnqHX0G+cGU
         Fn84e1hkwfJbFE4y6l0HBgRlyBYfSoWsaUHdXWOlhTUE84gzaIzT45UrPsQXD3TOF9jg
         p2Ppm46YXupCHQA7/+PBqS6cRrnhEsDEd4jFbE2xRiOHtWXDL9QJsqvbRBTCQhG7/UjI
         NjWQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774480967; x=1775085767; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JWw6yHncxq9bVXPESOShvgofRdKHLUsHwNBPXgsADQo=;
        b=LGnkne3aJTnAT0XR4elmA6U0GG+acKO3yKqSu4KJ5Skk733f8JdIJsq9P4pZk06am/
         4CEAsstuNqSOySDWhQRGOLK4kZiy8DqyqTf0AeB2HAJRRuFKichOfXhKIZNMGwxaMfBN
         GJvahuC/C2TF48NPQwvpm3OkifD9j5XO8x2l3VIMT26j9odX/H4axQGaX5MgNtJFFIZm
         mYTSbIhk4LvPtTi+mgGDeyFQJ26AA0b2S1Telh3yLwawt2QzeedUjhm9MjGAVB8OHMuk
         gpMCCCLjIewjZgJe35bPKbB+MvVXziljh3iFB3pERs+euBVPej6s7c0b99t97UYy0naz
         B3Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774480967; x=1775085767;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JWw6yHncxq9bVXPESOShvgofRdKHLUsHwNBPXgsADQo=;
        b=HpwM05fBCxyEYPZcpBpcanRDKVq4EZEiK/aBueMq6mRN4U9jxu6zKYccQXHGcmf+dE
         wweBJGZuKH+4eS2TuRYtu1SHotA35z5VxsmcqHRQtSn6qaS5N4ESUFCcAaRFpgYNpyOO
         B7sWZM6W5qxjqkc90m8twE+y/BLUFOaVi18SO5dYcJIEezVRPMOkgQU347Kd7QZVgNQ1
         wrXwMYIjhlJy/kOS4ljbmBXk1L1aWZsIVcLbgnIXyn7LHf475FfbbFbsRsf00YZ6bD3e
         /Hyl2R39SiZNkckeaodsNufj/+VquLp54tmhPC8f7IlTgfPRcwlyf3cwZU0glpO5WHqq
         L+eQ==
X-Gm-Message-State: AOJu0Yx98oVDhvfU6K67jL6QL4Ww3E3e6T71RT9UIUp0rD8/wBHe7AEr
	y9eD0ZB8PJhRASree0vngf9z+SawjJ5GcaV7AehYmqBVmbK9dtY9ydOQcvyEnHWCj8+LnSxjXef
	wv+0b/1Z3GbVjpFO5f8zEnk4qdspTwdGQIjdD
X-Gm-Gg: ATEYQzzKt6majVZzo5N4wWRWpPzV8cBdyl/BK0e80gX7AptvxAnoMcQl90sggWkSN+C
	MaAMIPU/VRYJ27ygZxhg0SDPw9PC+IhJmZfGixhnFZaNhEgflIDdO+imYuc1rdrc5UFLpt95n2k
	qeyh6GGN7Q1aBAeA4j+cDWxA+3ZuCe2RPUs3IM2aHFZ9jm9mBbn3tPPRsbRbm/4GdlHRVu8i77s
	IGD5h3+RbMfpNBuUMEC7NadPr5rTp1wTlcNZ5lwKnpnkD2YlE00gH7dXxzByI05avdQ73ELrkD/
	+/8BG05NghfRmejJV427LcEo8AxYWRiYgLpCo0GpHs5VpuWuVFy454mCvk0YQw+8uKh5UFzkUZX
	CsC3i3EVbqXc9TiTto+XtmAU=
X-Received: by 2002:a05:6820:1907:b0:67d:e9ce:cb23 with SMTP id
 006d021491bc7-67dff5325c3mr2948752eaf.38.1774480966887; Wed, 25 Mar 2026
 16:22:46 -0700 (PDT)
MIME-Version: 1.0
From: Cosmin Truta <ctruta@gmail.com>
Date: Thu, 26 Mar 2026 01:22:34 +0200
X-Gm-Features: AQROBzCvEhrz-xNcBqkmClygb-ZC5PYEpEYLkW88jnuDEGOQrEeR5U9hmHNYPRA
Message-ID: <CAAoVtZyv9vGho=gUKP4o7hu4pEtTFPeOODZKQTqAbeBcG8E9AA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] libpng 1.6.56: Two high-severity vulnerabilities fixed:
 CVE-2026-33416, CVE-2026-33636

Hello, everyone,

libpng 1.6.56 has been released, fixing two high-severity
vulnerabilities: a use-after-free in the low-level API affecting all
versions, and an out-of-bounds read/write in the ARM Neon palette
expansion affecting versions 1.6.36 through 1.6.55.

Users should either upgrade to libpng 1.6.56 or apply the fixes
described below.

=== CVE-2026-33416 ===

Use-after-free via pointer aliasing in png_set_tRNS and png_set_PLTE

Security advisory:
https://github.com/pnggroup/libpng/security/advisories/GHSA-m4pc-p4q3-4c7j

Fixes:
https://github.com/pnggroup/libpng/commit/23019269764e35ed8458e517f1897bd3c54820eb
https://github.com/pnggroup/libpng/commit/7ea9eea884a2328cc7fdcb3c0c00246a50d90667

CVSS 3.1: 7.5 (High) - CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H
CWE: CWE-416 (Use-After-Free)
Affected: all versions through 1.6.55
Fixed: libpng 1.6.56

png_set_tRNS and png_set_PLTE each alias a heap-allocated buffer
between png_struct and png_info, sharing a single allocation across
two structs with independent lifetimes. Calling png_free_data (or a
second call to png_set_tRNS / png_set_PLTE) frees the buffer through
info_ptr while the corresponding png_ptr pointer remains dangling.
Subsequent row-transform functions dereference and, in some code
paths, write to the freed memory.

Impact:
- Read-after-free: freed heap memory read via dangling pointer in
  row-transform functions; may leak sensitive heap contents
- Write-after-free: the PNG_READ_INVERT_ALPHA complement loop
  (trans_alpha) and bit-shift transforms (palette) write
  attacker-influenced values to freed heap memory
- Arbitrary code execution has been demonstrated in proof-of-concept
  exploits on allocators with deterministic reuse (e.g. glibc tcache)

The crafted PNG files that trigger this vulnerability are valid per
the PNG specification and pass all PNG validators.

Credits:
- Halil Oktay (discovery and fix)
- Ryo Shimada (independent discovery and exploitability demonstration)
- Cosmin Truta (follow-up fix)

=== CVE-2026-33636 ===

Out-of-bounds read/write in the palette expansion on ARM Neon

Security advisory:
https://github.com/pnggroup/libpng/security/advisories/GHSA-wjr5-c57x-95m2

Fix:
https://github.com/pnggroup/libpng/commit/aba9f18eba870d14fb52c5ba5d73451349e339c3

CVSS 3.1: 7.6 (High) - CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:L/A:H
CWE: CWE-125 (Out-of-bounds Read), CWE-787 (Out-of-bounds Write)
Affected: libpng 1.6.36 through 1.6.55
Fixed: libpng 1.6.56

The ARM/AArch64 Neon-optimized palette expansion functions process
rows in fixed-size chunks (4 pixels for RGBA, 8 for RGB), working
backward from the end of the row. The loop bound permits a final
iteration when fewer than a full chunk of input pixels remain,
causing reads before the start of the row buffer and writes of
expanded pixel data to the same underflowed positions.

Impact:
- Out-of-bounds read: may leak heap contents through decoded pixel
  output, since the palette is attacker-controlled
- Out-of-bounds write: attacker-influenced palette data written at
  deterministic negative offsets from the row buffer (heap corruption)
- Denial of service: reliable process crashes confirmed

Only ARM/AArch64 builds with Neon enabled are affected. Builds
targeting Intel SSE2, PowerPC VSX, LoongArch LSX, or generic C code
are NOT affected.

Workaround: build with CFLAGS set to "-DPNG_ARM_NEON_OPT=0".

Credits:
- Taegu Ha (discovery and fix)
- Cosmin Truta (follow-up fix)

=== References ===

- Release: https://github.com/pnggroup/libpng/releases/tag/v1.6.56
- libpng homepage: http://www.libpng.org/pub/png/libpng.html

---
Cosmin Truta
libpng maintainer
