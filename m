Received: (qmail 28004 invoked by uid 550); 5 Nov 2025 15:22:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25887 invoked from network); 5 Nov 2025 15:20:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1762355998; x=1762960798; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Be+aLClgaHjGbgJ2SYX6x6N50E8k/MqfDdwgKtxnQcg=;
        b=LK9hcsKGLz7hcX3lcuOtsyk5UgzVYUTvvNdAtOqtJgP/cIQYOZWpv26vAJj0x+NPs0
         3NRh8VQpzkl6HNOjG6FGtkiDREvYZVZCzbYDbMmYH2/HUpl3kVP34/TTW651arEVH0cz
         ZRsTBHOLOujhzASpz3OEoX7v1/lNKr3n79/FUE4jyHBjeHM6o56te02KE8tWWIjqkxi3
         X0yXnxkaIH3tTnbApkD7kgGzPK1yJQqLP3h61hipwVGEs5jXp6xzk16EBeBqgrTYRvZs
         3dTUOHoyDhcpVSNH189Gk9dyh6sXodexye84Pa1KsEwqBIW8cqpYgK/GQbGL+knZmbGk
         WFEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762355998; x=1762960798;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Be+aLClgaHjGbgJ2SYX6x6N50E8k/MqfDdwgKtxnQcg=;
        b=mFSAVkJHsDJuLS5RROcFt/1slGmAZyRrHYpQgBenBz5YEreSjr8bS18zeI2eI0M5DU
         O7gkn2ESiB+bt1TgyLgVRSb0yrsM8kautgM4Bn5MpO8InMeS73zwAG2Gtn7Cmr3IATif
         Zun9UEHIBuA/8qMyrp/ZktOwhEQKDh+poSZBkpW1JqAPwgsO1Bsxv/kpcR7Hbm22Il40
         dYqc/KbCf7r404Y/KNaxy4PGfE7wNUSJH25BDBlVyKpChUQGcm2DNIcB2rKNCSET9M5l
         T5NbBKiXQQWVDueH3ea/9oY2KuOONTQoza9RpxJrDhNI9oxgHHJayQCfTB5k9tc5hxzv
         +5Zg==
X-Gm-Message-State: AOJu0YyIpqkYTm5q1L/jdYyYBBvLsgijKhxKi8cjuqF8fS5kLge/XXBD
	MgD08pLqTKcd7211+kuRPxUJ5M/T1UVWH/2FdCkyCon07JCUBH/h0ax0bR9EVATnFzQxbgORYGR
	x+xk7wb/udefCksfzp6ynMNOBN7RJsLDPs7CHMkDCURrHbEVDw+vaDElytehpg4E=
X-Gm-Gg: ASbGncvjuVkIK1c3CJYFtygcFtFgfo5DW0FUBFWAGTuA4liWMYm3YZ7fhv2FBToYTYp
	OC57DWcRQK/JHjlhmz/Gv/g31rGJLv94heURQ6kiqPWtxN2hV2fFAHaWhOoUMT/gZyHCizlblRq
	Osr24QgAPvygmgV5Z401TRy/0iYt1LYmZKHtnxGbjBKOdJ/U7HvhYl2BLjLQCrPjiC2QmmyRFac
	ZzYA3aQSLPklQRUu7g6ThY9sz9eTynNs2zT7+lmdnpsVH54kDOE6qTaHeEM
X-Google-Smtp-Source: AGHT+IFNjKd/jB0CPvsc49QoAuWbsU1JdX0uObEnyKLjmQ79GZojCZZuGo3Ou6XzChyH01FIZgE9/A1+q0AMzsrlCcQ=
X-Received: by 2002:a05:6512:398f:b0:591:ec0d:3014 with SMTP id
 2adb3069b0e04-5943d7d815cmr1122721e87.48.1762355997464; Wed, 05 Nov 2025
 07:19:57 -0800 (PST)
MIME-Version: 1.0
From: Natalia Bidart <nataliabidart@djangoproject.com>
Date: Wed, 5 Nov 2025 12:19:41 -0300
X-Gm-Features: AWmQ_bk-g6HDO1KgH-vUFeFCboPnvmifwI4Eyicp4oQbzDAtv9nNba7jn-hpUKk
Message-ID: <CAJVoTUugFyJTPx6wGkzDPFpeXv_HujZ44tPeFG4YvtN_zYLbmA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="0000000000003269a30642da7bfe"
Subject: [oss-security] Django CVE-2025-64458 and CVE-2025-64459

--0000000000003269a30642da7bfe
Content-Type: text/plain; charset="UTF-8"

* Announce:
https://www.djangoproject.com/weblog/2025/nov/05/security-releases/

* JSON Record for CVE-2025-64458:
https://www.cve.org/CVERecord?id=CVE-2025-64458

* JSON Record for CVE-2025-64459:
https://www.cve.org/CVERecord?id=CVE-2025-64459

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.2.8 <https://docs.djangoproject.com/en/dev/releases/5.2.8/>`_,
`Django 5.1.14 <https://docs.djangoproject.com/en/dev/releases/5.1.14/>`_,
and
`Django 4.2.26 <https://docs.djangoproject.com/en/dev/releases/4.2.26/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2025-64458: Potential denial-of-service vulnerability in
``HttpResponseRedirect`` and ``HttpResponsePermanentRedirect`` on Windows
======================================================================================================================================

`NFKC normalization <
https://docs.python.org/3/library/unicodedata.html#unicodedata.normalize>`_
in Python is slow on Windows. As a consequence, ``HttpResponseRedirect``,
``HttpResponsePermanentRedirect``, and ``redirect`` were subject to a
potential denial-of-service attack
via certain inputs with a very large number of Unicode characters.

Thanks to Seokchan Yoon (https://ch4n3.kr/) for the report.

This issue has severity "moderate" according to the Django security policy.

CVE-2025-64459: Potential SQL injection via ``_connector`` keyword argument
in ``QuerySet`` and ``Q`` objects
=============================================================================================================

The methods ``QuerySet.filter()``, ``QuerySet.exclude()``, and
``QuerySet.get()``,
and the class ``Q()`` were subject to SQL injection when using a suitably
crafted
dictionary, with dictionary expansion, as the ``_connector`` argument.

Thanks to cyberstan for the report.

This issue has severity "high" according to the Django security policy.


Affected supported versions
===========================

* Django main
* Django 6.0 (currently at beta status)
* Django 5.2
* Django 5.1
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 6.0 (currently at beta status), 5.2, 5.1, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2025-64458: Potential denial-of-service vulnerability in
``HttpResponseRedirect`` and ``HttpResponsePermanentRedirect`` on Windows
--------------------------------------------------------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/c880530ddd4fabd5939bab0e148bebe36699432a
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/6e13348436fccf8f22982921d6a3a3e65c956a9f
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/4f5d904b63751dea9ffc3b0e046404a7fa5881ac
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/3790593781d26168e7306b5b2f8ea0309de16242
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/770eea38d7a0e9ba9455140b5a9a9e33618226a7
>`__

CVE-2025-64459: Potential SQL injection via ``_connector`` keyword argument
in ``QuerySet`` and ``Q`` objects
-------------------------------------------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/98e642c69181c942d60a10ca0085d48c6b3068bb
>`__
* On the `6.0 branch <
https://github.com/django/django/commit/06dd38324ac3d60d83d9f3adabf0dcdf423d2a85
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/6703f364d767e949c5b0e4016433ef75063b4f9b
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/72d2c87431f2ae0431d65d0ec792047f078c8241
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/59ae82e67053d281ff4562a24bbba21299f0a7d4
>`__


The following releases have been issued
=======================================

* Django 5.2.8 (`download Django 5.2.8
  <https://www.djangoproject.com/download/5.2.8/tarball/>`_ |
  `5.2.8 checksums
  <https://www.djangoproject.com/download/5.2.8/checksum/>`_)
* Django 5.1.14 (`download Django 5.1.14
  <https://www.djangoproject.com/download/5.1.14/tarball/>`_ |
  `5.1.14 checksums
  <https://www.djangoproject.com/download/5.1.14/checksum/>`_)
* Django 4.2.26 (`download Django 4.2.26
  <https://www.djangoproject.com/download/4.2.26/tarball/>`_ |
  `4.2.26 checksums
  <https://www.djangoproject.com/download/4.2.26/checksum/>`_)

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

--0000000000003269a30642da7bfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">* Announce: <a href=3D"https://www.djangoproject.com/weblo=
g/2025/nov/05/security-releases/">https://www.djangoproject.com/weblog/2025=
/nov/05/security-releases/</a><div><br>* JSON Record for CVE-2025-64458: <a=
 href=3D"https://www.cve.org/CVERecord?id=3DCVE-2025-64458">https://www.cve=
.org/CVERecord?id=3DCVE-2025-64458</a><br><br></div><div>* JSON Record for =
CVE-2025-64459: <a href=3D"https://www.cve.org/CVERecord?id=3DCVE-2025-6445=
9">https://www.cve.org/CVERecord?id=3DCVE-2025-64459</a><br><br><div>In acc=
ordance with `our security release policy<br>&lt;<a href=3D"https://docs.dj=
angoproject.com/en/dev/internals/security/">https://docs.djangoproject.com/=
en/dev/internals/security/</a>&gt;`_, the Django team<br>is issuing release=
s for<br>`Django 5.2.8 &lt;<a href=3D"https://docs.djangoproject.com/en/dev=
/releases/5.2.8/">https://docs.djangoproject.com/en/dev/releases/5.2.8/</a>=
&gt;`_,<br>`Django 5.1.14 &lt;<a href=3D"https://docs.djangoproject.com/en/=
dev/releases/5.1.14/">https://docs.djangoproject.com/en/dev/releases/5.1.14=
/</a>&gt;`_, and<br>`Django 4.2.26 &lt;<a href=3D"https://docs.djangoprojec=
t.com/en/dev/releases/4.2.26/">https://docs.djangoproject.com/en/dev/releas=
es/4.2.26/</a>&gt;`_.<br>These releases address the security issues detaile=
d below. We encourage all<br>users of Django to upgrade as soon as possible=
.<br><br>CVE-2025-64458: Potential denial-of-service vulnerability in ``Htt=
pResponseRedirect`` and ``HttpResponsePermanentRedirect`` on Windows<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br><br>`NFKC normalization &lt;<a href=3D"https://=
docs.python.org/3/library/unicodedata.html#unicodedata.normalize">https://d=
ocs.python.org/3/library/unicodedata.html#unicodedata.normalize</a>&gt;`_<b=
r>in Python is slow on Windows. As a consequence, ``HttpResponseRedirect``,=
<br>``HttpResponsePermanentRedirect``, and ``redirect`` were subject to a p=
otential denial-of-service attack<br>via certain inputs with a very large n=
umber of Unicode characters.<br><br>Thanks to Seokchan Yoon (<a href=3D"htt=
ps://ch4n3.kr/">https://ch4n3.kr/</a>) for the report.<br><br>This issue ha=
s severity &quot;moderate&quot; according to the Django security policy.<br=
><br>CVE-2025-64459: Potential SQL injection via ``_connector`` keyword arg=
ument in ``QuerySet`` and ``Q`` objects<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
><br>The methods ``QuerySet.filter()``, ``QuerySet.exclude()``, and ``Query=
Set.get()``,<br>and the class ``Q()`` were subject to SQL injection when us=
ing a suitably crafted<br>dictionary, with dictionary expansion, as the ``_=
connector`` argument.<br><br>Thanks to cyberstan for the report.<br><br>Thi=
s issue has severity &quot;high&quot; according to the Django security poli=
cy.<br><br><br>Affected supported versions<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br>* Django main=
<br>* Django 6.0 (currently at beta status)<br>* Django 5.2<br>* Django 5.1=
<br>* Django 4.2<br><br>Resolution<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br=
>Patches to resolve the issue have been applied to Django&#39;s<br>main, 6.=
0 (currently at beta status), 5.2, 5.1, and 4.2 branches.<br>The patches ma=
y be obtained from the following changesets.<br><br>CVE-2025-64458: Potenti=
al denial-of-service vulnerability in ``HttpResponseRedirect`` and ``HttpRe=
sponsePermanentRedirect`` on Windows<br>-----------------------------------=
---------------------------------------------------------------------------=
------------------------<br><br>* On the `main branch &lt;<a href=3D"https:=
//github.com/django/django/commit/c880530ddd4fabd5939bab0e148bebe36699432a"=
>https://github.com/django/django/commit/c880530ddd4fabd5939bab0e148bebe366=
99432a</a>&gt;`__<br>* On the `6.0 branch &lt;<a href=3D"https://github.com=
/django/django/commit/6e13348436fccf8f22982921d6a3a3e65c956a9f">https://git=
hub.com/django/django/commit/6e13348436fccf8f22982921d6a3a3e65c956a9f</a>&g=
t;`__<br>* On the `5.2 branch &lt;<a href=3D"https://github.com/django/djan=
go/commit/4f5d904b63751dea9ffc3b0e046404a7fa5881ac">https://github.com/djan=
go/django/commit/4f5d904b63751dea9ffc3b0e046404a7fa5881ac</a>&gt;`__<br>* O=
n the `5.1 branch &lt;<a href=3D"https://github.com/django/django/commit/37=
90593781d26168e7306b5b2f8ea0309de16242">https://github.com/django/django/co=
mmit/3790593781d26168e7306b5b2f8ea0309de16242</a>&gt;`__<br>* On the `4.2 b=
ranch &lt;<a href=3D"https://github.com/django/django/commit/770eea38d7a0e9=
ba9455140b5a9a9e33618226a7">https://github.com/django/django/commit/770eea3=
8d7a0e9ba9455140b5a9a9e33618226a7</a>&gt;`__<br><br>CVE-2025-64459: Potenti=
al SQL injection via ``_connector`` keyword argument in ``QuerySet`` and ``=
Q`` objects<br>------------------------------------------------------------=
-------------------------------------------------<br><br>* On the `main bra=
nch &lt;<a href=3D"https://github.com/django/django/commit/98e642c69181c942=
d60a10ca0085d48c6b3068bb">https://github.com/django/django/commit/98e642c69=
181c942d60a10ca0085d48c6b3068bb</a>&gt;`__<br>* On the `6.0 branch &lt;<a h=
ref=3D"https://github.com/django/django/commit/06dd38324ac3d60d83d9f3adabf0=
dcdf423d2a85">https://github.com/django/django/commit/06dd38324ac3d60d83d9f=
3adabf0dcdf423d2a85</a>&gt;`__<br>* On the `5.2 branch &lt;<a href=3D"https=
://github.com/django/django/commit/6703f364d767e949c5b0e4016433ef75063b4f9b=
">https://github.com/django/django/commit/6703f364d767e949c5b0e4016433ef750=
63b4f9b</a>&gt;`__<br>* On the `5.1 branch &lt;<a href=3D"https://github.co=
m/django/django/commit/72d2c87431f2ae0431d65d0ec792047f078c8241">https://gi=
thub.com/django/django/commit/72d2c87431f2ae0431d65d0ec792047f078c8241</a>&=
gt;`__<br>* On the `4.2 branch &lt;<a href=3D"https://github.com/django/dja=
ngo/commit/59ae82e67053d281ff4562a24bbba21299f0a7d4">https://github.com/dja=
ngo/django/commit/59ae82e67053d281ff4562a24bbba21299f0a7d4</a>&gt;`__<br><b=
r><br>The following releases have been issued<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br><br>* Django 5.2.8 (`download Django 5.2.8<br>=C2=A0 =
&lt;<a href=3D"https://www.djangoproject.com/download/5.2.8/tarball/">https=
://www.djangoproject.com/download/5.2.8/tarball/</a>&gt;`_ |<br>=C2=A0 `5.2=
.8 checksums<br>=C2=A0 &lt;<a href=3D"https://www.djangoproject.com/downloa=
d/5.2.8/checksum/">https://www.djangoproject.com/download/5.2.8/checksum/</=
a>&gt;`_)<br>* Django 5.1.14 (`download Django 5.1.14<br>=C2=A0 &lt;<a href=
=3D"https://www.djangoproject.com/download/5.1.14/tarball/">https://www.dja=
ngoproject.com/download/5.1.14/tarball/</a>&gt;`_ |<br>=C2=A0 `5.1.14 check=
sums<br>=C2=A0 &lt;<a href=3D"https://www.djangoproject.com/download/5.1.14=
/checksum/">https://www.djangoproject.com/download/5.1.14/checksum/</a>&gt;=
`_)<br>* Django 4.2.26 (`download Django 4.2.26<br>=C2=A0 &lt;<a href=3D"ht=
tps://www.djangoproject.com/download/4.2.26/tarball/">https://www.djangopro=
ject.com/download/4.2.26/tarball/</a>&gt;`_ |<br>=C2=A0 `4.2.26 checksums<b=
r>=C2=A0 &lt;<a href=3D"https://www.djangoproject.com/download/4.2.26/check=
sum/">https://www.djangoproject.com/download/4.2.26/checksum/</a>&gt;`_)<br=
><br>The PGP key ID used for this release is Natalia Bidart: `2EE82A8D94709=
83E &lt;<a href=3D"https://github.com/nessita.gpg">https://github.com/nessi=
ta.gpg</a>&gt;`_<br><br><br>General notes regarding security reporting<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br>As always, we as=
k that potential security issues be reported via private email<br>to ``<a h=
ref=3D"mailto:security@djangoproject.com">security@djangoproject.com</a>``,=
 and not via Django&#39;s Trac instance, nor via<br>the Django Forum. Pleas=
e see `our security policies<br>&lt;<a href=3D"https://www.djangoproject.co=
m/security/">https://www.djangoproject.com/security/</a>&gt;`_ for further =
information.</div></div></div>

--0000000000003269a30642da7bfe--
