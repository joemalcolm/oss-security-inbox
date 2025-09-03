Received: (qmail 15799 invoked by uid 550); 3 Sep 2025 20:21:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7990 invoked from network); 3 Sep 2025 13:48:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=djangoproject-com.20230601.gappssmtp.com; s=20230601; t=1756907277; x=1757512077; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gKxIt7FneeeoFxROyklkJRH3hoC/n1F0p8/O17uV96Y=;
        b=g5cFjPLu65WdXfTgfAvH18oTHWQn2n3MSlgXhrG+o6XCrh7jzPjsKVXCmj8pxNW9es
         PMVGvyLZHSSjAM/6+Gji3fDazMAFR0Wx92YrqD6JQcXdwxnkz+wdCgOQBoRPWaBTgaXU
         1TZTdcQKJNgnbFVRNJpWYcjlE1LyZsIjXUSTFffbeLVmwWJLQLB2THodlFmKJdrG1CAY
         hdrye0UEfvYUfLNa7bmyHjUpfdJSfFefW3XTjom2SA/KG/QT8hAQFDiYW+jEnkFRWf69
         LO4e9GmhfCG4v9hmfbt7UPhlGN6V9GCVTXiK2duxZx3PU/uYt5flCEF1MxSa0h1mbicd
         rRkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756907277; x=1757512077;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gKxIt7FneeeoFxROyklkJRH3hoC/n1F0p8/O17uV96Y=;
        b=f8odAl103aMSXqUy+JTkHf3nRpjLYlSw8lGI/casj1Nfqm3G26x0ZKVAaBfy+pEP9Q
         bJZZdtJiASIVsHKP/wI+TvTGsbp5+1wOYzD5USHgwGA4r2RO6bEeGtWbA7VQzRMnLH4x
         GqrB3VP3l8zOre1rTVXW3H3ngVQvVenfE918fb6wY9cTIp3HAsmJVBsvrYrUE2JmTEtV
         Xt0mHejLxIJRBZqpuM9uZwCbV9PtENGky0GH2JY1MyvnDR/0gzyjx8vXUo6JAEr4SQ4r
         qRHqvaSB2cHdi7o2MfJ2XqveH5yKtqxMunK1Vwc/ja36pbp/0wP7XUTk518kzOfUZ9A4
         o3hA==
X-Gm-Message-State: AOJu0YzKaMzeC5IA12v1rmNDFM9yfL0oPixsfGz7KQkw3+Tmcpx22bR1
	cWTpbmkCtnV0XhO2RDJgLqovxoAt8aksgA4lHoOO1NrTvnk5WmjWweo7ai0PbsEhZDRaEQikVtr
	AnR4yEDFBuACi4+1IrKaYOPh0nb9xZ1KrT0F9rberXMwahn1pogdTjDI=
X-Gm-Gg: ASbGncvfd/VtTZjezhz5uP7vbFwZMD4yAftEjgN/djC1xWOY1TVU71jWw8FpMxlhnlb
	cQcmVk5HbwFIMAVbikK+rL/OQDS2wts4+2hAWvdUe1bxPZX7hl9ICo1MumntNMSsPAB5IcDxVqN
	38lXmzyPy9D8JNXhURPtAC+rtgM4qtwSCZ22KJS+7lKck2xatsOqFDYOeNltNxMC++xkTvrVEQX
	eYH3zZWlpu7gF9a3L+jn/YgIunR
X-Google-Smtp-Source: AGHT+IFTRERalgLncoA+enAm5by84VulDY52o6roFoJUxSUjafzDNeL9s6JD/6qYb/8Qw2cqvfcoxiAO0Hhg1Z7khAs=
X-Received: by 2002:a17:907:9406:b0:b04:4aa9:eec8 with SMTP id
 a640c23a62f3a-b044aaa4b0cmr733001266b.17.1756907277088; Wed, 03 Sep 2025
 06:47:57 -0700 (PDT)
MIME-Version: 1.0
From: Sarah Boyce <sarahboyce@djangoproject.com>
Date: Wed, 3 Sep 2025 15:47:45 +0200
X-Gm-Features: Ac12FXw_CZQBikx5co7iLYWmG4nV0AYzSm1_uTMB5KAGjEP0dSdyYl_DYNM0mYo
Message-ID: <CAN+fQHy1xnDnmVBWDzdYOvZvsQJ=V2qkzCZ39i8KOcQ7_ozFjg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Django Security Team <security@djangoproject.com>
Content-Type: multipart/alternative; boundary="000000000000278a80063de5daa2"
Subject: [oss-security] CVE-2025-57833: Django: Potential SQL injection in FilteredRelation column aliases

--000000000000278a80063de5daa2
Content-Type: text/plain; charset="UTF-8"

* Announce link:
https://www.djangoproject.com/weblog/2025/sep/03/security-releases/

* Announce content:

In accordance with `our security release policy
<https://docs.djangoproject.com/en/dev/internals/security/>`_, the Django
team
is issuing releases for
`Django 5.2.6 <https://docs.djangoproject.com/en/dev/releases/5.2.6/>`_,
`Django 5.1.12 <https://docs.djangoproject.com/en/dev/releases/5.1.12/>`_,
and
`Django 4.2.24 <https://docs.djangoproject.com/en/dev/releases/4.2.24/>`_.
These releases address the security issues detailed below. We encourage all
users of Django to upgrade as soon as possible.

CVE-2025-57833: Potential SQL injection in FilteredRelation column aliases
==========================================================================

``FilteredRelation`` was subject to SQL injection in column aliases, using
a suitably crafted dictionary, with dictionary expansion, as the
``**kwargs`` passed ``QuerySet.annotate()`` or ``QuerySet.alias()``.

Thanks to Eyal Gabay (EyalSec) for the report.

This issue has severity "high" according to the Django security policy.


Affected supported versions
===========================

* Django main
* Django 5.2
* Django 5.1
* Django 4.2

Resolution
==========

Patches to resolve the issue have been applied to Django's
main, 5.2, 5.1, and 4.2 branches.
The patches may be obtained from the following changesets.

CVE-2025-57833: Potential SQL injection in FilteredRelation column aliases
--------------------------------------------------------------------------

* On the `main branch <
https://github.com/django/django/commit/51711717098d3f469f795dfa6bc3758b24f69ef7
>`__
* On the `5.2 branch <
https://github.com/django/django/commit/4c044fcc866ec226f612c475950b690b0139d243
>`__
* On the `5.1 branch <
https://github.com/django/django/commit/102965ea93072fe3c39a30be437c683ec1106ef5
>`__
* On the `4.2 branch <
https://github.com/django/django/commit/31334e6965ad136a5e369993b01721499c5d1a92
>`__


The following releases have been issued
=======================================

* Django 5.2.6 (`download Django 5.2.6
  <https://www.djangoproject.com/download/5.2.6/tarball/>`_ |
  `5.2.6 checksums
  <https://www.djangoproject.com/download/5.2.6/checksum/>`_)
* Django 5.1.12 (`download Django 5.1.12
  <https://www.djangoproject.com/download/5.1.12/tarball/>`_ |
  `5.1.12 checksums
  <https://www.djangoproject.com/download/5.1.12/checksum/>`_)
* Django 4.2.24 (`download Django 4.2.24
  <https://www.djangoproject.com/download/4.2.24/tarball/>`_ |
  `4.2.24 checksums
  <https://www.djangoproject.com/download/4.2.24/checksum/>`_)

The PGP key ID used for this release is : `3955B19851EA96EF <
https://github.com/sarahboyce.gpg>`_


General notes regarding security reporting
==========================================

As always, we ask that potential security issues be reported via private
email
to ``security@djangoproject.com``, and not via Django's Trac instance, nor
via
the Django Forum. Please see `our security policies
<https://www.djangoproject.com/security/>`_ for further information.

* Machine-readable CVE data for CVE-2025-57833:
{
  "affected": [
    {
      "collectionURL": "https://github.com/django/django/",
      "defaultStatus": "affected",
      "packageName": "django",
      "versions": [
        {
          "lessThan": "5.2.6",
          "status": "affected",
          "version": "5.2.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.2.*",
          "status": "unaffected",
          "version": "5.2.6",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.12",
          "status": "affected",
          "version": "5.1.0",
          "versionType": "semver"
        },
        {
          "lessThan": "5.1.*",
          "status": "unaffected",
          "version": "5.1.12",
          "versionType": "semver"
        },
        {
          "lessThan": "4.2.24",
          "status": "affected",
          "version": "4.2.0",
          "versionType": "semver"
        },
        {
          "lessThan": "4.2.*",
          "status": "unaffected",
          "version": "4.2.24",
          "versionType": "semver"
        }
      ]
    }
  ],
  "credits": [
    {
      "lang": "en",
      "type": "reporter",
      "value": "Django would like to thank Eyal Gabay (EyalSec) for
reporting this issue."
    }
  ],
  "datePublic": "09/03/2025",
  "descriptions": [
    {
      "lang": "en",
      "value": "FilteredRelation is subject to SQL injection in column
aliases, using a suitably crafted dictionary, with dictionary expansion, as
the **kwargs passed QuerySet.annotate() or QuerySet.alias()."
    }
  ],
  "metrics": [
    {
      "other": {
        "content": {
          "namespace": "
https://docs.djangoproject.com/en/dev/internals/security/#security-issue-severity-levels
",
          "value": "high"
        },
        "type": "Django severity rating"
      }
    }
  ],
  "references": [
    {
      "name": "Django security releases issued: 5.2.6, 5.1.12, and 4.2.24",
      "tags": [
        "vendor-advisory"
      ],
      "url": "
https://www.djangoproject.com/weblog/2025/sep/03/security-releases/"
    }
  ],
  "timeline": [
    {
      "lang": "en",
      "time": "2025-09-03T13:00:00+00:00",
      "value": "Made public."
    }
  ],
  "title": "Potential SQL injection in FilteredRelation column aliases"
}

--000000000000278a80063de5daa2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">* Announce link: <a href=3D"https://www.djangoproject.com/=
weblog/2025/sep/03/security-releases/">https://www.djangoproject.com/weblog=
/2025/sep/03/security-releases/</a><br><br>* Announce content:<br><br>In ac=
cordance with `our security release policy<br>&lt;<a href=3D"https://docs.d=
jangoproject.com/en/dev/internals/security/">https://docs.djangoproject.com=
/en/dev/internals/security/</a>&gt;`_, the Django team<br>is issuing releas=
es for<br>`Django 5.2.6 &lt;<a href=3D"https://docs.djangoproject.com/en/de=
v/releases/5.2.6/">https://docs.djangoproject.com/en/dev/releases/5.2.6/</a=
>&gt;`_,<br>`Django 5.1.12 &lt;<a href=3D"https://docs.djangoproject.com/en=
/dev/releases/5.1.12/">https://docs.djangoproject.com/en/dev/releases/5.1.1=
2/</a>&gt;`_, and<br>`Django 4.2.24 &lt;<a href=3D"https://docs.djangoproje=
ct.com/en/dev/releases/4.2.24/">https://docs.djangoproject.com/en/dev/relea=
ses/4.2.24/</a>&gt;`_.<br>These releases address the security issues detail=
ed below. We encourage all<br>users of Django to upgrade as soon as possibl=
e.<br><br>CVE-2025-57833: Potential SQL injection in FilteredRelation colum=
n aliases<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br><br>``FilteredRelation`` was subject to SQL injection in co=
lumn aliases, using a suitably crafted dictionary, with dictionary expansio=
n, as the ``**kwargs`` passed ``QuerySet.annotate()`` or ``QuerySet.alias()=
``.<br><br>Thanks to Eyal Gabay (EyalSec) for the report.<br><br>This issue=
 has severity &quot;high&quot; according to the Django security policy.<br>=
<br><br>Affected supported versions<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br>* Django main<br>* Dja=
ngo 5.2<br>* Django 5.1<br>* Django 4.2<br><br>Resolution<br>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br><br>Patches to resolve the issue have been applied to=
 Django&#39;s<br>main, 5.2, 5.1, and 4.2 branches.<br>The patches may be ob=
tained from the following changesets.<br><br>CVE-2025-57833: Potential SQL =
injection in FilteredRelation column aliases<br>---------------------------=
-----------------------------------------------<br><br>* On the `main branc=
h &lt;<a href=3D"https://github.com/django/django/commit/51711717098d3f469f=
795dfa6bc3758b24f69ef7">https://github.com/django/django/commit/51711717098=
d3f469f795dfa6bc3758b24f69ef7</a>&gt;`__<br>* On the `5.2 branch &lt;<a hre=
f=3D"https://github.com/django/django/commit/4c044fcc866ec226f612c475950b69=
0b0139d243">https://github.com/django/django/commit/4c044fcc866ec226f612c47=
5950b690b0139d243</a>&gt;`__<br>* On the `5.1 branch &lt;<a href=3D"https:/=
/github.com/django/django/commit/102965ea93072fe3c39a30be437c683ec1106ef5">=
https://github.com/django/django/commit/102965ea93072fe3c39a30be437c683ec11=
06ef5</a>&gt;`__<br>* On the `4.2 branch &lt;<a href=3D"https://github.com/=
django/django/commit/31334e6965ad136a5e369993b01721499c5d1a92">https://gith=
ub.com/django/django/commit/31334e6965ad136a5e369993b01721499c5d1a92</a>&gt=
;`__<br><br><br>The following releases have been issued<br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br>* Django 5.2.6 (`download Django 5.2.6<b=
r>=C2=A0 &lt;<a href=3D"https://www.djangoproject.com/download/5.2.6/tarbal=
l/">https://www.djangoproject.com/download/5.2.6/tarball/</a>&gt;`_ |<br>=
=C2=A0 `5.2.6 checksums<br>=C2=A0 &lt;<a href=3D"https://www.djangoproject.=
com/download/5.2.6/checksum/">https://www.djangoproject.com/download/5.2.6/=
checksum/</a>&gt;`_)<br>* Django 5.1.12 (`download Django 5.1.12<br>=C2=A0 =
&lt;<a href=3D"https://www.djangoproject.com/download/5.1.12/tarball/">http=
s://www.djangoproject.com/download/5.1.12/tarball/</a>&gt;`_ |<br>=C2=A0 `5=
.1.12 checksums<br>=C2=A0 &lt;<a href=3D"https://www.djangoproject.com/down=
load/5.1.12/checksum/">https://www.djangoproject.com/download/5.1.12/checks=
um/</a>&gt;`_)<br>* Django 4.2.24 (`download Django 4.2.24<br>=C2=A0 &lt;<a=
 href=3D"https://www.djangoproject.com/download/4.2.24/tarball/">https://ww=
w.djangoproject.com/download/4.2.24/tarball/</a>&gt;`_ |<br>=C2=A0 `4.2.24 =
checksums<br>=C2=A0 &lt;<a href=3D"https://www.djangoproject.com/download/4=
.2.24/checksum/">https://www.djangoproject.com/download/4.2.24/checksum/</a=
>&gt;`_)<br><br>The PGP key ID used for this release is : `3955B19851EA96EF=
 &lt;<a href=3D"https://github.com/sarahboyce.gpg">https://github.com/sarah=
boyce.gpg</a>&gt;`_<br><br><br>General notes regarding security reporting<b=
r>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br>As always, we=
 ask that potential security issues be reported via private email<br>to ``<=
a href=3D"mailto:security@djangoproject.com">security@djangoproject.com</a>=
``, and not via Django&#39;s Trac instance, nor via<br>the Django Forum. Pl=
ease see `our security policies<br>&lt;<a href=3D"https://www.djangoproject=
.com/security/">https://www.djangoproject.com/security/</a>&gt;`_ for furth=
er information.<br><br>* Machine-readable CVE data for CVE-2025-57833:<br>{=
<br>=C2=A0 &quot;affected&quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=
=A0 &quot;collectionURL&quot;: &quot;<a href=3D"https://github.com/django/d=
jango/">https://github.com/django/django/</a>&quot;,<br>=C2=A0 =C2=A0 =C2=
=A0 &quot;defaultStatus&quot;: &quot;affected&quot;,<br>=C2=A0 =C2=A0 =C2=
=A0 &quot;packageName&quot;: &quot;django&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &q=
uot;versions&quot;: [<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &quot;5.2.6&quot;,<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: &quot;affected&quot;,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&quot;: &quot;5.2.0&quot;,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versionType&quot;: &quot;semver&quot;=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &quot;5.2.*&quot;,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: &quot;unaffected&qu=
ot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&quot;: &quot;5.2.6=
&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versionType&quot;: &quo=
t;semver&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &quot;=
5.1.12&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: &qu=
ot;affected&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&quot=
;: &quot;5.1.0&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versionTy=
pe&quot;: &quot;semver&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;lessThan=
&quot;: &quot;5.1.*&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;stat=
us&quot;: &quot;unaffected&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &qu=
ot;version&quot;: &quot;5.1.12&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;versionType&quot;: &quot;semver&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
&quot;lessThan&quot;: &quot;4.2.24&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &quot;status&quot;: &quot;affected&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 &quot;version&quot;: &quot;4.2.0&quot;,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;versionType&quot;: &quot;semver&quot;<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;lessThan&quot;: &quot;4.2.*&quot;,<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: &quot;unaffected&quot;,<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;version&quot;: &quot;4.2.24&quot;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;versionType&quot;: &quot;semver&qu=
ot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =C2=A0 ]<br>=C2=A0 =
=C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;credits&quot;: [<br>=C2=A0 =C2=A0 {<b=
r>=C2=A0 =C2=A0 =C2=A0 &quot;lang&quot;: &quot;en&quot;,<br>=C2=A0 =C2=A0 =
=C2=A0 &quot;type&quot;: &quot;reporter&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quo=
t;value&quot;: &quot;Django would like to thank Eyal Gabay (EyalSec) for re=
porting this issue.&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;d=
atePublic&quot;: &quot;09/03/2025&quot;,<br>=C2=A0 &quot;descriptions&quot;=
: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;lang&quot;: &quot;en&q=
uot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;value&quot;: &quot;FilteredRelation is =
subject to SQL injection in column aliases, using a suitably crafted dictio=
nary, with dictionary expansion, as the **kwargs passed QuerySet.annotate()=
 or QuerySet.alias().&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot=
;metrics&quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;other&qu=
ot;: {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;content&quot;: {<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;namespace&quot;: &quot;<a href=3D"https://do=
cs.djangoproject.com/en/dev/internals/security/#security-issue-severity-lev=
els">https://docs.djangoproject.com/en/dev/internals/security/#security-iss=
ue-severity-levels</a>&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;v=
alue&quot;: &quot;high&quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &quot;type&quot;: &quot;Django severity rating&quot;<b=
r>=C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &quot;re=
ferences&quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &quot;name&quo=
t;: &quot;Django security releases issued: 5.2.6, 5.1.12, and 4.2.24&quot;,=
<br>=C2=A0 =C2=A0 =C2=A0 &quot;tags&quot;: [<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;vendor-advisory&quot;<br>=C2=A0 =C2=A0 =C2=A0 ],<br>=C2=A0 =C2=A0 =
=C2=A0 &quot;url&quot;: &quot;<a href=3D"https://www.djangoproject.com/webl=
og/2025/sep/03/security-releases/">https://www.djangoproject.com/weblog/202=
5/sep/03/security-releases/</a>&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=
=C2=A0 &quot;timeline&quot;: [<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 &=
quot;lang&quot;: &quot;en&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;time&quot;: =
&quot;2025-09-03T13:00:00+00:00&quot;,<br>=C2=A0 =C2=A0 =C2=A0 &quot;value&=
quot;: &quot;Made public.&quot;<br>=C2=A0 =C2=A0 }<br>=C2=A0 ],<br>=C2=A0 &=
quot;title&quot;: &quot;Potential SQL injection in FilteredRelation column =
aliases&quot;<br>}</div>

--000000000000278a80063de5daa2--
