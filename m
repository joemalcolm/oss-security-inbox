Received: (qmail 7904 invoked by uid 550); 3 Jun 2026 15:03:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12017 invoked from network); 3 Jun 2026 13:27:36 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1780493247; cv=none;
        d=google.com; s=arc-20240605;
        b=hS1q8GFBYdCJsikqFQ6rSqyzbmWV30Nqy6CJ+qRKM/z6s9hXRCQhM7bPuAoOQxXru0
         YXkztYg5CFCTxH9tiQNSqKrLly3n6520WrjvVUeD528KFV9hojd64AeF+XCUoftn0DrE
         mdmsQS8HfnbgH72mJvRDfQXERmhYQFItqSZdoBVcsNgJ1lM0hs+ko1UVzt9cQ+IkGAB0
         yTXMSjQrf3pwjEEuJKqiNmwWLMdQyOiAizG4W9OQtnsIGaeNKehvAimKq+R04X/DEcNp
         HQ6CeqWOGXb57mwhs/p5P1+R5Kna5xlR5NQQ23yRyi5O6LLjiHFaNk/EJq7hSTG0mkZ2
         NVQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=MmtYG+J//VkEmci8/wB5dY7iRDbOWXqIUxeBItoDXrQ=;
        fh=8rp2Mw3EogNhapyIKgUnFY6d3XGPtMxU1NaBJHOY45c=;
        b=Gw7DM5vNHSp69Ozlgk6BCss5bFVPB7QE0BIdfD8cJEENvtW4fHevRw9cRLx1dQ3ykj
         W7TIYq2B0ApYgsuJxSoeF2886G52Xgzn08meOEud/Jua6adOxFKUzboO18aHJLlv06br
         K0gJluSa0HJ1NhvqoZSMV+Nbah4MoOHleimu/ki3y9x5Y92OajtvhMKD8C/9VNuATgYK
         HLW0N81zfh2MwZKgpN2UfNBdGZCT5kH455i0NWEYS8xCU4vspxlXFWxCCDc1guCYT7uy
         48f8Od6ld4JwqvCMIuEMjO2MAL6v86MBKBrAanj794eMkkqM3cbYUB4toPJoQmMff/aN
         T/jQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject.com; s=google; t=1780493247; x=1781098047; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MmtYG+J//VkEmci8/wB5dY7iRDbOWXqIUxeBItoDXrQ=;
        b=O3iDMnmIHIifLRfYKnaZH6AiPPHvPv0L/v4g+7be8V9bWN5tQYKvP99SDPzGHQfoMh
         QOh3KFx4+vhpDPs6vZw0m0I9oPEe0xIiFkZQ/5FFFJlKXey9u+XE2iCC6c23nSJM3qyM
         MY2FMl+EepMtoS/gicwuFMGIlAvIHUmyc5So0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780493247; x=1781098047;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MmtYG+J//VkEmci8/wB5dY7iRDbOWXqIUxeBItoDXrQ=;
        b=hBIdjY8qw0WViuBsBH/vSAPFHkzhEuZUEXW2FD0WVRYe9M0aKa4hTNIlNpVJo14mKC
         yi9d9zvnPAMqZbMIyp7CJgEVKZOGtGpq8MAPdBB074mwjCr8UvxGwH08nbddiktUDGfw
         sN29myHAdQX5lKzhFry/gQxI5gDhL7bBoXqXI40/IHVVZRKPd+hD+MYezKK2gBNB3NxT
         /KE1q7n+7e37CxG4wHDuUKq7MbsZ5mWEaYnVvSYeVoc11G250mvWN3RfmIu9sjTiCUmb
         lotMy8Dp1OmKPtNa3JqYUlYeXwnLpNMkpnQye00LOCwI9Cm3onwkvN1xfQGaogYC6GmN
         FLsQ==
X-Gm-Message-State: AOJu0YxqD8xJwfTOARVGCQFv+8jdz6F+TfRPPQabEuV6qaZdUVOLQ+Yj
	kYSyc7JEZt/v/kVI28nw2+OMgAfmmBpTSdOYKie5VamWTBH9vTOccxH6/HfXdoHFZz8onZx7h6E
	BiSGGSozqgK+TqVytwIDuZjY+y6cZAy+McMJEwD11yNZti8b0/McHANHAPQ==
X-Gm-Gg: Acq92OGcpQYGgOTrgZlW4usPxaphqyhJA8yo6XqmIo+uLP+zFYwYlBcTLxfIeI8RigZ
	S79xS5YgOChht9o6VsDEuyseXpUfSuY9iX3pBSkcBfcODT2zbYlVroWjh8CAC0g6Gd+2saAdBsp
	HEfYJJl/JSs3rMPD4g1PhuG4aFPaMNEaATDqjWIiayWv+MgKNwQZ9f+IUQrFZdE4F6AoU3Pj4Jo
	myYkDfnKPq15Va8oCKzvv6BOFkx1iCBk88tRQyuPATzP55Gbrp3FWncOtUiVOZFXSstV7huc8L5
	DBdP3q0c0U55JQsOFMw=
X-Received: by 2002:a17:907:962a:b0:bd4:8b66:c374 with SMTP id
 a640c23a62f3a-bf0ac510181mr156159966b.9.1780493246591; Wed, 03 Jun 2026
 06:27:26 -0700 (PDT)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@djangoproject.com>
Date: Wed, 3 Jun 2026 10:27:08 -0300
X-Gm-Features: AVHnY4KfKy_C1QCH9f_ZM4HrHO1FXLdAgiWTvnaQOMth2_5uaRACrwJBJb94nUk
Message-ID: <CAJVoTUvO-ZdkgV471qXvwpSuzuRs+NzdQCkL=PWfpH2JXX_3AQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="0000000000007d072006535963a6"
Subject: [oss-security] Django CVE-2026-6873, CVE-2026-7666, CVE-2026-8404, CVE-2026-35193,
 and CVE-2026-48587

--0000000000007d072006535963a6
Content-Type: text/plain; charset="UTF-8"

* Announce:
https://www.djangoproject.com/weblog/2026/jun/03/security-releases/

* CVE JSON Record for CVE-2026-6873:
https://www.cve.org/CVERecord?id=CVE-2026-6873

* CVE JSON Record for CVE-2026-7666:
https://www.cve.org/CVERecord?id=CVE-2026-7666

* CVE JSON Record for CVE-2026-8404:
https://www.cve.org/CVERecord?id=CVE-2026-8404

* CVE JSON Record for CVE-2026-35193:
https://www.cve.org/CVERecord?id=CVE-2026-35193

* CVE JSON Record for CVE-2026-48587:
https://www.cve.org/CVERecord?id=CVE-2026-48587

In accordance with [our security release policy](
https://docs.djangoproject.com/en/dev/internals/security/),
the Django team is issuing releases for
[Django 6.0.6](https://docs.djangoproject.com/en/dev/releases/6.0.6/) and
[Django 5.2.15](https://docs.djangoproject.com/en/dev/releases/5.2.15/).
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

## CVE-2026-6873: Signed cookie salt namespace collision in
`django.http.HttpRequest.get_signed_cookie`

`get_signed_cookie()` derived the signing salt by concatenating the cookie
name (`key`) and `salt` arguments. When distinct name and salt pairs
produced the same concatenation, cookies could be accepted
in a context different from the one where they were signed.

Cookies are now signed with an unambiguous salt derivation. For backwards
compatibility, cookies signed by older Django versions are accepted until
Django 7.0.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Peng Zhou for the report.

## CVE-2026-7666: Potential unencrypted email transmission via `STARTTLS`
in the SMTP backend

When using `EMAIL_USE_TLS`, a failed `STARTTLS` handshake could leave a
partially-initialized connection that would subsequently be reused for
sending email without encryption. This can occur with `fail_silently=True`,
as used by `send_mail()` and `BrokenLinkEmailsMiddleware`, among others.
Connections configured with `EMAIL_USE_SSL` are not affected.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Kasper Dupont for the report.

## CVE-2026-8404: Potential exposure of private data via case-sensitive
`Cache-Control` directives in `UpdateCacheMiddleware`

`django.middleware.cache.UpdateCacheMiddleware` and
`django.views.decorators.cache.cache_page` decorator incorrectly cached
responses marked with private `Cache-Control` directives when using mixed
or uppercase values (e.g. `Private`).

The `django.views.decorators.cache.cache_control` decorator and
`django.utils.cache.patch_cache_control()` function were not affected,
since they normalize directives to lowercase. This issue only affects
responses where `Cache-Control` is set manually.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Ahmed Badawe for the report.

## CVE-2026-35193: Potential exposure of private data via missing `Vary:
Authorization` in `UpdateCacheMiddleware`

`django.middleware.cache.UpdateCacheMiddleware` and
`django.views.decorators.cache.cache_page` decorator allowed responses to
requests bearing an `Authorization` header (and without `Cache-Control:
public`) to be cached. To conform with the existing mechanism for
constructing cache keys, responses to these requests will now vary on
`Authorization`.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Shai Berger for the report.

## CVE-2026-48587: Potential exposure of private data via whitespace
padding in `Vary` header

`django.middleware.cache.UpdateCacheMiddleware` incorrectly cached
responses whose `Vary` header values contained leading or trailing
whitespace. Because `has_vary_header()` failed to strip that whitespace, a
response with a `Vary: * ` header (note the trailing space) was not
recognized as containing the wildcard, causing it to be stored and
potentially served from the cache when it should not have been.

This issue has severity "low" according to the [Django security policy](
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
).

Thanks to Navid Rezazadeh for the report.

## Affected supported versions

* Django main
* Django 6.1 (currently at alpha status)
* Django 6.0
* Django 5.2

## Resolution

Patches to resolve the issue have been applied to Django's
main, 6.1 (currently at alpha status), 6.0, and 5.2 branches.
The patches may be obtained from the following changesets.

### CVE-2026-6873: Signed cookie salt namespace collision in
`django.http.HttpRequest.get_signed_cookie`

* On the [main branch](
https://github.com/django/django/commit/70d36515b9cc71700105a14b275583070d48b689
)
* On the [6.1 branch](
https://github.com/django/django/commit/42bdfd74ff85eb9ddf8fd444e2359afd9add59c8
)
* On the [6.0 branch](
https://github.com/django/django/commit/c807d9c398022d23cb27518fa6ecaf343efb30cf
)
* On the [5.2 branch](
https://github.com/django/django/commit/594360cbf58be7f56eb6da96d58644297c99ef85
)

### CVE-2026-7666: Potential unencrypted email transmission via `STARTTLS`
in the SMTP backend

* On the [main branch](
https://github.com/django/django/commit/df887f50198593a0e5b4638bfddbbd43a30fd276
)
* On the [6.1 branch](
https://github.com/django/django/commit/afd82a544910dc79941a44af078bbc59e3e18f1c
)
* On the [6.0 branch](
https://github.com/django/django/commit/625a670c467aa3118c0f8ae1e0df14dbebb3bf68
)
* On the [5.2 branch](
https://github.com/django/django/commit/4e47d2b800435bcbfd1301ef3250b9c7fb8fa670
)

### CVE-2026-8404: Potential exposure of private data via case-sensitive
`Cache-Control` directives in `UpdateCacheMiddleware`

* On the [main branch](
https://github.com/django/django/commit/d618d7ae4fec727d5b582bd24f803c28d17bf7cd
)
* On the [6.1 branch](
https://github.com/django/django/commit/130467c8b4d05a69b885363aa7d47386e4f5d6a9
)
* On the [6.0 branch](
https://github.com/django/django/commit/b4330259ffbe1a031ed14daab1f35697460f10f2
)
* On the [5.2 branch](
https://github.com/django/django/commit/366d9ae6e8d1469c04e9ebdc1bcd098fc14a3b1e
)

### CVE-2026-35193: Potential exposure of private data via missing `Vary:
Authorization` in `UpdateCacheMiddleware`

* On the [main branch](
https://github.com/django/django/commit/a2faa8e895926ac5d63f72879b5ccf671b5b4ba9
)
* On the [6.1 branch](
https://github.com/django/django/commit/b7b23f4697850e232486d787df3459f19bd16dba
)
* On the [6.0 branch](
https://github.com/django/django/commit/664652f1a2dd80d8a4cd491b4313cad915ae6669
)
* On the [5.2 branch](
https://github.com/django/django/commit/050a3dc276f9142067260e990e4d8d42d5e32863
)

### CVE-2026-48587: Potential exposure of private data via whitespace
padding in `Vary` header

* On the [main branch](
https://github.com/django/django/commit/42aa0b3364d312e7c6472258d8b0e9c0277fbf22
)
* On the [6.1 branch](
https://github.com/django/django/commit/e06958dbfff789d6a72efb1d38c65b4b22b6690e
)
* On the [6.0 branch](
https://github.com/django/django/commit/1721035a72624aad7b38dd19b14013efd94b24b8
)
* On the [5.2 branch](
https://github.com/django/django/commit/9b62b0af71a14c657d19d95371630ba839e83d9a
)

## The following releases have been issued

* Django 6.0.6 ([tarball](
https://www.djangoproject.com/download/6.0.6/tarball/) | [checksums](
https://www.djangoproject.com/download/6.0.6/checksum/))
* Django 5.2.15 ([tarball](
https://www.djangoproject.com/download/5.2.15/tarball/) | [checksums](
https://www.djangoproject.com/download/5.2.15/checksum/))

The PGP key ID used for this release is Natalia Bidart: [2EE82A8D9470983E](
https://github.com/nessita.gpg)

## General notes regarding security reporting

As always, we ask that potential security issues be reported via private
email
to `security@djangoproject.com`, and not via Django's Trac instance, nor via
the Django Forum. Please see
[our security policies](https://www.djangoproject.com/security/) for further
information.

--0000000000007d072006535963a6--
