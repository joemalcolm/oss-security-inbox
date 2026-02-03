Received: (qmail 13777 invoked by uid 550); 3 Feb 2026 16:50:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3190 invoked from network); 3 Feb 2026 14:43:08 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1770129778; cv=none;
        d=google.com; s=arc-20240605;
        b=g5HRDHg2MPgMH7BeVWyaP1og1jLpgD1Tj+m4u1eUvKdaWhin+XYcABpqAn1yMaOU2Y
         vLpPVDsBHuLroq6bcIW7jRYiRABmWWROaJS/8iK1Ts5Ybq4gdUIYzlU+cTbNf7VWChIb
         DXMmPhL38jqbd0XRTan3Vaces8G6MPb2VGLAn2wh5oBVMe+xoNLxTUt2OiS4pGqETpa/
         1AW4rMWLQ7mUFA8AE7xXYMxzJleMj7rDr59vN+k6aBEjD4esZ11P8IT5RTHUXBVMqt61
         iNJZdikaxRTyaDlNcrJ0yBSpAPsOrD+U4EarjhoIYi10TmyP7+xwTwMyMqyDfYHwT8hL
         gobQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=o2wA46LatjPoYWYAPp9yJ/g1FFpGf18gjkoR7wcFo+0=;
        fh=8rp2Mw3EogNhapyIKgUnFY6d3XGPtMxU1NaBJHOY45c=;
        b=aK9FfY1zFGMjhN3HlrZRfuNP/9BwPhl7TN7bfDrCwmmcef3UjZ9Sy19Yxvt4GrUgY/
         SsW/o7XRvfKovXzID20K8g6emb7BlBY3dtHI9ZqZegvyBjJCkmYvsuMYNa8Go/B/gC47
         s2/7V8Y1q09ppk6p32E251ryfL+/tmZiiBrzBC3x8OvAZGv+lLYXfMKI35aWKIlj0KC1
         q27xPW/keCWg2yJSFBMmpnAcTHedQ9a+N1CzY73s3eloIg69qKyjzn4Da7i162eODc6J
         Sb09XQqm/sXCJHmdo3gFGtg1SL7W0JpYDUsFW3LRY62MRKp45No1Wlk58KMjCOy8H9oA
         BSYw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject.com; s=google; t=1770129778; x=1770734578; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o2wA46LatjPoYWYAPp9yJ/g1FFpGf18gjkoR7wcFo+0=;
        b=ph6uXtuPniMIc1fwqDESoua0zgA4ciir4DVvg3I9TyR/rN94SUlEGlAgIWxgRiwwtJ
         7ocfbAczhBYvqczVEzv0HEzBGDmu8iTOFqjMMxtDaB8uOCF+WBxqth4yczFsMpbkQ7wm
         XWnVekhWqPNFPfRT+vGFdOb7q6tpPGM8UzmiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770129778; x=1770734578;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o2wA46LatjPoYWYAPp9yJ/g1FFpGf18gjkoR7wcFo+0=;
        b=tHUyJm0HkPCH1AF95S4KHBRjDMsSfytiarDJQQYHVUaQ2MtiYxFPwWdwDXQyi12QHT
         Rl0N3VK6x+Dt6SOhbsNxX/jnV0+LctEwUmBzVVqkyUjse8RZ+nYXgfqM4K8D/JyquV67
         OQsLCBWaL2nraWMAWP5mDRX7RR5USsNvVuy4+nTU2a9OtKFndrZ3nAfixD1F8DyeKRqY
         6mkOsAvVh+pWeUcjl0kGdk+UiTCPbH5qVlPxzs8VVISR+grMeS+rKbzUEHtac7FJXHsj
         Ilcu1GB17bm5T/M0+zBoWLQ0+KzFqPn6z70d8Z39epqIQX8ilHGAIIalQ7h0+Gipxwoe
         xwbA==
X-Gm-Message-State: AOJu0YxrrfTzgWV40d1ZeWRG/UEiUys7OlJ1zV7OPPtURaiXcj8mrlFE
	kbeEFccWZjHj85Vsf80NEzzEZiCTWgERh4VCH0praKFsxxdvbzdOBorEQYVcqoykGDX/BhDVROT
	ZjXKIKpY5R1ueO3ZKNcqO0wE8rMrqOumO0NBRp9C+Z8J8XkG976rntA4=
X-Gm-Gg: AZuq6aIq51OcKC/fNBiE7Lfxu2TDbGlie/UDNaidMWNihFjIWoTofSIGFEzIasA2TPB
	EKNWKiNpthhlEmw2bF1ki5Va2P4xkxrsVABthxfkyEH78XYzV1RQmaq/ezWi6ywpm5A0YbO2cnc
	eUk1aUGoqV5E0DF47UCHutVB7b3uFHXbZNQ++UoVKQ4IQvM8XvYqpkF/ir2lQb9i4KmQr1IvDGU
	aX7GJkRslc0C3iPHLU2u5xW92idLPotLINWGg9DSc+43VOdlNMpg8ajglcA/QgfDN5D
X-Received: by 2002:a05:690e:150b:b0:63f:a713:c6a2 with SMTP id
 956f58d0204a3-649a847a3e8mr10180676d50.3.1770129775183; Tue, 03 Feb 2026
 06:42:55 -0800 (PST)
MIME-Version: 1.0
From: Jacob Walls <jwalls@djangoproject.com>
Date: Tue, 3 Feb 2026 09:42:43 -0500
X-Gm-Features: AZwV_QgXRET3wJeecwuUXD1TZr-O7UxCi0ZvIbZCnjyOmM-DKVbgOqKJBIVuogw
Message-ID: <CAL4K_NYNw40P9sNF7sz5TfP1m3fkc8d0=pXG0AKX-QXc5yQpCg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="00000000000074fa280649ec7450"
Subject: [oss-security] Django CVE-2025-13473, CVE-2025-14550, CVE-2026-1207, CVE-2026-1285,
 CVE-2026-1287, and CVE-2026-1312

--00000000000074fa280649ec7450
Content-Type: text/plain; charset="UTF-8"

* Announce:
https://www.djangoproject.com/weblog/2026/feb/03/security-releases/

* CVE JSON Record for CVE-2025-13473:
https://www.cve.org/CVERecord?id=CVE-2025-13473

* CVE JSON Record for CVE-2025-14550:
https://www.cve.org/CVERecord?id=CVE-2025-14550

* CVE JSON Record for CVE-2026-1207:
https://www.cve.org/CVERecord?id=CVE-2026-1207

* CVE JSON Record for CVE-2026-1285:
https://www.cve.org/CVERecord?id=CVE-2026-1285

* CVE JSON Record for CVE-2026-1287:
https://www.cve.org/CVERecord?id=CVE-2026-1287

* CVE JSON Record for CVE-2026-1312:
https://www.cve.org/CVERecord?id=CVE-2026-1312

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 6.0.2 <https://docs.djangoproject.com/en/dev/releases/6.0.2/>`_,
`Django 5.2.11 <https://docs.djangoproject.com/en/dev/releases/5.2.11/>`_,
and
`Django 4.2.28 <https://docs.djangoproject.com/en/dev/releases/4.2.28/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2025-13473: Username enumeration through timing difference in mod_wsgi
authentication handler
=================================================================================================

The ``django.contrib.auth.handlers.modwsgi.check_password()`` function for
authentication via ``mod_wsgi`` allowed remote attackers to enumerate users
via a timing attack.

Thanks to Stackered for the report.

This issue has severity "low" according to the Django security policy.

CVE-2025-14550: Potential denial-of-service vulnerability via repeated
headers when using ASGI
==============================================================================================

When receiving duplicates of a single header, ``ASGIRequest`` allowed a
remote attacker to cause a potential denial-of-service via a specifically
created request with multiple duplicate headers. The vulnerability resulted
from repeated string concatenation while combining repeated headers, which
produced super-linear computation resulting in service degradation or
outage.

Thanks to Jiyong Yang for the report.

This issue has severity "moderate" according to the Django security policy.

CVE-2026-1207: Potential SQL injection via raster lookups on PostGIS
====================================================================

Raster lookups on GIS fields (only implemented on PostGIS) were subject to
SQL injection if untrusted data was used as a band index.

As a reminder, all untrusted user input should be validated before use.

Thanks to Tarek Nakkouch for the report.

This issue has severity "high" according to the Django security policy.

CVE-2026-1285: Potential denial-of-service vulnerability in
``django.utils.text.Truncator`` HTML methods
========================================================================================================

``django.utils.text.Truncator.chars()`` and ``Truncator.words()`` methods
(with ``html=True``) and ``truncatechars_html`` and ``truncatewords_html``
template filters were subject to a potential denial-of-service attack via
certain inputs with a large number of unmatched HTML end tags, which could
cause quadratic time complexity during HTML parsing.

Thanks to Seokchan Yoon for the report.

This issue has severity "moderate" according to the Django security policy.

CVE-2026-1287: Potential SQL injection in column aliases via control
characters
===============================================================================

``FilteredRelation`` was subject to SQL injection in column aliases via
control characters, using a suitably crafted dictionary, with dictionary
expansion, as the ``**kwargs`` passed to ``QuerySet`` methods
``annotate()``, ``aggregate()``, ``extra()``, ``values()``,
``values_list()``, and ``alias()``.

Thanks to Solomon Kebede for the report.

This issue has severity "high" according to the Django security policy.

CVE-2026-1312: Potential SQL injection via ``QuerySet.order_by`` and
``FilteredRelation``
=========================================================================================

``QuerySet.order_by()`` was subject to SQL injection in column aliases
containing periods when the same alias was, using a suitably crafted
dictionary, with dictionary expansion, used in ``FilteredRelation``.

Thanks to Solomon Kebede for the report.

This issue has severity "high" according to the Django security policy.


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

CVE-2025-13473: Username enumeration through timing difference in mod_wsgi
authentication handler
-------------------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/3eb814e02a4c336866d4189fa0c24fd1875863ed
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/d72cc3be3be0bbebdcaea5a8c8106b4d6f2a32bd
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/184e38ab0a061c365f5775676a074796d8abd02f
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/6dc23508f3395e1254c315084c7334ef81c4c09a
>`__

CVE-2025-14550: Potential denial-of-service vulnerability via repeated
headers when using ASGI
----------------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/eb22e1d6d643360e952609ef562c139a100ea4eb
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/972dbdd4f7f69e9c405e6fe12a1b90e4713c1611
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/1ba90069c12836db46981bdf75b0e661db5849ce
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/f578acc8c54530fffabd52d2db654c8669b011af
>`__

CVE-2026-1207: Potential SQL injection via raster lookups on PostGIS
--------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/81aa5292967cd09319c45fe2c1a525ce7b6684d8
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/8f77e7301174834573614ae90e1826fdf27f8a24
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/17a1d64a58ef24c0c3b78d66d86f5415075f18f0
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/a14363102d98fa29b8cced578eb3a0fadaa5bcb7
>`__

CVE-2026-1285: Potential denial-of-service vulnerability in
``django.utils.text.Truncator`` HTML methods
--------------------------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/a33540b3e20b5d759aa8b2e4b9ca0e8edd285344
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/4b86ba51e486530db982341a23e53c7a1e1e6e71
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/9f2ada875bbee62ac46032e38ddb22755d67ae5a
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/b40cfc6052ced26dcd8166a58ea6f841d0d2cac8
>`__

CVE-2026-1287: Potential SQL injection in column aliases via control
characters
-------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/e891a84c7ef9962bfcc3b4685690219542f86a22
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/0c0f5c2178c01ada5410cd53b4b207bf7858b952
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/3e68ccdc11c127758745ddf0b4954990b14892bc
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/f75f8f3597e1ce351d5ac08b6ba7ebd9dadd9b5d
>`__

CVE-2026-1312: Potential SQL injection via ``QuerySet.order_by`` and
``FilteredRelation``
-----------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/69065ca869b0970dff8fdd8fafb390bf8b3bf222
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/15e70cb83e6f7a9a2a2f651f30b28b5cb20febeb
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/e863ee273c6553e9b6fa4960a17acb535851857b
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/90f5b10784ba5bf369caed87640e2b4394ea3314
>`__


The following releases have been issued
=======================================

* Django 6.0.2 (`download Django 6.0.2
  <https://www.djangoproject.com/download/6.0.2/tarball/>`_ |
  `6.0.2 checksums
  <https://www.djangoproject.com/download/6.0.2/checksum/>`_)
* Django 5.2.11 (`download Django 5.2.11
  <https://www.djangoproject.com/download/5.2.11/tarball/>`_ |
  `5.2.11 checksums
  <https://www.djangoproject.com/download/5.2.11/checksum/>`_)
* Django 4.2.28 (`download Django 4.2.28
  <https://www.djangoproject.com/download/4.2.28/tarball/>`_ |
  `4.2.28 checksums
  <https://www.djangoproject.com/download/4.2.28/checksum/>`_)

The PGP key ID used for this release is Jacob Walls: `131403F4D16D8DC7 <
https://github.com/jacobtylerwalls.gpg>`_


General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum. Please see `our security policies
<https://www.djangoproject.com/security/>`_ for further information.

--00000000000074fa280649ec7450--
