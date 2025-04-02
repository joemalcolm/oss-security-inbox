Received: (qmail 15419 invoked by uid 550); 2 Apr 2025 15:44:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1459 invoked from network); 2 Apr 2025 12:04:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1743595452; x=1744200252; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6rYwVPM4xOsAZYOpwm/3d/mDj+f8mIqidpEMssnN0Go=;
        b=aiSQe32nymH7JVUhdMFeV7YwUVe48H2M9tNVSWGnFI9LHP0AyfzoVQZ6NzP5L7n5Xl
         eKP7bn3cGYh9rVP6pLjA3NnCoKqOLdvgAXOoxn1UpI6ejG3b7GBrms2JeNNCEXamaCfa
         e/rUkkK/77iBGvOC9xfwCfN++ZUdVf09bSOH7Gf9nLBvbl6cyPN20AM06FtAeMCJaAh6
         PbrxnKYT3pYxZ8ec2vL9DYSkJIGmzM4l0b1KRKhtaBbpLvGW+FSMj203df6h+e5v9iXh
         d1Z1BH1XymCOegHuv8j6IfWAURxIXfAFjmjx6wKCDaKkrlY1BkrKT4HbojKNK2JBITAS
         uzqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743595452; x=1744200252;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6rYwVPM4xOsAZYOpwm/3d/mDj+f8mIqidpEMssnN0Go=;
        b=ebxjuTBOgCd5jTbD2I/QxHHJiTW/atKG2vuVCGLvW4mOHMvXzzEvYuxDYxbB/bah7y
         uuP2y2YLTuG58GAdX7qaBkh7aBcrtjBkeaxFVdpsHrcCdivNnBb3SjlWnK1rqlZEIXl/
         mRhyJbelFqtjNKPCGX88wvV61ZaJkqXQ492cVhpZN7JkYKJe1FDYGuQrKJZXw/tYrkVP
         ewVlbWt3G96pu3jeqq0Bqgk9NotQdG8Kl/wDbNktUe9wvmWhKEDmqsWx60NNeUdT8wTE
         XWYGTwZoHz0ZuoW150d2GziDd3emf8v0tNautD0YS14eHRUuQA6qSZrRmHpNSqyEoG4x
         o3mw==
X-Gm-Message-State: AOJu0Yyq7L0dgFMa3gryfoXNWxyz1zqGzjeJcMYkMufTJ/e5Q5RhR1Pa
	3+ejCglzZvAECQvfNBoC5qvieaG6iTax8K/4lqs23FnQFhpMZyLBH0FJ5S+KqPlUcoGIfKqpLKr
	zq5v2xvzbN4W/4wk7O25x8YwXIBWtp9I6YMWcrh+YdwBxMRoZ/cU=
X-Gm-Gg: ASbGnct0R4Hr1QXcCnSzibTHR++ZVN6M13CrQtT3cT3EMhwRScXOF4TDexlgduHwyLz
	u1Fxa1mMz/Dfu+gBY8tuDsO5dSIW1OScuZcgUD+vgKLvr/G880l794Ki4WJd3zA/n5tKxhq8rNp
	FcMlXYnLwLr9uEecUO00g3HcIy6Q==
X-Google-Smtp-Source: AGHT+IFESxsTPaHikVV0vU1AMX6LS7Ga15O+gDOtx3/Sn0xBr9QV7pC76/jJM0Hjt+39IFNSqY6CoTeYKvlx+OFaftM=
X-Received: by 2002:a05:651c:1590:b0:30b:b132:43e5 with SMTP id
 38308e7fff4ca-30de0278988mr71152751fa.19.1743595451901; Wed, 02 Apr 2025
 05:04:11 -0700 (PDT)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@djangoproject.com>
Date: Wed, 2 Apr 2025 09:03:55 -0300
X-Gm-Features: AQ5f1JpIrzmI8OCMOO7_sc_SZ_FAAsYom3yAtpf22SMQDdMb3NQ3g3tGKEt2ZoQ
Message-ID: <CAJVoTUso==OEgrmiTppWhxmG7NuijK3qvmf40A-quA0dNc+e1g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="0000000000008b089d0631ca7384"
Subject: [oss-security] CVE-2025-27556: Django: Potential DoS in LoginView, LogoutView, and set_language() on Windows

--0000000000008b089d0631ca7384
Content-Type: text/plain; charset="UTF-8"

* Announce:
https://www.djangoproject.com/weblog/2025/apr/02/security-releases/

* Content:
In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.1.8 <https://docs.djangoproject.com/en/dev/releases/5.1.8/>`_ and
`Django 5.0.14 <https://docs.djangoproject.com/en/dev/releases/5.0.14/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2025-27556: Potential denial-of-service vulnerability in ``LoginView``,
``LogoutView``, and ``set_language()`` on Windows
=============================================================================================================================

Python's NFKC normalization is slow on Windows. As a consequence,
``django.contrib.auth.views.LoginView``,
``django.contrib.auth.views.LogoutView``,
and ``django.views.i18n.set_language`` were subject to a potential
denial-of-service attack via certain inputs with a very large number of
Unicode
characters.

Thanks to sw0rd1ight for the report.

This issue has severity "moderate" according to the Django security policy.


Affected supported versions
===========================

* Django main
* Django 5.2 (currently at release candidate status)
* Django 5.1
* Django 5.0

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 5.2 (currently at release candidate status), 5.1, and 5.0 branches.
The patches may be obtained from the following changesets.

CVE-2025-27556: Potential denial-of-service vulnerability in ``LoginView``,
``LogoutView``, and ``set_language()`` on Windows
-----------------------------------------------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/39e2297210d9d2938c75fc911d45f0e863dc4821
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/2cb311f7b069723027fb5def4044d1816d7d2afd
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/edc2716d01a6fdd84b173c02031695231bcee1f8
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/8c6871b097b6c49d2a782c0d80d908bcbe2116f1
>`__


The following releases have been issued
=======================================

* Django 5.1.8 (`download Django 5.1.8
  <https://www.djangoproject.com/m/releases/5.1/Django-5.1.8.tar.gz>`_ |
  `5.1.8 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.1.8.checksum.txt>`_)
* Django 5.0.14 (`download Django 5.0.14
  <https://www.djangoproject.com/m/releases/5.0/Django-5.0.14.tar.gz>`_ |
  `5.0.14 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.0.14.checksum.txt>`_)

The PGP key ID used for this release is : `3955B19851EA96EF <
https://github.com/sarahboyce.gpg>`_


General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum. Please see `our security policies
<https://www.djangoproject.com/security/>`_ for further information.

* Machine-readable CVE data  for CVE-2025-27556:
{
  "affected": [
    {
      "collectionURL": "https://github.com/django/django/",
      "defaultStatus": "affected",
      "packageName": "django",
      "versions": [
        {
          "lessThan": "5.1.8",
          "status": "affected",
          "version": "5.1.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.*",
          "status": "unaffected",
          "version": "5.1.8",
          "versionType": "semver"
        },
        {
          "lessThan": "5.0.14",
          "status": "affected",
          "version": "5.0.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.0.*",
          "status": "unaffected",
          "version": "5.0.14",
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
  "datePublic": "2025-04-02T12:00:00+00:00",
  "descriptions": [
    {
      "lang": "en",
      "value": "NFKC normalization in Python is slow on Windows. As a
consequence, django.contrib.auth.views.LoginView,
django.contrib.auth.views.LogoutView, and django.views.i18n.set_language
were subject to a potential  denial-of-service attack via certain inputs
with a very large number of Unicode characters."
    }
  ],
  "metrics": [
    {
      "other": {
        "content": {
          "namespace": "
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
",
          "value": "moderate"
        },
        "type": "Django severity rating"
      }
    }
  ],
  "references": [
    {
      "name": "Django security releases issued: 5.1.8 and 5.0.14",
      "tags": [
        "vendor-advisory"
      ],
      "url": "
https://www.djangoproject.com/weblog/2025/apr/02/security-releases/"
    }
  ],
  "timeline": [
    {
      "lang": "en",
      "time": "2025-04-02T12:00:00+00:00",
      "value": "Made public."
    }
  ],
  "title": "Potential denial-of-service vulnerability in LoginView,
LogoutView, and set_language() on Windows"
}

--0000000000008b089d0631ca7384--
