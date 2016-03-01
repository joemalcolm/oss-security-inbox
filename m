X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2457" "Tuesday" "1" "March" "2016" "20:59:39" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20160301175939.GA8873@gremlin.ru>" "63" "Re: [oss-security] CVE's for SSLv2 support" "^Date:" nil nil "3" "2016030117:59:39" "[oss-security] CVE's for SSLv2 support" (number mark "        gremlin@grem Mar  1   63/2457  " thread-indent "\"Re: [oss-security] CVE's for SSLv2 support\"\n") "<CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>" ("<CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30520 invoked by uid 550); 1 Mar 2016 17:59:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30502 invoked from network); 1 Mar 2016 17:59:53 -0000
Message-ID: <20160301175939.GA8873@gremlin.ru>
References: <CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=x-unknown;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline
In-Reply-To: <CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Date: Tue, 1 Mar 2016 20:59:39 +0300
From: gremlin@gremlin.ru
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE's for SSLv2 support
To: oss-security@lists.openwall.com

--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2016-03-01 10:33:17 -0700, Kurt Seifried wrote:

 > https://tools.ietf.org/html/rfc6176
 > TL;DR: SSLv2 needs to be shot.

Yes, with SSLv3 and TLS 1.0 being the next.

 > Now we have yet another significant SSLv2 problem, DROWN, bad
 > enough in fact that Red Hat has now disabled SSLv2 in OpenSSL
 > by default (already done in NSS/GnuTLS), so from my vendor
 > perspective, we're treating SSLv2 support as a security problem,
 > the solution of which is to remove said support.

The problem is more wide, as it's in the use of insecure algorithms.

 > But more generally, should we look at assigning CVE's for
 > support of SSLv2, much like we would for products supporting
 > DES or other known insecure cryptographic algorithms, hashes,
 > digests and protocols? My personal vote is for yes.

Yes. Including, but not limited to:
1. RSA keys of less than 4096 bits (a minimum of 8192 should be
recommended).
2. Non-EC discrete logarithm based algos (DSA, old GOST 34.10-94).
2. EC-based algos with keys of less than 256 bits (as for me, I'd
consider 1024 bits to be an absolute minimum: chips are cheap, but
the energy is still expensive).
3. Symmetric ciphers in any mode other than CFB or counter-based.
4. Symmetric ciphers with key size of less than 256 bits.
5. Hash functions of less than 256 bits.


--=20
Alexey V. Vissarionov aka Gremlin from Kremlin
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJW1diLAAoJEJCdrEXvOx+oYwMQAIuQnmY9t5Gr87CIG+jq1A68
CJH4MOZMyisAXPd1/iEuW6LLKLJLwbF3E2ump4VuVwmsnl/5tkhcrx1HmNon1KcJ
W0T618HPqtf8X6WFCTdZxDP3dCDISlqxsV+pucaRBzE4m3TClDWoIDPhgFWjxve/
1xlV9VzhGhHO6v8mqIZlWFoLDFnO7hnpgy055n2QTasFOLk6LB+TrkBhRBsN/0Fz
WJXaKMinPfMvk1RTBYHN5aPjus5DTICo6MVUvBsAOGHmkwkodaFNLbim0204k5/p
uEDMfc+nfTH4NFyKAASHSVGinHA0a30XeqnEv9rYIU8o2jddfsTYlUKTfOp9ixVu
PJg+7Wf8280bF44wgytXslkT0MdF5D+R3x3cf8JjFmv3AvDvHJhubEdlcdZxdkwB
NbKFG3/7cW5FhMlGBcD4FPgvWPfnxnRPWi9DOLWQHBxySJ6g7he9T33ghsjFdmVJ
ZUAahXGGrdNYUM0lwj0jYQ6wVAi96cImLrApUpb3TulxWyrev5IdD34KH1X6Tc0g
9w1wFBdLfvcu+mM++IWgaN76O6l83l9gnITXtn6WWxIxI7j3YAzRM8SOhV8fqKoa
8HySYpleBsIcnn75k2JGygqDGAr9AaouCQvzwGOKGpKMNVhyEDr2VoqdIajE11aN
BVQJvsLYkc7ohUw1YvAl
=7gu0
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--
