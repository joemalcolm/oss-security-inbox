X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4168" "Tuesday" "19" "December" "2017" "19:58:26" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<30a766a5-00c8-f5b8-0773-fa9846f250be@igalia.com>" "101" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0010" nil nil nil "12" "2017121918:58:26" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0010" (number mark "U       clopez@igali Dec 19  101/4168  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2017-0010\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7459 invoked by uid 550); 19 Dec 2017 18:58:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7422 invoked from network); 19 Dec 2017 18:58:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=rP/vHk+GmTwRIBndA6vuco49D4N82iYDzt163TVaJrQ=;
	b=DJY/IdfP0VoDpxuwo2VJyEa0MY5AscS78JfiF+9JNhvcclJdWMAB4JPKFcDGVlx7VlEQA2QGx2PYpzcbfp8Fzrs9m1nrDSOZRdS/4AbxWwQkYjmgs3n25yh8OkEVL7PNYLle7CUKF0U1+IIS9ir538XOU26oxGKl1Wh/d7urXXQn/HbfgTW8hZe0/IcWuEc0lc5okTvcarCL6PY3jUlY5a3qk7Y3myWoCux6/yGWM99unWEdEarmWMD8aITG9ihPpSTt75yyx/mf+pFTAyn5eXehSLBf+WEntcrp4uT8+Mo8rPOzKbeHmv3C3uu0EdNE94281Xka1YYXjiJo/Qwjyg==;
To: webkit-gtk@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, security@webkit.org,
 distributor-list@gnome.org, oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Message-ID: <30a766a5-00c8-f5b8-0773-fa9846f250be@igalia.com>
Date: Tue, 19 Dec 2017 19:58:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="a3t5FDSB9U4KwfFA9sDmbDpmwPx9UldQE"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2017-0010

--a3t5FDSB9U4KwfFA9sDmbDpmwPx9UldQE
Content-Type: multipart/mixed; boundary="Af1wSDtWSFOKuVHEgAsRnlsbsBeRmQXVK";
 protected-headers="v1"
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: webkit-gtk@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <30a766a5-00c8-f5b8-0773-fa9846f250be@igalia.com>
Subject: WebKitGTK+ Security Advisory WSA-2017-0010

--Af1wSDtWSFOKuVHEgAsRnlsbsBeRmQXVK
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2017-0010
------------------------------------------------------------------------

Date reported      : December 19, 2017
Advisory ID        : WSA-2017-0010
Advisory URL       : https://webkitgtk.org/security/WSA-2017-0010.html
CVE identifiers    : CVE-2017-7156, CVE-2017-7157, CVE-2017-13856,
                     CVE-2017-13866, CVE-2017-13870.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2017-7156
    Versions affected: WebKitGTK+ before 2.18.4.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7157
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13856
    Versions affected: WebKitGTK+ before 2.18.4.
    Credit to Jeonghoon Shin.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13866
    Versions affected: WebKitGTK+ before 2.18.4.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13870
    Versions affected: WebKitGTK+ before 2.18.4.
    Credit to an anonymous researcher.
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
December 19, 2017


--Af1wSDtWSFOKuVHEgAsRnlsbsBeRmQXVK--

--a3t5FDSB9U4KwfFA9sDmbDpmwPx9UldQE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIzBAEBCgAdFiEEtdK1C8SOx/HukNmrllCJzmuV+IIFAlo5YVMACgkQllCJzmuV
+ILwAQ/+NhatNwCYyICCcY0lXIefsC9VJCiwM1i3nu6Qe343SQ+LNk7USDsWmN3r
QL8/9dTTvLYH+Vbxmlu+SI9dBUCWrWlS98PoNqH31XNrBac3Jm8V4dtmFiJ1LkJa
69KqoowxndPPVRTWhh60C2EN6DbEVa1Lo1qwyrYLCSCmzM8TUlHmzgc91t5EJeZ6
Ev+TxUwngYUvMjDSajC9DOtvuaG14+KA2Zxdoy5lzR8lNF/sz9wCshbk3Zj0dP+e
WrQAwAu0V4wGLY947b7NpAnJSAEx3ZxFrg8uhgDfiaZpT+4YGXh21ISfLOc2yYhB
Mm78ELvEPotdhD9uWCkAjA/YeutrEMnC+HUFGy2sg2cOexiDiqfUgTGDHrPmLg0z
F38gXTNoDHdNAbY89XZzZI3DGwR7cF4AZRH5OlkumWmC2S+zVuKEwzfQ94CkgTSO
0aoy60mqJGTEbiijNP/ZrL0Ryh7Z40Fa9sAle9KackD7fKjlblBma8Jv8C1xpZka
bhta4ScTA1ot4cjZdExv/AJiFOzOrgIdJ+FnLmykU/ytHhi5ranV6gBJZi7xlbVw
CI9LUjuu3MfIQbrqll7me6oV9/ZA4WtqAWeCyslejuD4k+OyevyVMFsBehh0VfL9
i/Y4VoArR+NxxSe2PnEyRPQx1VSXMD++n6u6XNUCX2zRYQiI97I=
=NV0u
-----END PGP SIGNATURE-----

--a3t5FDSB9U4KwfFA9sDmbDpmwPx9UldQE--
