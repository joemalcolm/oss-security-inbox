X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3116" "Wednesday" "2" "October" "2019" "23:00:22" "+0200" "=?UTF-8?B?SsOhbiBKYW7EjcOhcg==?=" "445358@mail.muni.cz" "<06a94797-a7f9-2b5e-855d-9e779914d36a@mail.muni.cz>" "93" "[oss-security] Minerva: ECDSA key recovery from bit-length leakage" nil nil nil "10" "2019100221:00:22" "[oss-security] Minerva: ECDSA key recovery from bit-length leakage" (number mark "U       445358@mail. Oct  2   93/3116  " thread-indent "\"[oss-security] Minerva: ECDSA key recovery from bit-length leakage\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Minerva: ECDSA key recovery from bit-length leakage" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3661 invoked by uid 550); 2 Oct 2019 21:20:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32197 invoked from network); 2 Oct 2019 21:00:34 -0000
To: oss-security@lists.openwall.com
From: =?UTF-8?B?SsOhbiBKYW7EjcOhcg==?= <445358@mail.muni.cz>
Openpgp: preference=signencrypt
Message-ID: <06a94797-a7f9-2b5e-855d-9e779914d36a@mail.muni.cz>
Date: Wed, 2 Oct 2019 23:00:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="PD8tBQWbk6jAZOZ16wbWSJwnNqJ4RrS77"
Subject: [oss-security] Minerva: ECDSA key recovery from bit-length leakage

--PD8tBQWbk6jAZOZ16wbWSJwnNqJ4RrS77
Content-Type: multipart/mixed; boundary="263QToEPTMmWQYW4ab4MwdLCQcItXNviz";
 protected-headers="v1"
From: =?UTF-8?B?SsOhbiBKYW7EjcOhcg==?= <445358@mail.muni.cz>
To: oss-security@lists.openwall.com
Message-ID: <06a94797-a7f9-2b5e-855d-9e779914d36a@mail.muni.cz>
Subject: Minerva: ECDSA key recovery from bit-length leakage

--263QToEPTMmWQYW4ab4MwdLCQcItXNviz
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

*Webpage*
=3D=3D=3D=3D=3D=3D=3D=3D=3D

https://minerva.crocs.fi.muni.cz/


*Vulnerability*
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Minerva is a group of vulnerabilities in ECDSA/EdDSA implementations that a=
llows
for practical recovery of the long-term private key.

We have found implementations which leak the bit-length of the scalar during
scalar multiplication on an elliptic curve. This leakage might seem minuscu=
le as
the bit-length presents a very small amount of information present in the
scalar. However, in the case of ECDSA/EdDSA signature generation, the leaked
bit-length of the random nonce is enough for full recovery of the private k=
ey
used after observing a few hundreds to a few thousands of signatures on kno=
wn
messages, due to the application of lattice techniques.

https://minerva.crocs.fi.muni.cz/


*Affected*
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

 * Cards
   - Athena IDProtect
 * Libraries
   - libgcrypt upto 1.8.4, fixed in 1.8.5
   - wolfSSL/wolfCrypt upto 4.0.0, fixed in 4.1.0
   - MatrixSSL upto 4.2.1
   - SunEC/OpenJDK/OracleJDK upto JDK 12
   - Crypto++ upto 8.2.0
 * Other
   - https://github.com/indutny/elliptic/ 875 stars,2670640 uses
   - https://github.com/kjur/jsrsasign 2015 stars,7406 uses


*CVEs*
=3D=3D=3D=3D=3D=3D

 * CVE-2019-15809 - Athena IDProtect cards
 * CVE-2019-13627 - libgcrypt
 * CVE-2019-13628 - wolfSSL/wolfCrypt
 * CVE-2019-13629 - MatrixSSL
 * CVE-2019-2894  - SunEC/OpenJDK/OracleJDK
 * CVE-2019-14318 - Crypto++



--263QToEPTMmWQYW4ab4MwdLCQcItXNviz--

--PD8tBQWbk6jAZOZ16wbWSJwnNqJ4RrS77
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEENiBWrajy9OQhVl74f0pEj+aPMp0FAl2VD+YACgkQf0pEj+aP
Mp3fthAAuWUaSCQF/pK2NkBoPQ0CahFJRkrb1QwQ+Cp+Ck5+hvBO/hMKRJZbbMzP
gWrctkUSjwmtXL6/XpQvpf7eou25LrUri0oN/WF2yuR3aKuVjAdvXGT8+NZdjgG8
z6rxKhBlZqRhiVnhC6TYZV75cKM0coSNVcqvKCJIBViCQDPyKmAe0lKnMznDhiQ4
oHThToa+utmedo2dLSATT/1//dFE8EOTyZtsT/iM7lR/BiHimnH440VreTmrbx0d
j4gvd/qX7WwMoMa4ms/wTyFvuTCUrbFKxkjoMJW0DBL/e/yn1xMPT+1/88njSqxm
w3SzEjQFdjRaBYvXEo0O+WeCUEqRRxzrW9B7+Vdh4F0Bt+MIN5t9ATqs6GGHPDdp
rVWBVITd6oucV4rAJD0IbPKHtrEEAin+cggp9cUFynYHdai/ecO7vbqelVyY0fzz
gLwGTFbNRnD+HuUwa5BCODhJ7Zpcx9tBkzJWe71tCaNlgXmqCfTpFvTNJsJMn9d7
p+Hd08HWW3DJk/V5lkP/MJpqr2DNmEMsLkUnwfNyxpsbXW8eNCd4QMrmcjvTDK8E
te/LbaE8LsrshMK+18xktnI/cnbMyr11zQZVoAMc/RVtAiccn3d49lP5BYeNf5hY
B5Om+b8bkUrQWpr1Eye3/n9FBo1vAEUzItC3M+cmYNYk6LsYhlk=
=4zVy
-----END PGP SIGNATURE-----

--PD8tBQWbk6jAZOZ16wbWSJwnNqJ4RrS77--
