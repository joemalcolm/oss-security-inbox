X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7004" "Friday" "10" "November" "2017" "17:48:33" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<784c7b40-031d-d881-26f8-e2f235cbacd9@igalia.com>" "161" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0009" nil nil nil "11" "2017111016:48:33" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0009" (number mark "U       clopez@igali Nov 10  161/7004  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2017-0009\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30163 invoked by uid 550); 10 Nov 2017 16:48:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30126 invoked from network); 10 Nov 2017 16:48:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=tCQC1OVyw4qMdLhxvV9/pLh23uKLlcsPXCMmbOfxhCA=;
	b=A7xWsTDvKTUCenC2BwcGzwZzcIfkqQBjogKIRsaCwlNtoS5qpgjhuYQuiJ0fP/HGlo7hD3SREwXTc9/fb7cLLDsvVPQqIVr7/IiRTxt8CfPxrvxr0owdWRJvKaITxHejP32OXi0WNy5JrzRfrLbRm8B23lupCA/VomwlLW3qTkC9opnOZhkvXwkIJCAcSWOtw1+EnkgOHQ8VKW9smnNPMkQnb2hA3A5f0T1+MOJZrL/EjobSF89kDw/uJWu3HhFeZjmfyRarWZ3isWZgj6deQ07Ua7kVcmDZPyTf+uxcKXuMulnxqCnIVt3h5hZAh97jhG6j3sPFXWrcDTsl4UIbAA==;
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
Organization: Igalia S.L.
Mail-Followup-To: "webkit-gtk@lists.webkit.org"
 <webkit-gtk@lists.webkit.org>, security@webkit.org,
 distributor-list@gnome.org, oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Message-ID: <784c7b40-031d-d881-26f8-e2f235cbacd9@igalia.com>
Date: Fri, 10 Nov 2017 17:48:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="M5BD1Q6tJh23fPg5hU7CCKILdhCDQiEXQ"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2017-0009

--M5BD1Q6tJh23fPg5hU7CCKILdhCDQiEXQ
Content-Type: multipart/mixed; boundary="F6FxI3cMqSHTP9tCTw7d45Q45CsafvATn";
 protected-headers="v1"
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <784c7b40-031d-d881-26f8-e2f235cbacd9@igalia.com>
Subject: WebKitGTK+ Security Advisory WSA-2017-0009

--F6FxI3cMqSHTP9tCTw7d45Q45CsafvATn
Content-Type: text/plain; charset=utf-8
Content-Language: es
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2017-0009
------------------------------------------------------------------------

Date reported      : November 10, 2017
Advisory ID        : WSA-2017-0009
Advisory URL       : https://webkitgtk.org/security/WSA-2017-0009.html
CVE identifiers    : CVE-2017-13783, CVE-2017-13784, CVE-2017-13785,
                     CVE-2017-13788, CVE-2017-13791, CVE-2017-13792,
                     CVE-2017-13793, CVE-2017-13794, CVE-2017-13795,
                     CVE-2017-13796, CVE-2017-13798, CVE-2017-13802,
                     CVE-2017-13803.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2017-13783
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13784
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13785
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13788
    Versions affected: WebKitGTK+ before 2.18.3.
    Credit to xisigr of Tencent's Xuanwu Lab (tencent.com).
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13791
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13792
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13793
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Hanul Choi working with Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13794
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13795
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13796
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13798
    Versions affected: WebKitGTK+ before 2.18.3.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13802
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13803
    Versions affected: WebKitGTK+ before 2.18.3.
    Credit to chenqin (=E9=99=88=E9=92=A6) of Ant-financial Light-Year Secu=
rity.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
November 10, 2017


--F6FxI3cMqSHTP9tCTw7d45Q45CsafvATn--

--M5BD1Q6tJh23fPg5hU7CCKILdhCDQiEXQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIzBAEBCgAdFiEEtdK1C8SOx/HukNmrllCJzmuV+IIFAloF2GIACgkQllCJzmuV
+IJqMw/7B9AMwSqg6OrscQks+CrmlkP2/baSF4tBUNuJBRCdJ4Hy3VUrsSxoVQrF
hRpfITPboeEWYrUq52takAqFUeAqI/GZH7vkMKQi1kZyyxgzCSbqOt9SHCTdlDfg
CPo1YlkmaTm6f1s1Xdh7ITELsFzkr28sDqMn6IzEjRklQ3erkyn2p11+HgKEdDJU
tF6xrKwiMK3XpmCrynlpsmlghfTsvvb9U0jch9F7r0PV5qxnEzGebmJrnh+oCq/X
++Lwl+EuPooso8WGsaEN87KH2ZDg2mW6jX2Eczs7gKuwmnLAp2nicWR0uCtP2A62
mKSihZwdOO35JEqb7Gn4WMx1Jna2m7Qtfp+sD1EpXXNjWz+0p+Xmyc4lXiQZbusG
cM/z3t7AMSzilWRQUaI/jTXGkp9d8nxKc7ZFHNCJljwdWfQwUf5/qMymotdBKzsj
XmBqdRpW/RlWaGv6ceURpkwtdfPiajDHbLgdX6RwfWka+q04NA3u9yF5vNbwVlPU
pmTTkXN9izVhXQoM34J2c66u6ieKGluKkKhM/lHamYcm6vOYgB9H9ElCVx/xgkAJ
OefWOCqkpuZVo56gVn5LjSVdO3XSz2Jsk8Xb5hrn/NzCs8HYoxMsU7HHOjdkia9G
cnE0miM29DaOIBKWFscPCRhNsnKwdFZN+pVSxoxht4vH1ySS0Mg=
=6EsF
-----END PGP SIGNATURE-----

--M5BD1Q6tJh23fPg5hU7CCKILdhCDQiEXQ--
