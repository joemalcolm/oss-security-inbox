Received: (qmail 16013 invoked by uid 550); 5 May 2026 15:08:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3250 invoked from network); 5 May 2026 15:05:24 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777993514; cv=none;
        d=google.com; s=arc-20240605;
        b=fC/fHuYr2+pnUHlbRzdkTUcnJ0FmT8oEyUszLovqT06kX1/jg2HDkbazFtJ8YwEwRz
         OXOuu6864Y3F4B9+SoT8uMwvwhaZdI5EaYLqcYhGhcjx+dR3m82MmBLSq+kDRAASOabk
         g1MA6XIdaIpz+ptXYNvLY3meBR6pkecN3wqNiDZhwic0AjNz0umbpA3yRfEewHyssmtc
         hcu05Xv+J7/KOuqdikcGGpMM8WPLv2n+p3qnbXfwPcWgiOM2UUY41lgmjVR+G43xvhiT
         s24LMPq2a4aRKZLWrw3umWQ+uXhqC/RPI1HteY70kYfyzs5e7ZuO7/sTYEYdxcweXkjP
         uNhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Pz8C1C7gExjmEZi9NqDvyMF3Ce/PcoAvGl6G6aQBN3I=;
        fh=8rp2Mw3EogNhapyIKgUnFY6d3XGPtMxU1NaBJHOY45c=;
        b=Afw2/p+PF3Z8Qv3v7/RqnNfhyK0zdLbPbKEURwfWdBldx4SV4inHt45uJwXv4EQqo5
         V+l9AqLtj2NVMJEZJ7W7wLi+zwI9gNkWxc1HiQO6nvvDUukCRan73qeNzUOb61CRpWxE
         x1M7Uv0/TDxDNymswA3iSnEZ0zYNfOUFC/Cf8jpo5tOSGzLsRvd4qpO066fGhwSguw1b
         dMA+Lo5mepXuMdhLq38S6b5jE9vEp3nHORjt9SVXWeEK43V7jKIbkDoljDvxVS3/14t7
         3DwZ3IqFizGXEvQEzaOHvzXXDoYF+m7GmE8CavQSmwJv0nwKRBi5pfj9r32/lldcYAUA
         g2RQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject.com; s=google; t=1777993514; x=1778598314; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Pz8C1C7gExjmEZi9NqDvyMF3Ce/PcoAvGl6G6aQBN3I=;
        b=Q/8DDvGx8IzVouKaEeHwP5ynJkSttL9G+tf7NQXNCrKSfDpHHCIGAbZUBP6VltnH4+
         zzCpkA5JMLhOWLA5+jpf0hnlm1nSuNewAF6XEz4B/l7JNwdJxFpQug2Iw9zFjzGhz9e/
         TLNAOyl3ZN2p53pknkX1TywOvn2CD8pHuOiFc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777993514; x=1778598314;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pz8C1C7gExjmEZi9NqDvyMF3Ce/PcoAvGl6G6aQBN3I=;
        b=gr6swxYMn2A6rj9GshuR/YaUM5CC/WdSuloJgCI+nz1AnoZsPiq86poGTCFRjJr8Qh
         CTKAgOVIztcdP/gNAowDXq8j8Hv7fiBUJNYU8EfDu3u2sUH/X8dTeUbfTaT2APUhrDgC
         wKM1tSb0tsuXp4vXVEFkRFAUMVLM3/cjNFc0EPj2YO+1F6XNNuSeOIE8VnB7c9V5MQhh
         2YfAa77Gd5z3n6Cp4Hf/BLvlQGUd7HTABSWUfaPaox99twJpA5ShuCKESRmqguoM1QvH
         rlAVBock94ixfcZPSuw/u03te6FZZT1AEcMo/oCwWCJEI9i6AToZx6cZ3omJ2xSgrd+U
         e0bw==
X-Gm-Message-State: AOJu0Yx9rntzsmEMR26c48xPIWn9PXIBtyajxHGdDNgI2YDNSh5CRRx4
	aWf18L2kENQUSBW+XfhjsTCcuJMSJnv8M1LiP+WRr1BKVy5ZpxPujGciO+CKgr+p/Gpx6kMttz/
	G+y2NLRfeUsfxKB3eO5CpQnJGy8lx1EJSqtqdid0ERZN31RPlp3Bua0s=
X-Gm-Gg: AeBDieujVwRLF9AttFxrGNRdQfCYtNj/z0vGnhQHW489CZf4gsk0ziVLbYYwHcwoAZV
	wfKlMEbW5fID11TPLB6UsFgfKhA3tBUS4uZGHq5oaPhvYXOMNwdV2S8L4hhyRQJMmU2SnhVbEkN
	iYouV5BBb4iO7dkSSqo3govgj4/hwFaZSfrCbqwUxhD6/fpSUicQtxXHC4B/ewtr/lP7cPx0y3D
	udq6dMNMGUDgSuza2CqJGcZneoRd4ftKFU9HKQYDVtDi1BCyS9C6dVB9A6oDbqAcBpD9TB3Onzs
	MtGoUCLN+DFueJuTSd/Dexnv369a7FkaDT2nrHtetL2BEMCTSQCF26p+OjdhAvcabZ0d8sNvlww
	V87F1Pw==
X-Received: by 2002:a17:907:3d4a:b0:bb7:dc46:4c5c with SMTP id
 a640c23a62f3a-bbff7baba8dmr778267466b.0.1777993513112; Tue, 05 May 2026
 08:05:13 -0700 (PDT)
MIME-Version: 1.0
From: Sarah Boyce <sarahboyce@djangoproject.com>
Date: Tue, 5 May 2026 17:05:02 +0200
X-Gm-Features: AVHnY4Lk5qAVKcBk2j-JJ0O1Fp4KX7iKvOClkxYR3_oXybjbwJh0B7h0WjM1898
Message-ID: <CAN+fQHwa5+=mRzFzmswkZwmKeEuGM4cSFnA0dd6VFcfb+YusAg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="000000000000c32f5f0651135f83"
Subject: [oss-security] Django CVE-2026-5766, CVE-2026-35192, and CVE-2026-6907

--000000000000c32f5f0651135f83
Content-Type: text/plain; charset="UTF-8"

* Announce:
https://www.djangoproject.com/weblog/2026/may/05/security-releases/

* CVE JSON Record for CVE-2026-5766:
https://www.cve.org/CVERecord?id=CVE-2026-5766

* CVE JSON Record for CVE-2026-35192:
https://www.cve.org/CVERecord?id=CVE-2026-35192

* CVE JSON Record for CVE-2026-6907:
https://www.cve.org/CVERecord?id=CVE-2026-6907

In accordance with [our security release policy](
https://docs.djangoproject.com/en/dev/internals/security/),
the Django team is issuing releases for
[Django 6.0.5](https://docs.djangoproject.com/en/dev/releases/6.0.5/) and
[Django 5.2.14](https://docs.djangoproject.com/en/dev/releases/5.2.14/).
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

## CVE-2026-5766: Potential denial-of-service vulnerability in ASGI
requests via file upload limit bypass

ASGI requests with a missing or understated `Content-Length` header could
bypass the `FILE_UPLOAD_MAX_MEMORY_SIZE` limit, potentially loading large
files into memory and causing service degradation.

As a reminder, Django [expects a limit to be configured](
https://docs.djangoproject.com/en/6.0/topics/security/#user-uploaded-content)
at the web server level rather than solely relying on
`FILE_UPLOAD_MAX_MEMORY_SIZE`.

This issue has severity "low" according to the Django security policy.

This issue was originally highlighted by Kyle Agronick in Trac. Thanks to
Jacob Walls for following up and reporting it.

## CVE-2026-35192: Session fixation via public cached pages and
`SESSION_SAVE_EVERY_REQUEST`

Response headers did not vary on cookies if a session was not modified, but
`SESSION_SAVE_EVERY_REQUEST` was `True`. A remote attacker could steal a
user's session after that user visits a cached public page.

This issue has severity "low" according to the Django security policy.

## CVE-2026-6907: Potential exposure of private data due to incorrect
handling of `Vary: *` in `UpdateCacheMiddleware`

Previously, `django.middleware.cache.UpdateCacheMiddleware` would
erroneously cache requests where the `Vary` header contained an asterisk
(`'*'`). This could lead to private data being stored and served.

This issue has severity "low" according to the Django security policy.

Thanks to Ahmad Sadeddin for the report.

## Affected supported versions

* Django main
* Django 6.0
* Django 5.2

## Resolution

Patches to resolve the issue have been applied to Django's
main, 6.0, and 5.2 branches.
The patches may be obtained from the following changesets.

### CVE-2026-5766: Potential denial-of-service vulnerability in ASGI
requests via file upload limit bypass

* On the [main branch](
https://github.com/django/django/commit/5a89e341bfc77dd67b7fd57b7091b6430558e1f4
)
* On the [6.0 branch](
https://github.com/django/django/commit/ad8f9e19e0897ea45ded7c046ff28daf6f773e92
)
* On the [5.2 branch](
https://github.com/django/django/commit/2ec27eda3ba6c14f0856e6e3eb1df07c41fd95e6
)

### CVE-2026-35192: Session fixation via public cached pages and
`SESSION_SAVE_EVERY_REQUEST`

* On the [main branch](
https://github.com/django/django/commit/7f6e9b55130d5158804c0acbc0b24ccb7422ed82
)
* On the [6.0 branch](
https://github.com/django/django/commit/1b0184aa657bc3f5859aeb0206e7c1e94e48b103
)
* On the [5.2 branch](
https://github.com/django/django/commit/47cf968c125e3fab317e10fe150ec479e745f995
)

### CVE-2026-6907: Potential exposure of private data due to incorrect
handling of `Vary: *` in `UpdateCacheMiddleware`

* On the [main branch](
https://github.com/django/django/commit/c79bdfc1351ef2a2ad95df36241a74c736ef20a1
)
* On the [6.0 branch](
https://github.com/django/django/commit/44ad76efcbe3c4ca0f08bb9dabe916f6374596c9
)
* On the [5.2 branch](
https://github.com/django/django/commit/2115d4eaee15107f5cd290d7cfcc5ffe3ad43661
)

## The following releases have been issued

* Django 6.0.5 ([tarball](
https://www.djangoproject.com/download/6.0.5/tarball/) | [checksums](
https://www.djangoproject.com/download/6.0.5/checksum/))
* Django 5.2.14 ([tarball](
https://www.djangoproject.com/download/5.2.14/tarball/) | [checksums](
https://www.djangoproject.com/download/5.2.14/checksum/))

The PGP key ID used for this release is Sarah Boyce: [3955B19851EA96EF](
https://github.com/sarahboyce.gpg)

## General notes regarding security reporting

As always, we ask that potential security issues be reported via private
email
to `security@djangoproject.com`, and not via Django's Trac instance, nor via
the Django Forum. Please see
[our security policies](https://www.djangoproject.com/security/) for further
information.

--000000000000c32f5f0651135f83--
