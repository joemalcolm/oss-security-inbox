X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3417" "Wednesday" "21" "June" "2017" "20:18:39" "+0200" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<743a5703-e206-9304-cb30-71c76cde9bef@igalia.com>" "81" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0005" "^Cc:" nil nil "6" "2017062118:18:39" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0005" (number mark "U       clopez@igali Jun 21   81/3417  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2017-0005\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3694 invoked by uid 550); 21 Jun 2017 18:19:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3648 invoked from network); 21 Jun 2017 18:19:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=X2A+f4S+tyjCO/USR8nIPELtwAVcY48iKVQIG4df9Ps=;
	b=V9o/CVR2zpHTY6fXS1KK/R/tq26GaYSkHnM27wYzycT1qMC1QgcTS0bTBU3gzouPy301Kci+ptWul6Iw20cs8spgmBjt7fsu+CseChbX/rVQSTFTqNV2eTIl3+lR0YYkxOlTB34GvGveDs3f2/Jz7bSAQZad6ZSmsfKQ7a+Vo/QJYl5FMJ1L2uW0v9EEjh/tsIVlxkO1CPc+CVoksbexHv01TWgbyL/zetkrJ5t72kIR1nsHJJj2vAxlarHHacG7Ol31dlaTeaOMDvdX+zYTKctmz7NAgsalW9bT99plvcgzTEFJJ0X++WV7JALNHTqR2LuC6AH2Y2ARCtUHdPZiCA==;
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
Organization: Igalia S.L.
Mail-Followup-To: "webkit-gtk@lists.webkit.org"
 <webkit-gtk@lists.webkit.org>, security@webkit.org,
 distributor-list@gnome.org, oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Message-ID: <743a5703-e206-9304-cb30-71c76cde9bef@igalia.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="5arWkLfVtl6TTbxq4gafp0SuMmc3AujQo"
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Wed, 21 Jun 2017 20:18:39 +0200
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2017-0005
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>

--5arWkLfVtl6TTbxq4gafp0SuMmc3AujQo
Content-Type: multipart/mixed; boundary="I8XwASV4CUOM3FnpsGIfInDm60PBq6A5t";
 protected-headers="v1"
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <743a5703-e206-9304-cb30-71c76cde9bef@igalia.com>
Subject: WebKitGTK+ Security Advisory WSA-2017-0005

--I8XwASV4CUOM3FnpsGIfInDm60PBq6A5t
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2017-0005
------------------------------------------------------------------------

Date reported      : June 21, 2017
Advisory ID        : WSA-2017-0005
Advisory URL       : https://webkitgtk.org/security/WSA-2017-0005.html
CVE identifiers    : CVE-2017-2538, CVE-2017-2424.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2017-2538
    Versions affected: WebKitGTK+ before 2.16.4.
    Credit to Richard Zhu (fluorescence) working with Trend Micro's Zero
    Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-2424
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to Paul Thomson (using the GLFuzz tool) of the Multicore
    Programming Group, Imperial College London.
    Impact: Processing maliciously crafted web content may result in the
    disclosure of process memory. Description: An information disclosure
    issue existed in the processing of OpenGL shaders. This issue was
    addressed through improved memory management.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
June 21, 2017


--I8XwASV4CUOM3FnpsGIfInDm60PBq6A5t--

--5arWkLfVtl6TTbxq4gafp0SuMmc3AujQo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIzBAEBCgAdFiEEtdK1C8SOx/HukNmrllCJzmuV+IIFAllKuH8ACgkQllCJzmuV
+IKUwQ//WrlZow1LnBHEkXX0d8gktOAhSmN44uMbn76KAbM0nFTnwz/xkl1J88E9
QllvC4baZvKvq9Tuo4Hs9JSNaE5TU+kSwUkaLxfR17N/5lBpnOWAuF3AgZANiD99
2rbXMrxXMXr/IWPvNM3V/6S1B35eQxffgZvEHB2ZB0uCCu31XgYWZ8sIPCCd32S2
qAA8eA7FdvuhE7wBXfpq+039Mb89zH7zRCF1qVF0sJ3r548txOCLEkDfpzH1r+sQ
2appMLwtBYawJnEm3xkXjpr7Jvw3XMrkoDfZvUXERrQ1DT5HChtG23LzTtjcl/Sm
oysqFpkIbwoUQhfQyMlJ3ahoi/kiV0Q0ohwYtGXCAYiITvlqIuPsRDPXu4BwZPEX
b9gVlGkFk20sZJI8U7Y0+01YtC2sfwqRhfcnMi4Goxj1qBDB33xJq/gKLVHf/1Zy
2IQl9dg98XkRJQXkyUULSbvC2wFrVddvjMiyiy7RrDUvmXKi+ZdBbJkTvAhtfQgE
ORw640YUPb8yBTTSQ6llAM1Eq6/a7zrptD86BYl0CA+/iQsUmVE/1uJtD4DAcFjp
f/fd169irj69qMiZT1DTANnIXgKBnwqJiO0lQF4CO41exj6uVmikAV8xWIr76dSS
CvctHIy1F9QDVaC9NwEX5+nMiVamGoamwpflrqqHkuLomUnEuZ0=
=lUUa
-----END PGP SIGNATURE-----

--5arWkLfVtl6TTbxq4gafp0SuMmc3AujQo--
