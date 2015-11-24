X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1855" "Tuesday" "24" "November" "2015" "12:57:09" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" "<20151124125709.0448ee5c@fabiankeil.de>" "53" "Re: [oss-security] Heap Overflow in PCRE" "^Cc:" nil nil "11" "2015112411:57:09" "[oss-security] Heap Overflow in PCRE" (number mark "        freebsd-list Nov 24   53/1855  " thread-indent "\"Re: [oss-security] Heap Overflow in PCRE\"\n") "<20151124113343.4382bed3@pc1>" ("<20151124113343.4382bed3@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17761 invoked by uid 550); 24 Nov 2015 11:57:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17592 invoked from network); 24 Nov 2015 11:57:26 -0000
Message-ID: <20151124125709.0448ee5c@fabiankeil.de>
In-Reply-To: <20151124113343.4382bed3@pc1>
References: <20151124113343.4382bed3@pc1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 boundary="Sig_/2K.Llj0n=L1WBbHW/XDwES="; protocol="application/pgp-signature"
X-Df-Sender: Nzc1MDY3
Cc: oss-security@lists.openwall.com
Date: Tue, 24 Nov 2015 12:57:09 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heap Overflow in PCRE
To: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>

--Sig_/2K.Llj0n=L1WBbHW/XDwES=
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hanno B=C3=B6ck <hanno@hboeck.de> wrote:

> https://blog.fuzzing-project.org/29-Heap-Overflow-in-PCRE.html
>=20
> The Perl Compatible Regular Expressions (PCRE) library has just
> released a new version which fixes a number of security issues.
>=20
> Fuzzing the pcretest tool uncovered an input leading to a heap overflow
> in the function pcre_exec. This bug was found with the help of american
> fuzzy lop and address sanitizer.
> https://bugs.exim.org/show_bug.cgi?id=3D1637 Upstream bug #1637 (PoC and
> ASAN trace attached there)
>=20
> This is fixed in PCRE 8.38. There are two variants of PCRE, the classic
> one and PCRE2. PCRE2 is not affected.
> https://lists.exim.org/lurker/message/20151123.125009.80e5ac05.en.html
>=20
> Appart from that a couple of other vulnerabilities found by other
> people have been fixed in this release:
> https://bugs.exim.org/show_bug.cgi?id=3D1672
> Heap overflow in compile_regex
> https://bugs.exim.org/show_bug.cgi?id=3D1515
> Stack overflow in compile_regex
> https://bugs.exim.org/show_bug.cgi?id=3D1667
> Heap overflow in compile_regex
>=20
> If you use PCRE to parse untrusted inputs you should update immediately.

The last sentence seems overly broad to me as many (most?) applications
use trusted PCRE patterns (that get parsed and executed) to parse untrusted
input.

For this use case the issues above don't seem to require immediate action.

Fabian

--Sig_/2K.Llj0n=L1WBbHW/XDwES=
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZUUJYACgkQBYqIVf93VJ2g4ACfWfz2S/fYbVohu8AZ7uTXt5e1
5BwAniFXEZJP5nmYqb/u/h2L/LeeFSeW
=M39r
-----END PGP SIGNATURE-----

--Sig_/2K.Llj0n=L1WBbHW/XDwES=--
