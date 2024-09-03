Received: (qmail 19827 invoked by uid 550); 3 Sep 2024 15:32:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16105 invoked from network); 3 Sep 2024 14:50:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1725375020; x=1725979820; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f+A/KH4vlnJErbjnAlZ7D6VO9Yd8odQL//2ZaI5h5go=;
        b=QkEPab19PEnbnw2cF6iZROwrAwOa8oeiVzXSK0hzcviVNwtCzOGMujFeIdV80CstVl
         cqjS+R9qXcjuTbNWwLoWct9Gs8dgqaZJA2Ar2qWLvgrCtNF+xeEg9HEWjgoUrY7yWby8
         koOUPxt2Uu5vLCihobUFhDQjjSYH72+RHbFG8eaKb9MAIWj5Y1261q0+QzqgVK5lINkp
         8pYbvR9Fh/CBSeFsqIBb0aaNSnfQS/ZMDVpdzyAFOgx85y9dv9OQK3PNlHzo4oqjvXNW
         Vcjb+kkz5G8kw6iiZziboGz+EuqbCmWDKX5lgo6XD2BKZw6eGkcJLSUxC6vwRaNbCKZz
         P0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725375020; x=1725979820;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f+A/KH4vlnJErbjnAlZ7D6VO9Yd8odQL//2ZaI5h5go=;
        b=Ddvh6S6hU7Zpga5mXM+TA8teQeFbk9SrcKwuTdWFl/5L0bj3pHsmESVs2bsmIy+X/N
         Eho8ovrAYbNJ8prYIsTpP7MLiG16eUHM4f7kGyMz4F1nBGQ/MjR1knaJZk26gwE2suo7
         AequdbkSZbU7/JPT9bBtt5k9SEcaXMy1m36eSMW+8KmvjCKPNqH5zArHKG4mYaaK/TKg
         Kaq3rgsML487cM11zBahK46Rr8nWAkcBn1vIg9pqZaC5EHTpsgvKBcMkeO1yDYbY5+OZ
         jxg9G/8pYwOWlMsYGbYNUsTlPE1wpypZM2tnRY1g7oDs4fwWB2q78P/PqLiGPbvQ3Mrs
         Fn6g==
X-Gm-Message-State: AOJu0Yxedv5GcLTfuZTgh5lI3MpKQSHVy66+Ae1lVmfuE4fyastspRYV
	h9dWkxL0yZGQXKFliCjSYMaMRHx1Iy7lgUxrJI6o8HW9QixIqOyKyoto/fCgCusWlV458m3X7x+
	RO0Bv80QESkg2pYUSEVO+0/RiA8Xn0tRUlGN5sE/H7Upx4mQPa2k=
X-Google-Smtp-Source: AGHT+IG6no78B8K+UzN4JaApWOEkZzpL4sf7XYrhy7uQCL1f6kFi0cRAH5guztUyVm1ARR/AiL4eAnbpmsdpSakQ6fo=
X-Received: by 2002:a05:6512:2344:b0:533:48c9:754d with SMTP id
 2adb3069b0e04-53546b41e00mr9991484e87.34.1725375019837; Tue, 03 Sep 2024
 07:50:19 -0700 (PDT)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@djangoproject.com>
Date: Tue, 3 Sep 2024 11:50:03 -0300
Message-ID: <CAJVoTUsLcScuMqkBiB2+N6q2fZb5ms1Vd4gXGgkspCKQ4h3Y8g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="000000000000298c220621382d9d"
Subject: [oss-security] Django CVE-2024-45230 and CVE-2024-45231

--000000000000298c220621382d9d
Content-Type: text/plain; charset="UTF-8"

https://www.djangoproject.com/weblog/2024/sep/03/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.1.1 <https://docs.djangoproject.com/en/dev/releases/5.1.1/>`_,
`Django 5.0.9 <https://docs.djangoproject.com/en/dev/releases/5.0.9/>`_, and
`Django 4.2.16 <https://docs.djangoproject.com/en/dev/releases/4.2.16/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2024-45230: Potential denial-of-service vulnerability in
``django.utils.html.urlize()``
===========================================================================================

``urlize`` and ``urlizetrunc`` were subject to a potential
denial-of-service attack via very large inputs with a specific sequence of
characters.

Thanks to `MProgrammer <https://hackerone.com/mprogrammer>`_ for the report.

This issue has severity "moderate" according to the Django security policy.

CVE-2024-45231: Potential user email enumeration via response status on
password reset
======================================================================================

Due to unhandled email sending failures, the
``django.contrib.auth.forms.PasswordResetForm`` class allowed remote
attackers to enumerate user emails by issuing password reset requests and
observing the outcomes.

To mitigate this risk, exceptions occurring during password reset email
sending
are now handled and logged using the ``django.contrib.auth`` logger.

Thanks to Thibaut Spriet for the report.

This issue has severity "low" according to the Django security policy.

Affected supported versions
===========================

* Django main branch
* Django 5.1
* Django 5.0
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 5.1, 5.0, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2024-45230: Potential denial-of-service vulnerability in
django.utils.html.urlize()
---------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/320dd27412e791e119d088281913d8f649617a13
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/022ab0a75c76ab2ea31dfcc5f2cf5501e378d397
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/813de2672bd7361e9a453ab62cd6e52f96b6525b
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/d147a8ebbdf28c17cafbbe2884f0bc57e2bf82e2
>`__

CVE-2024-45231: Potential user email enumeration via response status on
password reset
--------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/8c35a0a903fd979e3262fe300ca084ffbfb300d6
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/3c733c78d6f8e50296d6e248968b6516c92a53ca
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/96d84047715ea1715b4bd1594e46122b8a77b9e2
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/bf4888d317ba4506d091eeac6e8b4f1fcc731199
>`__

The following releases have been issued
=======================================

* Django 5.1.1 (`download Django 5.1.1
  <https://www.djangoproject.com/m/releases/5.1/Django-5.1.1.tar.gz>`_ |
  `5.1.1 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.1.1.checksum.txt>`_)
* Django 5.0.9 (`download Django 5.0.9
  <https://www.djangoproject.com/m/releases/5.0/Django-5.0.9.tar.gz>`_ |
  `5.0.9 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.0.9.checksum.txt>`_)
* Django 4.2.16 (`download Django 4.2.16
  <https://www.djangoproject.com/m/releases/4.2/Django-4.2.16.tar.gz>`_ |
  `4.2.16 checksums
  <https://www.djangoproject.com/m/pgp/Django-4.2.16.checksum.txt>`_)

The PGP key ID used for this release is Natalia Bidart: `2EE82A8D9470983E <
https://github.com/nessita.gpg>`_

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum, nor via the django-developers list. Please see `our
security
policies <https://www.djangoproject.com/security/>`_ for further
information.

--000000000000298c220621382d9d--
