Received: (qmail 26341 invoked by uid 550); 7 Apr 2026 14:41:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27833 invoked from network); 7 Apr 2026 14:23:39 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1775571809; cv=none;
        d=google.com; s=arc-20240605;
        b=D4v616TdxBzHKZ6ZKhcV2D+h4OJu4NBiw5qqc5bW3e1rouBf8xKD7zdtU7v0xf8FOd
         5NDZciibEQ0r8jPss/uESXvat4Fc8fVv1K1y5n3nfcPlGMPPYlbpUPTUOzE97is77uZ5
         zky4vXWx83pS8h1bDM4yJBoodzX0gnhszTEMqEHdLp/ZAjMqKYOFa/Z5sDJ+Yo6538M7
         SIz7GbfgA0S1+zhQHxB1QN7/Yye12DN+Hk9R4R/MYnzcMWNAYjYGWmcEr6zE8fhZzmzw
         ud6sz0oRlU+YGtNz2ckVL5VV6ClkHd7F20h8pg0UM2NjLscUuQdbFn3Siq0bftroyiKQ
         GGyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=uYjpozuRwWqcjETbdVAsr6/vmBXxs8++wAbMxJxTur8=;
        fh=8rp2Mw3EogNhapyIKgUnFY6d3XGPtMxU1NaBJHOY45c=;
        b=SKqCzfv/oVx6wqlRjSOF6BZ1xTpPeN41xzK5duZzQiEJKtLde0MsVxZtvsqJ6BL9mz
         3m9yYuT0kfZsraX1jQ/VxdwQAoXndvtLX0147+q9QhpA0c/iCj/EK+ZA3TVAyPozAo7e
         5w87BL7y5b/vxK+gEalHTKOmrA70Ma5taR1jxk+AVCmYGwl2if8ajc6cWReSQxlvqf31
         LZBHzqGv7acko798zVrouniPCqqy4X1hgL5HyNvIlip610QPd4VApOasY+FyfFdGInuL
         340N989OjCfQRmx/tyAmA1dVha1ZtBAnVwyhWqWDmq+l0Ner+Cc7zbA2w0wtRZha+8N9
         +BMA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject.com; s=google; t=1775571809; x=1776176609; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uYjpozuRwWqcjETbdVAsr6/vmBXxs8++wAbMxJxTur8=;
        b=LK4zWkgQvg5uWNB44ljAGkhVgkf+ZqQG7SYzVcXPrnk4XyJvLLhsNwP/g5kc2DazH4
         GE9ke1JXJYrw8VISpIRKarf6PM4jRMfx+P+TNkk9X4eJquBKGwmgS1JDXfjetANFiEEa
         xBV+UnGk/6Y1ofr4ufvs8TZRH2xYrbAaMWf5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775571809; x=1776176609;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uYjpozuRwWqcjETbdVAsr6/vmBXxs8++wAbMxJxTur8=;
        b=hefpGxtgQn/UqIIOgMy4dyo/RJYdStpyyymGSJK0bgv/BDteRSc/UYgfjtOwNh4h8r
         ojTmPPFADpJUMy85WsLSDLmoq67PZFLIsItYldBO/XsGUhVHBN3hNFZE6vTYzvMYHLVk
         nqJC3dS30IQ/VE0x1FYpRIIVrOzIxV7rfYOerqD6QBfetTPkrZoBGX8xyBQnQPVuZfkO
         tMI5RO+T4G/f9JqTqnK1qg6JckpuuNHb28+/dzsuDtWLlhytMajLnK92ZiwQFGX8ZXwc
         6S5ibHzZSZbOjebGM6kzwoqWVjFYLDISdAWjazkM6SBAD9DZtDhRjF8kgsrnJfyK5Cnn
         GKSQ==
X-Gm-Message-State: AOJu0YxxNCLy5ClJvRgVTOCZa7MAyojSATAiiulh+9yJFETr2xY2Ib5f
	xfvasRXez9xsbMTPNt8tayRyJecQ6iW3KVRjB/UsJBKdrdT1f8oTq/rRaFQVjuzKO+foQW5DHe4
	5BPtRyxdW0ZK6FVALgJRN/rahA+SzvuVm/geWwYEWXp7ZXiHmH7wl
X-Gm-Gg: AeBDieud0JvfX+a8/XL+muFEbR5xIEjfVLgn6PerdHJIzpjwTxxgDL2SFZPiTUU2bAJ
	1KPH862vFrv4xGVOh7HNFUBjMd8FIEBeeN5xArJjlVjj0wBis2BHdeqg6S78BMzyd51MlRIjCjn
	M2UBITgnOYRPkDRFMgrZttfGutRyNxObE+vbQg2I+nVplaI/gHNFtE8T8G88AUaSaUwMoW4ZGP+
	CM5FxX49iU0Pcs9o/FK48+ES9E5V9IRsC8lU21VOy0VDu0uwZ2WLV3RKda7SuNlUqiiUAFR+WbH
	vEtAhmnULHYyPFG4zSExMVadRCQ5iFkp6QvU
X-Received: by 2002:a05:690c:6f05:b0:79e:631e:67b with SMTP id
 00721157ae682-7a4d5373f54mr117483017b3.4.1775571809027; Tue, 07 Apr 2026
 07:23:29 -0700 (PDT)
MIME-Version: 1.0
From: Jacob Walls <jwalls@djangoproject.com>
Date: Tue, 7 Apr 2026 10:23:15 -0400
X-Gm-Features: AQROBzCrwdAQKoYcGf24dBRYWXORlTq4wTLaGCEKY0YZlsj4aLNa2_eX3CUTqS0
Message-ID: <CAL4K_NY0C1X+yonCpJaMw6zR=yYVyp=V3G9dsr+xVWpA+s9PqA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Django CVE-2026-3902, CVE-2026-4277, CVE-2026-4292, CVE-2026-33033,
 and CVE-2026-33034

* Announce: https://www.djangoproject.com/weblog/2026/apr/07/security-releases/

* CVE JSON Record for CVE-2026-33033:
https://www.cve.org/CVERecord?id=CVE-2026-33033

* CVE JSON Record for CVE-2026-33034:
https://www.cve.org/CVERecord?id=CVE-2026-33034

* CVE JSON Record for CVE-2026-3902:
https://www.cve.org/CVERecord?id=CVE-2026-3902

* CVE JSON Record for CVE-2026-4277:
https://www.cve.org/CVERecord?id=CVE-2026-4277

* CVE JSON Record for CVE-2026-4292:
https://www.cve.org/CVERecord?id=CVE-2026-4292

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django team
is issuing releases for
`Django 6.0.4 <https://docs.djangoproject.com/en/dev/releases/6.0.4/>`_,
`Django 5.2.13 <https://docs.djangoproject.com/en/dev/releases/5.2.13/>`_, and
`Django 4.2.30 <https://docs.djangoproject.com/en/dev/releases/4.2.30/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

Django 4.2 has reached the end of extended support
==================================================
Note that with this release, Django 4.2 has reached the end of
extended support. All Django 4.2 users are encouraged to `upgrade
<https://docs.djangoproject.com/en/dev/howto/upgrade-version/>`__ to
Django 5.2 or later to continue receiving fixes for security issues.

See the `downloads page
<https://www.djangoproject.com/download/#supported-versions>`__ for a
table of supported versions and the future release schedule.

CVE-2026-3902: ASGI header spoofing via underscore/hyphen conflation
====================================================================

``ASGIRequest`` normalizes header names following WSGI conventions, mapping
hyphens to underscores. As a result, even in configurations where reverse
proxies carefully strip security-sensitive headers named with hyphens, such a
header could be spoofed by supplying a header named with underscores.

Under WSGI, it is the responsibility of the server or proxy to avoid ambiguous
mappings. (Django's ``runserver`` was patched in CVE-2015-0219.) But
under ASGI, there is not the same uniform expectation, even if many proxies
protect against this under default configuration (including ``nginx`` via
``underscores_in_headers off;``).

Headers containing underscores are now ignored by ``ASGIRequest``, matching the
behavior of ``Daphne``, the reference server for ASGI.

This issue has severity "low" according to the Django Security Policy.

Thanks to Tarek Nakkouch for the report.

CVE-2026-4277: Privilege abuse in ``GenericInlineModelAdmin``
=============================================================

Add permissions on inline model instances were not validated on submission of
forged ``POST`` data in ``GenericInlineModelAdmin``.

This issue has severity "low" according to the Django Security Policy.

Thanks to N05ec@LZU-DSLab for the report.

CVE-2026-4292: Privilege abuse in ``ModelAdmin.list_editable``
==============================================================

Admin changelist forms using ``ModelAdmin.list_editable`` incorrectly
allowed new
instances to be created via forged ``POST`` data.

This issue has severity "low" according to the Django Security Policy.

CVE-2026-33033: Potential denial-of-service vulnerability in
``MultiPartParser`` via base64-encoded file upload
===============================================================================================================

When using ``django.http.multipartparser.MultiPartParser``, multipart uploads
with ``Content-Transfer-Encoding: base64`` that include excessive whitespace
may trigger repeated memory copying, potentially degrading performance.

This issue has severity "moderate" according to the Django Security Policy.

Thanks to Seokchan Yoon for the report.

CVE-2026-33034: Potential denial-of-service vulnerability in ASGI
requests via memory upload limit bypass
=========================================================================================================

ASGI requests with a missing or understated ``Content-Length`` header could
bypass the ``DATA_UPLOAD_MAX_MEMORY_SIZE`` limit when reading
``HttpRequest.body``, potentially loading an unbounded request body into
memory and causing service degradation.

This issue has severity "low" according to the Django Security Policy.

Thanks to Superior for the report.


Affected supported versions
===========================

* Django main
* Django 6.0
* Django 5.2
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 6.0, 5.2, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2026-3902: ASGI header spoofing via underscore/hyphen conflation
--------------------------------------------------------------------

* On the `main branch
<https://github.com/django/django/commit/caf90a971f09323775ed0cacf94eadaf39d040e0>`__
* On the `6.0 branch
<https://github.com/django/django/commit/a623c3982857e80324448f85c7faf9a6710330ef>`__
* On the `5.2 branch
<https://github.com/django/django/commit/1cc2a7612f97c109b92415fc11ba9bd0501852e0>`__
* On the `4.2 branch
<https://github.com/django/django/commit/4412731aa64d62a6dd7edae79e0c15b72666d7ca>`__

CVE-2026-4277: Privilege abuse in ``GenericInlineModelAdmin``
-------------------------------------------------------------

* On the `main branch
<https://github.com/django/django/commit/ef8b25dcc06d158683a5623ce406d561638f4073>`__
* On the `6.0 branch
<https://github.com/django/django/commit/08a752c1cd8f378b4c64d96c319da23726df6ed3>`__
* On the `5.2 branch
<https://github.com/django/django/commit/60ffa957c427e10a2eb0fc80d1674a8a8ccc30b0>`__
* On the `4.2 branch
<https://github.com/django/django/commit/051f3909e820360bbe84a21350e82f4961e3d917>`__

CVE-2026-4292: Privilege abuse in ``ModelAdmin.list_editable``
--------------------------------------------------------------

* On the `main branch
<https://github.com/django/django/commit/6afe7ce93964f56e33a29d477c269436f9b60cbf>`__
* On the `6.0 branch
<https://github.com/django/django/commit/428c48f358c5a0ed5ca2834fb721d615eb2b0e11>`__
* On the `5.2 branch
<https://github.com/django/django/commit/397c22048244db2cd4bb78f570e6c72a3967bf36>`__
* On the `4.2 branch
<https://github.com/django/django/commit/abfe1a1c57a57cfaf6dd4a0571c029401a0fe743>`__

CVE-2026-33033: Potential denial-of-service vulnerability in
``MultiPartParser`` via base64-encoded file upload
---------------------------------------------------------------------------------------------------------------

* On the `main branch
<https://github.com/django/django/commit/7e9885f99cee771b51692fadc5592bdbf19641aa>`__
* On the `6.0 branch
<https://github.com/django/django/commit/0910af60468216c856dfbcac1177372c225deb76>`__
* On the `5.2 branch
<https://github.com/django/django/commit/0b467893bdde69a2d23034338e76021a1e4f4322>`__
* On the `4.2 branch
<https://github.com/django/django/commit/f13c20f81b56108ac477213fa5ada2524b5e5c98>`__

CVE-2026-33034: Potential denial-of-service vulnerability in ASGI
requests via memory upload limit bypass
---------------------------------------------------------------------------------------------------------

* On the `main branch
<https://github.com/django/django/commit/953c238058c0ce387a1a41cb491bfc1875d73ad0>`__
* On the `6.0 branch
<https://github.com/django/django/commit/393dbc53e848876fdba92fbf02e10ee6a6eace6b>`__
* On the `5.2 branch
<https://github.com/django/django/commit/49e1e2b548999a35a025f9682598946bda9e9921>`__
* On the `4.2 branch
<https://github.com/django/django/commit/ed4dfda62718a0bb644b80ac8b1d3099861f2295>`__


The following releases have been issued
=======================================

* Django 6.0.4 (`download Django 6.0.4
  <https://www.djangoproject.com/download/6.0.4/tarball/>`_ |
  `6.0.4 checksums
  <https://www.djangoproject.com/download/6.0.4/checksum/>`_)
* Django 5.2.13 (`download Django 5.2.13
  <https://www.djangoproject.com/download/5.2.13/tarball/>`_ |
  `5.2.13 checksums
  <https://www.djangoproject.com/download/5.2.13/checksum/>`_)
* Django 4.2.30 (`download Django 4.2.30
  <https://www.djangoproject.com/download/4.2.30/tarball/>`_ |
  `4.2.30 checksums
  <https://www.djangoproject.com/download/4.2.30/checksum/>`_)

The PGP key ID used for this release is Jacob Walls: `131403F4D16D8DC7
<https://github.com/jacobtylerwalls.gpg>`_


General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via private email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor via
the Django Forum. Please see `our security policies
<https://www.djangoproject.com/security/>`_ for further information.
