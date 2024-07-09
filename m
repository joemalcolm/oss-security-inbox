Received: (qmail 23708 invoked by uid 550); 9 Jul 2024 15:42:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11794 invoked from network); 9 Jul 2024 15:02:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720537338; x=1721142138; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UV6EViVJdXgOJ4eiebNZL0TSW2JHskgJxrGIRhYBPEw=;
        b=XhS9el1WDV3Loy6EW0OImDq+z/x/Y3kxbynBpP+yco2pNBrHtwfqv2jx4/4xHADwYs
         Zlt/HQRr2krXcYqaIHtGhWKaw6TdsImZ7PCLQhbIYf7DNIF0NowpGv0QTmbL92P3FERw
         kd6YYuliQg9sgKIEGlMTTx4PvePydfQLFSNNrsk0dT5NvmgFHGL9TF5ERq8UO685FJe5
         Wup7tO/csNo/vTub04+ZH4kftXkWbspxwDAdSV6dK1cy/3WDiy5UPEZs13gOGfdCfzJH
         6FZiRm0fjxw5M6FWvesFcoThAO4wLR4IMj03Dkz17pK8N3c3eJrl0FBbpisuPNsxopeX
         EXtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720537338; x=1721142138;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UV6EViVJdXgOJ4eiebNZL0TSW2JHskgJxrGIRhYBPEw=;
        b=facSgU5IMhEoowygkYlLPjpFmQ3EaHdi5bVEo9lGxt631RCvYFJQE7Mx6JLRQvjLM/
         4ztQLXMMHj8x3WKP5ftG/FvvJ6y/rOdPSnhEeshx4zKRHZTV8kW25VlFsaboMLkQVdug
         WUBJmrVnZ97IiqgBQZYQigWwY8FE++TWgRJfhhtFDXnO+iXAXZKdFfJz3fpCXqk+Z7PY
         CU2dhJyx2LqhAoelGxFC1n2CHeR3hQztK3JBjxNr06d9spIJAJb68dFEC8zwNPk61ry3
         F+WzJ1SqMn3fbyLlZe7sYox34wdiRIKH1kfsarhIcS7DbDIeKyOBISFUCHY+KSnIh9lq
         CVxQ==
X-Gm-Message-State: AOJu0Yz5FxYf3skZeWRJp1o0O+WsWVFGj0O8nvCsB5ObXr9lGiPBkPyg
	cNqUplK9xKYWlTuQEC1HGCpBHu9RHzSYEaqz+1XSLH5cAFEqP6m1SBeiJYFv8DLjwHM+J2lUBoA
	Fo+go9ijgnC6+i/iryAwkATQHlKv6/RJC
X-Google-Smtp-Source: AGHT+IEncORYxnozK84jNw2tFSpJCZ2A4x4fl1CsWW1N4bL8PzH+P1ai+E+w+3Zr8ZBOR3HA6uFTRMzF+w5CmYxDcHY=
X-Received: by 2002:a17:906:c110:b0:a72:b055:3de0 with SMTP id
 a640c23a62f3a-a780b68a358mr239021666b.6.1720537338002; Tue, 09 Jul 2024
 08:02:18 -0700 (PDT)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@gmail.com>
Date: Tue, 9 Jul 2024 12:02:06 -0300
Message-ID: <CA+fOnFYQ3bpk1NNTExmhsmrHb8C=qsSp7=H2nJFJMe6rzk-2wA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="000000000000dacb02061cd1d0f8"
Subject: [oss-security] Django CVE-2024-38875, CVE-2024-39329, CVE-2024-39330, and CVE-2024-39614

--000000000000dacb02061cd1d0f8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

From: https://www.djangoproject.com/weblog/2024/jul/09/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.0.7 <https://docs.djangoproject.com/en/dev/releases/5.0.7/>`_ and
`Django 4.2.14 <https://docs.djangoproject.com/en/dev/releases/4.2.14/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2024-38875: Potential denial-of-service in django.utils.html.urlize()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

``urlize()`` and ``urlizetrunc()`` were subject to a potential
denial-of-service
attack via certain inputs with a very large number of brackets.

Thanks to Elias Myllym=C3=A4ki for the report.

This issue has severity "moderate" according to the Django security policy.

CVE-2024-39329: Username enumeration through timing difference for users
with unusable passwords
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The ``django.contrib.auth.backends.ModelBackend.authenticate()`` method
allowed remote attackers to enumerate users via a timing attack involving
login
requests for users with unusable passwords.

This issue has severity "low" according to the Django security policy.

CVE-2024-39330: Potential directory-traversal in
django.core.files.storage.Storage.save()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Derived classes of the ``django.core.files.storage.Storage`` base class
which
override ``generate_filename()`` without replicating the file path
validations
existing in the parent class, allowed for potential directory-traversal via
certain inputs when calling ``save()``.

Built-in ``Storage`` sub-classes were not affected by this vulnerability.

Thanks to Josh Schneier for the report.

This issue has severity "low" according to the Django security policy.

CVE-2024-39614: Potential denial-of-service in
django.utils.translation.get_supported_language_variant()
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

``get_supported_language_variant()`` was subject to a potential
denial-of-service
attack when used with very long strings containing specific characters.

To mitigate this vulnerability, the language code provided to
``get_supported_language_variant()`` is now parsed up to a maximum length
of 500
characters.

Thanks to `MProgrammer <https://hackerone.com/mprogrammer>`_ for the report.

This issue has severity "moderate" according to the Django security policy.

Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django main branch
* Django 5.1 (currently at beta status)
* Django 5.0
* Django 4.2

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to Django's main, 5.1, 5.0,
and
4.2 branches. The patches may be obtained from the following changesets.

CVE-2024-38875: Potential denial-of-service in django.utils.html.urlize()
-------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/d6664574539c1531612dea833d264ed5c2b=
04e1e
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/44aef996c8d723198e89ca834cb1d746e2e=
72d77
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/7285644640f085f41d60ab0c8ae4e9153f0=
485db
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/79f368764295df109a37192f6182fb6f361=
d85b5
>`__

CVE-2024-39329: Username enumeration through timing difference for users
with unusable passwords
---------------------------------------------------------------------------=
---------------------

* On the `main branch <
https://github.com/django/django/commit/5d8645857936c142a3973694799c52165e2=
bdcdb
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/f5d16483f3abfd33e301fb5c2005b80bd6d=
05aaf
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/07cefdee4a9d1fcd9a3a631cbd07c78defd=
1923b
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/156d3186c96e3ec2ca73b8b25dc2ef366e3=
8df14
>`__

CVE-2024-39330: Potential directory-traversal in
django.core.files.storage.Storage.save()
---------------------------------------------------------------------------=
--------------

* On the `main branch <
https://github.com/django/django/commit/fe4a0bbe2088d0c2b331216dad21ccd0bb3=
ee80d
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/6d36203648a7e14abc89b9aeb8ae9678535=
b51fb
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/9f4f63e9ebb7bf6cb9547ee4e2526b9b967=
03270
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/2b00edc0151a660d1eb86da4059904a0fc4=
e095e
>`__

CVE-2024-39614: Potential denial-of-service in
django.utils.translation.get_supported_language_variant()
---------------------------------------------------------------------------=
-----------------------------

* On the `main branch <
https://github.com/django/django/commit/9e9792228a6bb5d6402a5d645bc3be4cf36=
4aefb
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/e99ccc43429160828814a72067acf47f5fc=
a9c94
>`__
* On the `5.0 branch <
https://github.com/django/django/commit/8e7a44e4bec0f11474699c3111a5e0a45af=
e7f49
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/17358fb35fb7217423d4c4877ccb6d1a3a4=
0b1c3
>`__


The following releases have been issued
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* Django 5.0.7 (`download Django 5.0.7
  <https://www.djangoproject.com/m/releases/5.0/Django-5.0.7.tar.gz>`_ |
  `5.0.7 checksums
  <https://www.djangoproject.com/m/pgp/Django-5.0.7.checksum.txt>`_)
* Django 4.2.14 (`download Django 4.2.14
  <https://www.djangoproject.com/m/releases/4.2/Django-4.2.14.tar.gz>`_ |
  `4.2.14 checksums
  <https://www.djangoproject.com/m/pgp/Django-4.2.14.checksum.txt>`_)

The PGP key ID used for this release is Natalia Bidart: `2EE82A8D9470983E <
https://github.com/nessita.gpg>`_

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum, nor via the django-developers list. Please see `our
security
policies <https://www.djangoproject.com/security/>`_ for further
information.

--000000000000dacb02061cd1d0f8--
