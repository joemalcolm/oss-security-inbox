X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2262" "Thursday" "27" "April" "2017" "10:54:00" "+0000" "Stephan Zeisberg" "stephan.zeisberg@splone.com" "<2192b13b-52ef-4464-db55-36f45f97b258@splone.com>" "64" "[oss-security] CVE Request: Two memory corruption vulnerabilities ldns 1.7" nil nil nil "4" "2017042710:54:00" "[oss-security] CVE Request: Two memory corruption vulnerabilities ldns 1.7" (number mark "U       stephan.zeis Apr 27   64/2262  " thread-indent "\"[oss-security] CVE Request: Two memory corruption vulnerabilities ldns 1.7\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23604 invoked by uid 550); 27 Apr 2017 11:11:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17815 invoked from network); 27 Apr 2017 10:54:23 -0000
From: Stephan Zeisberg <stephan.zeisberg@splone.com>
To: oss-security@lists.openwall.com
Message-ID: <2192b13b-52ef-4464-db55-36f45f97b258@splone.com>
Date: Thu, 27 Apr 2017 10:54:00 +0000
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="j39Jl1X0GiiKIOIcCaADbuvE2eLWMQlKj"
X-Authenticated-Sender: stephan.zeisberg@splone.com
X-Virus-Scanned: Clear (ClamAV 0.99.2/23334/Thu Apr 27 06:59:21 2017)
Subject: [oss-security] CVE Request: Two memory corruption vulnerabilities ldns 1.7

--j39Jl1X0GiiKIOIcCaADbuvE2eLWMQlKj
Content-Type: multipart/mixed; boundary="05IDl26jNCL3dOt4uppNr1UHblH0JgeGS";
 protected-headers="v1"
From: Stephan Zeisberg <stephan.zeisberg@splone.com>
To: oss-security@lists.openwall.com
Message-ID: <2192b13b-52ef-4464-db55-36f45f97b258@splone.com>
Subject: CVE Request: Two memory corruption vulnerabilities ldns 1.7

--05IDl26jNCL3dOt4uppNr1UHblH0JgeGS
Content-Type: text/plain; charset=utf-8
Content-Language: de-LU
Content-Transfer-Encoding: quoted-printable

Hi,

i discovered two memory corruption vulnerabilities (double free) in ldns
1.7.0:

* https://www.nlnetlabs.nl/bugs-script/show_bug.cgi?id=3D1256
* https://www.nlnetlabs.nl/bugs-script/show_bug.cgi?id=3D1257

and reported it to https://www.nlnetlabs.nl/bugs-script/

Both fixed in upstream (in development branch):
* for bug 1256: https://git.nlnetlabs.nl/ldns/commit/?id=3Dc8391790
* for bug 1257: https://git.nlnetlabs.nl/ldns/commit/?id=3D3bdeed02

Could you please assign CVE(s) for the vulnerabilites?

Thanks,
Stephan
--=20
Stephan Zeisberg
Security Researcher

m: stephan.zeisberg@splone.com


--05IDl26jNCL3dOt4uppNr1UHblH0JgeGS--

--j39Jl1X0GiiKIOIcCaADbuvE2eLWMQlKj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJQBAEBCgA6FiEEPCtxiZwWHnFb+4aQLD/vJG2/tYgFAlkBzdEcHHN0ZXBoYW4u
emVpc2JlcmdAc3Bsb25lLmNvbQAKCRAsP+8kbb+1iPnRD/0VgdJbN/QX1fKieKi5
8tGMKM+f1CRYegM9LMYh4cI9v8DLlYa1Y4vkhxhWJSzDPjCexE1KkrPA+GT8iZsG
3ywFsy/q0od6qQ7F8VArEBAMm2yxcWUhAdOrcAv33ekk41UprJAf56xUu8n+zlqm
istgRrI3JI7jScny1x8IzKqVwAHBBFFX+zl1tHkbCONAFiHvLhzhQFcVS7tbN8bo
1beNR5wBnaMKL+l/2WcG3CSHpCoEoMkDslYUsbkKt4inLFTHKjFVAZuDfYuRGAZB
nl07vOmVmWu+jB3V5oKyevV96hItYsaXPcrt6C1CFuFv0HqgC+LUxZE+Rk0FVntH
kBdJgul3+aytRXPCQQRL2dd9HQy77lfVxZFNmcpG43u46EW7BnoASnMEzNMXtnYt
BdZyvQLxnI8Lx94XnZ3FbdFUG4QWD9PUX3byn9G0+GDWNwcpRTC1ss0HuOEmo7L3
TYRpbYAUcesJHDvYQg/HCpuoNBMmd0dK9PyKfqvxca7CU01tuibB1e02yrRaxA3I
5TmhORgu/JhM49KFJpsx6NUBWAdbLn4hSzLmPNNzZV3xDJcHfdwG1/Zw9S+DD3FI
6kGRF1I8JqUsqJ4YgmO5dZ8CmAVishfLoPqefAv6dc7ocDOLMfqosPnJEMqxYu81
nqbyz1r42ybBzrAxCDBzltgMXg==
=BqZX
-----END PGP SIGNATURE-----

--j39Jl1X0GiiKIOIcCaADbuvE2eLWMQlKj--
