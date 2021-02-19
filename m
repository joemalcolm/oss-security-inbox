X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3506" "Friday" "19" "February" "2021" "10:17:05" "+0100" "Carlton Gibson" "carlton.gibson@gmail.com" nil "82" "[oss-security] Django security releases: CVE-2021-23336: Web cache poisoning via ``django.utils.http.limited_parse_qsl()``" nil nil nil "2" nil nil (number mark "U       carlton.gibs Feb 19   82/3506  " thread-indent "\"[oss-security] Django security releases: CVE-2021-23336: Web cache poisoning via ``django.utils.http.limited_parse_qsl()``\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django security releases: CVE-2021-23336: Web cache poisoning via ``django.utils.http.limited_parse_qsl()``" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25725 invoked by uid 550); 19 Feb 2021 09:19:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23940 invoked from network); 19 Feb 2021 09:17:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=f8vFDiBz40PZOsW2lSdM1uDn8xWM0lTXFrQ6cHkUEFE=;
        b=PDoK1duP3dA//zKmQA6Z7c4FBpYc7/WwYOGE2sSl+kt0QgVZhF8RiKJ+C7sB+TP/kZ
         fUJr2fzV8L7glXQeQ23+gANS2qZyCdXO+PMCm0yZx5jFDv4BJ2D9KlfUjRRAgaNTHdod
         VEVmu/CexYVtELMKPuMzCklATfDrQe/1RZ0cEjJQuy8wz1mVJoDTaPyw+A8FjWE7XNpz
         saJ/pY3sbkZCxTysnTSetkwWUEY5Z+MN3HdJXo7c6ocHhP2Kdu/huDi1kripS4ACALTM
         mZO7LPyjM/OilUFVKo+51hEdO5odDOHmd4V+d3Rqw+34cKrFlOfa2RkIbiBd9PbGEZ64
         Cb7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=f8vFDiBz40PZOsW2lSdM1uDn8xWM0lTXFrQ6cHkUEFE=;
        b=ArzIJ5yaYzslk5B6w+xxXX1Jv0SAW7M1c6PSRu3dB402W3toq7pjdBdQNnchAFpk+A
         yDSZHfBkpe+ZI2xWlRy9tXXRfYcIutwcAAwirCKLhhr+40H2L5XBeog1DhjRCA+RpR6t
         Ihh+cK+XxDJUBboorx3tfkUpq1QMbcXM1pjm0ljMS/CQ+rwTsUQtbJWmqhWuXFwQwooR
         tVeRDKzXvMV7PqfrBnUxpu5USV9A1L0LHE1RJHEx9diaX82F5AacRz9T5DurrgsIchp+
         PMEHQvnyO8/qFEeRmfc1WAG99OU32irxWaE4C55AdmGkVof36MEaX1C7/2UM4SKzZQ0b
         vHQw==
X-Gm-Message-State: AOAM530EqRmVsUmDxI6YABunYKRHCjgvnb0RdR84ozl7XgA4O8nv/qG2
	hnxJ/335VAyNhZEnBptaJCKVzLTo8WLfjQ==
X-Google-Smtp-Source: ABdhPJzBY9Zd1K5FrRZ9x96AZL4mlN6zEgh60KAuA6q5+qe/fXfd5fsU8n8SvOa1UqGhePQlRgDqUw==
X-Received: by 2002:adf:e585:: with SMTP id l5mr8019679wrm.85.1613726227166;
        Fri, 19 Feb 2021 01:17:07 -0800 (PST)
From: Carlton Gibson <carlton.gibson@gmail.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.80.0.2.10\))
Message-Id: <267FB491-4BEA-4D72-912C-BE75DCCB8207@gmail.com>
Date: Fri, 19 Feb 2021 10:17:05 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3654.80.0.2.10)
Subject: [oss-security] Django security releases: CVE-2021-23336: Web cache poisoning via
 ``django.utils.http.limited_parse_qsl()``

Reference: https://www.djangoproject.com/weblog/2021/feb/19/security-releas=
es/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django t=
eam
is issuing
`Django 3.1.7 <https://docs.djangoproject.com/en/dev/releases/3.1.7/>`_,
`Django 3.0.13 <https://docs.djangoproject.com/en/dev/releases/3.0.13/>`_, =
and
`Django 2.2.19 <https://docs.djangoproject.com/en/dev/releases/2.1.19/>`_.
These release addresses the security issue detailed below. We encourage all=
 users of Django to upgrade as soon as possible.

CVE-2021-23336: Web cache poisoning via ``django.utils.http.limited_parse_q=
sl()``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

Django contains a copy of ``urllib.parse.parse_qsl()`` which was added to
backport some security fixes. A further security fix has been issued recent=
ly
such that ``parse_qsl()`` no longer allows using ``;`` as a query parameter
separator by default. Django now includes this fix. See `bpo-42967
<https://bugs.python.org/issue42967>`_ for further details.

This issue has moderate severity, according to the Django security policy.

Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django 3.2 (currently at beta status)
* Django 3.1
* Django 3.0
* Django 2.2

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to the 3.2, 3.1, 3.0, and 2.=
2 release
branches. The patches may be obtained from the following changesets:

* On the `3.2 release branch <https://github.com/django/django/commit/be823=
7c7cce24b06aabde0b97afce98ddabbe3b6>`__
* On the `3.1 release branch <https://github.com/django/django/commit/8f6d4=
31b08cbb418d9144b976e7b972546607851>`__
* On the `3.0 release branch <https://github.com/django/django/commit/326a9=
26beef869d3341bc9ef737887f0449b6b71>`__
* On the `2.2 release branch <https://github.com/django/django/commit/fd6b6=
afd5959b638c62dbf4839ccff97e7f7dfda>`__

The following releases have been issued:

* Django 3.1.7 (`download Django 3.1.7 <https://www.djangoproject.com/m/rel=
eases/3.1/Django-3.1.7.tar.gz>`_ | `3.1.7 checksums <https://www.djangoproj=
ect.com/m/pgp/Django-3.1.7.checksum.txt>`_)
* Django 3.0.13 (`download Django 3.0.13 <https://www.djangoproject.com/m/r=
eleases/3.0/Django-3.0.13.tar.gz>`_ | `3.0.13 checksums <https://www.django=
project.com/m/pgp/Django-3.0.13.checksum.txt>`_)
* Django 2.2.19 (`download Django 2.2.19 <https://www.djangoproject.com/m/r=
eleases/2.2/Django-2.2.19.tar.gz>`_ | `2.2.19 checksums <https://www.django=
project.com/m/pgp/Django-2.2.19.checksum.txt>`_)

The PGP key ID used for these releases is Carlton Gibson: `E17DF5C82B4F9D00
<https://github.com/carltongibson.gpg>`_.


Django 3.2 beta 1 will be released in a separate blog post later today.

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.=
