Received: (qmail 31950 invoked by uid 550); 2 Dec 2025 15:47:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5909 invoked from network); 2 Dec 2025 15:22:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject.com; s=google; t=1764688911; x=1765293711; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SHeA8VxhOteAXbqJbLeskZEWs0ffpIctyoUBSnHpf5k=;
        b=ayaTHr0dA5m4QfScQ8CFvv2CSNfofjanM+dqr9OMRrQMgxkJnPwekuSYmZO3KLtAB3
         Ul31liDmWhqwovxrhvuH8rmZnUfE5Vt5rBs/NHnHNE5JTYfGgkqgO4bYlDuqvJwdMj7V
         RIl3rAL2jjYq94ai8+PudJq7GD8WP1ZpfiS84=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764688911; x=1765293711;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SHeA8VxhOteAXbqJbLeskZEWs0ffpIctyoUBSnHpf5k=;
        b=WMNhsj4A+tu5bimuLls3pTYZTFtafmGSuzc/WgZLl/zHcLm9TnRBSGnm1tQ4Zm8Ruj
         RD4AZyGwZLKFeLaI8h3qi1zBiS4HQpbA5eiDzwkpo1nvWrRxgy6kEU00Jmt+V2AN18Op
         izVr7jk2YU82ircbIlWtFDVCCI7iejhy2mgTr8lwPuIFayynNahSkNwwzwvYX2K7ZPNV
         bEl6evAniKpP2ktcvmjR9giXheCdFOrEkYgaV4R7tzi+ySC0A47v2+MCpMUN/AQYEcT6
         nwxg1TxowQM7Z/1I4I7SymF/YvxSlt95CVwIA55VpspzwT/m40zatKoDYa9+5TtpeI15
         xgRQ==
X-Gm-Message-State: AOJu0YwAL0EGuEjrNuT6m2wLVy0BdQjRYVLnAePqOfZw9x/dVA6T8tsR
	JZgH4sFtcKYg/Ag2L+QdPD+MA6uX+1WIIJksd+NBD0snYxZ6l1RUPIPZuFp9pqklaoPEtOGU9vg
	IQPOi3zqbERAc7XiZa6hadsHkzYutSicCiqoSQir25uaTLNN4qe/g5tk=
X-Gm-Gg: ASbGncsdFTrsPEBJ7swHi2xu7FS4+U1yrfBnYvI0DfZOvBAbRfXFsydR72zOUjRibGp
	i7tHim9rbcyzaVcM887YGIKe5UetGcnWCVYBU326o1UbSihSvtUT3vZqRaQs6F3BubdxNF0dZjy
	/CnVPc+8BwRjT9E4lnOrjX76edsHUODHBWfyTVInxspc05dX8PYXLaAhsMxf5PEeAOpShh3qM08
	98Z/fLefEYJ3i6/t42J6dOHM4ZhFQ0N2G44UkHd7b8QoLQb6AhspbdCY53HRK0fwByg+g8=
X-Google-Smtp-Source: AGHT+IEeLLNtBVGA+7E9nkAzc1yW16VZLlAijgwsZnx4XQmkKCrxxYVQSkhoU+eb7HbS6RD7Lq5F5JVkN6WrXbSAXag=
X-Received: by 2002:a2e:984a:0:b0:37a:45fb:d42f with SMTP id
 38308e7fff4ca-37d077cdf50mr70023191fa.19.1764688910428; Tue, 02 Dec 2025
 07:21:50 -0800 (PST)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@djangoproject.com>
Date: Tue, 2 Dec 2025 12:21:34 -0300
X-Gm-Features: AWmQ_blQLY3y8o6ozKiy-F_qIqYG10PtKuu5BmvOJH8DMbYmnbuGZwfws9_U_KY
Message-ID: <CAJVoTUsaCXQcRZqEAyhgDo2MZf5Me3YBQ=qqoHPb9M7VFr4g6g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="000000000000a53be40644f9a7a8"
Subject: [oss-security] Django CVE-2025-13372 and CVE-2025-64460

--000000000000a53be40644f9a7a8
Content-Type: text/plain; charset="UTF-8"

* CVE JSON Record for CVE-2025-13372:
https://www.cve.org/CVERecord?id=CVE-2025-13372

* CVE JSON Record for CVE-2025-64460:
https://www.cve.org/CVERecord?id=CVE-2025-64460

* Announce:
https://www.djangoproject.com/weblog/2025/dec/02/security-releases/

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.2.9 <https://docs.djangoproject.com/en/dev/releases/5.2.9/>`_,
`Django 5.1.15 <https://docs.djangoproject.com/en/dev/releases/5.1.15/>`_,
and
`Django 4.2.27 <https://docs.djangoproject.com/en/dev/releases/4.2.27/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2025-13372: Potential SQL injection in ``FilteredRelation`` column
aliases on PostgreSQL
============================================================================================

``FilteredRelation`` was subject to SQL injection in column aliases,
using a suitably crafted dictionary, with dictionary expansion, as the
``**kwargs`` passed to ``QuerySet.annotate()`` or ``QuerySet.alias()``
on PostgreSQL.

Thanks to Stackered for the report.

This issue has severity "high" according to the Django security policy.

CVE-2025-64460: Potential denial-of-service vulnerability in XML serializer
text extraction
===========================================================================================

Algorithmic complexity in
``django.core.serializers.xml_serializer.getInnerText()`` allowed a remote
attacker
to cause a potential denial-of-service triggering CPU and memory exhaustion
via specially crafted
XML input submitted to a service that invokes XML ``Deserializer``.
The vulnerability resulted from repeated string concatenation while
recursively collecting text nodes,
which produced superlinear computation resulting in service degradation or
outage.

Thanks to Seokchan Yoon (https://ch4n3.kr/) for the report.

This issue has severity "moderate" according to the Django security policy.

Affected supported versions
===========================

* Django main
* Django 6.0 (currently at release candidate status)
* Django 5.2
* Django 5.1
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 6.0 (currently at release candidate status), 5.2, 5.1, and 4.2
branches.
The patches may be obtained from the following changesets.

CVE-2025-13372: Potential SQL injection in ``FilteredRelation`` column
aliases on PostgreSQL
--------------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/5b90ca1e7591fa36fccf2d6dad67cf1477e6293e
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/56aea00c3c5e1aacf4ed05f8ee06c2e78f02cea0
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/479415ce5249bcdebeb6570c72df2a87f45a7bbf
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/9c6a5bde24240382807d13bc3748d08444709355
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/f997037b235f6b5c9e7c4a501491ec45f3400f3d
>`__

CVE-2025-64460: Potential denial-of-service vulnerability in XML serializer
text extraction
-------------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/50efb718b31333051bc2dcb06911b8fa1358c98c
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/1dbd07a608e495a0c229edaaf84d58d8976313b5
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/99e7d22f55497278d0bcb2e15e72ef532e62a31d
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/0db9ea4669312f1f4973e09f4bca06ab9c1ec74b
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/4d2b8803bebcdefd2b76e9e8fc528d5fddea93f0
>`__

The following releases have been issued
=======================================

* Django 5.2.9 (`download Django 5.2.9
  <https://www.djangoproject.com/download/5.2.9/tarball/>`_ |
  `5.2.9 checksums
  <https://www.djangoproject.com/download/5.2.9/checksum/>`_)
* Django 5.1.15 (`download Django 5.1.15
  <https://www.djangoproject.com/download/5.1.15/tarball/>`_ |
  `5.1.15 checksums
  <https://www.djangoproject.com/download/5.1.15/checksum/>`_)
* Django 4.2.27 (`download Django 4.2.27
  <https://www.djangoproject.com/download/4.2.27/tarball/>`_ |
  `4.2.27 checksums
  <https://www.djangoproject.com/download/4.2.27/checksum/>`_)

The PGP key ID used for this release is Natalia Bidart: `2EE82A8D9470983E <
https://github.com/nessita.gpg>`_


General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum. Please see `our security policies
<https://www.djangoproject.com/security/>`_ for further information.

--000000000000a53be40644f9a7a8--
