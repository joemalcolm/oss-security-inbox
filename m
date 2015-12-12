X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1753" "Saturday" "12" "December" "2015" "10:55:10" "+0100" "Pierre Schweitzer" "pierre@reactos.org" "<566BEEFE.7050302@reactos.org>" "52" "[oss-security] CVE request: Remote DoS in Quassel" nil nil nil "12" "2015121209:55:10" "[oss-security] CVE request: Remote DoS in Quassel" (number mark "U       pierre@react Dec 12   52/1753  " thread-indent "\"[oss-security] CVE request: Remote DoS in Quassel\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32755 invoked by uid 550); 12 Dec 2015 09:55:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32737 invoked from network); 12 Dec 2015 09:55:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=reactos.org; s=25047;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=JCDb3P7MN9yhSmvlj3jmJaZdgyBHx+RIdbehvaEnPt0=;
	b=h+4kzjFjluaMXLb3KRLqVYa+piQhaSy4S2KLkVj7AubWunLkq/SWHLHjSCo63BAVhCTEPHYXv5FkW14q6TxaU803o7oZ3yIvW2wW38j2YaeSqSVwI8G0CSRGCmvf5DtUdfMtdGZaO+m8cEeRkxFmJ0vX28M+CqdWp6u6FRT5f8Y=;
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
From: Pierre Schweitzer <pierre@reactos.org>
X-Enigmail-Draft-Status: N1210
Message-ID: <566BEEFE.7050302@reactos.org>
Date: Sat, 12 Dec 2015 10:55:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="KCkqxLj9HF92vLDjGXs04eEnlRhqTpmTb"
Subject: [oss-security] CVE request: Remote DoS in Quassel

--KCkqxLj9HF92vLDjGXs04eEnlRhqTpmTb
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Dear all,

It was discovered and fixed [1] in Quassel, a DoS remotely triggerable
by any client on a Quassel core.

Any client sending the command "/op *" in a query will cause the Quassel
core to crash. I was able to reproduce it with Quassel 0.10.0.

No release has this fix in yet.

Can a CVE be assigned to this issue?

Cheers,

[1]:
https://github.com/quassel/quassel/commit/b8edbda019eeb99da8663193e224efc9d=
1265dc7
--=20
Pierre Schweitzer <pierre at reactos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.


--KCkqxLj9HF92vLDjGXs04eEnlRhqTpmTb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJWa+8MAAoJEHVFVWw9WFsLPEgP/0LjdJWQmFfXpGPLKd4E1+HE
1nbjeJsxPxL1esmGKz690SGsaEAY9i16+wd9AjQGtmRPJBXSWN8vJqRkc+yy2Gr4
OwtkjpKGE4Dj8adVvELdr2Wi6NdMVn6+tE1R+QtZ1NZe85b7eRjqdTyYAWTenu+X
Gspn5pMsDHyJ6sknIkV7Hu8TWRVxOd5y70SlR3ql1ZOBTt0Q36jMFxCBzKtiWJl/
er6ipL5NBR9CphRlHZMgIiCOMD68zGyejcnOALWgpK7NEl3wrjBt0gYUxLONwccf
dpPGWleEwjWGXqAleL/jr1+F/+l33mU8EiRUnzN6XD6c9LwpewMy8Y2l3Diu1Xbp
TQ0PBgxYs6+cPHiO8yje9xPGSqMQDhvCLh910/3ps4+gUL9jXY+I+GDWJXUVbauE
1S8FughxukhFPTxN/3OiLZgLpeHfe/T2tRmSL+j5omvDZ5DEA4+7LDBKukNbcW6d
/HSheauHK1/kb35w1qAoLiForldWjKZUlqdD+hFmL1HLA1CPqost0YAJR5gO6Adz
P9CVKskQGAjKN5M/L/W2tLND3mf4n4/cRsRD93zoT4UlSQtYnwKvuzGWcyK3W5MY
IHEzuvRiVYmt4ec9LGwopWjQmN6mWUV4E2/3uMxAaSR1RD4Op6tZwi5zPZctAcrk
hTUN8S2h454ItyMLSEcJ
=rQZr
-----END PGP SIGNATURE-----

--KCkqxLj9HF92vLDjGXs04eEnlRhqTpmTb--
