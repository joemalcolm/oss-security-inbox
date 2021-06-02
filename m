X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4871" "Wednesday" "2" "June" "2021" "11:34:09" "+0200" "Carlton Gibson" "carlton.gibson@gmail.com" nil "113" "[oss-security] Django security releases 3.2.4, 3.1.12, and 2.2.24 for CVE-2021-33203 and CVE-2021-33571" nil nil nil "6" nil nil (number mark "U       carlton.gibs Jun  2  113/4871  " thread-indent "\"[oss-security] Django security releases 3.2.4, 3.1.12, and 2.2.24 for CVE-2021-33203 and CVE-2021-33571\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django security releases 3.2.4, 3.1.12, and 2.2.24 for CVE-2021-33203 and CVE-2021-33571" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19587 invoked by uid 550); 2 Jun 2021 09:38:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17851 invoked from network); 2 Jun 2021 09:34:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=1T2AsND7xRwgFFx7plz20eRsIrp8PDTZ22Hmxrp8jUo=;
        b=fYJFBEZuj3JEVzmamR3lBK6xBWHMsTTcLDsdcy0kmr5R/z1J9gGJ7rhY5RQTi7qpPj
         fuU8xyiL3u/7d5hUdjGOopkh9ZlZuj1Z+wWhV275reciehpYzO0J0enS+8JYcl+gL5Gz
         eEJmEr0EqzghQ4qD5INWbqJkWAEFKH/q+h7vtZs8VqxiQB3GzdwCdrJGDKrhLAEzaEve
         1UiuwX6RexeZAomy6HZApDlUh4eB/lOIbwM5mZ5JJrsu3hZLdJGAmfStRqxCSzRSmmZx
         c71GE9q0uZs0PoXseVeZYrYzAW7IjsImpiP9KZOryq7PTDaIxvbWFL1x087+iOrfyv11
         MkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=1T2AsND7xRwgFFx7plz20eRsIrp8PDTZ22Hmxrp8jUo=;
        b=KN34Oesjq70ie+CpmICBA6A+HUZgPV2kYlBuBXhAuG8skCk54mXB8+tCsRPaou99io
         81p9XBdNRffhN0qW2sDLckClsTqI9qHC8A8Y2tkNIbKitbwXLzzdINvig+tlQC4OB8/N
         2AoetB78SZjPcT1oXQd8Lq1pwnQgdTpNEvlqKklgpaFe39kdewRhHXKHL3CXMyh0V1t9
         C4yNE4np3oT0b1hJk8TEK4GEv7Lwv5tOty7+yqqsJVIvk+80DcZuYXL+9w5jmOaiZ1YH
         P0C6/BDtZkCZdikDlWM7DKkNtrbMTkZlHrw+iHjIf4RiNxSKf/BpFmGronnbFdJ2PcHp
         pygA==
X-Gm-Message-State: AOAM531TYgW+ScvxyF+yBE3pfshIbC/ENbUJoE9Zx6mpZw4+m+Qyje5e
	SN0E2qwT18VrzG4+GO7Fm6AMdFD0LfFhVA==
X-Google-Smtp-Source: ABdhPJyGqoDUstOXCEABJW09SrpWSN+8MbywrYcKoAZV2Vlq8e/tt1jCH9tYsAuOKqF9rW0TWZTgGg==
X-Received: by 2002:a5d:4bd2:: with SMTP id l18mr32090394wrt.197.1622626450785;
        Wed, 02 Jun 2021 02:34:10 -0700 (PDT)
From: Carlton Gibson <carlton.gibson@gmail.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
Message-Id: <4BDB3183-6E14-41DC-AE08-D67E551EF3B7@gmail.com>
Date: Wed, 2 Jun 2021 11:34:09 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3654.100.0.2.11)
Subject: [oss-security] Django security releases 3.2.4, 3.1.12, and 2.2.24 for CVE-2021-33203
 and CVE-2021-33571

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django t=
eam
is issuing
`Django 3.2.4 <https://docs.djangoproject.com/en/dev/releases/3.2.4/>`_,
`Django 3.1.12 <https://docs.djangoproject.com/en/dev/releases/3.1.12/>`_, =
and
`Django 2.2.24 <https://docs.djangoproject.com/en/dev/releases/2.2.24/>`_.
These release addresses the security issue detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2021-33203: Potential directory traversal via ``admindocs``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Staff members could use the ``admindocs``
``TemplateDetailView`` view to check the existence of arbitrary files.
Additionally, if (and only if) the default admindocs templates have been
customized by the developers to also expose the file contents, then not only
the existence but also the file contents would have been exposed.

As a mitigation, path sanitation is now applied and only files within the
template root directories can be loaded.

This issue has low severity, according to the Django security policy.

Thanks to Rasmus Lerchedahl Petersen and Rasmus Wriedt Larsen from the Code=
QL Python team for the report.

CVE-2021-33571: Possible indeterminate SSRF, RFI, and LFI attacks since val=
idators accepted leading zeros in IPv4 addresses
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

``URLValidator``, ``validate_ipv4_address()``, and ``validate_ipv46_address=
()``
didn't prohibit leading zeros in octal literals. If you used such values you
could suffer from indeterminate SSRF, RFI, and LFI attacks.

``validate_ipv4_address()`` and ``validate_ipv46_address()`` validators wer=
e not
affected on Python 3.9.5+.

This issue has medium severity, according to the Django security policy.

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
following changesets.

CVE-2021-33203:

* On the `main branch <https://github.com/django/django/commit/46572de2e92f=
deaf047f80c44d52269e54ad68db>`__
* On the `3.2 release branch <https://github.com/django/django/commit/dfaba=
12cda060b8b292ae1d271b44bf810b1c5b9>`__
* On the `3.1 release branch <https://github.com/django/django/commit/20c67=
a0693c4ede2b09af02574823485e82e4c8f>`__
* On the `2.2 release branch <https://github.com/django/django/commit/053cc=
9534d174dc89daba36724ed2dcb36755b90>`__

CVE-2021-33571:

* On the `main branch <https://github.com/django/django/commit/e1d787f1b36d=
13b95187f8f425425ae1b98da188>`__
* On the `3.2 release branch <https://github.com/django/django/commit/9f75e=
2e562fa0c0482f3dde6fc7399a9070b4a3d>`__
* On the `3.1 release branch <https://github.com/django/django/commit/203d4=
ab9ebcd72fc4d6eb7398e66ed9e474e118e>`__
* On the `2.2 release branch <https://github.com/django/django/commit/f27c3=
8ab5d90f68c9dd60cabef248a570c0be8fc>`__

The following releases have been issued:

* Django 3.2.4 (`download Django 3.2.4 <https://www.djangoproject.com/m/rel=
eases/3.2/Django-3.2.4.tar.gz>`_ | `3.2.4 checksums <https://www.djangoproj=
ect.com/m/pgp/Django-3.2.4.checksum.txt>`_)
* Django 3.1.12 (`download Django 3.1.12 <https://www.djangoproject.com/m/r=
eleases/3.1/Django-3.1.12.tar.gz>`_ | `3.1.12 checksums <https://www.django=
project.com/m/pgp/Django-3.1.12.checksum.txt>`_)
* Django 2.2.24 (`download Django 2.2.24 <https://www.djangoproject.com/m/r=
eleases/2.2/Django-2.2.24.tar.gz>`_ | `2.2.24 checksums <https://www.django=
project.com/m/pgp/Django-2.2.24.checksum.txt>`_)

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
=20=
