Received: (qmail 13390 invoked by uid 550); 9 Feb 2026 23:21:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11518 invoked from network); 9 Feb 2026 23:18:34 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1770679104; cv=none;
        d=google.com; s=arc-20240605;
        b=MGO6K8I3xQsCv8pHZhokSGaRmwn7JSbnrfdEP2k+PluxNlYVAPXHSoMKSyNEyGyE4P
         66Mqhwjk+VAttEHjtHbxpUJXe81dShaJ0W2hJ/YCdpCKbypcwddUMOE/n2lH7akJStxv
         hnDxy62vYl5wQG3vbHDp8mMZ+CkkdkqPlBdWTjBeq/Iy2FoGS2t8cEIml9dNc7SGTvJR
         SWSy/Y7h2yOZEGwlMg7JXwFeGf50l8Y3YRQneJolItZp8LmQStuQAV29qy2AeoirJGB+
         SREbRPPhV/jcWfDK/NvJf1zxBHARQ9UqYDYVIJIjH5EgOrn1JZ++AoGplPB+Aj6Dbrlo
         pOiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=UCBAeVNAhNiJgL4hKlIifbDKX+v55/rVAkP4ZoGS8So=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=RHznJCK62UMjA9STQBx2fRRqIKFDKJ5xv7ay9nYLQy/c276eieU9A6/hhyjR4yCIMU
         EpXUjqG7+HhE1SO8gbgHzGw3JlueY+j+6SDyrGIoCe6Bo4beBWXk1RpFFFWPVJuiKtJp
         vcLQieE6+ofIgaUzLO6LbkHo38tJf4bGeAreiBwPsJGIJElKZlQLbTz0I64mksDPjwX2
         aGtS9obmxmtHklU4HeTBhFXsGnUZShfjiBCJ2smsmsAUfFjv+EvmpKgE1RlZZqQb3IyZ
         Dhwc4me1mNcerSytwD+DBjYxM7B3OR4V/BqyLgy2VRVwVoorIgRwshmPZS/pquXLEntw
         xT5w==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770679104; x=1771283904; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UCBAeVNAhNiJgL4hKlIifbDKX+v55/rVAkP4ZoGS8So=;
        b=k8JkGeOHXCbA3frGx+Xsur0Qsd1EXvApO+sJ9aUGm9Zn3OdUXXe60ePuz/bWco6v5G
         /uaX+CFx6HFEbHyum2nJqszvTkdQ2ZoTuRJoIW0iWkV4RcDSSQpLdTgSlL/p6U1r6Qtn
         ttEYb2gQGZ1z1vEyZLegLe2puzUQvmwAa/IDtFosReMBEKtRq+907ATuLeBhp5IL252c
         ArqAxDs6gduEM6sz3NVIOsSMz9cfzXtdmyiPk5dLIZ9E/mvcqNZ8gKUqg2aa5kG7jGiz
         kJWNdKYIDpblwEIYpwTlqyJJAzc5hfzb5nZaOjLaCzdG1TvALn+oGt0m1lfIu+5DVRHK
         4USA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770679104; x=1771283904;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UCBAeVNAhNiJgL4hKlIifbDKX+v55/rVAkP4ZoGS8So=;
        b=AVVE0ha7LE5LWAGzoHEasHXiWnfGO2V3tIf2cK84uSucaF4sPyTBf1Tjf9+Pzb0E7W
         /5oh+AXGtQlipBu5ktDXsYm7yZBrvU/lQWwc5xU7icgcm492lPm7bGUY03bd2dAbqLZU
         owGFCxxVxXiRhN1s+2MPYKyDWsEBlJajPDv6FWwy1GWg7waeuMojz9452FaKi0oroY/3
         oGnOZqIlnmSnF3PMsq6sc9ULirtsaiQe83KoNAHD60n3FuxTY5b8quSinOAJKx+QYoFi
         OWOBadukr79c0TSnm2e5Djoa7HkeRUWQA25bDCi6Ow3FiulvdYgrpqWObpVMXRkBnppu
         HAnA==
X-Gm-Message-State: AOJu0YzG/9QI7eNe+egLlK3COf7YoI6GkDRkNZ6s25a0dVDo7JWzgE16
	HayFWRo7X05kBM7RomHy7/3gLq9+y/0hVesS+1MO2dj0CZlMusjaXzzVIrVhczBD3R8v0oQF2Ho
	dpVdC/dvFMzgQcFkDmNomvqUuV2kI5UbJr6Em
X-Gm-Gg: AZuq6aJA/VhdqgpH6Stea1xMs/HtDD5wzcK3AcKM/00uDXkPjo3DEkAiz/fNSVrRm3Z
	O1yHV9XC6Roy9g2rrhoALAxD1wCBwPn6L2ys3/09Dc8gaw1qzT0GLjL7MOv2a/UmPtVUaQHqx4k
	WliciR79zhtMcAuAMo5sAe8WzbxDFMHmD5oQ28vbhZnOXC5IFl14w7y0cUFwi8Q1CGaqVOjzLW3
	a/ImY32DfevwI2u+1W359gWhf9IrDPpXKammxssZf5gu932Rt/5iqb1S2gxL/k92Dk2h9AX9MFd
	AV5AKEk1+Z2wRbdX9SSMoCUgtAfRsWioNdS6G6HEZ9DwRZMic6tExgEkMRfWvyaTrNXUCHgUQ0A
	S2hn/1R/bmik=
X-Received: by 2002:a05:6820:308a:b0:662:f74d:69f7 with SMTP id
 006d021491bc7-672fe5b6685mr118883eaf.54.1770679104218; Mon, 09 Feb 2026
 15:18:24 -0800 (PST)
MIME-Version: 1.0
From: Cosmin Truta <ctruta@gmail.com>
Date: Tue, 10 Feb 2026 01:18:13 +0200
X-Gm-Features: AZwV_QhGDTbdOCeX1kwg6fZ2-qMyE9KEmeAJyfYkkuEIc7nI_2feZTSxaiULBXY
Message-ID: <CAAoVtZyhq57wdw6+c+FR-W=a6U0rBdeZsa3GhR_Kd+FerYPbwQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] libpng 1.6.55: Heap buffer overflow vulnerability fixed: CVE-2026-25646

Hello, everyone,

libpng 1.6.55 has been released to address a heap buffer overflow
vulnerability in the low-level API. This release fixes one
high-severity CVE affecting all versions of libpng.

CVE-2026-25646 (High): Heap buffer overflow in png_set_quantize
when called with no histogram and a palette larger than twice the
requested maximum number of colors.

The vulnerability exists in the color quantization code that reduces
the number of colors in a palette. A logic error in the color
distance table causes current palette indices to be stored where
original indices are expected. After palette entries are swapped
during color pruning, the index mismatch causes the pruning loop
to fail to find valid candidates, the search bound grows past the
end of a heap-allocated buffer, and out-of-bounds reads occur.

The images that trigger this vulnerability are valid per the PNG
specification. The bug has existed since the initial version of
png_set_quantize (then called png_set_dither).

Unlike the recent CVEs fixed in libpng 1.6.51, 1.6.52 and 1.6.54,
which affected the simplified API, this vulnerability affects the
low-level function png_set_quantize.

This can result in denial of service and potentially information
disclosure or arbitrary code execution via heap corruption.

GitHub Security Advisory:
- CVE-2026-25646:
https://github.com/pnggroup/libpng/security/advisories/GHSA-g8hp-mq4h-rqm3

Fix:
- https://github.com/pnggroup/libpng/commit/01d03b8453eb30ade759cd45c707e5a1c7277d88

Release: https://github.com/pnggroup/libpng/releases/tag/v1.6.55

Credit: Joshua Inscoe (reporter and fixer)

Users should upgrade to libpng 1.6.55 immediately.

---
Cosmin Truta
libpng maintainer
