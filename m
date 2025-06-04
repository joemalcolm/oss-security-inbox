Received: (qmail 5558 invoked by uid 550); 4 Jun 2025 16:26:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30197 invoked from network); 4 Jun 2025 14:15:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1749046547; x=1749651347; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7vNTRFoyhVh5NejBxpQuPSDihgIXd01laxuF1vqXttE=;
        b=WE8bvhKDTUUaZs64l6xBfhVmOdzzWKgCp2RXL4Tu5H5keu5Nl1tO43jJR+QAcbVhlA
         YjdvOcIRcjJdRN8lfyN01H6dYKNrPjKvYjXR3DdTe8fAJOeTa/qIHMDNZE/wKpPMHRYR
         a0VJki6TeE3Y+cX88AhTTgu+elPUHkTZ+H3ToStB9nXSDkCePQyIx7EjCvoEgMPjG/Lt
         dUTc4LjPsd+tHlDW344wKuJGi9Os+67g2dutjHn4bUB/tYzsvNYe9wlNfuF/wylOCis5
         s28hGOTyL0Ve6dkorHQqB8gXYJtfr+1wLIBLWPsroG6wFwcdr8+yCne4Qgo4pIdcVM0W
         wj4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749046548; x=1749651348;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7vNTRFoyhVh5NejBxpQuPSDihgIXd01laxuF1vqXttE=;
        b=iAzSY8ZtToGNWe7WM+vYlzsf74JP4hfkl0QziwIJdSVc8rd/MW8w1CcXhzXdkZb9OD
         DkVdcl0+fXsdblEcXzeNuzJlaBqMMKMjHN0R3hjfmMTgG11gIfhBGH7a9CJgmxawqwaK
         Oat9cJO+URWn1WuYC3OT2K2F8bG8opjYsXxmf3RdUyCjcg07USWYRC7ncE+ogdu2ar/q
         AWdFjkun+jP5XfNYoSoylnYJT89wI4iFBAzHiuaAuhotfRpLMv6cwE+UZXmEnbP4naOs
         iWBkOib7ixYNocwjSMqEZzufalsE1tASR2W3QC9ZQ0i8rk/n5H6q3G43SVocN8Bj1yin
         3kMQ==
X-Gm-Message-State: AOJu0YxyNUjBji3nNXGRZNvwt0ui2socgFkzGb9FxrXDIFFAwfe7TjOZ
	QKrbFB97AJz/yONfm3SYGySTvlgghC/6Pt2NDuTl64E2NAMXtWjFuDbkJ4FvtYBeKpR0Ud0yrzu
	2aqOnrE11BSFD5Pa6xQHegI+fSZ6ESavMfJgriC1uAdV3jDDG2uqUa/w=
X-Gm-Gg: ASbGncu6nArYD+wJJn+J2M0DEOJNAvZjD4OOZnR1KimGBjjniTGxBJXuxMVEiiBlvls
	KCbJiwYdGw00S4DdGB31oWP1/qKwV2GyrH+7hATp3WoKpOO5ikTGOIbtxYvocSiB/OCE6OSEE1y
	fzXuhEpAiQ7lFrLmvmqsxGxfdgWrnO+4SZTw==
X-Google-Smtp-Source: AGHT+IGicnrB73STCGUcRBHoFDJjGSJuyRk2kPsMrb4/yEXnl4G05tWzbVKttDUqws/xk37Rcn01KXECY328QuDc7cw=
X-Received: by 2002:a05:6512:ace:b0:553:27cb:a0f with SMTP id
 2adb3069b0e04-55356df2d2amr867008e87.57.1749046547274; Wed, 04 Jun 2025
 07:15:47 -0700 (PDT)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@djangoproject.com>
Date: Wed, 4 Jun 2025 11:15:31 -0300
X-Gm-Features: AX0GCFujTM43mZDLWzJseHZXMN4dB5deMoKDIs-7dQ-ziPLnGziJNkRj8ctWawI
Message-ID: <CAJVoTUuPqc9C=onmpcRr9B_jacywyW3_B+y6C7XOwi4qu0AH7w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="0000000000002571d20636bfa2bf"
Subject: [oss-security] CVE-2025-48432: Django: Potential log injection via unescaped request path

--0000000000002571d20636bfa2bf
Content-Type: text/plain; charset="UTF-8"

* Announce link:
https://www.djangoproject.com/weblog/2025/jun/04/security-releases/

* Announce content: In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.2.2 <https://docs.djangoproject.com/en/dev/releases/5.2.2/>`_,
`Django 5.1.10 <https://docs.djangoproject.com/en/dev/releases/5.1.10/>`_,
and
`Django 4.2.22 <https://docs.djangoproject.com/en/dev/releases/4.2.22/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2025-48432: Potential log injection via unescaped request path
==================================================================

Internal HTTP response logging used ``request.path`` directly, allowing
control
characters (e.g. newlines or ANSI escape sequences) to be written unescaped
into logs. This could enable log injection or forgery, letting attackers
manipulate log appearance or structure, especially in logs processed by
external systems or viewed in terminals.

Although this does not directly impact Django's security model, it poses
risks
when logs are consumed or interpreted by other tools. To fix this, the
internal
``django.utils.log.log_response()`` function now escapes all positional
formatting arguments using a safe encoding.

Thanks to Seokchan Yoon (https://ch4n3.kr/) for the report.

This issue has severity "moderate" according to the Django security policy.


Affected supported versions
===========================

* Django main
* Django 5.2
* Django 5.1
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 5.2, 5.1, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2025-48432: Potential log injection via unescaped request path
------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/a07ebec5591e233d8bbb38b7d63f35c5479eef0e
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/7456aa23dafa149e65e62f95a6550cdb241d55ad
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/596542ddb46cdabe011322917e1655f0d24eece2
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/ac03c5e7df8680c61cdb0d3bdb8be9095dba841e
>`__


The following releases have been issued
=======================================

* Django 5.2.2 (`download Django 5.2.2
  <https://www.djangoproject.com/download/5.2.2/tarball/>`_ |
  `5.2.2 checksums
  <https://www.djangoproject.com/download/5.2.2/checksum/>`_)
* Django 5.1.10 (`download Django 5.1.10
  <https://www.djangoproject.com/download/5.1.10/tarball/>`_ |
  `5.1.10 checksums
  <https://www.djangoproject.com/download/5.1.10/checksum/>`_)
* Django 4.2.22 (`download Django 4.2.22
  <https://www.djangoproject.com/download/4.2.22/tarball/>`_ |
  `4.2.22 checksums
  <https://www.djangoproject.com/download/4.2.22/checksum/>`_)

The PGP key ID used for this release is Natalia Bidart: `2EE82A8D9470983E <
https://github.com/nessita.gpg>`_


General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum. Please see `our security policies
<https://www.djangoproject.com/security/>`_ for further information.

* Machine-readable CVE data for CVE-2025-48432:


{
  "affected": [
    {
      "collectionURL": "https://github.com/django/django/",
      "defaultStatus": "affected",
      "packageName": "django",
      "versions": [
        {
          "lessThan": "5.2.2",
          "status": "affected",
          "version": "5.2.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.2.*",
          "status": "unaffected",
          "version": "5.2.2",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.10",
          "status": "affected",
          "version": "5.1.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.*",
          "status": "unaffected",
          "version": "5.1.10",
          "versionType": "semver"
        },
        {
          "lessThan": "4.2.22",
          "status": "affected",
          "version": "4.2.0",
          "versionType": "semver"
        },
        {
          "lessThan": "4.2.*",
          "status": "unaffected",
          "version": "4.2.22",
          "versionType": "semver"
        }
      ]
    }
  ],
  "credits": [
    {
      "lang": "en",
      "type": "reporter",
      "value": "Django would like to thank Seokchan Yoon
(https://ch4n3.kr/) for reporting this issue."
    }
  ],
  "datePublic": "06/04/2025",
  "descriptions": [
    {
      "lang": "en",
      "value": "Internal HTTP response logging in Django does not
escape `request.path`, which allows remote attackers to potentially
manipulate log output via crafted URLs. This may lead to log injection
or forgery when logs are viewed in terminals or processed by external
systems."
    }
  ],
  "metrics": [
    {
      "other": {
        "content": {
          "namespace":
"https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels",
          "value": "moderate"
        },
        "type": "Django severity rating"
      }
    }
  ],
  "references": [
    {
      "name": "Django security releases issued: 5.2.2, 5.1.10, and 4.2.22",
      "tags": [
        "vendor-advisory"
      ],
      "url": "https://www.djangoproject.com/weblog/2025/jun/04/security-releases/"
    }
  ],
  "timeline": [
    {
      "lang": "en",
      "time": "2025-06-04T14:00:00+00:00",
      "value": "Made public."
    }
  ],
  "title": "Potential log injection via unescaped request path"
}

--0000000000002571d20636bfa2bf--
