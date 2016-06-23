X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5910" "Thursday" "23" "June" "2016" "20:42:13" "+0300" "Kirill Zaitsev" "k.zaitsev@me.com" "<etPan.576c1f7b.5aae323e.126b@me.com>" "168" "[oss-security] RCE vulnerability in Openstack Murano using insecure YAML tags (CVE-2016-4972)" nil nil nil "6" "2016062317:42:13" "[oss-security] RCE vulnerability in Openstack Murano using insecure YAML tags (CVE-2016-4972)" (number mark "U       k.zaitsev@me Jun 23  168/5910  " thread-indent "\"[oss-security] RCE vulnerability in Openstack Murano using insecure YAML tags (CVE-2016-4972)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12139 invoked by uid 550); 23 Jun 2016 18:13:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17495 invoked from network); 23 Jun 2016 17:42:47 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2016-06-23_08:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1011 suspectscore=1 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1510270003 definitions=main-1606230185
Date: Thu, 23 Jun 2016 20:42:13 +0300
From: Kirill Zaitsev <k.zaitsev@me.com>
To: oss-security@lists.openwall.com
Message-id: <etPan.576c1f7b.5aae323e.126b@me.com>
X-Mailer: Airmail (367)
MIME-version: 1.0
Content-type: multipart/signed; boundary=F1396AB1-23CD-4B57-A782-D90E7D619831;
 protocol="application/pgp-signature"; micalg=pgp-sha512
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=4d515a;
	t=1466703755; bh=CSU0RVD5OqCWJweqL/ppaQ+BcwbY7kg3q8PVBhknArw=;
	h=Date:From:To:Message-id:Subject:MIME-version:Content-type;
	b=Pk6ggxDshpH4x14aRDFtnCytKR+cuzbX5EvEdgio0DHVGs90M4kVmES12T/ffiO8b
 LPvnne17TaUAjsanLz2KYa9nnrvNF3BjIE77xk2y+BxoaWOI4a3HLxNHJ55dWRtxA5
 h59SUKU19cZABagyN5GaN1JjPMwHo9cCAnTeAQhanNh5K2PX0TEpC3xYJ9S2gpSzGT
 718JXA8BMeOszyjUmHDD9+DR+rhBKTL4hyETVd2ErIqRkQUpaX2Q2ki++2dow5IkXR
 7F9F6Hd++hogLLCUezAnDCR8ry8ngddDn2wYBQpXr8qX/SUxhg8P/z5uUdHHI4+vrG
 8UxxAHlFQ9uKw==
Subject: [oss-security] RCE vulnerability in Openstack Murano using insecure YAML tags
 (CVE-2016-4972)

--F1396AB1-23CD-4B57-A782-D90E7D619831
Content-Type: multipart/alternative; boundary="576c1f7b_7e5a9b40_126b"

--576c1f7b_7e5a9b40_126b
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
--576c1f7b_7e5a9b40_126b
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html><head><style>body{font-family:Helvetica,Arial;font-size:13px}</style>=
</head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -web=
kit-line-break: after-white-space;"><div id=3D"bloop_customfont" style=3D"m=
argin: 0px;"><pre style=3D"word-wrap: break-word;"><span style=3D"white-spa=
ce: pre-wrap;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
RCE vulnerability in Openstack Murano using insecure YAML tags
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: June 23, 2016
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
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-4972
<br></span></pre><pre style=3D"word-wrap: break-word;"><span style=3D"white=
-space: pre-wrap;">Notes
~~~~~
- Fixes for this bug are going to be included in the upcoming releases
  of murano 1.0.3(liberty), 2.0.1(mitaka), 3.0.0(newton) and=20=20
  python-muranoclient 0.7.3(liberty), 0.8.5(mitaka), 0.9.0(newton)


--=20=20
Kirill Zaitsev
Murano Project Technical Lead</span></pre></div></body></html>=

--576c1f7b_7e5a9b40_126b--

--F1396AB1-23CD-4B57-A782-D90E7D619831
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Message signed with OpenPGP using AMPGpg

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCAAGBQJXbB+GAAoJEHrozOPeCWIUlHMQAJd3VUTdFMCXGtebzkvZdx0p
Fel/Wsdz+umjsHLFzVmYFa/91hVVTqwYlAY/yBe9PFNiLDnkC3muIJ6hn6wHU9TN
OFBWSnt88tuA09mySdxiNWSTDpasLnOGi5XmTmfFBRVNB1yOYPunJsKV4okgt44Q
Ts2IrDQEdWry7/2TzqyDWuoZSeKdPhjvn8KRqseXxlazRHd2rM6011LBzyTxs9vY
LQ0cxwrzm+40unjXmyux3SPWSqQAKyTLmB44gSTWq/lPmNkInth627fXSSHK8oE7
teC+NGTXJqB5R4s5dWlTLQwLrS5Rhpfw5BKBFJak47bMRXXcdc5+1H9UgxtBudS4
b++xDB2HuinQNuPBdbKMZVhGXnHtokwkuagcqCQ3UJpwbrczXyaHCULxoWDJ/WWm
hocJ7BuL5R0Fi6dditZIWpMWbpUik+9AJJlJNDMS4wbh+wMWRaluI/s26A5CKZF6
Qd7uumlZ9g8XlkX3M+X5sIcMsEuGaoTf9JJPrcWy6KZZPbIZGleqe4hkhB6LV87T
3/HS/42Wi211YtM6oR7Yt9rPmrRD4lEgy51gdmW8ENHaWglAPNWp1Em6q+y1B9S6
pC/zre23J350pteEstUK8X77BRXP6WIPp4FaRRrKxj0e19s+AMY/QvxdfQY9G5rS
EFMTcGmkNlu8Jz1bggCc
-----END PGP SIGNATURE-----

--F1396AB1-23CD-4B57-A782-D90E7D619831--
