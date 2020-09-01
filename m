X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4370" "Tuesday" "1" "September" "2020" "11:23:07" "+0200" "Carlton Gibson" "carlton.gibson@gmail.com" "<7A34391F-1B0F-4CB0-ACAA-C41E0229C638@gmail.com>" "100" "[oss-security] Django Security Releases for CVE-2020-24583 & CVE-2020-24584: permissions on intermediate-level directories on Python 3.7+" nil nil nil "9" "2020090109:23:07" "[oss-security] Django Security Releases for CVE-2020-24583 & CVE-2020-24584: permissions on intermediate-level directories on Python 3.7+" (number mark "U       carlton.gibs Sep  1  100/4370  " thread-indent "\"[oss-security] Django Security Releases for CVE-2020-24583 & CVE-2020-24584: permissions on intermediate-level directories on Python 3.7+\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django Security Releases for CVE-2020-24583 & CVE-2020-24584: permissions on intermediate-level directories on Python 3.7+" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12183 invoked by uid 550); 1 Sep 2020 09:56:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28024 invoked from network); 1 Sep 2020 09:23:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=kVDmV5zbyz3/omWe7QzhhmQSmV8An+eJUTaUQf2Sv/Q=;
        b=suCSdN4mfWpQ2a2bbEWMx4T28dR4oRuoLCJTW74/ke3tfttE5SnDed7+6OgSWtJe5v
         yHKQbtczqHoxv+YbHrUYr8jLbEtSUUstAORjTuoam6k1eJ8cEW/o/t7T5UJ86yF2irCq
         CwlATVhZyUwI4s7k72TZQN8Z1I7lmbjt4IPatVfhzvGPLoxbgUlhifPkzKGcNJYGVR0x
         vgdqnwQUMzR1OPEdBd/TvflX/6/4DU/c4cQaNDpwsu79Bxpj8QzWlwQYk1q5qorahoUI
         LMVbHv/47BOr3g+M+ASTvJQ7KXRiLVTymNnvHFcaRr9cshyj4j87IUYSRzuTG+wvbXqx
         GKCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=kVDmV5zbyz3/omWe7QzhhmQSmV8An+eJUTaUQf2Sv/Q=;
        b=fwoFs1DLNqh7W1RAPY+mUFAhgodVnxws3cEWFq2Fq78O7CzdhyaNAccbx3RoeGs/Yn
         /GU4RNOXSMZnFNwdpbVSqxhWwY4xJ7IH3OEzMKbXhzZFDlQomq6xbqbf/NgWTLO5IF9P
         A2EycZ4FuHdzx5CZF0+ZWpW27MQX//6BlTE3oPKgCggsQmgO9WbLYbNYch0VKf9Ufsu3
         mG15h9fawTCY0mRDb7vDE5QcAfpulhyUZYQ9mjws0psJKIwnjKY2dPSLVrsbMWvqF2zU
         e3OXCqQS/JnpDIFe+Vq274VNS+rKMTg/aVqHuEjUaaX5UV7/nDRj1IMgI2WGXZe80BsR
         BL6g==
X-Gm-Message-State: AOAM533V5LfK6w2Ekq3gORUGMg9hUzgFw+zTk7AB995dCbVJu9x1FRAy
	zHp0l2byqcQdKf+TZubeGZTvBkxbUnk=
X-Google-Smtp-Source: ABdhPJzQiSc4KBtOk8puKljrclvRTBibMsCPXBWo7nNjm99v7VdhI2aVdUumoIWFWQRKSzZXJn/hJg==
X-Received: by 2002:a7b:c775:: with SMTP id x21mr821582wmk.47.1598952188983;
        Tue, 01 Sep 2020 02:23:08 -0700 (PDT)
From: Carlton Gibson <carlton.gibson@gmail.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Message-Id: <7A34391F-1B0F-4CB0-ACAA-C41E0229C638@gmail.com>
Date: Tue, 1 Sep 2020 11:23:07 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.15)
Subject: [oss-security] Django Security Releases for CVE-2020-24583 & CVE-2020-24584:
 permissions on intermediate-level directories on Python 3.7+

In accordance with `our security release policy <https://docs.djangoproject=
.com/en/dev/internals/security/>`_, the Django team is issuing
`Django 3.1.1 <https://docs.djangoproject.com/en/dev/releases/3.1.1/>`_,
`Django 3.0.10 <https://docs.djangoproject.com/en/dev/releases/3.0.10/>`_ a=
nd
`Django 2.2.16 <https://docs.djangoproject.com/en/dev/releases/2.2.16/>`_.
These releases address the security issue detailed below. We encourage all =
users of Django to upgrade as soon as possible.

CVE-2020-24583: Incorrect permissions on intermediate-level directories on =
Python 3.7+
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

On Python 3.7+, ``FILE_UPLOAD_DIRECTORY_PERMISSIONS`` mode was not
applied to intermediate-level directories created in the process of uploadi=
ng
files and to intermediate-level collected static directories when using the
``collectstatic`` management command.

You should review and manually fix permissions on existing intermediate-lev=
el
directories.

CVE-2020-24584: Permission escalation in intermediate-level directories of =
the file system cache on Python 3.7+
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

On Python 3.7+, the intermediate-level directories of the file system cache=
 had
the system's standard umask rather than ``0o077`` (no group or others
permissions).

Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django master branch
* Django 3.1
* Django 3.0
* Django 2.2

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to Django's master branch and
the 3.1, 3.0, and 2.2 release branches. The patches may be obtained from th=
e following changesets:

CVE-2020-24583:

* On the `master branch <https://github.com/django/django/commit/8d7271578d=
7b153435b40fe40236ebec43cbf1b9>`__
* On the `3.1 release branch <https://github.com/django/django/commit/93443=
0d22aa5d90c2ba33495ff69a6a1d997d584>`__
* On the `3.0 release branch <https://github.com/django/django/commit/08892=
bffd275c79ee1f8f67639eb170aaaf1181e>`__
* On the `2.2 release branch <https://github.com/django/django/commit/37565=
7a71c889c588f723469bd868bd1d40c369f>`__

CVE-2020-24584:

* On the `master branch <https://github.com/django/django/commit/1853724aca=
f17ed7414d54c7d2b5563a25025a71>`__
* On the `3.1 release branch <https://github.com/django/django/commit/2b099=
caa5923afa8cfb5f1e8c0d56b6e0e81915b>`__
* On the `3.0 release branch <https://github.com/django/django/commit/cdb36=
7c92a0ba72ddc0cbd13ff42b0e6df709554>`__
* On the `2.2 release branch <https://github.com/django/django/commit/a3aeb=
fdc8153dc230686b6d2454ccd32ed4c9e6f>`__

The following releases have been issued:

* Django 3.1.1 (`download Django 3.1.1 <https://www.djangoproject.com/m/rel=
eases/3.1/Django-3.1.1.tar.gz>`_ | `3.1.1 checksums <https://www.djangoproj=
ect.com/m/pgp/Django-3.1.1.checksum.txt>`_)
* Django 3.0.10 (`download Django 3.0.10 <https://www.djangoproject.com/m/r=
eleases/3.0/Django-3.0.10.tar.gz>`_ | `3.0.10 checksums <https://www.django=
project.com/m/pgp/Django-3.0.10.checksum.txt>`_)
* Django 2.2.16 (`download Django 2.2.16 <https://www.djangoproject.com/m/r=
eleases/2.2/Django-2.2.16.tar.gz>`_ | `2.2.16 checksums <https://www.django=
project.com/m/pgp/Django-2.2.16.checksum.txt>`_)

The PGP key ID used for these releases is Carlton Gibson: E17DF5C82B4F9D00.

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.=
