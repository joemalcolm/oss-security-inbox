Received: (qmail 5902 invoked by uid 550); 3 Aug 2022 10:08:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15396 invoked from network); 3 Aug 2022 07:54:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=8CDUlhxC9+BF44to2UJ1TJLOiYixw+x8I9VDp/5iAO0=;
        b=cZf23BGLiBkb2nm5zd225gc61SvPrXwQoGQ6dyw9RODWLV/QqrV1ITbf3xz7VPTOD8
         umIPJrpnq3cGo/Y//SQETrgduWg6Vbs8W2pWjCy7Z2WPcz/WGCtcx4WaLUdB5apt0ya5
         zeHcMtPTBMf+ATCj09NwXB/21ejeUyf7gLjQXRnv9ATY9948Me6Y7+JVYu6Lq6vc/3ox
         Q0KPEDrzKH9gddqO7fzCWhayUEYeHzG7WmvLclLpY6VmI3liZzYd59tyGaKY1rmMVMA+
         dXLCic9ZyxIR5JRJrxPoZWvuvri1A3yExMS6+nTX6SfPhjFrlIGxaAOnhQViY3sXHbvN
         TMAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=8CDUlhxC9+BF44to2UJ1TJLOiYixw+x8I9VDp/5iAO0=;
        b=2Bxqwk5HjqADpe6Z0OfEfo44NVg7eRZE2blfABozOvpGO6IslFyg2L/H5DOdagVRSM
         xran4SFUxutPA9Zh+5ZMwaR8IazyqEe3ZW0EeRrJuRrDFiWUIxgLrAqppHHgmO4GmuBp
         W536e0T7RrI0gqrJNJm/g/uq0pCDdAbu6rvVrq6ImzBqiX/EluVHsZFpn2oN1VCTHwOW
         ZyrxShUJSuAf/bFLwqRWnh7+LdqdjfE1NVVus5HF6j2YEzHO7hIAnSy44Ab+nFj5e2jJ
         OLPhN0JcQ9q2eZmtWsAMemcbmFQpgmRMttBAa61TyK287VrI/DOrxkgo9nkOHiJh5dCQ
         Ai8w==
X-Gm-Message-State: ACgBeo13jFcSTNFHpG8JuqjmR6j5NSUYYPnPJcfCxLmtBkHux1JWRrYY
	lUNeQDRJHH9QXpmo5UtJBKOGztO5TfepujchIQqzWpM8CkU=
X-Google-Smtp-Source: AA6agR5iAx/1f9i6CgZU0oOQSZgBCEqkSjqnL7rU1t+4K9+Zo1XCIkc5zR3oZsixnDXZgI3+eK8VHftNLLFqDmq0oUs=
X-Received: by 2002:aa7:9f02:0:b0:52d:6ae1:d631 with SMTP id
 g2-20020aa79f02000000b0052d6ae1d631mr13960335pfr.41.1659513268198; Wed, 03
 Aug 2022 00:54:28 -0700 (PDT)
MIME-Version: 1.0
From: Carlton Gibson <carlton.gibson@gmail.com>
Date: Wed, 3 Aug 2022 09:54:16 +0200
Message-ID: <CAJwKpyQHAbv6FP-xYbixE2gtgyfHwfeLutYgrNBZY7=+rjktBA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000d9e08a05e5518af3"
Subject: [oss-security] Django: CVE-2022-36359: Potential reflected file download
 vulnerability in FileResponse.

--000000000000d9e08a05e5518af3
Content-Type: text/plain; charset="UTF-8"

See: https://www.djangoproject.com/weblog/2022/aug/03/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing
`Django 4.0.7 <https://docs.djangoproject.com/en/dev/releases/4.0.7/>`_, and
`Django 3.2.15 <https://docs.djangoproject.com/en/dev/releases/3.2.15/>`_.
These releases addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2022-36359: Potential reflected file download vulnerability in
``FileResponse``
===================================================================================

An application may have been vulnerable to a reflected file download (RFD)
attack that sets the Content-Disposition header of a ``FileResponse``
when the ``filename`` was derived from
user-supplied input. The ``filename`` is now escaped to avoid this
possibility.

This issue has high severity, according to the Django security policy.

Thanks to Motoyasu Saburi for the report.

Affected supported versions
===========================

* Django main branch
* Django 4.1 (which will be released in a separate blog post later today)
* Django 4.0
* Django 3.2

Resolution
==========

Patches to resolve the issue have been applied to Django's main branch and
the
4.1, 4.0, and 3.2 release branches. The patches may be obtained from the
following changesets:

* On the `main branch <
https://github.com/django/django/commit/bd062445cffd3f6cc6dcd20d13e2abed818fa173
>`__
* On the `4.1 release branch <
https://github.com/django/django/commit/46916665f9aa729067ef894e994854ecf9223157
>`__
* On the `4.0 release branch <
https://github.com/django/django/commit/b7d9529cbe0af4adabb6ea5d01ed8dcce3668fb3
>`__
* On the `3.2 release branch <
https://github.com/django/django/commit/b3e4494d759202a3b6bf247fd34455bf13be5b80
>`__

The following releases have been issued:

* Django 4.0.7 (`download Django 4.0.7 <
https://www.djangoproject.com/m/releases/4.0/Django-4.0.7.tar.gz>`_ |
`4.0.7 checksums <
https://www.djangoproject.com/m/pgp/Django-4.0.7.checksum.txt>`_)
* Django 3.2.15 (`download Django 3.2.15 <
https://www.djangoproject.com/m/releases/3.2/Django-3.2.15.tar.gz>`_ |
`3.2.15 checksums <
https://www.djangoproject.com/m/pgp/Django-3.2.15.checksum.txt>`_)

The PGP key ID used for this release is Carlton Gibson: `E17DF5C82B4F9D00 <
https://github.com/carltongibson.gpg>`_.

General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

--000000000000d9e08a05e5518af3--
