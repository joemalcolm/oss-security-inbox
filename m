X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4224" "Wednesday" "3" "June" "2020" "11:46:19" "+0200" "Carlton Gibson" "carlton.gibson@gmail.com" "<D559987D-2E70-4F87-827D-3191B3823FA8@gmail.com>" "101" "[oss-security] Django security releases issued: 3.0.7, and 2.2.13 for CVE-2020-13254 & CVE-2020-13596." nil nil nil "6" "2020060309:46:19" "[oss-security] Django security releases issued: 3.0.7, and 2.2.13 for CVE-2020-13254 & CVE-2020-13596." (number mark "U       carlton.gibs Jun  3  101/4224  " thread-indent "\"[oss-security] Django security releases issued: 3.0.7, and 2.2.13 for CVE-2020-13254 & CVE-2020-13596.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django security releases issued: 3.0.7, and 2.2.13 for CVE-2020-13254 & CVE-2020-13596." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11453 invoked by uid 550); 3 Jun 2020 09:47:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10039 invoked from network); 3 Jun 2020 09:46:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:message-id:date:to;
        bh=dSrgqavRMreu7ehfNOKdQlz5f9u98enA/9htt9otKx0=;
        b=mEGwyrSv+sg0LVdKNCCgpv7ccFRUaVYX495BS3GDAoP7rvWZjVgVpfJDZpCvFnZVal
         yG7naKfuW+0/9de++5f+u16yaAgBq0mtpunEEbGyWiodmV8HAPHTKTh0IEOIM+gb+mlx
         kgc5vY+5vIjBQczHzUEfWnrjzTARDmdAGbBvLjI14LkgYfzU/cdtjVqRxKquGLeHTZ86
         Jp7HEXuy/lNswI6KJFR4F34cq5PcgHPnO3UpuEoIJdWQCqf55nnXZ32VT9M4etzSRwHu
         jE2+3TYhPrCEaDA1Seu3MKpRl1SmSqu/HpjIBnQFngdDwURubTkZZAu+lTINK8Cv8NJ8
         4VDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=dSrgqavRMreu7ehfNOKdQlz5f9u98enA/9htt9otKx0=;
        b=ixUEjAxVj5nhSs4hHQE2tG8DXpNDos2+OIQBX2gERn/uRIMFYQedcKh4qXlg+MabTN
         tUYpdGZUU0iHGmpLWNPywE5Gs3YzzExguGnZC3qrcEjKjSPzCPMioG9qnPAnR8ROyoaG
         4i7Y2ZWlMmQqbsur2Dl6Pdwn//EfmFZf0UOiO0vGQouFxHGWsxuUMk2HzDm4ctH6tDAx
         qSUJJ49uNqnG3Jq8i2gPnek2RqiYDwIXixLwwLSxog670pse9DeCuFJx6bySmUgOh4xK
         CdMDE/x6ytxhhiyDF60/WdcMZXFHG6WmUKe3K0ecvnm0SIreU+nEFK0FonuNQ76YwPUi
         ur3A==
X-Gm-Message-State: AOAM533j8YrZ9C2Cgi+5IIBbGCJD8Av5TDlrgz5Q4NivBAT1OcvX/nDI
	Lt4Mt0laepkgFB1ndx/ySU/inVsp
X-Google-Smtp-Source: ABdhPJz84zu0Yu/L93kp8sa7/m9ATgFg/otWcDK0975QckPqiWWAoA42M70FlCc6DfuGXY0Dtmf39w==
X-Received: by 2002:a1c:4c16:: with SMTP id z22mr8412625wmf.17.1591177581185;
        Wed, 03 Jun 2020 02:46:21 -0700 (PDT)
From: Carlton Gibson <carlton.gibson@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8B43971B-69A3-4A80-9D54-F2DA2E65A8D6"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Message-Id: <D559987D-2E70-4F87-827D-3191B3823FA8@gmail.com>
Date: Wed, 3 Jun 2020 11:46:19 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.14)
Subject: [oss-security] Django security releases issued: 3.0.7, and 2.2.13 for CVE-2020-13254
 & CVE-2020-13596.

--Apple-Mail=_8B43971B-69A3-4A80-9D54-F2DA2E65A8D6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

https://www.djangoproject.com/weblog/2020/jun/03/security-releases/ <https:=
//www.djangoproject.com/weblog/2020/jun/03/security-releases/>

In accordance with `our security release policy <https://docs.djangoproject=
.com/en/dev/internals/security/>`_, the Django team is issuing `Django 3.0.=
7 <https://docs.djangoproject.com/en/dev/releases/3.0.7/>`_ and `Django 2.2=
.13 <https://docs.djangoproject.com/en/dev/releases/2.2.13/>`_. These relea=
ses address the security issue detailed below. We encourage all users of Dj=
ango to upgrade as soon as possible.

CVE-2020-13254: Potential data leakage via malformed memcached keys
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In cases where a memcached backend does not perform key validation, passing
malformed cache keys could result in a key collision, and potential data
leakage. In order to avoid this vulnerability, key validation is added to t=
he
memcached cache backends.

Thank you to Dan Palmer for the report and patch.

CVE-2020-13596: Possible XSS via admin ``ForeignKeyRawIdWidget``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Query parameters for the admin ``ForeignKeyRawIdWidget`` were not properly =
URL
encoded, posing an XSS attack vector. ``ForeignKeyRawIdWidget`` now
ensures query parameters are correctly URL encoded.

Thank you to Jon Dufresne for the report and patch.

Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django master branch
* Django 3.1 (currently at alpha status)
* Django 3.0
* Django 2.2

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to Django's master branch and
the 3.1, 3.0, and 2.2 release branches. The patches may be obtained from th=
e following changesets:

CVE-2020-13254:

* On the `master branch <https://github.com/django/django/commit/2c82414914=
ae6476be5a166be9ff49c24d0d9069>`__
* On the `3.1 release branch <https://github.com/django/django/commit/580bd=
64c0482ae9b7c05715390e25f4405a12719>`__
* On the `3.0 release branch <https://github.com/django/django/commit/84b2d=
a5552e100ae3294f564f6c862fef8d0e693>`__
* On the `2.2 release branch <https://github.com/django/django/commit/07e59=
caa02831c4569bbebb9eb773bdd9cb4b206>`__

CVE-2020-13596:

* On the `master branch <https://github.com/django/django/commit/2dd4d110c1=
59d0c81dff42eaead2c378a0998735>`__
* On the `3.1 release branch <https://github.com/django/django/commit/49d7c=
c19e33a104bb23f7ae1dbb1240b4f6c40f9>`__
* On the `3.0 release branch <https://github.com/django/django/commit/1f2dd=
37f6fcefdd10ed44cb233b2e62b520afb38>`__
* On the `2.2 release branch <https://github.com/django/django/commit/6d618=
60b22875f358fac83d903dc629897934815>`__

The following releases have been issued:

* Django 3.0.7 (`download Django 3.0.7 <https://www.djangoproject.com/m/rel=
eases/3.0/Django-3.0.7.tar.gz>`_ | `3.0.7 checksums <https://www.djangoproj=
ect.com/m/pgp/Django-3.0.7.checksum.txt>`_)
* Django 2.2.13 (`download Django 2.2.13 <https://www.djangoproject.com/m/r=
eleases/2.2/Django-2.2.13.tar.gz>`_ | `2.2.13 checksums <https://www.django=
project.com/m/pgp/Django-2.2.13.checksum.txt>`_)

The PGP key ID used for these releases is Carlton Gibson: E17DF5C82B4F9D00.

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.


--Apple-Mail=_8B43971B-69A3-4A80-9D54-F2DA2E65A8D6--
