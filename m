Received: (qmail 7188 invoked by uid 550); 4 Oct 2023 16:14:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27932 invoked from network); 4 Oct 2023 16:03:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696435382; x=1697040182; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zQD2dMNzoP9xkJDgXLB0zqS69VI+Bg1gJpgndgv9o6s=;
        b=k96yyEvuFRpZ+YqGkM4PhCV3/9To5App5OWKc8BFs4mY2XhNQqhEy/sIy39g3jrSpD
         DDmEjR28o8R0G0IMbq7DLTHkNOkmZQ4dURiYHKKINwwOu9uK6Ty6leSaXJFpRniuZ9Rw
         xaaU7nBdBozoDSJsZCW9lad8cDBmIP03LoMgLc6w0smbtgVI0o6H0uVN9Mr25raQI+MZ
         hrJSung3b+l1txlO1i9v8tytyK15erz00uQpiboer7qv4NClllfDNEJ1fNyswQ6o/36e
         rDM5ES+KTip3zD/Fr5ZXbkmNO5Vmlk/QMc83h56Y5pwciNV8d67C0moqNixzQ44CHPa+
         uUbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696435382; x=1697040182;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zQD2dMNzoP9xkJDgXLB0zqS69VI+Bg1gJpgndgv9o6s=;
        b=TKvD05mgDox+Fh/gcrBau05+FJcR4JPrqQm7CjeHJSr8UsIOK3y/JfCgVcnwS722oh
         8HKUzce21h4BPhwmFyJpq/NCeHVr/vUKuAxXBdpAq9zUMQiK6X4QdDCRjQgWQSdy9Z/X
         NIneSKfWjniWVHC4OTb9n87W1QBMKdcamuM4siHjjwF20y+2rVxt/lSbsWlkXMU1j+Xs
         EnuI+w/O85SZcAdI4SakdkuWGeJhPHWuI0G6oLmeAzD1SydrQJy1R5+cNkxB2ansh/0+
         oqZ6m2fFBpLBM3QtDgbshsMBI1p0S+TwiJUXi2cTw8gf9HroUUACdKtaOKf7msz2AMOd
         ZTZw==
X-Gm-Message-State: AOJu0Ywlqhtn7pbn+pKpr/uyTjiMbv/J+ut/xvFNjX3fypA7GARlOIkO
	n8AwaD35pjYsBvgaM1/v8tnl8C9/NelzZXSxRXzOdFv1hwI=
X-Google-Smtp-Source: AGHT+IEhi/ZTOze+Vbqk4Kg9wlNuSRouvcfJiw93LnOsxD3AmADybMZ4sS5D79T1QyRxIFDDp2ziJHvtrN3Ns8dL0xA=
X-Received: by 2002:a17:902:bc4b:b0:1bf:728:745b with SMTP id
 t11-20020a170902bc4b00b001bf0728745bmr2485923plz.49.1696435381377; Wed, 04
 Oct 2023 09:03:01 -0700 (PDT)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@gmail.com>
Date: Wed, 4 Oct 2023 13:02:50 -0300
Message-ID: <CA+fOnFbWkvAi61HywFWrnm+6dcT-OvYEmDQ7kij5bLTc+fSerA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="0000000000004a9ebc0606e6242d"
Subject: [oss-security] Django: CVE-2023-43665: Denial-of-service possibility in django.utils.text.Truncator

--0000000000004a9ebc0606e6242d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

https://www.djangoproject.com/weblog/2023/oct/04/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing
`Django 4.2.6 <https://docs.djangoproject.com/en/dev/releases/4.2.6/>`_,
`Django 4.1.12 <https://docs.djangoproject.com/en/dev/releases/4.1.12/>`_,
and
`Django 3.2.22 <https://docs.djangoproject.com/en/dev/releases/3.2.22/>`_.
These releases address the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2023-43665: Denial-of-service possibility in django.utils.text.Truncator
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

Following the fix for CVE-2019-14232, the regular expressions used in the
implementation of ``django.utils.text.Truncator``=E2=80=99s ``chars()`` and
``words()`` methods
(with ``html=3DTrue``) were revised and improved. However, these regular
expressions
still exhibited linear backtracking complexity, so when given a very long,
potentially malformed HTML input, the evaluation would still be slow,
leading
to a potential denial of service vulnerability.

The ``chars()`` and ``words()`` methods are used to implement the
``truncatechars_html``
and ``truncatewords_html`` template filters, which were thus also
vulnerable.

The input processed by ``Truncator``, when operating in HTML mode, has been
limited
to the first five million characters in order to avoid potential performance
and memory issues.

Thanks Wenchao Li of Alibaba Group for the report.

This issue has severity "moderate" according to the Django security policy.

Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django main branch
* Django 5.0 (currently at pre-release alpha status)
* Django 4.2
* Django 4.1
* Django 3.2

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to Django's main branch and
the
5.0, 4.2, 4.1, and 3.2 release branches. The patches may be obtained from
the
following changesets:

* On the `main branch <
https://github.com/django/django/commit/17b51094d778b421bb2b3aae0c270894b05=
0455d
>`__
* On the `5.0 release branch <
https://github.com/django/django/commit/8124c42601b9abfeb234056092a62a22a22=
107cb
>`__
* On the `4.2 release branch <
https://github.com/django/django/commit/be9c27c4d18c2e6a5be8af4e53c07974407=
94473
>`__
* On the `4.1 release branch <
https://github.com/django/django/commit/c7b7024742250414e426ad49fb80db943e7=
ba4e8
>`__
* On the `3.2 release branch <
https://github.com/django/django/commit/ccdade1a0262537868d7ca64374de3d957c=
a50c5
>`__

The following releases have been issued:

* Django 4.2.6 (`download Django 4.2.6 <
https://www.djangoproject.com/m/releases/4.2/Django-4.2.6.tar.gz>`_ |
`4.2.6 checksums <
https://www.djangoproject.com/m/pgp/Django-4.2.6.checksum.txt>`_)
* Django 4.1.12 (`download Django 4.1.12 <
https://www.djangoproject.com/m/releases/4.1/Django-4.1.12.tar.gz>`_ |
`4.1.12 checksums <
https://www.djangoproject.com/m/pgp/Django-4.1.12.checksum.txt>`_)
* Django 3.2.22 (`download Django 3.2.22 <
https://www.djangoproject.com/m/releases/3.2/Django-3.2.22.tar.gz>`_ |
`3.2.22 checksums <
https://www.djangoproject.com/m/pgp/Django-3.2.22.checksum.txt>`_)

The PGP key ID used for this release is Natalia Bidart: `2EE82A8D9470983E <
https://github.com/nessita.gpg>`_

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.

--0000000000004a9ebc0606e6242d--
