X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2697" "Saturday" "16" "May" "2015" "23:47:14" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150516234714.1aff6d98@pc1>" "74" "Re: [oss-security] about this openssh heap overflow" nil nil nil "5" "2015051621:47:14" "[oss-security] about this openssh heap overflow" (number mark "        hanno@hboeck May 16   74/2697  " thread-indent "\"Re: [oss-security] about this openssh heap overflow\"\n") "<20150516211007.GA14372@zoho.com>" ("<20150516125812.22c2523d@pc1>" "<20150516211007.GA14372@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24349 invoked by uid 550); 16 May 2015 21:46:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24331 invoked from network); 16 May 2015 21:46:49 -0000
Message-ID: <20150516234714.1aff6d98@pc1>
In-Reply-To: <20150516211007.GA14372@zoho.com>
References: <20150516125812.22c2523d@pc1>
	<20150516211007.GA14372@zoho.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-30598-1431812797-0001-2"
Date: Sat, 16 May 2015 23:47:14 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] about this openssh heap overflow
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-30598-1431812797-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 16 May 2015 21:10:07 +0000
mancha <mancha1@zoho.com> wrote:

> So, we're dealing with an OOB *read* triggered by a crafted config. By
> the way, if an attacker has write privileges to your config you have
> bigger fish to fry.

Uh no. Has nothing to do with the config (you may mix this up with
another issue I recently reported to ssh regarding config parsing, but
that's unrelated).

It's an OOB triggered in the client by a specific banner string from the
server.

> Notices are already going up describing this as heap buffer overflow
> with "high" risk. [1]

That's of course bogus.

> Serves as a good reminder that context and
> phrasing are critically important when publicly discussing bugs with
> possible security impact in order to avoid tsunamis of
> the-sky-is-falling posts & articles.

One take away from this story for me - also after criticism I got on
twitter: The term "heap overflow" seems to be prone for
misunderstanding.
Some people consider every out of bounds thing an "overflow", some
think that only oob writes should be considered "overflows.

To avoid confusion I'll call similar issues "out of bounds read"
instead of "read heap overflow" in the future. Probably a wording less
prone to misunderstandings.

(address sanitizer calls every oob read a heap/stack/global buffer
overflow, that is the main reason I used that term in the past - I often
sticked to the wording address sanitizer used)


--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-30598-1431812797-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVV7riAAoJEKWIAHK7tR5CKdgQAK2u38XrxuUpuSHp+66WtRbz
nqFPP0OQnThsomhAwrGqJ8X2JZR9lQiMDRLNZRk8ik7D0F8PAs+N+suliw/YPtPn
BckNtdG0crULZkTTxMAtDPZLLEBweNxnYV8w34/b7C248pRrK3Nyl0DClto2QeGU
x8aTyKN6sf0MzVtil19hMG9+fAQ9JGKBS1XB7Mhf3U2GfsRYX3dc0ZV/+35gxbuR
2ig+sIm8+h0BtdEybRdT9zI3oNbJPy2Tv+0AfZziqt6xK+no0VwkGUfTacCwfYdi
+L33z+I+4Y9D2EUkIsNSEWcZVGbgA2sOihCTU5Jkpr84dEm9u7feeDg8Mf+MrlM1
NsnkQdVxcdwrK3rm9LlldXwlWTNK6EExhjDIpTMr49Khe7VWystR51GbEc67urpI
jLbf2yPEPyqZ2Ok1s+5Ax659gF/1s8eEIYvHkLQZjFjQfhrQzcM7sTLX+DH06xuV
Kqv4zChFCFN/dVujEe89RNT+50b5tVsDi0UZ+mSr+Ua9Op48MXHOAy864nvoDQvn
RVY0FDHFTTjQtin28+3THscr4LHMOaBib41uQRk9STaxo49n/MVjT3zWA6DWwrR6
C4m1FQw8mo7UdFOBrROQNeoIts9t5WIGaRfqUX5VrFuByAxBYithJTvq200QQweW
2PQpCamf9HrtgyLjnLOK
=wtjm
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-30598-1431812797-0001-2--
