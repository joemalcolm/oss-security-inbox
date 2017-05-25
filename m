X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11370" "Thursday" "25" "May" "2017" "14:56:31" "+0200" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<6df1ae14-5736-6a39-d761-41884c27ce2b@igalia.com>" "247" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0004" nil nil nil "5" "2017052512:56:31" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0004" (number mark "U       clopez@igali May 25  247/11370 " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2017-0004\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27991 invoked by uid 550); 25 May 2017 12:56:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27956 invoked from network); 25 May 2017 12:56:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=gXQoEnpz6wsbeR0Gv+NWbWBgT+7NTnlyQJlBZ8ibSQw=;
	b=laH25iuUSRtiusEfOzynKMLZvukKQOkDW1hZ8nTYvlYv6D0aetbcYL+eahpG3KPWJRdADjgdGgfK3Iv1VWnExlwdhbF9QpeHD84Au4NJK39JfzxPorM96wPGJiDkLVB/LvJkfrcNd+U3nHFGt795uz26AbucGb8hqPnPKKX4ylhvqjqeH7nBn39Z++a9seJDgZqAwquwVZzZOdLnrpQiC7YIvHn2Yms33dcH5hkQ3yUFGwtBFJkhJvf21xk+qjjId5VorLxeIIVoQ/t9ojbHEHRMISuYCa5wv1R/h+lEAaym97+EK0MDP0BxEWYhIHdaV6do/qDcRIHqdUrm2T63zw==;
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
Message-ID: <6df1ae14-5736-6a39-d761-41884c27ce2b@igalia.com>
Date: Thu, 25 May 2017 14:56:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="2OBs2Gnan3GvGntUNdRX1V16kG1ENffCP"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2017-0004

--2OBs2Gnan3GvGntUNdRX1V16kG1ENffCP
Content-Type: multipart/mixed; boundary="JmsRekxKkwix8kbo3MSkBfXBrmWT98Na0";
 protected-headers="v1"
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <6df1ae14-5736-6a39-d761-41884c27ce2b@igalia.com>
Subject: WebKitGTK+ Security Advisory WSA-2017-0004

--JmsRekxKkwix8kbo3MSkBfXBrmWT98Na0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2017-0004
------------------------------------------------------------------------

Date reported      : May 25, 2017
Advisory ID        : WSA-2017-0004
Advisory URL       : https://webkitgtk.org/security/WSA-2017-0004.html
CVE identifiers    : CVE-2017-2496, CVE-2017-2504, CVE-2017-2505,
                     CVE-2017-2506, CVE-2017-2508, CVE-2017-2510,
                     CVE-2017-2514, CVE-2017-2515, CVE-2017-2521,
                     CVE-2017-2525, CVE-2017-2526, CVE-2017-2528,
                     CVE-2017-2530, CVE-2017-2531, CVE-2017-2536,
                     CVE-2017-2539, CVE-2017-2544, CVE-2017-2547,
                     CVE-2017-2549, CVE-2017-6980, CVE-2017-6984.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2017-2496
    Versions affected: WebKitGTK+ before 2.16.3.
    Credit to Apple.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2504
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    universal cross site scripting (UXSS). Description: A logic issue
    existed in the handling of WebKit Editor commands. This issue was
    addressed with improved state management.

CVE-2017-2505
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2506
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to Zheng Huang of the Baidu Security Lab working with Trend
    Micro=E2=80=99s Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2508
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    universal cross site scripting (UXSS). Description: A logic issue
    existed in the handling of WebKit container nodes. This issue was
    addressed with improved state management.

CVE-2017-2510
    Versions affected: WebKitGTK+ before 2.16.3.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    universal cross site scripting (UXSS). Description: A logic issue
    existed in the handling of pageshow events. This issue was addressed
    with improved state management.

CVE-2017-2514
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2515
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2521
    Versions affected: WebKitGTK+ before 2.16.0.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2525
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to Kai Kang (4B5F5F4B) of Tencent=E2=80=99s Xuanwu Lab (tencent.=
com)
    working with Trend Micro=E2=80=99s Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2526
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to Kai Kang (4B5F5F4B) of Tencent=E2=80=99s Xuanwu Lab (tencent.=
com)
    working with Trend Micro=E2=80=99s Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2528
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    universal cross site scripting (UXSS). Description: A logic issue
    existed in the handling of WebKit cached frames. This issue was
    addressed with improved state management.

CVE-2017-2530
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to Wei Yuan of Baidu Security Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2531
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2536
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to Samuel Gro=C3=9F and Niklas Baumstark working with Trend
    Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2539
    Versions affected: WebKitGTK+ before 2.16.3.
    Credit to Richard Zhu (fluorescence) working with Trend Micro's Zero
    Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2544
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to 360 Security (@mj0011sec) working with Trend Micro's Zero
    Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2547
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to lokihardt of Google Project Zero, Team Sniper (Keen Lab
    and PC Mgr) working with Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-2549
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    universal cross site scripting (UXSS). Description: A logic issue
    existed in frame loading. This issue was addressed with improved
    state management.

CVE-2017-6980
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.

CVE-2017-6984
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution or cause a denial of service (memory
    corruption and application crash). Description: Multiple memory
    corruption issues were addressed with improved memory handling.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
May 25, 2017


--JmsRekxKkwix8kbo3MSkBfXBrmWT98Na0--

--2OBs2Gnan3GvGntUNdRX1V16kG1ENffCP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIzBAEBCgAdFiEEtdK1C8SOx/HukNmrllCJzmuV+IIFAlkm1IAACgkQllCJzmuV
+ILaew//SFrHjXgNMSW1K3FUfLRBW4KPjgfyLKed3NEA36lsc7GKDFgKpa44vfN7
fUIVTH6ZGwiQqL/hbtmbeK1aQcSYkAtlvlVmtSHdKjaF/HQw+vZST+9v8aUW5sv6
rl0k23ZiJaZDvWltllRWk1KCOZjykgdqq9einwBLWvLKtnWdUR/LfoYhI2wHSjJ4
qalTl+32xTaE/vCIMovCQb0uik8aQrwtViq8Wo5RDlUyC9VD/YYJfbniEcWPrC5Y
K7iwcnSj8DmBfXgq9Aunx4ZoG8goWLle7LetaSikZZKZ9kw5iuqQ0yc0jGbl+XOy
CYBRrpjZp7lmR8+kR5hfDxP+22oSlj7LUQE5SX+ojkblZD3ZWpLqESgM+ktI+Lup
9GvERmjcbzuCqflDhPauXpeBDqT2WJSlDedi3trgL8bfwpoUJLv0vlJ2ww+PYmLQ
6+CHlXLPyybFm+PXn8Z5n1qIj21ZsAmkN+OnmIgPpNS/PORsR4Mf1E+29a5mwmuE
Jvlc8Cmw28ncQOmxTMRpVrTlt2sF5h8N3xTU8WAAc302qZKQF8jFepRMVKJMoK4j
31uG1kmCH8HqN2b4zN/JXQ9V/KJow9uEdNc4zKB4T1PZm59jW5Gm6c5NkxYGyvzW
iYSc2dwutOqYK1we+YA9oKNJYEjx020gI5KXIG1p04LxGw0VQ5s=
=GEhT
-----END PGP SIGNATURE-----

--2OBs2Gnan3GvGntUNdRX1V16kG1ENffCP--
