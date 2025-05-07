Received: (qmail 25988 invoked by uid 550); 7 May 2025 15:04:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25818 invoked from network); 7 May 2025 14:49:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1746629343; x=1747234143; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OjRvKlFVf8jh83C5QB5OWPNptvt17BMU/ASPsy9yll8=;
        b=cZBxlbux7sZM+KrjflUezS5BMH1Vj7d+VRWDlVTSJTJAGFhfY9IfV4l0GopMxAZj8j
         6vydB+ZD1dNDaRbLyfZtCb/yq7010ykik72bEvTl0QjsNHZVtQtY/bqjnbZvY/jR2oRu
         TY/9U39oso5wYn7Q9o9ly5BfJt0glwyYUtjROLalUyOHJgcr5Oe7qIu+H/u3JVSO9doi
         OrVclG2fxKFcxb4Iue3TuKB/K9F3Yt/OlT9a03ycAcbD5AWBVvFDqDokLLbhqnmQn3oM
         L2x9oCUP8+BsOU8wtgHuNwWsYuntyBY8gZDH4VyQI16MqqrHOFIKrQ20ADmE6pOepfMk
         J/sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746629343; x=1747234143;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OjRvKlFVf8jh83C5QB5OWPNptvt17BMU/ASPsy9yll8=;
        b=FXswDF/jWNzlK6CJe0PWUQrfD1TYzpZtnT0sVEon8O9i4xRBJMLex0XKCMOia8hjM+
         63CcUjz0FrDyfF1ZGSDIjlW+wo+K6okWem5vm+hzYiRZ9RK2FiZgkRD0T0YunvG7GTQz
         JfiXZh+LbyLSz21TMY+PTRwFUUVO5u8MMYGhZk3gt6sJGnOAh0NKS7QQ99okSRigiEHr
         6Ir9ZsFDTy8hC8V/JdG2iOTd5WehF4o9mWdkD0Hu54rT2KzCvo4ByWadW5Nn/CX5Cq99
         ZNC0EILbpjescSwGCOUri6dXxLa/vmm3c7fUkh7tM051KyJ+xgcYc+DXrNk7wok6NN/J
         6usg==
X-Gm-Message-State: AOJu0YyLvaTsW2jrBv/GRs0bgIiTJBQjMKHkICCgUIBRyhzkMznQ0daU
	4nVcoJfGX2KHzFO5j0TG6NJl+pf3R9ozm1nYU6ROdu9NHmepH/ga7iaJyaoqYgvPPe53hBXYW3w
	A/6meSESxSrqJ794W0fj6hiikLC/l1Et0OCts7ftFKvpajkSVEUo=
X-Gm-Gg: ASbGncuFvhNmLBv2OrzzOHpgzGPRQoY7XUYpYnOFF9YHbhSzj2aBRfmMJEqapcc1o5E
	gvbjh4D/SPPMf5Vg/gYadrKq27Ak6Wt8b6c/YTYw8z6sSE8qeIHnUba3fzg5+fShab6E0mkaKBy
	ukhDtGs6zC8bg9rL2Z2fU=
X-Google-Smtp-Source: AGHT+IG0koCUqmYxK3nPzHr+/u7xNsaPkEZ9CDXE6QmY9Ycp5WdA5jZZ1K/o6f+PPmKfLg4dReFo+FNWYuJmIGeMXOI=
X-Received: by 2002:a05:6512:401e:b0:54f:bdfe:ece5 with SMTP id
 2adb3069b0e04-54fbdfeeeaamr11415e87.14.1746629342366; Wed, 07 May 2025
 07:49:02 -0700 (PDT)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@djangoproject.com>
Date: Wed, 7 May 2025 11:48:45 -0300
X-Gm-Features: ATxdqUFNCiIb_eCVzEAV1VVxkiLdldhOj0leMDbyfrHHUABmNX6NP7RfAkW2FIg
Message-ID: <CAJVoTUvXRrX8=Y-MhwgVELfGwtmbVZgMSqNqk1-u6j-r+Od1aQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="00000000000081a1d206348cd59b"
Subject: [oss-security] CVE-2025-32873: Django: Denial-of-service possibility in strip_tags()

--00000000000081a1d206348cd59b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

* Announce link:
https://www.djangoproject.com/weblog/2025/may/07/security-releases/

* Announce content:
In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.2.1 <https://docs.djangoproject.com/en/dev/releases/5.2.1/>`_,
`Django 5.1.9 <https://docs.djangoproject.com/en/dev/releases/5.1.9/>`_ and
`Django 4.2.21 <https://docs.djangoproject.com/en/dev/releases/4.2.21/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2025-32873: Denial-of-service possibility in ``strip_tags()``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

``django.utils.html.strip_tags()`` would be slow to evaluate certain inputs
containing large sequences of incomplete HTML tags. This function is used to
implement the ``striptags`` template filter, which was thus also vulnerable.
``django.utils.html.strip_tags()`` now raises a ``SuspiciousOperation``
exception if it encounters an unusually large number of unclosed opening
tags.

Thanks to Elias Myllym=C3=A4ki for the report.

This issue has severity "moderate" according to the Django security policy.

Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django main
* Django 5.2
* Django 5.1
* Django 4.2

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to Django's
main, 5.2, 5.1, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2025-32873: Denial-of-service possibility in ``strip_tags()``
-----------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/9f3419b519799d69f2aba70b9d25abe2e70=
d03e0
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/c9731dc656e533187b021b4d81f8293d6c9=
43a43
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/0b42f6a528df966729b24ecaaed67f85e5e=
dc3dc
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/9cd8028f3e38dca8e51c1388f474eecbe7d=
6ca3c
>`__

The following releases have been issued
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* Django 5.2.1 (`download Django 5.2.1
  <https://www.djangoproject.com/m/releases/5.2/Django-5.2.1.tar.gz>`_ |
  `5.2.1 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.2.1.checksum.txt>`_)
* Django 5.1.9 (`download Django 5.1.9
  <https://www.djangoproject.com/m/releases/5.1/Django-5.1.9.tar.gz>`_ |
  `5.1.9 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.1.9.checksum.txt>`_)
* Django 4.2.21 (`download Django 4.2.21
  <https://www.djangoproject.com/m/releases/4.2/Django-4.2.21.tar.gz>`_ |
  `4.2.21 checksums
  <https://www.djangoproject.com/m/pgp/Django-4.2.21.checksum.txt>`_)

The PGP key ID used for this release is Natalia Bidart: `2EE82A8D9470983E <
https://github.com/nessita.gpg>`_

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum. Please see `our security policies
<https://www.djangoproject.com/security/>`_ for further information.

* Machine-readable CVE data for CVE-2025-32873:
{
  "affected": [
    {
      "collectionURL": "https://github.com/django/django/",
      "defaultStatus": "affected",
      "packageName": "django",
      "versions": [
        {
          "lessThan": "5.2.1",
          "status": "affected",
          "version": "5.2.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.2.*",
          "status": "unaffected",
          "version": "5.2.1",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.9",
          "status": "affected",
          "version": "5.1.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.*",
          "status": "unaffected",
          "version": "5.1.9",
          "versionType": "semver"
        },
        {
          "lessThan": "4.2.21",
          "status": "affected",
          "version": "4.2.0",
          "versionType": "semver"
        },
        {
          "lessThan": "4.2.*",
          "status": "unaffected",
          "version": "4.2.21",
          "versionType": "semver"
        }
      ]
    }
  ],
  "credits": [
    {
      "lang": "en",
      "type": "reporter",
      "value": "Django would like to thank Elias Myllym\u00e4ki for
reporting this issue."
    }
  ],
  "datePublic": "05/07/2025",
  "descriptions": [
    {
      "lang": "en",
      "value": "The `strip_tags()` function in Django is vulnerable to a
potential denial-of-service (DoS) vector when processing inputs containing
large sequences of unclosed HTML entities. When passed such input,
`strip_tags()` has poor performance, potentially leading to service
degradation or unresponsiveness. The template filter `striptags` is also
vulnerable, since it is built on top of `strip_tags()`."
    }
  ],
  "metrics": [
    {
      "other": {
        "content": {
          "namespace": "
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-se=
verity-levels
",
          "value": "moderate"
        },
        "type": "Django severity rating"
      }
    }
  ],
  "references": [
    {
      "name": "Django security releases issued: 5.2.1, 5.1.9 and 4.2.21",
      "tags": [
        "vendor-advisory"
      ],
      "url": "
https://www.djangoproject.com/weblog/2025/may/07/security-releases/"
    }
  ],
  "timeline": [
    {
      "lang": "en",
      "time": "2025-05-07T14:00:00+00:00",
      "value": "Made public."
    }
  ],
  "title": "Denial-of-service possibility in strip_tags()"
}

--00000000000081a1d206348cd59b--
