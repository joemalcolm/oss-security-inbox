Received: (qmail 23889 invoked by uid 550); 12 Jan 2026 23:18:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12157 invoked from network); 12 Jan 2026 23:09:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768259352; x=1768864152; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0UoU9+I+6HvppRFqnelHk9hvlax5xglR+BiP28mZ7qc=;
        b=gRgFyIvd4cj3EsNTXtPSkIA/OephDoNFF49IXyy+Rpwihwhq1d78JDxu0BT2SFfov1
         rEn26njhHekTR6KlNFu6FxlHsqN0eMAMQnpKne6hqzJkifQYrmc8BrzzkgDZbH5INHxw
         ZcZ/cztUAhnlAzBOtdot8YsIUpS+0MziKUjsEcGMI9z8VcGt0VHjx0Lu2gHk/UABgsJk
         MjmEuKfb+OD3szkdC9A+jRNiVIMalKSFJgmGDniObTdOeV1LyzVa9vHBVbsVzjQMjhn+
         UyGSu/hEJpJkSI4J7MK7ptDTLYgxbGdCcPW9j2ep77NpRiQ8JU/SJdZq26gEx9yPCAHL
         j1ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768259352; x=1768864152;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0UoU9+I+6HvppRFqnelHk9hvlax5xglR+BiP28mZ7qc=;
        b=Cvl799Ocq/1XSI6Lkrod2qfgY6wdDarjX9z1MbkYKjwrZpq5FPaidrgfP/DdVYY9mw
         pSAkmxqnDfDT3WQy03ToPQctdYMYSp/eXWXTF6rZONVj3jxJVGGpaD6ddBHDUFvPoeg3
         RDSHJAtCkAmcZZEQugv94dlPN9AR6qu/1pm492pqLi+IaT7wmri80NA5tU48DMvEMVuz
         iWqiNaOMsKr7qQwETPUTMD/juoE3QnQVTRXFlrI4cEAOizD1YO7q4y430OnsgzwugZ+/
         ff+mi/7ImOHNY8vXGPyQVi+RCjVMiILmBTvpYUuLreCAPiGfaXwS1UjiThIZyZbU0/yD
         ovUA==
X-Gm-Message-State: AOJu0YxghA6M1+pQTRTt1tJVUv9Cz6CcVNQcqvak8NrCdtAb2YX2O61B
	K5ZVKK5cEFq2QCunrBYkHve5iEvLUoDLh2PQKwXC813YMqJrW+orlfL/6VeOvYFVV3uQoBTlSE+
	pO2YoE4Y4OCTZlK5QOYGlXMyP53mDJhxLP67k
X-Gm-Gg: AY/fxX7pWduRi0KHVvEWarO/q4boEO/l7SkA00BexvswFMIUZ4HsACje3m1iWsAyALW
	+vU1BwAHgrZfMx9Oy+jtSqU2S6ZX9uxG9AfYBG7T0lxlVnTGvbiNj8jfx7XiIcYt30uJ+EnFcMj
	4eErpeoRSyLUXQDXavNCAJaEt6/V7T7RXYkWuVVGG4DO6o/KgQQkLXfIaxxj+RVz12QAlPZwUj6
	W1FH8Qdpypg35iXUaBr0JtQH8ALuKZi9/vQxSJTdszC9xVuH1VwU0XJ0IT/amHVkuWxBLbyVb97
	+dBRmEOIPFxhSxjisntiU7JIuQ3Aemdw65ecIp1mrflBY4Kf3HvLLG17znZFo3C1/6j+bhxgXMI
	a8flh/ynFzyY=
X-Google-Smtp-Source: AGHT+IESNCSscNVsl3fPBI5bzrQEl7qTjUiYblBHXXmyXKrVxzeB7Crsmc/atLRdjQVUjLDTOaNlOgMptKNAWTUtY8k=
X-Received: by 2002:a05:6820:160f:b0:65e:c673:777a with SMTP id
 006d021491bc7-65f550982eemr9858573eaf.58.1768259352428; Mon, 12 Jan 2026
 15:09:12 -0800 (PST)
MIME-Version: 1.0
From: Cosmin Truta <ctruta@gmail.com>
Date: Tue, 13 Jan 2026 01:09:01 +0200
X-Gm-Features: AZwV_Qg6OaA6jwO274slwdQtQv1UrG0G-EDBpoFTi4IKIBULjbhon4FuYqGRqpE
Message-ID: <CAAoVtZwZkg3vN3MOdFxXA4JLqpZVTcmmtbwccXbkSAEEMiCSAA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] libpng 1.6.54: two heap buffer over-read vulnerabilities fixed:
 CVE-2026-22695, CVE-2026-22801

Hello, everyone,

libpng 1.6.54 has been released, fixing two medium-severity heap buffer
over-read vulnerabilities in the simplified API.

=== CVE-2026-22695 ===

Heap buffer over-read in png_image_read_direct_scaled
(regression from CVE-2025-65018 fix)

Security advisory:
https://github.com/pnggroup/libpng/security/advisories/GHSA-mmq5-27w3-rxpp
Remediation commit: https://github.com/pnggroup/libpng/commit/e4f7ad4ea2

CVSS 3.1: 6.1 (Medium) - CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:H
CWE: CWE-125 (Out-of-bounds Read)
Affected: libpng 1.6.51 through 1.6.53
Fixed: libpng 1.6.54

This is a regression introduced by the fix for CVE-2025-65018.
When processing interlaced 16-bit PNGs with 8-bit output format and
non-minimal row stride, the png_image_read_direct_scaled() function
used the caller's stride instead of the actual row width for memcpy,
causing a heap buffer over-read.

Impact:
- Information disclosure (low): over-read may expose adjacent heap data
- Denial of service (high): negative stride causes deterministic crash

Applications using the default stride
(row_stride = 0 or row_stride = PNG_IMAGE_ROW_STRIDE(image))
are NOT affected.

Credit: Petr Simecek, Stanislav Fort and Pavel Kohout (discovery),
Petr Simecek (fix)

=== CVE-2026-22801 ===

Integer truncation causing heap buffer over-read in png_image_write_*

Security advisory:
https://github.com/pnggroup/libpng/security/advisories/GHSA-vgjq-8cw5-ggw8
Remediation commit: https://github.com/pnggroup/libpng/commit/cf155de014

CVSS 3.1: 6.1 (Medium) - CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:H
CWE: CWE-125 (Out-of-bounds Read), CWE-190 (Integer Overflow or Wraparound)
Affected: libpng 1.6.26 through 1.6.53
Fixed: libpng 1.6.54

The simplified write API functions png_write_image_16bit and
png_write_image_8bit cast ptrdiff_t row_bytes to png_uint_16 before
pointer arithmetic. This truncation causes heap buffer over-read when
the caller provides a negative row stride (for bottom-up layouts) or a
stride exceeding 65535 bytes.

Impact:
- Information disclosure (low): over-read may expose heap data in output
- Denial of service (high): infinite loop or crash from reading unmapped
  memory

Applications using default stride with images narrower than 65535 bytes
per row and top-down layout are NOT affected.

Credit: Cosmin Truta (discovery and fix)

=== References ===

- GitHub Issue (CVE-2026-22695): https://github.com/pnggroup/libpng/issues/778
- libpng homepage: http://www.libpng.org/pub/png/libpng.html

---
Cosmin Truta
libpng maintainer
