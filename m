Received: (qmail 16299 invoked by uid 550); 1 Oct 2025 15:54:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13799 invoked from network); 1 Oct 2025 14:51:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1759330278; x=1759935078; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UG9NVQxs5wO9DIJa56hsZTwktHad+I6Otd7dzv1ippU=;
        b=dPJZ3WG1mN0qcH5GnLPB9EIQH5eargIHUX6SkH7usCrF35fm7/rZ1FDFVp8kVkLSMt
         sRT+R+n0MVLed9QXPzPm6bEi6VtdWaJeL3mK0ryvFnAIaZZT8n5lapsjL8Qi3OB5u4wK
         cFxQObNjKf/Mtte3YiR7HrIBjO+dqWNZih8NpfS5L/CxZ7WfJanzgK/lHwjWmTjsayju
         Ybgg1Eywq9OLvHsq5oPtHeept8TRvr71JW4AMp5c0r5iLlBlyPRwWfGR2hVqlHLkuIqg
         nfkN6gkhuyoYG0z5eTRbPOccEzqkJ/7CjhRPRVdflft/R5AiUJvq4pfAEJOn66ZIT5PA
         VbpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759330278; x=1759935078;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UG9NVQxs5wO9DIJa56hsZTwktHad+I6Otd7dzv1ippU=;
        b=ZE9dou6Wmy5F1ThKbEeULJuIiVr7iCaZsvkZFtqU1JVUM9tqeGArZ1zOhf728Djz0m
         KGk+NvhoBK/+ouoxVdCgFsi3oGvYI+BdY+HOCRAtpDvE8hSMgSOrXbDWGNVCkB9UkGlm
         /19YbuzRyb8vck2vfJGxzcDS3y8UBTCag2ukONxd0plQQjDignxiGUPC2DXuAufIT0hc
         hqan3Ieu1XPwEv8L2uZnhEvc/8XwwiwQ2d1WH/phxVk2+NrCNS5+l2Z1lfscEzOd+2s4
         Rge5672QqAUGW+BeOUmE5weF0OEnBWpE2avztvGsOvc4dsGUbSvaP1ppteTiAG0Qftmi
         7yKA==
X-Gm-Message-State: AOJu0Yxh9QKvAR5r60RRy8uN0JlFwzV/MaQ1fhFZdoUJtbU1CO+/4dEp
	klvxy05LDBoqSqgqdWzRYRv4kysMqQPNQC0YT2SKqCTSiKsbP0/q2eZ5n3aclLBxxQnvzNCm500
	MM26zcdjq06aBzo9vGbWZMBPn+DYz7uD8QWBjYf5i7XhPmAVJA5kGq4c=
X-Gm-Gg: ASbGncuCjhuUXhZj9Ew704L/Ubajhs9ECZRMMq1WwXeusaYP08LvDTdYc49huBHG8o6
	PNriTZMZB/czw8LAB7O/0X/HunJZc8fddAtBnxsXDjRMusgR+VHkOnZX/uU0+ax7kP1Edof2QPO
	iIS1K5nKKgIaGvl8BTzebPAIeCU7TEtdEQjv7bUM1EAk+g3+ICjmLDDJVgPHYtFO6gtRRoUeh7w
	3dyCIugVbfQfaWZePJ4flrzGu4oVZJCunWDlMskaF3cxg==
X-Google-Smtp-Source: AGHT+IF2PSmf91u3da1BkQG6kICGiPWHXbukJZVnTgWvN7UkgloiNx4ChHScl9J0mlpGxdgNC2g4frbDOoYE9Xo6pzk=
X-Received: by 2002:a05:690e:4291:10b0:63b:17b0:2c80 with SMTP id
 956f58d0204a3-63b70103b23mr2657011d50.9.1759330278274; Wed, 01 Oct 2025
 07:51:18 -0700 (PDT)
MIME-Version: 1.0
From: Jacob Walls <jwalls@djangoproject.com>
Date: Wed, 1 Oct 2025 10:51:07 -0400
X-Gm-Features: AS18NWAvZUZXJG2QRjKq3IFm9J7vHUC1__yHSVT_3pmJghLDa8rzvxLqDb5NnZc
Message-ID: <CAL4K_NZt_CttrZcQHfo7m=_3_+ysBJDw-hG2BKT_UL2Z7N-ZYA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="000000000000478b2a06401a0059"
Subject: [oss-security] Django CVE-2025-59681 and CVE-2025-59682

--000000000000478b2a06401a0059
Content-Type: text/plain; charset="UTF-8"

* Announce link:
https://www.djangoproject.com/weblog/2025/oct/01/security-releases/

* Announce content:
In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.2.7 <https://docs.djangoproject.com/en/dev/releases/5.2.7/>`_,
`Django 5.1.13 <https://docs.djangoproject.com/en/dev/releases/5.1.13/>`_,
and
`Django 4.2.25 <https://docs.djangoproject.com/en/dev/releases/4.2.25/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2025-59681: Potential SQL injection in ``QuerySet.annotate()``,
``alias()``, ``aggregate()``, and ``extra()`` on MySQL and MariaDB
======================================================================================================================================

``QuerySet.annotate()``, ``QuerySet.alias()``, ``QuerySet.aggregate()``,
and ``QuerySet.extra()`` methods were subject to SQL injection in column
aliases, using a suitably crafted dictionary, with dictionary expansion, as
the ``**kwargs`` passed to these methods on MySQL and MariaDB.

Thanks to sw0rd1ight for the report.

This issue has severity "high" according to the Django security policy.

CVE-2025-59682: Potential partial directory-traversal via
``archive.extract()``
===============================================================================

The ``django.utils.archive.extract()`` function, used by ``startapp
--template`` and ``startproject --template``, allowed partial
directory-traversal via an archive with file paths sharing a common prefix
with the target directory.

Thanks to stackered for the report.

This issue has severity "low" according to the Django security policy.


Affected supported versions
===========================

* Django main
* Django 6.0 (currently at alpha status)
* Django 5.2
* Django 5.1
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 6.0 (currently at alpha status), 5.2, 5.1, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2025-59681: Potential SQL injection in QuerySet.annotate(), alias(),
aggregate(), and extra() on MySQL and MariaDB
----------------------------------------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/41b43c74bda19753c757036673ea9db74acf494a
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/4ceaaee7e04b416fc465e838a6ef43ca0ccffafe
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/52fbae0a4dbbe5faa59827f8f05694a0065cc135
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/01d2d770e22bffe53c7f1e611e2bbca94cb8a2e7
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/38d9ef8c7b5cb6ef51b933e51a20e0e0063f33d5
>`__

CVE-2025-59682: Potential partial directory-traversal via archive.extract()
---------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/924a0c092e65fa2d0953fd1855d2dc8786d94de2
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/af067f56c1dd467df4abd0ddd409a700da1f03ba
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/ed8fc39d77465eddbde1191a054ae965f6a8a584
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/74fa85c688a87224637155902bcd738bb9e65e11
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/9504bbaa392c9fe37eee9291f5b4c29eb6037619
>`__


The following releases have been issued
=======================================

* Django 5.2.7 (`download Django 5.2.7
  <https://www.djangoproject.com/download/5.2.7/tarball/>`_ |
  `5.2.7 checksums
  <https://www.djangoproject.com/download/5.2.7/checksum/>`_)
* Django 5.1.13 (`download Django 5.1.13
  <https://www.djangoproject.com/download/5.1.13/tarball/>`_ |
  `5.1.13 checksums
  <https://www.djangoproject.com/download/5.1.13/checksum/>`_)
* Django 4.2.25 (`download Django 4.2.25
  <https://www.djangoproject.com/download/4.2.25/tarball/>`_ |
  `4.2.25 checksums
  <https://www.djangoproject.com/download/4.2.25/checksum/>`_)

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

* Machine-readable CVE data for CVE-2025-59681:
{
  "affected": [
    {
      "collectionURL": "https://github.com/django/django/",
      "defaultStatus": "affected",
      "packageName": "django",
      "versions": [
        {
          "lessThan": "5.2.7",
          "status": "affected",
          "version": "5.2.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.2.*",
          "status": "unaffected",
          "version": "5.2.7",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.13",
          "status": "affected",
          "version": "5.1.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.*",
          "status": "unaffected",
          "version": "5.1.13",
          "versionType": "semver"
        },
        {
          "lessThan": "4.2.25",
          "status": "affected",
          "version": "4.2.0",
          "versionType": "semver"
        },
        {
          "lessThan": "4.2.*",
          "status": "unaffected",
          "version": "4.2.25",
          "versionType": "semver"
        }
      ]
    }
  ],
  "credits": [
    {
      "lang": "en",
      "type": "reporter",
      "value": "Django would like to thank sw0rd1ight for reporting this
issue."
    }
  ],
  "datePublic": "10/01/2025",
  "descriptions": [
    {
      "lang": "en",
      "value": "QuerySet.annotate(), QuerySet.alias(),
QuerySet.aggregate(), and QuerySet.extra() methods are subject to SQL
injection in column aliases, using a suitably crafted dictionary, with
dictionary expansion, as the **kwargs passed to these methods on MySQL and
MariaDB."
    }
  ],
  "metrics": [
    {
      "other": {
        "content": {
          "namespace": "
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
",
          "value": "high"
        },
        "type": "Django severity rating"
      }
    }
  ],
  "references": [
    {
      "name": "Django security releases issued: 5.2.7, 5.1.13, and 4.2.25",
      "tags": [
        "vendor-advisory"
      ],
      "url": "
https://www.djangoproject.com/weblog/2025/oct/01/security-releases/"
    }
  ],
  "timeline": [
    {
      "lang": "en",
      "time": "2025-10-01T14:00:00+00:00",
      "value": "Made public."
    }
  ],
  "title": "Potential SQL injection in QuerySet.annotate(), alias(),
aggregate(), and extra() on MySQL and MariaDB"
}

* Machine-readable CVE data for CVE-2025-59682:
{
  "affected": [
    {
      "collectionURL": "https://github.com/django/django/",
      "defaultStatus": "affected",
      "packageName": "django",
      "versions": [
        {
          "lessThan": "5.2.7",
          "status": "affected",
          "version": "5.2.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.2.*",
          "status": "unaffected",
          "version": "5.2.7",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.13",
          "status": "affected",
          "version": "5.1.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.*",
          "status": "unaffected",
          "version": "5.1.13",
          "versionType": "semver"
        },
        {
          "lessThan": "4.2.25",
          "status": "affected",
          "version": "4.2.0",
          "versionType": "semver"
        },
        {
          "lessThan": "4.2.*",
          "status": "unaffected",
          "version": "4.2.25",
          "versionType": "semver"
        }
      ]
    }
  ],
  "credits": [
    {
      "lang": "en",
      "type": "reporter",
      "value": "Django would like to thank stackered for reporting this
issue."
    }
  ],
  "datePublic": "10/01/2025",
  "descriptions": [
    {
      "lang": "en",
      "value": "The django.utils.archive.extract() function, used by
\"startapp --template\" and \"startproject --template\", allows partial
directory-traversal via an archive with file paths sharing a common prefix
with the target directory."
    }
  ],
  "metrics": [
    {
      "other": {
        "content": {
          "namespace": "
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
",
          "value": "low"
        },
        "type": "Django severity rating"
      }
    }
  ],
  "references": [
    {
      "name": "Django security releases issued: 5.2.7, 5.1.13, and 4.2.25",
      "tags": [
        "vendor-advisory"
      ],
      "url": "
https://www.djangoproject.com/weblog/2025/oct/01/security-releases/"
    }
  ],
  "timeline": [
    {
      "lang": "en",
      "time": "2025-10-01T14:00:00+00:00",
      "value": "Made public."
    }
  ],
  "title": "Potential partial directory-traversal via archive.extract()"
}

--000000000000478b2a06401a0059
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">* Announce link: <a href=3D"https://www.djangoproject.com/=
weblog/2025/oct/01/security-releases/">https://www.djangoproject.com/weblog=
/2025/oct/01/security-releases/</a><br><br>* Announce content:<div>In accor=
dance with `our security release policy<br>&lt;<a href=3D"https://docs.djan=
goproject.com/en/dev/internals/security/">https://docs.djangoproject.com/en=
/dev/internals/security/</a>&gt;`_, the Django team<br>is issuing releases =
for<br>`Django 5.2.7 &lt;<a href=3D"https://docs.djangoproject.com/en/dev/r=
eleases/5.2.7/">https://docs.djangoproject.com/en/dev/releases/5.2.7/</a>&g=
t;`_,<br>`Django 5.1.13 &lt;<a href=3D"https://docs.djangoproject.com/en/de=
v/releases/5.1.13/">https://docs.djangoproject.com/en/dev/releases/5.1.13/<=
/a>&gt;`_, and<br>`Django 4.2.25 &lt;<a href=3D"https://docs.djangoproject.=
com/en/dev/releases/4.2.25/">https://docs.djangoproject.com/en/dev/releases=
/4.2.25/</a>&gt;`_.<br>These releases address the security issues detailed =
below. We encourage all<br>users of Django to upgrade as soon as possible.<=
br><br>CVE-2025-59681: Potential SQL injection in ``QuerySet.annotate()``, =
``alias()``, ``aggregate()``, and ``extra()`` on MySQL and MariaDB<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br><br>``QuerySet.annotate()``, ``QuerySet.alias()=
``, ``QuerySet.aggregate()``, and ``QuerySet.extra()`` methods were subject=
 to SQL injection in column aliases, using a suitably crafted dictionary, w=
ith dictionary expansion, as the ``**kwargs`` passed to these methods on My=
SQL and MariaDB.<br><br>Thanks to sw0rd1ight for the report.<br><br>This is=
sue has severity &quot;high&quot; according to the Django security policy.<=
br><br>CVE-2025-59682: Potential partial directory-traversal via ``archive.=
extract()``<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br>The ``django.utils.archive.extract()`` f=
unction, used by ``startapp --template`` and ``startproject --template``, a=
llowed partial directory-traversal via an archive with file paths sharing a=
 common prefix with the target directory.<br><br>Thanks to stackered for th=
e report.<br><br>This issue has severity &quot;low&quot; according to the D=
jango security policy.<br><br><br>Affected supported versions<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
><br>* Django main<br>* Django 6.0 (currently at alpha status)<br>* Django =
5.2<br>* Django 5.1<br>* Django 4.2<br><br>Resolution<br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br><br>Patches to resolve the issue have been applied to Djang=
o&#39;s<br>main, 6.0 (currently at alpha status), 5.2, 5.1, and 4.2 branche=
s.<br>The patches may be obtained from the following changesets.<br><br>CVE=
-2025-59681: Potential SQL injection in QuerySet.annotate(), alias(), aggre=
gate(), and extra() on MySQL and MariaDB<br>-------------------------------=
---------------------------------------------------------------------------=
------------<br><br>* On the `main branch &lt;<a href=3D"https://github.com=
/django/django/commit/41b43c74bda19753c757036673ea9db74acf494a">https://git=
hub.com/django/django/commit/41b43c74bda19753c757036673ea9db74acf494a</a>&g=
t;`__<br>* On the `6.0 branch &lt;<a href=3D"https://github.com/django/djan=
go/commit/4ceaaee7e04b416fc465e838a6ef43ca0ccffafe">https://github.com/djan=
go/django/commit/4ceaaee7e04b416fc465e838a6ef43ca0ccffafe</a>&gt;`__<br>* O=
n the `5.2 branch &lt;<a href=3D"https://github.com/django/django/commit/52=
fbae0a4dbbe5faa59827f8f05694a0065cc135">https://github.com/django/django/co=
mmit/52fbae0a4dbbe5faa59827f8f05694a0065cc135</a>&gt;`__<br>* On the `5.1 b=
ranch &lt;<a href=3D"https://github.com/django/django/commit/01d2d770e22bff=
e53c7f1e611e2bbca94cb8a2e7">https://github.com/django/django/commit/01d2d77=
0e22bffe53c7f1e611e2bbca94cb8a2e7</a>&gt;`__<br>* On the `4.2 branch &lt;<a=
 href=3D"https://github.com/django/django/commit/38d9ef8c7b5cb6ef51b933e51a=
20e0e0063f33d5">https://github.com/django/django/commit/38d9ef8c7b5cb6ef51b=
933e51a20e0e0063f33d5</a>&gt;`__<br><br>CVE-2025-59682: Potential partial d=
irectory-traversal via archive.extract()<br>-------------------------------=
--------------------------------------------<br><br>* On the `main branch &=
lt;<a href=3D"https://github.com/django/django/commit/924a0c092e65fa2d0953f=
d1855d2dc8786d94de2">https://github.com/django/django/commit/924a0c092e65fa=
2d0953fd1855d2dc8786d94de2</a>&gt;`__<br>* On the `6.0 branch &lt;<a href=
=3D"https://github.com/django/django/commit/af067f56c1dd467df4abd0ddd409a70=
0da1f03ba">https://github.com/django/django/commit/af067f56c1dd467df4abd0dd=
d409a700da1f03ba</a>&gt;`__<br>* On the `5.2 branch &lt;<a href=3D"https://=
github.com/django/django/commit/ed8fc39d77465eddbde1191a054ae965f6a8a584">h=
ttps://github.com/django/django/commit/ed8fc39d77465eddbde1191a054ae965f6a8=
a584</a>&gt;`__<br>* On the `5.1 branch &lt;<a href=3D"https://github.com/d=
jango/django/commit/74fa85c688a87224637155902bcd738bb9e65e11">https://githu=
b.com/django/django/commit/74fa85c688a87224637155902bcd738bb9e65e11</a>&gt;=
`__<br>* On the `4.2 branch &lt;<a href=3D"https://github.com/django/django=
/commit/9504bbaa392c9fe37eee9291f5b4c29eb6037619">https://github.com/django=
/django/commit/9504bbaa392c9fe37eee9291f5b4c29eb6037619</a>&gt;`__<br><br><=
br>The following releases have been issued<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br><br>* Django 5.2.7 (`download Django 5.2.7<br>=C2=A0 &lt=
;<a href=3D"https://www.djangoproject.com/download/5.2.7/tarball/">https://=
www.djangoproject.com/download/5.2.7/tarball/</a>&gt;`_ |<br>=C2=A0 `5.2.7 =
checksums<br>=C2=A0 &lt;<a href=3D"https://www.djangoproject.com/download/5=
.2.7/checksum/">https://www.djangoproject.com/download/5.2.7/checksum/</a>&=
gt;`_)<br>* Django 5.1.13 (`download Django 5.1.13<br>=C2=A0 &lt;<a href=3D=
"https://www.djangoproject.com/download/5.1.13/tarball/">https://www.django=
project.com/download/5.1.13/tarball/</a>&gt;`_ |<br>=C2=A0 `5.1.13 checksum=
s<br>=C2=A0 &lt;<a href=3D"https://www.djangoproject.com/download/5.1.13/ch=
ecksum/">https://www.djangoproject.com/download/5.1.13/checksum/</a>&gt;`_)=
<br>* Django 4.2.25 (`download Django 4.2.25<br>=C2=A0 &lt;<a href=3D"https=
://www.djangoproject.com/download/4.2.25/tarball/">https://www.djangoprojec=
t.com/download/4.2.25/tarball/</a>&gt;`_ |<br>=C2=A0 `4.2.25 checksums<br>=
=C2=A0 &lt;<a href=3D"https://www.djangoproject.com/download/4.2.25/checksu=
m/">https://www.djangoproject.com/download/4.2.25/checksum/</a>&gt;`_)<br><=
br>The PGP key ID used for this release is Jacob Walls: `131403F4D16D8DC7 &=
lt;<a href=3D"https://github.com/jacobtylerwalls.gpg">https://github.com/ja=
cobtylerwalls.gpg</a>&gt;`_<br><br><br>General notes regarding security rep=
orting<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br>As a=
lways, we ask that potential security issues be reported via private email<=
br>to ``<a href=3D"mailto:security@djangoproject.com">security@djangoprojec=
t.com</a>``, and not via Django&#39;s Trac instance, nor via<br>the Django =
Forum. Please see `our security policies<br>&lt;<a href=3D"https://www.djan=
goproject.com/security/">https://www.djangoproject.com/security/</a>&gt;`_ =
for further information.<br><br>* Machine-readable CVE data for CVE-2025-59=
681:<br>{<br>=C2=A0 &quot;affected&quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =
=C2=A0 =C2=A0 &quot;collectionURL&quot;: &quot;<a href=3D"https://github.co=
m/django/django/">https://github.com/django/django/</a>&quot;,<br>=C2=A0 =
=C2=A0 =C2=A0 &quot;defaultStatus&quot;: &quot;affected&quot;,<br>=C2=A0 =
=C2=A0 =C2=A0 &quot;packageName&quot;: &quot;django&quot;,<br>=C2=A0 =C2=A0=
 =C2=A0 &quot;versions&quot;: [<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &quot;5.2.7&quot;,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: &quot;affected&quot;,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&quot;: &quot;5.2.0&quot;=
,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versionType&quot;: &quot;semv=
er&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &quot;5.2.*&qu=
ot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: &quot;unaffe=
cted&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&quot;: &quo=
t;5.2.7&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versionType&quot=
;: &quot;semver&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;:=
 &quot;5.1.13&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quo=
t;: &quot;affected&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versi=
on&quot;: &quot;5.1.0&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;ve=
rsionType&quot;: &quot;semver&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;l=
essThan&quot;: &quot;5.1.*&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &qu=
ot;status&quot;: &quot;unaffected&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &quot;version&quot;: &quot;5.1.13&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 &quot;versionType&quot;: &quot;semver&quot;<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;lessThan&quot;: &quot;4.2.25&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 &quot;status&quot;: &quot;affected&quot;,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &quot;version&quot;: &quot;4.2.0&quot;,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versionType&quot;: &quot;semver&quot;<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &quot;4.2.*&quot;,<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: &quot;unaffected&quot;,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&quot;: &quot;4.2.25&quot;=
,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versionType&quot;: &quot;semv=
er&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =C2=A0 ]<br>=C2=
=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;credits&quot;: [<br>=C2=A0 =C2=A0=
 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;lang&quot;: &quot;en&quot;,<br>=C2=A0 =C2=
=A0 =C2=A0 &quot;type&quot;: &quot;reporter&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =
&quot;value&quot;: &quot;Django would like to thank sw0rd1ight for reportin=
g this issue.&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;datePub=
lic&quot;: &quot;10/01/2025&quot;,<br>=C2=A0 &quot;descriptions&quot;: [<br=
>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;lang&quot;: &quot;en&quot;,<=
br>=C2=A0 =C2=A0 =C2=A0 &quot;value&quot;: &quot;QuerySet.annotate(), Query=
Set.alias(), QuerySet.aggregate(), and QuerySet.extra() methods are subject=
 to SQL injection in column aliases, using a suitably crafted dictionary, w=
ith dictionary expansion, as the **kwargs passed to these methods on MySQL =
and MariaDB.&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;metrics&=
quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;other&quot;: {<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;content&quot;: {<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 &quot;namespace&quot;: &quot;<a href=3D"https://docs.djangop=
roject.com/en/dev/internals/security/#security-issue-severity-levels">https=
://docs.djangoproject.com/en/dev/internals/security/#security-issue-severit=
y-levels</a>&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;value&quot;=
: &quot;high&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;type&quot;: &quot;Django severity rating&quot;<br>=C2=A0 =
=C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;references&=
quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;name&quot;: &quot=
;Django security releases issued: 5.2.7, 5.1.13, and 4.2.25&quot;,<br>=C2=
=A0 =C2=A0 =C2=A0 &quot;tags&quot;: [<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
vendor-advisory&quot;<br>=C2=A0 =C2=A0 =C2=A0 ],<br>=C2=A0 =C2=A0 =C2=A0 &q=
uot;url&quot;: &quot;<a href=3D"https://www.djangoproject.com/weblog/2025/o=
ct/01/security-releases/">https://www.djangoproject.com/weblog/2025/oct/01/=
security-releases/</a>&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quo=
t;timeline&quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;lang&q=
uot;: &quot;en&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;time&quot;: &quot;2025-=
10-01T14:00:00+00:00&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;value&quot;: &quo=
t;Made public.&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;title&=
quot;: &quot;Potential SQL injection in QuerySet.annotate(), alias(), aggre=
gate(), and extra() on MySQL and MariaDB&quot;<br>}<br><br>* Machine-readab=
le CVE data for CVE-2025-59682:<br>{<br>=C2=A0 &quot;affected&quot;: [<br>=
=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;collectionURL&quot;: &quot;<a=
 href=3D"https://github.com/django/django/">https://github.com/django/djang=
o/</a>&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;defaultStatus&quot;: &quot;affe=
cted&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;packageName&quot;: &quot;django&q=
uot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;versions&quot;: [<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &q=
uot;5.2.7&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: =
&quot;affected&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&q=
uot;: &quot;5.2.0&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versio=
nType&quot;: &quot;semver&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessTha=
n&quot;: &quot;5.2.*&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;sta=
tus&quot;: &quot;unaffected&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &q=
uot;version&quot;: &quot;5.2.7&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;versionType&quot;: &quot;semver&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
&quot;lessThan&quot;: &quot;5.1.13&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;status&quot;: &quot;affected&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 &quot;version&quot;: &quot;5.1.0&quot;,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;versionType&quot;: &quot;semver&quot;<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &quot;5.1.*&quot;,<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: &quot;unaffected&quot;,<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&quot;: &quot;5.1.13&quot;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versionType&quot;: &quot;semver&qu=
ot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &quot;4.2.25&quot;=
,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: &quot;affected&=
quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&quot;: &quot;4.2=
.0&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versionType&quot;: &q=
uot;semver&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &quot;=
4.2.*&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: &quo=
t;unaffected&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&quo=
t;: &quot;4.2.25&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version=
Type&quot;: &quot;semver&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =
=C2=A0 =C2=A0 ]<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;credits&quo=
t;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;lang&quot;: &quot;en=
&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;type&quot;: &quot;reporter&quot;,<br>=
=C2=A0 =C2=A0 =C2=A0 &quot;value&quot;: &quot;Django would like to thank st=
ackered for reporting this issue.&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=
=C2=A0 &quot;datePublic&quot;: &quot;10/01/2025&quot;,<br>=C2=A0 &quot;desc=
riptions&quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;lang&quo=
t;: &quot;en&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;value&quot;: &quot;The dj=
ango.utils.archive.extract() function, used by \&quot;startapp --template\&=
quot; and \&quot;startproject --template\&quot;, allows partial directory-t=
raversal via an archive with file paths sharing a common prefix with the ta=
rget directory.&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;metri=
cs&quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;other&quot;: {=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;content&quot;: {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;namespace&quot;: &quot;<a href=3D"https://docs.djan=
goproject.com/en/dev/internals/security/#security-issue-severity-levels">ht=
tps://docs.djangoproject.com/en/dev/internals/security/#security-issue-seve=
rity-levels</a>&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;value&qu=
ot;: &quot;low&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;type&quot;: &quot;Django severity rating&quot;<br>=C2=A0 =
=C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;references&=
quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;name&quot;: &quot=
;Django security releases issued: 5.2.7, 5.1.13, and 4.2.25&quot;,<br>=C2=
=A0 =C2=A0 =C2=A0 &quot;tags&quot;: [<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
vendor-advisory&quot;<br>=C2=A0 =C2=A0 =C2=A0 ],<br>=C2=A0 =C2=A0 =C2=A0 &q=
uot;url&quot;: &quot;<a href=3D"https://www.djangoproject.com/weblog/2025/o=
ct/01/security-releases/">https://www.djangoproject.com/weblog/2025/oct/01/=
security-releases/</a>&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quo=
t;timeline&quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;lang&q=
uot;: &quot;en&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;time&quot;: &quot;2025-=
10-01T14:00:00+00:00&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;value&quot;: &quo=
t;Made public.&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;title&=
quot;: &quot;Potential partial directory-traversal via archive.extract()&qu=
ot;<br>}</div></div>

--000000000000478b2a06401a0059--
