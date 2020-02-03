X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3363" "Monday" "3" "February" "2020" "10:56:32" "+0100" "Carlton Gibson" "carlton.gibson@gmail.com" "<4A2798F3-D0B2-456D-8DDB-F79C7354C348@gmail.com>" "76" "[oss-security] Django 3.0.3, 2.2.10 and 1.11.28: CVE-2020-7471: Potential SQL injection via ``StringAgg(delimiter)``" "^Date:" nil nil "2" "2020020309:56:32" "[oss-security] Django 3.0.3, 2.2.10 and 1.11.28: CVE-2020-7471: Potential SQL injection via ``StringAgg(delimiter)``" (number mark "        carlton.gibs Feb  3   76/3363  " thread-indent "\"[oss-security] Django 3.0.3, 2.2.10 and 1.11.28: CVE-2020-7471: Potential SQL injection via ``StringAgg(delimiter)``\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django 3.0.3, 2.2.10 and 1.11.28: CVE-2020-7471: Potential SQL injection via ``StringAgg(delimiter)``" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17482 invoked by uid 550); 3 Feb 2020 09:59:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15771 invoked from network); 3 Feb 2020 09:56:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:message-id:date:to;
        bh=Uu/ROpyzzCAsT/Nly5O/NNn8ljW48otZxnF7QQzm7oE=;
        b=uK/Pg9TlRbG3fK3zAQH/LEQutYPxcH9gEZFBdoFKq+ytoGGaiiRFzZCTtla70dDmnl
         SJJ5pFsUGd4OQ4n5vPaMZVK08wz7Ag2Lig3Ka5EwbIIgG8B8NpvmSrJ9JbvgWt/dzBc1
         IAoj+tISuu5/dQE5xZ+mbtq4licDquvqh01DS2QNh+f1aE4N3EcCYcm9tKsMjMjiIUlJ
         W6UCuWa3GOf8uNZVrp3YtQvZG8IRfYbUih94ixljvyNKpHrePnw13GmETmoCEGhikIiD
         u4LU9ck3xB5QEE9Wg9q6ZaNbeUyRfxSKFqMbiSRZ02AM+uaed75TNi8w5C59YjmXz9sE
         +XMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=Uu/ROpyzzCAsT/Nly5O/NNn8ljW48otZxnF7QQzm7oE=;
        b=qc+luueFTI2gsojMyaEQwJWU7YcniCLJZ30iAJJaJ3SdvuWimI2WcPj+Ra7s6Z4owp
         Vt09VCs1QvZnNQiyabkdoOZOdMiXiniibOurFJVuTcqBBRedquNZQVzO8iF5SWUCuakv
         9JwlLUoiLA2tW8PNWM41GoXo0CVC+TURFMTh52O1iwORNGVG03jqMme+SboFXqgXaswg
         kb9Tjm4Qj5JMOQaZSsOwl+mA44L5nC5p2u0Hi3ipmzjsgNJiLvK87jpsVTBzvZAMX+9S
         5bE7rcqdtKVFs2D/2fg+2AFbGLK+yJlpjH7F/+KtavyA0vkzeav78ThsAGY83x2wRvIU
         BFnA==
X-Gm-Message-State: APjAAAV1n33ZbO4Xu8ThfTHwhvk7GVyFVq4Wat3pfbkLExIlGKj9YFlX
	ttuvy4vpd77HZ5T2Uh7NzWmFN1Ga
X-Google-Smtp-Source: APXvYqyQFeoBtCI6iiQKSdJh4i7mbquKptxAwn6ZnV/cJVeNzAKRW9TnVrr3Kn/aVkfGRiAkadYv1A==
X-Received: by 2002:a05:600c:292:: with SMTP id 18mr29694351wmk.128.1580723793391;
        Mon, 03 Feb 2020 01:56:33 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1006554A-65FF-4C78-97AF-FF3C8384775B"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <4A2798F3-D0B2-456D-8DDB-F79C7354C348@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
Date: Mon, 3 Feb 2020 10:56:32 +0100
From: Carlton Gibson <carlton.gibson@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Django 3.0.3, 2.2.10 and 1.11.28: CVE-2020-7471: Potential SQL
 injection via ``StringAgg(delimiter)``
To: oss-security@lists.openwall.com

--Apple-Mail=_1006554A-65FF-4C78-97AF-FF3C8384775B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

https://www.djangoproject.com/weblog/2020/feb/03/security-releases/ <https:=
//www.djangoproject.com/weblog/2020/feb/03/security-releases/>

In accordance with `our security release policy <https://docs.djangoproject=
.com/en/dev/internals/security/>`_, the Django team is issuing `Django 3.0.=
3 <https://docs.djangoproject.com/en/dev/releases/3.0.3/>`_, `Django 2.2.10=
 <https://docs.djangoproject.com/en/dev/releases/2.2.10/>`_ and `Django 1.1=
1.28 <https://docs.djangoproject.com/en/dev/releases/1.11.28/>`_. These rel=
eases address the security issue detailed below. We encourage all users of =
Django to upgrade as soon as possible.

Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django master branch
* Django 3.0
* Django 2.2
* Django 1.11

CVE-2020-7471: Potential SQL injection via ``StringAgg(delimiter)``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

``django.contrib.postgres.aggregates.StringAgg`` aggregation function was
subject to SQL injection, using a suitably crafted ``delimiter``.

Thank you to Simon Charette for the report and patch.=20

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to Django's master branch and
the 3.0, 2.2, and 1.11 release branches. The patches may be obtained from t=
he following changesets:

* On the `master branch <https://github.com/django/django/commit/eb31d84532=
3618d688ad429479c6dda973056136>`__
* On the `3.0 release branch <https://github.com/django/django/commit/50582=
6b469b16ab36693360da9e11fd13213421b>`__
* On the `2.2 release branch <https://github.com/django/django/commit/c67a3=
68c16e4680b324b4f385398d638db4d8147>`__
* On the `1.11 release branch <https://github.com/django/django/commit/001b=
0634cd309e372edb6d7d95d083d02b8e37bd>`__

The following releases have been issued:

* Django 3.0.3 (`download Django 3.0.3 <https://www.djangoproject.com/m/rel=
eases/3.0/Django-3.0.3.tar.gz>`_ | `3.0.3 checksums <https://www.djangoproj=
ect.com/m/pgp/Django-3.0.3.checksum.txt>`_)
* Django 2.2.10 (`download Django 2.2.10 <https://www.djangoproject.com/m/r=
eleases/2.2/Django-2.2.10.tar.gz>`_ | `2.2.10 checksums <https://www.django=
project.com/m/pgp/Django-2.2.10.checksum.txt>`_)
* Django 1.11.28 (`download Django 1.11.28 <https://www.djangoproject.com/m=
/releases/1.11/Django-1.11.28.tar.gz>`_ | `1.11.28 checksums <https://www.d=
jangoproject.com/m/pgp/Django-1.11.28.checksum.txt>`_)

The PGP key ID used for these releases is Carlton Gibson: E17DF5C82B4F9D00.

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.=

--Apple-Mail=_1006554A-65FF-4C78-97AF-FF3C8384775B--
