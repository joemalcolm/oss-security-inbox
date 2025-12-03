Received: (qmail 27711 invoked by uid 550); 3 Dec 2025 20:58:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26426 invoked from network); 3 Dec 2025 20:51:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764795079; x=1765399879; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sAE5zmiPW9qvVm0BPLDz0wsvfFfukWH7cOp6ympL+E8=;
        b=GJYzYWIiJ0dD2/d9Dx2Zcs4fg+3i0rLm8jvQvqyuSrlPbHR2zqsMexkdufS0mCxTHP
         fGYONp8Ek8w0c6yqZhYxE0pI0W6aB3tS/Kk8peRYKSZHPInJR+9o4GRYpCP+pffxzNFa
         jH2mN8FBxSoLf3cqSB/3eFaOfyrR0D3TOUHr1oDiDSmoBmAixEeZ9ggxP0y4Wk4z0WVb
         53yFLHaPryUJIvf6sAoimPi4g4XS/WCMc5nA3EEBxUnifCu+lMm+Cob6AzRU9UYxk+Nl
         BsYVGDdvSOgJFyRpf1fyJVcJRCHRHOp75IxH2QRdTjMgITilm6Qg4+Oz1SdDg1eyKHPM
         BY3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764795079; x=1765399879;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sAE5zmiPW9qvVm0BPLDz0wsvfFfukWH7cOp6ympL+E8=;
        b=Mwjxs7jtbwvvsz8L6OiMhacZ+uXOVEIvTdB+QnaS1FsPD2+M13HseWcxIhHHS23yba
         VnbxgchG8rtOfIyX7ozyfQCRRDsTLdDcQ37MyLeHZKdsnJjk8SOLyiG/nGeUqYqvyiIJ
         nw8jsEhvCamQe+gNOa9tZkBKIpJFQaNYZGsVzyTmb39wfp/QU+cGTA7FxgADTKpNXiek
         lh270qKTIcZxazbNz/0AHCwWPD+4rSHNbAtkicFjNjD8JyS3M1vlWp3JmDIIB/ciDf5p
         C9D9UvXeFjPSbFQwikbMnCypHCU1EbJm+1+5IgG2UdE6IvcHgwcbrfhVw/5ifX21t8P2
         1QIg==
X-Gm-Message-State: AOJu0YwpYDPrGmthw0Ym/IQHvp9siDH14Xtmr97j0JgtgqWDCKAdshAq
	sYGtReUsWJCHBZGXd926hZJlhMq3hNkG4fANVpu1HJBtrj+8tTrPDTzU+uI8OYb9E8+BNh2ekzw
	XZ+olhC29bapzXB5qgSpmkvF4xPm6IJgZc81U
X-Gm-Gg: ASbGncvGPw6I3Xbs6uSqSzA4TPFJ+jaUy3NcrOKBom6xJp4XhU6JJpRMFJjpwMAwFf9
	iL8okwSzod8Vfh2/jMEtJdt3ZbPFcik059GcC+h6CQjhY4MDuEeL0MxMqSVyqJ4eLkr9QuvffWv
	844nR0d7zJph8J0+5LmV4nCkwb4m/xPK/m1qyGPC4OHIVaKRyQI57V0aaallr+/9cbeupVwDxlN
	qgJChdiZCRbszDf2il0nAPMJ5diGJQwzLJ2RIYyRecFPISk122in6M8AzPw1It+JLMomcjtgE3B
	UTZzCcQcVC7U+qjzqABv8qz/cAuJ3fLo/wY/o+kN+dW33RGrfyHJtYs=
X-Google-Smtp-Source: AGHT+IEXH8p4p+jWUkV4GYp+UZ7dnmjcVR/sdJokzLkJkAPbDsa0N0SD9lwfWPvpQwhsuubNH1yAEOT6gfjQ8cg5pZU=
X-Received: by 2002:a05:6808:1507:b0:44f:6d6d:5266 with SMTP id
 5614622812f47-4536e5baa7fmr1890172b6e.63.1764795078873; Wed, 03 Dec 2025
 12:51:18 -0800 (PST)
MIME-Version: 1.0
From: Cosmin Truta <ctruta@gmail.com>
Date: Wed, 3 Dec 2025 22:51:08 +0200
X-Gm-Features: AWmQ_bkN1ppZGnH3qwWwC2dYQ9di-l46rTYmU3Z6JnQyCCiPW0UymZeZ_GeJFGE
Message-ID: <CAAoVtZwksfG-MFfhdamHt2SazD-n-_1HuZwXcRpRAJe_g3NDKg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] libpng 1.6.52: Out-of-bounds vulnerability fixed: CVE-2025-66293

Hello, everyone,

libpng 1.6.52 has been released to address an out-of-bounds read
vulnerability in the simplified API. This release fixes one
high-severity CVE affecting libpng 1.6.0 through 1.6.51.

CVE-2025-66293 (CVSS 7.1, High): Out-of-bounds read in
png_image_read_composite when processing palette PNG images with
partial transparency and gamma correction.

Note: Unlike typical image parsing vulnerabilities, this bug is
triggered by *valid* PNG files that conform to the PNG specification.
Any palette image with a tRNS chunk containing partial alpha values
(1=E2=80=93254) and a gAMA chunk will trigger the vulnerability when proces=
sed
through the simplified API with an output format without alpha and
no explicit background color. The bug is in libpng's internal flag
synchronization, not in the image data.

A flag synchronization bug causes the compositing code to assume
linear premultiplied data when the data is actually sRGB, resulting
in reads up to 1012 bytes past the png_sRGB_base array. This can
result in information disclosure and/or denial of service.

To the best of my knowledge, web browsers use the low-level libpng
API rather than the simplified API, and are not affected by this
vulnerability.

This is distinct from CVE-2025-64720 (fixed in 1.6.51), which also
involved png_sRGB_base but occurred in a different code path and
required a maliciously crafted PNG file to trigger.

GitHub Security Advisory:
- CVE-2025-66293:
https://github.com/pnggroup/libpng/security/advisories/GHSA-9mpm-9pxh-mg4f

Fixes:
- https://github.com/pnggroup/libpng/commit/788a624d7387a758ffd5c7ab010f187=
0dea753a1
- https://github.com/pnggroup/libpng/commit/a05a48b756de63e3234ea6b3b938b8f=
5f862484a

Release: https://github.com/pnggroup/libpng/releases/tag/v1.6.52

Credit: flyfish101

Users should upgrade to libpng 1.6.52 immediately.

---
Cosmin Truta
libpng maintainer
