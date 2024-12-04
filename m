Received: (qmail 26336 invoked by uid 550); 4 Dec 2024 17:00:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28622 invoked from network); 4 Dec 2024 16:42:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1733330548; x=1733935348; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ks7x2L9we9zVOrAKd11/VWO6BFY/ZOT/08bFUAF9Mek=;
        b=rRhcy8deXXPXidcFSrets8Zj82WSOWUmQgJU4TOG1D8hGNENHe2DFiYUJFLyUY/57V
         F4JtbPyC/49vDiwWN8AvPwHOvj/lIgOm2PGM8Url1BagFAC6RBMvd3A2TyusjvqOD7MF
         fhxAMuWNNp1vA7wqu1JQNTGlWHqS5GvRNFpKgv0j+YkzaQ5+UHlYrEfBjipxwf7uy/cF
         iNeYGl4AW3E8rYbYg3QgP4TGYmiXnuXV/aFTI9TGLdVbOnEA82v48rVAVO3zi6LqJPnU
         1d7ojzf21hvm7KHmN7n3fKgyNCVvmsPlCIa//kKmQg3HRevX9w3rG8l2bhzM/BzqOUN0
         t4Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733330548; x=1733935348;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ks7x2L9we9zVOrAKd11/VWO6BFY/ZOT/08bFUAF9Mek=;
        b=nfcDWbImmUIF7M6S9NAq+nJdGqhsZyIHzcmd5klRUFjb+ybbiUOF94b+J8XbAodIoC
         1qEv6Ij6tiQUY/KYquhw/uxfgQySFJ7g+xe5hhf0R/jvOAP8P9ebdjeL1jdU3azk0uDH
         7MHmXNflnmgx5Oz8g+I/Fe38zFiQKVLNShMPiGEafd8qVTigEoKArMzKzBgWW14TBiJK
         LVOkkFBZ/gZYdGcKtlaG0mtFTEjwL5dORzNF7DmiYyuQ4luRtxpOnu5cPf7ZRvOrb9vO
         1tJE4gyFrNUHfYFBkjW8yqKykNTHG32Ojc3ov/x0i8xVZvuiN48FEELLv9jH76K0zThG
         k3XQ==
X-Gm-Message-State: AOJu0YzAd0qpro+u4+ra/xeQChdvL4pLZfibJU94bYe+Q0M0LK62dynl
	Y4ZZakOS9P1jFtIeUEUQEdkzsoGg0PS1BYIoJNPcpSkJlAOSlNYyqZJLoJkIdkzvFAKHKmrqe0d
	t5/btG1fj/ipCOE7h6TODnB89oTVDKgzlu67X/k6hFPeivD41r3I=
X-Gm-Gg: ASbGncveHYa5nFoILfRP44MBYFkTh8FTAqFskVFQbVDKNUEIxVYxgYZfogzs4S2n1j9
	7Hun/AyysE6XimpCxn7fzbgFydTemNn7fyDatX8MuE6bstlChokAa42irgdAEoA58aA==
X-Google-Smtp-Source: AGHT+IFMrgHXVarTW9J0ur75jost1+1LBCDPnsNfItHtkvD3wioAmZ/jVJ1zoGSdFqmYef4IA9Ch+TuuEfF27+QF+3o=
X-Received: by 2002:a17:907:1b07:b0:aa4:d861:127f with SMTP id
 a640c23a62f3a-aa5f7f57df7mr963281466b.53.1733330548429; Wed, 04 Dec 2024
 08:42:28 -0800 (PST)
MIME-Version: 1.0
From: Sarah Boyce <sarahboyce@djangoproject.com>
Date: Wed, 4 Dec 2024 17:42:17 +0100
Message-ID: <CAN+fQHwsn21=myA6ay4=pqRVrpC4mo3eLWejcHKazzLmW+6Zqw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="0000000000009e2fa606287477ac"
Subject: [oss-security] Django CVE-2024-53907 and CVE-2024-53908

--0000000000009e2fa606287477ac
Content-Type: text/plain; charset="UTF-8"

https://www.djangoproject.com/weblog/2024/dec/04/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.1.4 <https://docs.djangoproject.com/en/dev/releases/5.1.4/>`_,
`Django 5.0.10 <https://docs.djangoproject.com/en/dev/releases/5.0.10/>`_,
and
`Django 4.2.17 <https://docs.djangoproject.com/en/dev/releases/4.2.17/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2024-53907: Potential denial-of-service in
``django.utils.html.strip_tags()``
=================================================================================

The ``strip_tags()`` method and ``striptags`` template filter are subject
to a
potential denial-of-service attack via certain inputs containing large
sequences of nested incomplete HTML entities.

Thanks to jiangniao for the report.

This issue has severity "moderate" according to the Django security policy.

CVE-2024-53908: Potential SQL injection in ``HasKey(lhs, rhs)`` on Oracle
=========================================================================

Direct usage of the ``django.db.models.fields.json.HasKey`` lookup on
Oracle is
subject to SQL injection if untrusted data is used as a ``lhs`` value.
Applications that use the ``jsonfield.has_key`` lookup through the ``__``
syntax are
unaffected.

Thanks to Seokchan Yoon for the report.

This issue has severity "high" according to the Django security policy.


Affected supported versions
===========================

* Django main
* Django 5.1
* Django 5.0
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 5.1, 5.0, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2024-53907: Potential denial-of-service in
django.utils.html.strip_tags()
-----------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/49ff1042aa66bb25eda87e9a8ef82f3b0ad4eeba
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/bbc74a7f7eb7335e913bdb4787f22e83a9be947e
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/a5a89ea28cc550c1b29b03f9e14ef3c128ec1e84
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/790eb058b0716c536a2f2e8d1c6d5079d776c22b
>`__

CVE-2024-53908: Potential SQL injection in HasKey(lhs, rhs) on Oracle
---------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/8f8dc5a1fca7d076e749f307f6573af3512e7e99
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/6943d61818e63e77b65d8b1ae65941e8f04bd87b
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/ff08bb6c70aa45f83a5ef3bd0b601c7c9d1a7642
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/7376bcbf508883282ffcc0f0fac5cf0ed2d6cbc5
>`__


The following releases have been issued
=======================================

* Django 5.1.4 (`download Django 5.1.4
  <https://www.djangoproject.com/m/releases/5.1/Django-5.1.4.tar.gz>`_ |
  `5.1.4 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.1.4.checksum.txt>`_)
* Django 5.0.10 (`download Django 5.0.10
  <https://www.djangoproject.com/m/releases/5.0/Django-5.0.10.tar.gz>`_ |
  `5.0.10 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.0.10.checksum.txt>`_)
* Django 4.2.17 (`download Django 4.2.17
  <https://www.djangoproject.com/m/releases/4.2/Django-4.2.17.tar.gz>`_ |
  `4.2.17 checksums
  <https://www.djangoproject.com/m/pgp/Django-4.2.17.checksum.txt>`_)

The PGP key ID used for this release is Sarah Boyce: `3955B19851EA96EF <
https://github.com/sarahboyce.gpg>`_

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

--0000000000009e2fa606287477ac--
