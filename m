X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3541" "Tuesday" "4" "May" "2021" "10:58:23" "+0200" "Carlton Gibson" "carlton.gibson@gmail.com" nil "85" "[oss-security] Django 3.2.1, 3.1.9, and 2.2.21: CVE-2021-31542: Potential directory-traversal via uploaded files" nil nil nil "5" nil nil (number mark "U       carlton.gibs May  4   85/3541  " thread-indent "\"[oss-security] Django 3.2.1, 3.1.9, and 2.2.21: CVE-2021-31542: Potential directory-traversal via uploaded files\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django 3.2.1, 3.1.9, and 2.2.21: CVE-2021-31542: Potential directory-traversal via uploaded files" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17473 invoked by uid 550); 4 May 2021 09:22:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1379 invoked from network); 4 May 2021 08:58:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:message-id:date:to;
        bh=/oWTx5WTNDMK/iUa8g+V5ECbLMObSEdhByxDpUwdUOk=;
        b=QoDTMtBqBnFP9W5xHuRso/WgrP6T9gV7GDwXkznju08dp8GIidfl1JmACc69jMo5Xl
         Rd1mjy+jOcNid3jhXLTdTNnN3e2aM0TeryhHXJeca6FtihfO2NDWT4U7PUDsgWIrHC8r
         IyO51JTkFkpNxhIRs7cWYasM83b73Wb8I2hfxBv9r0reEFtukE5SoAa/kKyOM8bJoh02
         4VJhR2l5yqFU+NEiBp/FNFlZNUqlqVA0G8gRtLBwb8ggYNy42fmaTYLXGKsSbB+ncVcq
         15hion9wRrtgYUxUmsq6Qzl1qh9Cje+j9kcaZsfjTlq+Clnfz8IRd4AL/9dr/DdHF/t/
         Tdog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=/oWTx5WTNDMK/iUa8g+V5ECbLMObSEdhByxDpUwdUOk=;
        b=WrQ+NWrsuvDRmVIAp8Hs3BkMImCck0dVH0wfWLr93jmXiVX44AEPGhYzz3Ga5FngvQ
         b+vSwJg+zwVusAyU8gLA6Iazkc7/oY6Q50AtLL10c7iYcB3hPGgheGZmOTmmcyX892Jx
         xF8af4GlgiKbVhxCaHcluYfexbLH+DTMmPinDfXKpGeQKlD72aq72gY7O5JDz2hpNLPf
         0vxR0jXCTcggJNaA+m/IBwAldN6KbhqOswXO2pw9fq46TdGuTmXYmfwWct2dp64EPBDE
         c7EWgV7vk0k/sYsfnRUkM9ej6oFnvsLVZDmvu8Tm+jXSG6r1DzkwQDd3XMYqvbGyR1e0
         rLPQ==
X-Gm-Message-State: AOAM531CbwCxO7Qb3USfJfokuqIXMoWLaeaO7CRW3fo5GKdifHHNcFEd
	ZjA6ts0qXUM5OcQlOKl3hsK8I2GWAowWgA==
X-Google-Smtp-Source: ABdhPJz3RoDQ88jbvIjhxI0tbUt7O2ooBu0z1jyEDxwwXp/yKsNqV9+PpxQYGWlWzidHFjPXNRsdfA==
X-Received: by 2002:a05:6000:18a:: with SMTP id p10mr12402156wrx.345.1620118705071;
        Tue, 04 May 2021 01:58:25 -0700 (PDT)
From: Carlton Gibson <carlton.gibson@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_AA57BBD9-B507-4517-887A-66863EFDEA00"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
Message-Id: <A943B848-EBB4-4F3D-9337-4C180431A6D7@gmail.com>
Date: Tue, 4 May 2021 10:58:23 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3654.100.0.2.11)
Subject: [oss-security] Django 3.2.1, 3.1.9, and 2.2.21: CVE-2021-31542: Potential
 directory-traversal via uploaded files

--Apple-Mail=_AA57BBD9-B507-4517-887A-66863EFDEA00
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

https://www.djangoproject.com/weblog/2021/may/04/security-releases/ <https:=
//www.djangoproject.com/weblog/2021/may/04/security-releases/>

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django t=
eam
is issuing
`Django 3.2.1 <https://docs.djangoproject.com/en/dev/releases/3.2.1/>`_,
`Django 3.1.9 <https://docs.djangoproject.com/en/dev/releases/3.1.9/>`_, and
`Django 2.2.21 <https://docs.djangoproject.com/en/dev/releases/2.2.21/>`_.
These release addresses the security issue detailed below. We encourage all=
 users of Django to upgrade as soon as possible.

CVE-2021-31542: Potential directory-traversal via uploaded files
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

``MultiPartParser``, ``UploadedFile``, and ``FieldFile`` allowed
directory-traversal via uploaded files with suitably crafted file names.

In order to mitigate this risk, stricter basename and path sanitation is now
applied. Specifically, empty file names and paths with dot segments will be
rejected.

This issue has low severity, according to the Django security policy.

Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django main branch
* Django 3.2
* Django 3.1
* Django 2.2

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to Django's main branch and =
to
the 3.2, 3.1, and 2.2 release branches. The patches may be obtained from the
following changesets:

* On the `main branch <https://github.com/django/django/commit/0b79eb36915d=
178aef5c6a7bbce71b1e76d376d3>`__
* On the `3.2 release branch <https://github.com/django/django/commit/c98f4=
46c188596d4ba6de71d1b77b4a6c5c2a007>`__
* On the `3.1 release branch <https://github.com/django/django/commit/25d84=
d64122c15050a0ee739e859f22ddab5ac48>`__
* On the `2.2 release branch <https://github.com/django/django/commit/04ac1=
624bdc2fa737188401757cf95ced122d26d>`__

The following releases have been issued:

* Django 3.2.1 (`download Django 3.2.1 <https://www.djangoproject.com/m/rel=
eases/3.2/Django-3.2.1.tar.gz>`_ | `3.2.1 checksums <https://www.djangoproj=
ect.com/m/pgp/Django-3.2.1.checksum.txt>`_)
* Django 3.1.9 (`download Django 3.1.9 <https://www.djangoproject.com/m/rel=
eases/3.1/Django-3.1.9.tar.gz>`_ | `3.1.9 checksums <https://www.djangoproj=
ect.com/m/pgp/Django-3.1.9.checksum.txt>`_)
* Django 2.2.21 (`download Django 2.2.21 <https://www.djangoproject.com/m/r=
eleases/2.2/Django-2.2.21.tar.gz>`_ | `2.2.21 checksums <https://www.django=
project.com/m/pgp/Django-2.2.21.checksum.txt>`_)

The PGP key ID used for these releases is Carlton Gibson: `E17DF5C82B4F9D00
<https://github.com/carltongibson.gpg>`_.

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.


--Apple-Mail=_AA57BBD9-B507-4517-887A-66863EFDEA00--
