X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4903" "Monday" "2" "December" "2019" "10:14:18" "+0100" "Carlton Gibson" "carlton.gibson@gmail.com" "<6F59DA1C-360A-482F-911A-CF2587E12562@gmail.com>" "118" "[oss-security] Django 2.2.8 and 2.1.15: CVE-2019-19118: Privilege escalation in the Django admin." "^Date:" nil nil "12" "2019120209:14:18" "[oss-security] Django 2.2.8 and 2.1.15: CVE-2019-19118: Privilege escalation in the Django admin." (number mark "U       carlton.gibs Dec  2  118/4903  " thread-indent "\"[oss-security] Django 2.2.8 and 2.1.15: CVE-2019-19118: Privilege escalation in the Django admin.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django 2.2.8 and 2.1.15: CVE-2019-19118: Privilege escalation in the Django admin." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3203 invoked by uid 550); 2 Dec 2019 10:41:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5986 invoked from network); 2 Dec 2019 09:14:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:message-id:date:to;
        bh=SwKRyuiQqMHcfLM7MRu7H5QS+C2sss397Cx2tQKzM8w=;
        b=Gy9Sa9tQYGN03UYWGuk+FBf/IUrX/9BnE1LbEGNhmpUOTih/d6z/AyfzHJZlGlh+kJ
         QIme+Kcz8HROghypLpySADudQcWkUlFelscY/jsccDk9FwCIrbimDrpehwfkJ8HwROa5
         RHgIg2s+uHPnK1RUq4uKmJ5YAEf4mldcOKLy5Hi6RQrIqpl5gSG+I7BDh5aJwvlYSZMg
         z1QLxd8wZMRDFqdeWgi2nILwPa76Zt9h3q9H4CuLqBOkXrV6++EK3lxU+9DHBLjQhJWu
         d+sDJ43HtXuV8hGmK5viRE2FAwQqJTcOQ8cjrQsT8oexiYDYwqs5Ncm1Zr3rBydj0Xv/
         MgVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=SwKRyuiQqMHcfLM7MRu7H5QS+C2sss397Cx2tQKzM8w=;
        b=izTIU9Vy6rlkGsN8/tPAF6Qn0eWl90PbpCl9K4H8LEqizwDvLX7DaZcKvDmiiHhDHt
         BLawJ1pWoUEUNvHA9wcgcVrgcbFdI+OD+rwBf07cd3BNFpTkSkYyq5+LL9Q1EQlGXDxZ
         JRXGHRhYuNIgnqApHC5Mn1q1VEuQDnrHyT9YBiypzYSeHDnDsDhEFTFxRlR471lW5FXf
         j6crKHWLF1L/E6zfDXXiUnLovfwWsbsf8JUsM/ldcLLhqPPDKIVioWMp/fVpuGQMMdh7
         KHO/5KUuczIO51nNDP6Of+iEYD105C9LvOAGy4repM1NA9LoN3pMP0koZrypplGGhorS
         gpZA==
X-Gm-Message-State: APjAAAVqN4DZgpJIW9A+iPvZVQveXN4F9qiPqUhU51dKwabkeQ1FAi0U
	inX/LQp69P6Zyac4myoUxzqOvRTc
X-Google-Smtp-Source: APXvYqzX4eojtcEbcoYK0z4YH2yffNKBTL2OejkPvyLK0iacrCYv8AcwtVSW7c3m9sMpSyjE2alDfw==
X-Received: by 2002:adf:fa46:: with SMTP id y6mr8366604wrr.263.1575278060646;
        Mon, 02 Dec 2019 01:14:20 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_46C63644-D20D-4AC3-A7F4-86AE8D0D2A25"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <6F59DA1C-360A-482F-911A-CF2587E12562@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
Date: Mon, 2 Dec 2019 10:14:18 +0100
From: Carlton Gibson <carlton.gibson@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Django 2.2.8 and 2.1.15: CVE-2019-19118: Privilege escalation in the
 Django admin.
To: oss-security@lists.openwall.com

--Apple-Mail=_46C63644-D20D-4AC3-A7F4-86AE8D0D2A25
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

https://www.djangoproject.com/weblog/2019/dec/02/security-releases/ <https:=
//www.djangoproject.com/weblog/2019/dec/02/security-releases/>

In accordance with `our security release policy <https://docs.djangoproject=
.com/en/dev/internals/security/>`_, the Django team is issuing `Django 2.2.=
8 <https://docs.djangoproject.com/en/dev/releases/2.2.8/>`_ and `Django 2.1=
.15 <https://docs.djangoproject.com/en/dev/releases/2.1.15/>`_. These relea=
se addresses the security issue detailed below. We encourage all users of D=
jango to upgrade as soon as possible.

CVE-2019-19118: Privilege escalation in the Django admin.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

Since Django 2.1, a Django model admin displaying a parent model with relat=
ed
model inlines, where the user has view-only permissions to a parent model b=
ut
edit permissions to the inline model, would display a read-only view of the
parent model but editable forms for the inline.

Submitting these forms would not allow direct edits to the parent model, but
would trigger the parent model's ``save()`` method, and cause pre and post-=
save
signal handlers to be invoked. This is a privilege escalation as a user who
lacks permission to edit a model should not be able to trigger its save-rel=
ated
signals.

To resolve this issue, the permission handling code of the Django admin
interface has been changed. Now, if a user has only the "view" permission f=
or a
parent model, the entire displayed form will not be editable, even if the u=
ser
has permission to edit models included in inlines.

This is a backwards-incompatible change, and the Django security team is aw=
are
that some users of Django were depending on the ability to allow editing of
inlines in the admin form of an otherwise view-only parent model.

Given the complexity of the Django admin, and in-particular the permissions
related checks, it is the view of the Django security team that this change=
 was
necessary: that it is not currently feasible to maintain the existing behav=
ior
whilst escaping the potential privilege escalation in a way that would avoi=
d a
recurrence of similar issues in the future, and that would be compatible wi=
th
Django's *safe by default* philosophy.

For the time being, developers whose applications are affected by this chan=
ge
should replace the use of inlines in read-only parents with custom forms and
views that explicitly implement the desired functionality. In the longer te=
rm,
adding a documented, supported, and properly-tested mechanism for
partially-editable multi-model forms to the admin interface may occur in Dj=
ango
itself.

Thank you to Shen Ying for reporting this issue.

Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django master branch
* Django 3.0 (which will be released in a separate blog post later today)
* Django 2.2
* Django 2.1

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to Django's master branch and
the 3.0, 2.2, and 2.1 release branches. The patches may be obtained from th=
e following changesets:

* On the `master branch <https://github.com/django/django/commit/11c5e0609b=
cc0db93809de2a08e0dc3d70b393e4>`__
* On the `3.0 release branch <https://github.com/django/django/commit/092cd=
66cf3c3e175acce698d6ca2012068d878fa>`__
* On the `2.2 release branch <https://github.com/django/django/commit/36f58=
0a17f0b3cb087deadf3b65eea024f479c21>`__
* On the `2.1 release branch <https://github.com/django/django/commit/103eb=
e2b5ff1b2614b85a52c239f471904d26244>`__

The following releases have been issued:

* Django 2.2.8 (`download Django 2.2.8 <https://www.djangoproject.com/m/rel=
eases/2.2/Django-2.2.8.tar.gz>`_ | `2.2.8 checksums <https://www.djangoproj=
ect.com/m/pgp/Django-2.2.8.checksum.txt>`_)
* Django 2.1.15 (`download Django 2.1.15 <https://www.djangoproject.com/m/r=
eleases/2.1/Django-2.1.15.tar.gz>`_ | `2.1.15 checksums <https://www.django=
project.com/m/pgp/Django-2.1.15.checksum.txt>`_)

The PGP key ID used for these releases is Carlton Gibson: E17DF5C82B4F9D00.

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance or the django-developers list. Please see `our security
policies <https://www.djangoproject.com/security/>`_ for further
information.


--Apple-Mail=_46C63644-D20D-4AC3-A7F4-86AE8D0D2A25--
