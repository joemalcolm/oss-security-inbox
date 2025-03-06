Received: (qmail 17914 invoked by uid 550); 6 Mar 2025 16:36:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9880 invoked from network); 6 Mar 2025 13:27:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1741267638; x=1741872438; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=98Jja0sW8MgrI3xZ95p58CwfmlDY4JXSQrP56E2VzJs=;
        b=lAashgFvZhiiJTmEzS4wNOo4VxpxmounAFwGPv2D+DfP3K6ant51BDuyGRwVlkz0os
         tzr5SCA0eIyuzf/gyBPi5byq3XvpE0EhyS5uYLw6nI/IM7f96qhhSb33sD3HtaCIi3UJ
         D5dziCoAOL+vv3hNYs1ZHjQF14wL335u2jM+uutQDUmXQEh2S8pp/nydWfKI49yoscuH
         t0MXvjKsIsu2Tz1OEv9LuWq9zWZweXEUADulCgkvzDlxOsQDXNdVLzYsBkXKJ7FCmT/t
         VfizrGeuQFdrZgh+9wMGG+Ujxjhy1rYe3X1GgRD8NQM1PMrzIsge8a5eTKbVR46ioYf7
         GNdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741267638; x=1741872438;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=98Jja0sW8MgrI3xZ95p58CwfmlDY4JXSQrP56E2VzJs=;
        b=Hi8kupqy6yzniAGEaWuzJRU+f3IZ6o/Y6Xr2J+DjrZslUg8liUS/HMcayJINrxu+kc
         KWZKQDK4wo9gEQurQnT4EeEYcCN98nhFmLKmYO+etiD2G5+hgscNfEQUeEX967anLT3x
         4jZ1siUn23EURHRL5h77pP6dxjDQZdFAPsFOlkA2gpzE25v4aSS8p28FztpKc90dZOmJ
         EPxAP+FKwPeAy2ys2KvIfZ387gXOT9rw/moo6wwpn8Lu2BVLMUEBZ5mzwluAJMEV47Tw
         4jDOrDtYjVrfmOFCmlTaYikWmpD9wwVKkgQn3fCoDTFIFPQrcUIJD0jybv45pp/gQkFq
         lVuA==
X-Gm-Message-State: AOJu0YyYQmb8mEhjrmCPO9eghokyIhOcQYDmI6rb7Zb8XIQHBzxF1kRN
	iPeprV6PPqVgm6+Co53IE7Kn5wEHL/H+IRk6pGCl4SreMbJOryQn98R0EoWy/87/FXOkSI5Bs5e
	wvKW4b9fUkcgWvtogWlFrO9QrVGjzpCH1OcCXhx+88gKeQZLNjdTEdQ==
X-Gm-Gg: ASbGncttrBf0VhqmcU8Qbiih8WY+h5jZu7oUdJS36h1AtQyXkO3tesTvz4xZ2gXau30
	a/5WhaDnNVtEyIVedWk24gbeo1JezmCYNgi/Plxf/o4FlNTaI3fJSil149GRFzm6lfvuahkEHMj
	eBPFiezIcKBjI62/lZpcqxnidbXiPS6XUbzI83kYq+wBKymeYYW7tfjW3wiEfW
X-Google-Smtp-Source: AGHT+IFqVT/OxW411JmPPTeXY6eqFfum+QEW7vsjVzI8+SyvelHVRAO4vm3htuosmTxww/NIMAKssZjD4UCOEm2bTrQ=
X-Received: by 2002:a17:907:1909:b0:abf:5a57:13b1 with SMTP id
 a640c23a62f3a-ac20dc8f968mr781951866b.56.1741267637489; Thu, 06 Mar 2025
 05:27:17 -0800 (PST)
MIME-Version: 1.0
From: Sarah Boyce <sarahboyce@djangoproject.com>
Date: Thu, 6 Mar 2025 14:27:06 +0100
X-Gm-Features: AQ5f1Jrl59bRg5I5eP4xJy47dBOPTNpUKlZbf2oybfMhpixOyT6ZrcFGcQ75CvM
Message-ID: <CAN+fQHzbcsz2Dm7O0NFymMgec-A7J38O_CJLdiuwO=gPkNHcOA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="000000000000fdfe73062fac76b6"
Subject: [oss-security] CVE-2025-26699: Django: Potential denial-of-service in django.utils.text.wrap()

--000000000000fdfe73062fac76b6
Content-Type: text/plain; charset="UTF-8"

https://www.djangoproject.com/weblog/2025/mar/06/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.1.7 <https://docs.djangoproject.com/en/dev/releases/5.1.7/>`_,
`Django 5.0.13 <https://docs.djangoproject.com/en/dev/releases/5.0.13/>`_
and
`Django 4.2.20 <https://docs.djangoproject.com/en/dev/releases/4.2.20/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2025-26699: Potential denial-of-service in ``django.utils.text.wrap()``
===========================================================================

The ``django.utils.text.wrap()`` and ``wordwrap`` template filter
were subject to a potential denial-of-service attack when used with
very long strings.

Thanks to sw0rd1ight for the report.

This issue has severity "moderate" according to the Django security policy.

Affected supported versions
===========================

* Django main
* Django 5.2 (currently at pre-release beta status)
* Django 5.1
* Django 5.0
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 5.2, 5.1, 5.0, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2025-26699: Potential denial-of-service in ``django.utils.text.wrap()``
---------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/55d89e25f4115c5674cdd9b9bcba2bb2bb6d820b
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/3cfa472644d4ce764d84fed739177b5765ea4b8a
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/8dbb44d34271637099258391dfc79df33951b841
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/4f2765232336b8ad0afd8017d9d912ae93470017
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/e88f7376fe68dbf4ebaf11fad1513ce700b45860
>`__


The following releases have been issued
=======================================

* Django 5.1.7 (`download Django 5.1.7
  <https://www.djangoproject.com/m/releases/5.1/Django-5.1.7.tar.gz>`_ |
  `5.1.7 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.1.7.checksum.txt>`_)
* Django 5.0.13 (`download Django 5.0.13
  <https://www.djangoproject.com/m/releases/5.0/Django-5.0.13.tar.gz>`_ |
  `5.0.13 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.0.13.checksum.txt>`_)
* Django 4.2.20 (`download Django 4.2.20
  <https://www.djangoproject.com/m/releases/4.2/Django-4.2.20.tar.gz>`_ |
  `4.2.20 checksums
  <https://www.djangoproject.com/m/pgp/Django-4.2.20.checksum.txt>`_)

The PGP key ID used for this release is Sarah Boyce: `3955B19851EA96EF <
https://github.com/sarahboyce.gpg>`_

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum. Please see `our security policies <
https://www.djangoproject.com/security/>`_
for further information.

--000000000000fdfe73062fac76b6--
