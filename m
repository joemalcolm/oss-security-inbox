Received: (qmail 13847 invoked by uid 550); 6 Feb 2024 15:17:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9380 invoked from network); 6 Feb 2024 15:15:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707232692; x=1707837492; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B+LzQIJaZ/Kw7xuXX/2yVO1Nqvyh2K3Cgw+W2gbG7ww=;
        b=JIRzShfsHAG91BR6x3ebedMov3Ho8tFRPwTtduToCowiN5QYTgoTHRQN272R7UYr42
         zCK0ZmjXqEwfo/wIrVfNJ/b9/L3SjtXvW357ZjXqM99JqThr/7Mw4wI+qGEa5fhzilop
         VhPi0wSio1C/zBOniQYLKD9LDOSaeSA4fRb5RhIkJDD9Mmd1JMYyWkU6DC0zC6HU5eEC
         /Q2a9Sir4KMKb76JgeHvdFBB8/VjYFi2eJHaLBRCRV4uG/evVZtXNWymXLf8i7gx6WNI
         tEhYj71eqIwoETxzi0oDODCOW+j8XvwkDhUM4MRN8vW9glQe6VRz1ngbb2H0+2PB6b6g
         UL+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707232692; x=1707837492;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B+LzQIJaZ/Kw7xuXX/2yVO1Nqvyh2K3Cgw+W2gbG7ww=;
        b=YxrhIA+IxpujNXz5tHu3wu/7p4qqpio0/oCt83zHVoUGBN8g6kj31ZykJhDVfPeL/R
         u9WaYjDqw4RbDkbWGZeR2PJJEOyMryM18UYAtnNrROBbgj816u7iAgOqOFrB0a6yD7/l
         HmVCdFjSm4jcbyiTuLBRkjSqfCXGIcRDh4QGBWihOfIoDN5ioXRpbYgLZgjahXTF8Jhl
         hwoBqDECxvhKcdnae6vtLcNtMuBquMYoVt4BuF0v2+9sexEaegKQDqr04bCXFgM948co
         JK2TPXHzlZ5aQ2+tr2xJe+N0hwqUeAfIh5rKe+hGhHESVvkwzA9aEDwaSCWqphve6mdp
         7TsQ==
X-Gm-Message-State: AOJu0YxL9R79jkJ3YvgcKPT8RIeEOt0W34x7Vx5e/TQSlO1ABYOrZpJ6
	rw944o5wWRAEJBNJGs/5agubL970igwJ2EXF0oG1e/4poLX5imfWHSUs0okM/YfzSXAN9M92IGr
	AdwESUJlYxDsHPVtU37zQlNfEKiyrBm3x9+I=
X-Google-Smtp-Source: AGHT+IENSUGxdbHFDeRpmRY0a33WxWPAkuZgQYu5+Jd2dTZSwWhQJ6m/DaQZZ0pwAsRTvuX4/yFlQMNdlGDr/ni8G/g=
X-Received: by 2002:a17:902:e751:b0:1d9:727d:e84f with SMTP id
 p17-20020a170902e75100b001d9727de84fmr2258456plf.47.1707232692033; Tue, 06
 Feb 2024 07:18:12 -0800 (PST)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@gmail.com>
Date: Tue, 6 Feb 2024 12:18:00 -0300
Message-ID: <CA+fOnFbJq9+DURjyO=wPRnmQhV62eQHgT2TKmXjTS4oikgvHrw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="0000000000002869d60610b8163f"
Subject: [oss-security] Django CVE-2024-24680: Potential denial-of-service in intcomma
 template filter

--0000000000002869d60610b8163f
Content-Type: text/plain; charset="UTF-8"

From: https://www.djangoproject.com/weblog/2024/feb/06/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing
`Django 5.0.2 <https://docs.djangoproject.com/en/dev/releases/5.0.2/>`_,
`Django 4.2.10 <https://docs.djangoproject.com/en/dev/releases/4.2.10/>`_,
and
`Django 3.2.24 <https://docs.djangoproject.com/en/dev/releases/3.2.24/>`_.
These releases address the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2024-24680: Potential denial-of-service in ``intcomma`` template filter
===========================================================================

The ``intcomma`` template filter was subject to a potential
denial-of-service
attack when used with very long strings.

Affected supported versions
===========================

* Django main branch
* Django 5.0
* Django 4.2
* Django 3.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch and
the
5.0, 4.2, and 3.2 stable branches. The patches may be obtained from the
following changesets:

* On the `main branch <
https://github.com/django/django/commit/55519d6cf8998fe4c8f5c8abffc2b10a7c3d14e9
>`__
* On the `5.0 release branch <
https://github.com/django/django/commit/16a8fe18a3b81250f4fa57e3f93f0599dc4895bc
>`__
* On the `4.2 release branch <
https://github.com/django/django/commit/572ea07e84b38ea8de0551f4b4eda685d91d09d2
>`__
* On the `3.2 release branch <
https://github.com/django/django/commit/c1171ffbd570db90ca206c30f8e2b9f691243820
>`__

The following releases have been issued:

* Django 5.0.2 (`download Django 5.0.2 <
https://www.djangoproject.com/m/releases/5.0/Django-5.0.2.tar.gz>`_ |
`5.0.2 checksums <
https://www.djangoproject.com/m/pgp/Django-5.0.2.checksum.txt>`_)
* Django 4.2.10 (`download Django 4.2.10 <
https://www.djangoproject.com/m/releases/4.2/Django-4.2.10.tar.gz>`_ |
`4.2.10 checksums <
https://www.djangoproject.com/m/pgp/Django-4.2.10.checksum.txt>`_)
* Django 3.2.24 (`download Django 3.2.24 <
https://www.djangoproject.com/m/releases/3.2/Django-3.2.24.tar.gz>`_ |
`3.2.24 checksums <
https://www.djangoproject.com/m/pgp/Django-3.2.24.checksum.txt>`_)

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

--0000000000002869d60610b8163f--
