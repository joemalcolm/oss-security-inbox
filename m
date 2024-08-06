Received: (qmail 17693 invoked by uid 550); 6 Aug 2024 14:31:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13351 invoked from network); 6 Aug 2024 14:28:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1722954490; x=1723559290; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rNlmHuboAZuM8glnEcIQLVTcwxw57HD401aDkjHSOW8=;
        b=JawntzMOuvYLBPrIYRTZt/1gEZsr2+bnb5KupHq1+jjuTzO7mi70FAYWIv0b14ajEK
         XLwqS0wLsmqS+I3FUuFIBC5sG1IJmO7vlvpyiHXGE2hsvNTDRlnjSox5O8p8U8WRU6Us
         UKAdXwwH5yGq2qYUpLOULrH2FDJnnkKkOnGaiJZc5wm3LfOzPISw/CCiyKb/x8ji7Dhh
         YkJPFKAydgzKgjxVJ1LVERhpJMkepWZ8w/PGOVnn8pbWjfjvmFnvqvG5KcGYqWLHe1lU
         iKmu3Up2NenOF2WQuguEb0Q5D9ATVh5ec+UoNTsM59sCmgz/YWAjII6rmsy2t5ZpQeb6
         Ms6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722954490; x=1723559290;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rNlmHuboAZuM8glnEcIQLVTcwxw57HD401aDkjHSOW8=;
        b=E+OLaGbB2sTpCeBUbzFQ5l433J7MJrAke+8zNXIDaEiSD6LPQx9d7HXUdwpR+bg8rg
         klbwx0xT4O86r9MKOUdeTl7SDYTb0VMb0CyRh3bW+tVrufGiTB6wMoCxObyqNarYskz7
         ac3CdbhH1H9iSPADMPuAwZ1ENRXHDIX0hgQWwZqayZcI1svFi0dyGawspMkPjIildXbG
         gn4lWGnd/3BBGnL6Ta5Hu+WqOMAiZBz1mnAE1S0ptAADzm8dT/wuxqQ/Klk5aY6Zwjrs
         dBJkTVKorjeHPLeIGSf2YaDY8jPoAMOa4CH0Q0vPC4tDKvensvv4tWxijWc6scuvKnb4
         iDqg==
X-Gm-Message-State: AOJu0YxSGDTXFByHf/cZSNn3GtfRL4MN5bc/iVIe3ZQiajjYBTmfGGmh
	AqgLsBX/ixaINSGxsPxltu2I+nlRGjDDPEmIyCQuV5UlGVk7DhrQXYx3rP76YNdDecYkdNSoQaV
	CWUr7Zt/VTvOH24k/hk3Pl0UuGC8KAN0bWFhDNSJd15Fa08f2egc=
X-Google-Smtp-Source: AGHT+IG1DXdgQ3UGF9+O3KAM77LGI1d+tLOC1B7yD8F2OvKDL5+hATgvryGHd2j8rVDCyknlUMpT23B5qBnGV8RMjJI=
X-Received: by 2002:adf:ef4b:0:b0:368:4b9d:ee2c with SMTP id
 ffacd0b85a97d-36bbc106fbfmr12474098f8f.19.1722954489636; Tue, 06 Aug 2024
 07:28:09 -0700 (PDT)
MIME-Version: 1.0
From: Sarah Boyce <sarahboyce@djangoproject.com>
Date: Tue, 6 Aug 2024 16:27:58 +0200
Message-ID: <CAN+fQHzdCToySg1OtFxSKCxqG2Otr4kW46TVaQiowdFVEHDn7w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="00000000000051cb3b061f049ad8"
Subject: [oss-security] Django CVE-2024-41989, CVE-2024-41990, CVE-2024-41991, and CVE-2024-42005

--00000000000051cb3b061f049ad8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

From: https://www.djangoproject.com/weblog/2024/aug/06/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.0.8 <https://docs.djangoproject.com/en/dev/releases/5.0.8/>`_ and
`Django 4.2.15 <https://docs.djangoproject.com/en/dev/releases/4.2.15/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2024-41989: Memory exhaustion in
``django.utils.numberformat.floatformat()``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

The ``floatformat`` template filter is subject to significant memory
consumption
when given a string representation of a number in scientific notation with a
large exponent.

Thanks to Elias Myllym=C3=A4ki for the report.

This issue has severity "moderate" according to the Django security policy.

CVE-2024-41990: Potential denial-of-service in
``django.utils.html.urlize()``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

The ``urlize()`` and ``urlizetrunc()`` template filters are subject to a
potential
denial-of-service attack via very large inputs with a specific sequence of
characters.

Thanks to `MProgrammer <https://hackerone.com/mprogrammer>`_ for the report.

This issue has severity "moderate" according to the Django security policy.

CVE-2024-41991: Potential denial-of-service vulnerability in
``django.utils.html.urlize()`` and ``AdminURLFieldWidget``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The ``urlize`` and ``urlizetrunc`` template filters, and the
``AdminURLFieldWidget``
widget, are subject to a potential denial-of-service attack via certain
inputs
with a very large number of Unicode characters.

Thanks to Seokchan Yoon for the report.

This issue has severity "moderate" according to the Django security policy.

CVE-2024-42005: Potential SQL injection in ``QuerySet.values()`` and
``values_list()``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

``QuerySet.values()`` and ``values_list()`` methods on models with a
``JSONField`` are
subject to SQL injection in column aliases via a crafted JSON object key as
a
passed ``*arg``.

Thanks to Eyal Gabay of EyalSec for the report.

This issue has severity "moderate" according to the Django security policy.


Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django main branch
* Django 5.1 (currently at release candidate status)
* Django 5.0
* Django 4.2

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to Django's
main, 5.1, 5.0, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2024-41989: Memory exhaustion in
``django.utils.numberformat.floatformat()``
---------------------------------------------------------------------------=
-----

* On the `main branch <
https://github.com/django/django/commit/c19465ad87e33b6122c886b97a202ad54cd=
43672/
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/0504af64292071e1a9565193ea8265c6060=
0f7d7/
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/27900fe56f3d3cabb4aeb6ccb82f92bab29=
073a8/
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/fc76660f589ac07e45e9cd34ccb8087aeb1=
1904b/
>`__

CVE-2024-41990: Potential denial-of-service in
``django.utils.html.urlize()``
---------------------------------------------------------------------------=
--

* On the `main branch <
https://github.com/django/django/commit/ecf1f8fb900f94de08c945164633e9a28a2=
edadb/
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/0c1a8909164d8f2846322efb1143b72ad16=
16bd8/
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/7b7b909579c8311c140c89b8a9431bf537f=
ebf93/
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/d0a82e26a74940bf0c78204933c3bdd6a28=
3eb88/
>`__

CVE-2024-41991: Potential denial-of-service vulnerability in
``django.utils.html.urlize()`` and ``AdminURLFieldWidget``
---------------------------------------------------------------------------=
--------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/5f1757142febd95994caa1c0f64c1a0c161=
982c3/
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/bd807c0c25ab69361a4c08edcc1cf04d465=
2aa0a/
>`__
* On the `5.0 branch <
https://github.com/django/commit/django/523da8771bce321023f490f70d71a9e973d=
dc927/
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/efea1ef7e2190e3f77ca0651b5458297bc0=
f6a9f/
>`__

CVE-2024-42005: Potential SQL injection in ``QuerySet.values()`` and
``values_list()``
---------------------------------------------------------------------------=
-----------

* On the `main branch <
https://github.com/django/django/commit/c87bfaacf8fb84984243b5055dc70f97996=
cb115/
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/e2583fbc2ebffce11b4444a7cec6336513e=
81f8b/
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/32ebcbf2e1fe3e5ba79a6554a167efce81f=
7422d/
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/f4af67b9b41e0f4c117a8741da3abbd1c86=
9ab28/
>`__


The following releases have been issued
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* Django 5.0.8 (`download Django 5.0.8
  <https://www.djangoproject.com/m/releases/5.0/Django-5.0.8.tar.gz>`_ |
  `5.0.8 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.0.8.checksum.txt>`_)
* Django 4.2.15 (`download Django 4.2.15
  <https://www.djangoproject.com/m/releases/4.2/Django-4.2.15.tar.gz>`_ |
  `4.2.15 checksums
  <https://www.djangoproject.com/m/pgp/Django-4.2.15.checksum.txt>`_)

The PGP key ID used for this release is Sarah Boyce: `3955B19851EA96EF <
https://github.com/sarahboyce.gpg>`_

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum, nor via the django-developers list. Please see `our
security
policies <https://www.djangoproject.com/security/>`_ for further
information.

--00000000000051cb3b061f049ad8--
