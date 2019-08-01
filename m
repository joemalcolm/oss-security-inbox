X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7548" "Thursday" "1" "August" "2019" "11:28:22" "+0200" "Carlton Gibson" "carlton.gibson@gmail.com" "<5E15B5B0-412F-49DB-A20D-94DDF56671B9@gmail.com>" "167" "[oss-security] Django security releases issued: Multiple CVEs" nil nil nil "8" "2019080109:28:22" "[oss-security] Django security releases issued: Multiple CVEs" (number mark "U       carlton.gibs Aug  1  167/7548  " thread-indent "\"[oss-security] Django security releases issued: Multiple CVEs\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Django security releases issued: Multiple CVEs" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27701 invoked by uid 550); 1 Aug 2019 11:04:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23880 invoked from network); 1 Aug 2019 09:28:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=HGZwWHlPQNrDEKQPxjHqc1Eq3isl6RCi5595I4bMd3A=;
        b=CjnHRBcwqB4+ZLENOWwU8cFzv0+Q6a3ipaO9cLfROTLc+NHE/puN98Dxi03apOpOIB
         RKaYIAU0oOnME3fl1NaN7yMjl5o0gRABkRX28JrYVzjv85+7z9fNo1a+ew0pPjCoYdAb
         i2h7NcKojSerGSpnajcQG+2LTx2yTHdifHCr+z/oLRlrUkyMYQ0q7BBFcxqBSF6DusKS
         OGIRHBBWiAafmqKY25NG+FNwGZayGH8fDsvpfM2/gXZNgB6//TldFVYaKHdowhH+DSKl
         y/JUsSocXJ80YTWV/01jB91VDEhB2/neaD1Tw9E+9emEzOW+MIx7TcfbUrMzmktTxCCB
         t7dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=HGZwWHlPQNrDEKQPxjHqc1Eq3isl6RCi5595I4bMd3A=;
        b=tBl+f0KQ2Oc5F+02dIaucnBKzcGZAxha5WrmoJPkKHiZGv0fzwmX8Qr/KJVc1godNr
         6V4w49yGHuRn8PHuCMH9hgcBZDhTaJGXK4mpn9rUbE2SyKTq2ZfZ3bjWk3wm5xlXqd5J
         O818HsgDHH/Tj4f7PYWjofiSnzTxYitfSCL/IGirP7Q0ghI+9ozHC52S9rf/dAtaa0ZE
         aNjXRCoIAs+kEM9S23ZGYekhKzsXLao8OxNWPjWB9Wkr0WPUCOiW/b+bIz2nqhOfulip
         KfVLr033MpET8oVzhK91Jt4QapGsOzml/eE/2c+rAz4h+VjRJj3RpLgR3BVGs7R4oqPR
         NE4A==
X-Gm-Message-State: APjAAAXe0Qo2NThC9S9VWz9B/kQYsvNycOpLeDAFmoG7wV8t3d2ER8VY
	E2B8+sApvQ3LBYlPlj1SMHYYtDlrX5s=
X-Google-Smtp-Source: APXvYqwLeX09tQlsh1NsQbjGel7rMDyo5kKqn1vJ7fNJouYPuTkQlnibIjTSZ8PubN5rA4MU+tndyg==
X-Received: by 2002:adf:ef49:: with SMTP id c9mr11327787wrp.188.1564651703663;
        Thu, 01 Aug 2019 02:28:23 -0700 (PDT)
From: Carlton Gibson <carlton.gibson@gmail.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <5E15B5B0-412F-49DB-A20D-94DDF56671B9@gmail.com>
Date: Thu, 1 Aug 2019 11:28:22 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.11)
Subject: [oss-security] Django security releases issued: Multiple CVEs

Permalink: https://www.djangoproject.com/weblog/2019/aug/01/security-releas=
es/

In accordance with `our security release policy <https://docs.djangoproject=
.com/en/dev/internals/security/>`_, the Django team is issuing `Django 1.11=
.23 <https://docs.djangoproject.com/en/dev/releases/1.11.23/>`_, `Django 2.=
1.11 <https://docs.djangoproject.com/en/dev/releases/2.1.11/>`_, and `Djang=
o 2.2.4 <https://docs.djangoproject.com/en/dev/releases/2.2.4/>`_. These re=
leases addresses the security issues detailed below. We encourage all users=
 of Django to upgrade as soon as possible.

Thanks Guido Vranken and Sage M. Abdullah for reporting these issues.

CVE-2019-14232: Denial-of-service possibility in ``django.utils.text.Trunca=
tor``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

If ``django.utils.text.Truncator``'s ``chars()`` and ``words()`` methods
were passed the ``html=3DTrue`` argument, they were extremely slow to evalu=
ate
certain inputs due to a catastrophic backtracking vulnerability in a regular
expression. The ``chars()`` and ``words()`` methods are used to implement t=
he
``truncatechars_html`` and ``truncatewords_html`` template
filters, which were thus vulnerable.

The regular expressions used by ``Truncator`` have been simplified in order=
 to
avoid potential backtracking issues. As a consequence, trailing punctuation=
 may
now at times be included in the truncated output.

CVE-2019-14233: Denial-of-service possibility in ``strip_tags()``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Due to the behavior of the underlying ``HTMLParser``,
``django.utils.html.strip_tags()`` would be extremely slow to evaluate
certain inputs containing large sequences of nested incomplete HTML entitie=
s.
The ``strip_tags()`` method is used to implement the corresponding
``striptags`` template filter, which was thus also vulnerable.

``strip_tags()`` now avoids recursive calls to ``HTMLParser`` when progress
removing tags, but necessarily incomplete HTML entities, stops being made.

Remember that absolutely NO guarantee is provided about the results of
``strip_tags()`` being HTML safe. So NEVER mark safe the result of a
``strip_tags()`` call without escaping it first, for example with
``django.utils.html.escape()``.

CVE-2019-14234: SQL injection possibility in key and index lookups for ``JS=
ONField``/``HStoreField``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Key and index lookups for
``django.contrib.postgres.fields.JSONField`` and key lookups for ``django.c=
ontrib.postgres.fields.HStoreField``
were subject to SQL injection, using a suitably crafted dictionary, with
dictionary expansion, as the ``**kwargs`` passed to ``QuerySet.filter()``.

CVE-2019-14235: Potential memory exhaustion in ``django.utils.encoding.uri_=
to_iri()``
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

If passed certain inputs, ``django.utils.encoding.uri_to_iri`` could lead
to significant memory usage due to excessive recursion when re-percent-enco=
ding
invalid UTF-8 octet sequences.

``uri_to_iri()`` now avoids recursion when re-percent-encoding invalid UTF-8
octet sequences.

Affected supported versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

* Django master development branch
* Django 2.2 before version 2.2.4
* Django 2.1 before version 2.1.11
* Django 1.11 before version 1.11.23

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Patches to resolve the issue have been applied to Django's master branch and
the 2.2, 2.1, and 1.11 release branches. The patches may be obtained from t=
he following changesets:

On the development master branch:

* `master Truncator <https://github.com/django/django/commit/7f65974f821972=
9c047fbbf8cd5cc9d80faefe77>`__
* `master strip_tags() <https://github.com/django/django/commit/4b78420d250=
df5e21763633871e486ee76728cc4>`__
* `master JSONField/HStoreField <https://github.com/django/django/commit/7d=
eeabc7c7526786df6894429ce89a9c4b614086>`__
* `master uri_to_iri() <https://github.com/django/django/commit/76ed1c49f80=
4d409cfc2911a890c78584db3c76e>`__

On the Django 2.2 release branch:

* `2.2 Truncator <https://github.com/django/django/commit/c3289717c6f21a8cf=
23daff1c78c0c014b94041f>`__
* `2.2 strip_tags() <https://github.com/django/django/commit/e34f3c0e9ee5fc=
9022428fe91640638bafd4cda7>`__
* `2.2 JSONField/HStoreField <https://github.com/django/django/commit/4f5b5=
8f5cd3c57fee9972ab074f8dc6895d8f387>`__
* `2.2 uri_to_iri() <https://github.com/django/django/commit/cf694e6852b0da=
7799f8b53f1fb2f7d20cf17534>`__

On the Django 2.1 release branch:

* `2.1 Truncator <https://github.com/django/django/commit/c23723a1551340cc7=
d3126f04fcfd178fa224193>`__
* `2.1 strip_tags() <https://github.com/django/django/commit/5ff8e791148bd4=
51180124d76a55cb2b2b9556eb>`__
* `2.1 JSONField/HStoreField <https://github.com/django/django/commit/f74b3=
ae3628c26e1b4f8db3d13a91d52a833a975>`__
* `2.1 uri_to_iri() <https://github.com/django/django/commit/5d50a2e5fa36ad=
23ab532fc54cf4073de84b3306>`__

On the Django 1.11 release branch:

* `1.11 Truncator <https://github.com/django/django/commit/42a66e969023c005=
36256469f0e8b8a099ef109d>`__
* `1.11 strip_tags() <https://github.com/django/django/commit/52479acce792a=
d80bb0f915f20b835f919993c72>`__
* `1.11 JSONField/HStoreField <https://github.com/django/django/commit/ed68=
2a24fca774818542757651bfba576c3fc3ef>`__
* `1.11 uri_to_iri() <https://github.com/django/django/commit/869b34e9b3be3=
a4cfcb3a145f218ffd3f5e3fd79>`__

The following releases have been issued:

* Django 1.11.23 (`download Django 1.11.23 <https://www.djangoproject.com/m=
/releases/1.11/Django-1.11.23.tar.gz>`_ | `1.11.23 checksums <https://www.d=
jangoproject.com/m/pgp/Django-1.11.23.checksum.txt>`_)
* Django 2.1.11 (`download Django 2.1.11 <https://www.djangoproject.com/m/r=
eleases/2.1/Django-2.1.11.tar.gz>`_ | `2.1.11 checksums <https://www.django=
project.com/m/pgp/Django-2.1.11.checksum.txt>`_)
* Django 2.2.4 (`download Django 2.2.4 <https://www.djangoproject.com/m/rel=
eases/2.2/Django-2.2.4.tar.gz>`_ | `2.2.4 checksums <https://www.djangoproj=
ect.com/m/pgp/Django-2.2.4.checksum.txt>`_)

The PGP key ID used for this release is Carlton Gibson: E17DF5C82B4F9D00

General notes regarding security reporting
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As always, we ask that potential security issues be reported via
private email to ``security@djangoproject.com``, and not via Django's
Trac instance, Django's GitHub repositories, or the django-developers list.
Please see `our security policies <https://www.djangoproject.com/security/>=
`_
for further information.=
