Received: (qmail 13491 invoked by uid 550); 14 Feb 2023 09:02:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26358 invoked from network); 14 Feb 2023 08:41:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GoFUXX5rUjBiPrVaASpDULg0I70JDlMwFxWIWU26oWE=;
        b=T/fzLnjxxK6jLdoDP8DyNs0t8nnoA2t0vG0g3d2ctSkDEoD8HrEWWKM5uuc0PDpiGV
         UgO6Rj/6a8FrEwrx1MHvSuDHbAI9gVtVfNrjarxepFf0IfLbNkWu+MJgmnTR/6eU639k
         RALsoQ6TiDcmqiUPu7FoS8l1S9hEIhf4rfeWDGKUSlTcLWWKGDR6V7+uq8cHjgfSJDOq
         k5nviR4eggp1r0TbNKa9DP/Mw3gGx+BWCpG0JjOB0+ieYyA06pxcNKN4WiFOEfaQ/Dn/
         f+sWUHnwAE29OFBN4tpmhgeeBgaUZCYQ20eNk2wiy8DWgR1Is94MaeWQqT5zDa6cZVMY
         VNcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GoFUXX5rUjBiPrVaASpDULg0I70JDlMwFxWIWU26oWE=;
        b=IwVd4boQH8w9b+yBr0Uk8XFrpJg5ejVGmRyy8a3RMDwHDcrxZ3elWLzLFru1ysd9ux
         EPiUHR+rzqp4PYnbIAM8crZVHTOGLKzEzFPG8o7fBB8snud7NJH91+mzzLCRwzPzYGCR
         rV2pLK0IEOJ8jZCOa8TvpHFoVxomZXcCwFDSFNOnbch1Utc/TNhKq4EZ60vi+en4WDA0
         x5gKrLlBLYxBMfR6DQoszQmusA1meUlGdqj4Ncxs83FlPIMSf67wum2d937WntK3ejZj
         5mGAdITWaXBqXw1XHmw7RaapMGrrVYlQ66tLle6oeeZBnKLrAjDOk5kkmrSIVGdOJru2
         lQPA==
X-Gm-Message-State: AO0yUKWPKRI3tzhTGPG073099+8gsuc5d5zReDLfpwTSTxWYnnV4O+ey
	HjAuryrXQ0VsQFnffbS3VPSSPsQsNRXdqIopJIdeN6pvo6g=
X-Google-Smtp-Source: AK7set/LviPr/lF1phcFrTRqQREBJ0kLC6za9W9GMPJ2YPetYLOb6S9Hp+jAF6NgzfAZGcr3lML1cUOVnRqttPltu/8=
X-Received: by 2002:ac2:41c8:0:b0:4b5:81f7:e34e with SMTP id
 d8-20020ac241c8000000b004b581f7e34emr75069lfi.178.1676364054437; Tue, 14 Feb
 2023 00:40:54 -0800 (PST)
MIME-Version: 1.0
From: Carlton Gibson <carlton.gibson@gmail.com>
Date: Tue, 14 Feb 2023 09:40:43 +0100
Message-ID: <CAJwKpyQjA_giVHegda7CvLLCgpE3f4QPpTFpKbYqguJ=adZ7zg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000faa3af05f4a4ebd7"
Subject: [oss-security] Django - CVE-2023-24580: Potential denial-of-service vulnerability in
 file uploads

--000000000000faa3af05f4a4ebd7
Content-Type: text/plain; charset="UTF-8"

Django security releases issued: 4.1.7, 4.0.10, and 3.2.18

Details are available on the Django project weblog:
https://www.djangoproject.com/weblog/2023/feb/14/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing
`Django 4.1.7 <https://docs.djangoproject.com/en/dev/releases/4.1.7/>`_,
`Django 4.0.10 <https://docs.djangoproject.com/en/dev/releases/4.0.10/>`_,
and
`Django 3.2.18 <https://docs.djangoproject.com/en/dev/releases/3.2.18/>`_.
These releases addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2023-24580: Potential denial-of-service vulnerability in file uploads
=========================================================================

Passing certain inputs to multipart forms could result in too many open
files
or memory exhaustion, and provided a potential vector for a
denial-of-service
attack.

The number of files parts parsed is now limited via the new
``DATA_UPLOAD_MAX_NUMBER_FILES`` setting.

Thanks to Jakob Ackermann for the report.

This issue has severity "moderate" according to the Django security policy.

Affected supported versions
===========================

* Django main branch
* Django 4.2 (currently at pre-release alpha status)
* Django 4.1
* Django 4.0
* Django 3.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch and
the
4.2, 4.1, 4.0, and 3.2 release branches. The patches may be obtained from
the
following changesets:

* On the `main branch <
https://github.com/django/django/commit/85ac33591c393f1480d4f23b4daff40119cb6410
>`__
* On the `4.2 release branch <
https://github.com/django/django/commit/7ac5ff37b822c14e5b6be99da7f618eb1fe06062
>`__
* On the `4.1 release branch <
https://github.com/django/django/commit/628b33a854a9c68ec8a0c51f382f304a0044ec92
>`__
* On the `4.0 release branch <
https://github.com/django/django/commit/83f1ea83e4553e211c1c5a0dfc197b66d4e50432
>`__
* On the `3.2 release branch <
https://github.com/django/django/commit/a665ed5179f5bbd3db95ce67286d0192eff041d8
>`__

The following releases have been issued:

* Django 4.1.7 (`download Django 4.1.7 <
https://www.djangoproject.com/m/releases/4.1/Django-4.1.7.tar.gz>`_ |
`4.1.7 checksums <
https://www.djangoproject.com/m/pgp/Django-4.1.7.checksum.txt>`_)
* Django 4.0.10 (`download Django 4.0.10 <
https://www.djangoproject.com/m/releases/4.0/Django-4.0.10.tar.gz>`_ |
`4.0.10 checksums <
https://www.djangoproject.com/m/pgp/Django-4.0.10.checksum.txt>`_)
* Django 3.2.18 (`download Django 3.2.18 <
https://www.djangoproject.com/m/releases/3.2/Django-3.2.18.tar.gz>`_ |
`3.2.18 checksums <
https://www.djangoproject.com/m/pgp/Django-3.2.18.checksum.txt>`_)

The PGP key ID used for this release is Carlton Gibson: `E17DF5C82B4F9D00 <
https://github.com/carltongibson.gpg>`_

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

--000000000000faa3af05f4a4ebd7--
