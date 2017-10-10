X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2309" "Tuesday" "10" "October" "2017" "19:54:53" "+0200" "chbi@chbi.eu" "chbi@chbi.eu" "<b784889f-6aa3-998c-6b8e-d21bc4f566a1@chbi.eu>" "63" "Re: [oss-security] Reflected XSS vulnerability in Shaarli v0.9.1" nil nil nil "10" "2017101017:54:53" "[oss-security] Reflected XSS vulnerability in Shaarli v0.9.1" (number mark "U       chbi@chbi.eu Oct 10   63/2309  " thread-indent "\"Re: [oss-security] Reflected XSS vulnerability in Shaarli v0.9.1\"\n") "<4c8ff4e2-cef7-e228-ae65-c1f2f86b06da@chbi.eu>" ("<4c8ff4e2-cef7-e228-ae65-c1f2f86b06da@chbi.eu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24005 invoked by uid 550); 10 Oct 2017 17:55:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23981 invoked from network); 10 Oct 2017 17:55:22 -0000
To: oss-security@lists.openwall.com
References: <4c8ff4e2-cef7-e228-ae65-c1f2f86b06da@chbi.eu>
From: chbi@chbi.eu
Message-ID: <b784889f-6aa3-998c-6b8e-d21bc4f566a1@chbi.eu>
Date: Tue, 10 Oct 2017 19:54:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <4c8ff4e2-cef7-e228-ae65-c1f2f86b06da@chbi.eu>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="MifAseBFtH3q9nQvKihESC7Taf6CKGQj5"
Subject: Re: [oss-security] Reflected XSS vulnerability in Shaarli v0.9.1

--MifAseBFtH3q9nQvKihESC7Taf6CKGQj5
Content-Type: multipart/mixed; boundary="dcCKhMln8W4XjS7dClAuHln53a7u71NfF";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <b784889f-6aa3-998c-6b8e-d21bc4f566a1@chbi.eu>
Subject: Re: [oss-security] Reflected XSS vulnerability in Shaarli v0.9.1
References: <4c8ff4e2-cef7-e228-ae65-c1f2f86b06da@chbi.eu>
In-Reply-To: <4c8ff4e2-cef7-e228-ae65-c1f2f86b06da@chbi.eu>

--dcCKhMln8W4XjS7dClAuHln53a7u71NfF
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


> A reflected XSS vulnerability in Shaarli v0.9.1 allows an
> unauthenticated attacker to inject JavaScript. If the victim is an
> administrator, an attacker can (for example) takeover the admin session
> or change global settings or add/delete links. It is also possible to
> execute JavaScript against unauthenticated users.
>=20
> Fix:
> https://github.com/shaarli/Shaarli/pull/987

CVE-2017-15215 has been assigned.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-15215


--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--dcCKhMln8W4XjS7dClAuHln53a7u71NfF--

--MifAseBFtH3q9nQvKihESC7Taf6CKGQj5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlndCW0ACgkQunuT+ZA3
rn70aRAAmp/lpihi5maRdG0L2ibJ9LHyeOS87ohaWWsZ84lppZSyF8tWchFCDm4A
Rkc4P6ILmFiPrQQLzmCNE1UKjgexW6yZl58hdalkGIANFeST8+ySJA7ssFjzb4vg
BGYlmBAKgYURJ5htL33F/ezfz4svyiu0RM6cVHSam+B/vtUv8XvvlbVf7SjKavSh
JshFVuGfqXWfYCXfMwi66gx1WvwC7i5J1Vjk67oJBnoOvk7OSHd5PqyWjgjJz2o/
n5YJdW88KLDcxX+bUu7wooJT1yeiazwvGn1tRvGF9Dm0tJPSyFam3swLEJPho0IG
0mwQdJCaeO0Z5hzp8jvL+rMZlRjgCBxE033ZfnZMTEfS33APDQovfG/kvKb5O5Pw
BYJ14+aiswxdsIHnlJU7xBPW31oKUTxZYWeKUVKY7tVTqa8PfZMHtsKYngsINvQ4
HOsnSYvSKpBGlv38nbZWTojW9DeCIybx9m7v2Lat/VZMHuhcATqjmew8dc6bRe//
1AGYpsPPs9LXB2mqFz9QWoVmvWppiWHpYNdOS7HTWXikM2eKnsdSi+WYeoDyF7xx
LuiUHgCTQP3p8cJOiaD7GwUsPZDpFFbA1lgQU18HiIbiT9ygDwwQIOeNqke5K3om
nxuHmajqWIrLzKGbas+8KcIphmD54csaCz08Qy8DqzU0fL8yoDU=
=r3hC
-----END PGP SIGNATURE-----

--MifAseBFtH3q9nQvKihESC7Taf6CKGQj5--
