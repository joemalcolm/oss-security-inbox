X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6966" "Monday" "8" "August" "2016" "17:39:35" "+0300" "Kirill Zaitsev" "kzaitsev@mirantis.com" "<etPan.57a899a7.19a79846.1a64@mirantis.com>" "199" "[oss-security] RCE vulnerability in Openstack Murano using insecure YAML tags (CVE-2016-4972)" nil nil nil "8" "2016080814:39:35" "[oss-security] RCE vulnerability in Openstack Murano using insecure YAML tags (CVE-2016-4972)" (number mark "U       kzaitsev@mir Aug  8  199/6966  " thread-indent "\"[oss-security] RCE vulnerability in Openstack Murano using insecure YAML tags (CVE-2016-4972)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15688 invoked by uid 550); 8 Aug 2016 14:54:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9819 invoked from network); 8 Aug 2016 14:40:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mirantis.com; s=google;
        h=date:from:to:message-id:subject:mime-version;
        bh=6J52cB2ybLaUJAg+QnoJuPjhzjHxGR+gK3Wpda5NTYM=;
        b=XTkKClkYcwRZSae9SvbriIydUoP2h883TWsH0V4EVtlgP9IZVTNGfL6y0P/uT4jVha
         MBXUs306sHFpCoA+QJy9rIwmmnmKnklTzHdhZAXacDtIQR1cY/Du+VeCQBNyf9Lfr2fh
         TpFhXM2pdgdBWpIgVq+70MgvLgx1iqj/EkMQ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:message-id:subject:mime-version;
        bh=6J52cB2ybLaUJAg+QnoJuPjhzjHxGR+gK3Wpda5NTYM=;
        b=T1sXIT26+qxfc63Y3qJL6jqWr/FC/imj33fnYixm4PtHAVFF574E3MN5h9svNxA3+6
         03BYTozPULG1izljH7rSqhOPVw7GfJDf1+4RzyWwmHZD9Wv6wA/6JW+3JH9LeoQJA42b
         Jxq7C3GEYsq47X7ikcaW3gcBSXoPi6F5jbMF6N+ItJETOFFp5F6R+2+veCzlvVEg+G7o
         qvCrk9tw6EEI+O5WmbEwFtUyMsWtgTjVobeaSQ/KT/NBKdLbTe6wXe4JysFD7zkz96NJ
         yOHG35zFkyogjeZHPIN0Te5lu/VQYKWmsLHbuQTlgeOstyiX8PCMt/HxLrBDCYIXx+Xw
         sIGg==
X-Gm-Message-State: AEkoouunHDpjp34Y6+FrgDH/PqqDV5IseQr/J9wlR6N5fbkf2j2BMxkkMmzJQdGR19uVlmf1
X-Received: by 10.46.0.220 with SMTP id e89mr26647449lji.58.1470667207054;
        Mon, 08 Aug 2016 07:40:07 -0700 (PDT)
Date: Mon, 8 Aug 2016 17:39:35 +0300
From: Kirill Zaitsev <kzaitsev@mirantis.com>
To: oss-security@lists.openwall.com
Message-ID: <etPan.57a899a7.19a79846.1a64@mirantis.com>
X-Mailer: Airmail (382)
MIME-Version: 1.0
Content-Type: multipart/signed;
 boundary="8925EEF4-EF7E-4FD8-B076-877ADE8900C8";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: [oss-security] RCE vulnerability in Openstack Murano using insecure YAML tags
 (CVE-2016-4972)

--8925EEF4-EF7E-4FD8-B076-877ADE8900C8
Content-Type: multipart/alternative; boundary="57a899a7_73c91879_1a64"

--57a899a7_73c91879_1a64
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

==============================================================
RCE vulnerability in Openstack Murano using insecure YAML tags
==============================================================

:Date: June 23, 2016
:CVE: CVE-2016-4972


Affects
~~~~~~~
- Murano: <=2015.1.1; <=1.0.2; ==2.0.0
- Murano-dashboard: <=2015.1.1; <=1.0.2; ==2.0.0
- Python-muranoclient: <=0.7.2; >=0.8.0<=0.8.4


Description
~~~~~~~~~~~
Kirill Zaitsev from Mirantis reported a vulnerability in OpenStack
Murano applications processing. Using extended YAML tags in Murano
application YAML files, an attacker can perform a Remote Code
Execution attack.

Vulnerability has been verified in all currently supported branches.
Further examination of code suggest, that it is also present in kilo and
juno versions of murano.

Patches
~~~~~~~
- https://review.openstack.org/#/c/333444/ (Liberty)
- https://review.openstack.org/#/c/333425/ (Liberty)
- https://review.openstack.org/#/c/333432/ (Liberty)
- https://review.openstack.org/#/c/333443/ (Mitaka)
- https://review.openstack.org/#/c/333424/ (Mitaka)
- https://review.openstack.org/#/c/333439/ (Mitaka)
- https://review.openstack.org/#/c/333423/ (Newton)
- https://review.openstack.org/#/c/333440/ (Newton)
- https://review.openstack.org/#/c/333428/ (Newton)


Credits
~~~~~~~
- Kirill Zaitsev from Mirantis (CVE-2016-4972)


References
~~~~~~~~~~
- https://bugs.launchpad.net/python-muranoclient/+bug/1586078
- https://bugs.launchpad.net/murano/+bug/1586079
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-4972

Notes
~~~~~
- Fixes for this bug are going to be included in the upcoming releases
  of murano 1.0.3(liberty), 2.0.1(mitaka), 3.0.0(newton) and   
  python-muranoclient 0.7.3(liberty), 0.8.5(mitaka), 0.9.0(newton)


--   
Kirill Zaitsev
Murano Project Technical Lead
--57a899a7_73c91879_1a64
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html><head></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode:=
 space; -webkit-line-break: after-white-space;"><div></div><div>



<style>
<![CDATA[
body{font-family:Helvetica,Arial;font-size:13px}
]]>
</style>
<title></title>



<div id=3D"bloop_customfont" style=3D"font-family:Helvetica,Arial;font-size=
:13px; color: rgba(0,0,0,1.0); margin: 0px; line-height: auto;">
<pre style=3D"font-size: 14px; word-wrap: break-word;"></pre>
<pre style=3D"word-wrap: break-word;"><span style=3D"white-space: pre-wrap;=
">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
RCE vulnerability in Openstack Murano using insecure YAML tags
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: <a href=3D"http://airmail.calendar/2016-06-23%2012:00:00%20GMT+3">Ju=
ne 23, 2016</a>
:CVE: CVE-2016-4972


Affects
~~~~~~~
- Murano: &lt;=3D2015.1.1; &lt;=3D1.0.2; =3D=3D2.0.0
- Murano-dashboard: &lt;=3D2015.1.1; &lt;=3D1.0.2; =3D=3D2.0.0
- Python-muranoclient: &lt;=3D0.7.2; &gt;=3D0.8.0&lt;=3D0.8.4


Description
~~~~~~~~~~~
Kirill Zaitsev from Mirantis reported a vulnerability in OpenStack
Murano applications processing. Using extended YAML tags in Murano
application YAML files, an attacker can perform a Remote Code
Execution attack.

Vulnerability has been verified in all currently supported branches.
Further examination of code suggest, that it is also present in kilo and
juno versions of murano.

Patches
~~~~~~~
- <a href=3D"https://review.openstack.org/#/c/333444/">https://review.opens=
tack.org/#/c/333444/</a> (Liberty)
- <a href=3D"https://review.openstack.org/#/c/333425/">https://review.opens=
tack.org/#/c/333425/</a> (Liberty)
- <a href=3D"https://review.openstack.org/#/c/333432/">https://review.opens=
tack.org/#/c/333432/</a> (Liberty)
- <a href=3D"https://review.openstack.org/#/c/333443/">https://review.opens=
tack.org/#/c/333443/</a> (Mitaka)
- <a href=3D"https://review.openstack.org/#/c/333424/">https://review.opens=
tack.org/#/c/333424/</a> (Mitaka)
- <a href=3D"https://review.openstack.org/#/c/333439/">https://review.opens=
tack.org/#/c/333439/</a> (Mitaka)
- <a href=3D"https://review.openstack.org/#/c/333423/">https://review.opens=
tack.org/#/c/333423/</a> (Newton)
- <a href=3D"https://review.openstack.org/#/c/333440/">https://review.opens=
tack.org/#/c/333440/</a> (Newton)
- <a href=3D"https://review.openstack.org/#/c/333428/">https://review.opens=
tack.org/#/c/333428/</a> (Newton)


Credits
~~~~~~~
- Kirill Zaitsev from Mirantis (CVE-2016-4972)


References
~~~~~~~~~~
- <a href=3D"https://bugs.launchpad.net/python-muranoclient/+bug/1586078">h=
ttps://bugs.launchpad.net/python-muranoclient/+bug/1586078</a>
- <a href=3D"https://bugs.launchpad.net/murano/+bug/1586079">https://bugs.l=
aunchpad.net/murano/+bug/1586079</a>
- <a href=3D"http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-4972"=
>http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-4972</a>
<br></span></pre>
<pre style=3D"word-wrap: break-word;"><span style=3D"white-space: pre-wrap;=
">Notes
~~~~~
- Fixes for this bug are going to be included in the upcoming releases
  of murano 1.0.3(liberty), 2.0.1(mitaka), 3.0.0(newton) and=20=20=20=20
  python-muranoclient 0.7.3(liberty), 0.8.5(mitaka), 0.9.0(newton)


--=20=20=20=20
Kirill Zaitsev
Murano Project Technical Lead</span></pre></div>


</div></body></html>=

--57a899a7_73c91879_1a64--

--8925EEF4-EF7E-4FD8-B076-877ADE8900C8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Message signed with OpenPGP using AMPGpg

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCAAGBQJXqJnEAAoJEHrozOPeCWIU8FoP/3/CnroJziWVqiTJSVJHayfq
qFwJIAcdQ23mu5IqzEzjlVC63/RxB4xFg6CTfx5hxL5/xT0Txax8AE6A4K176iu7
LralkPyY4ZWKqcO+t07rdBvAA/VoFxCBW7r57FIkVGBTsqc8Tz28e6HcLEDaEkHA
weWisT+6+tJ3Kcc1OxP+F2o0uLTT2mQScvXyEhzHIT9NIQZqadNB1WzGb3/0gvBP
tP3gzvtuNxaZQ9dmhdJa+PAiKLKTAOKPCOKOzwq/u6AMJm/sCaJowPg3BeLO2rdi
QGgZGTV8AxjfMgg/Pc30dT3ZdNPEIkYD41PScJd+k1Rb6yf4Wu2fHrhs+tDZmB7s
mttL1hu/twjxJj1yL44fV86jVnag5DIgOcRSw6ea3BSRGksCALVuno6TVwCouizG
OBkIcug1cNhqM47BC6zbY5dsyrJV95mibPC9296r/E12lhd6RxmRQBLsfzgOWJiP
kApJammqcGDJuAy1vzqE58L7RO+APcwM7f7pucTkOKtS46dg0bSHeUwkd/SDHPFQ
JpvJpFFPtfUsFx3MCeIDx48NAW5mi8o8pRZlE9SQc7TFoldJD+py5/I/YsXC/LiQ
5sk8t2nIAG0DgCCGWBAJ1DhmtLgwCfakGsR8il7xlrJPyGY+1/Jps6VwW8Tz8EJg
sNyJ8CmngnBi488rR9R+
-----END PGP SIGNATURE-----

--8925EEF4-EF7E-4FD8-B076-877ADE8900C8--
