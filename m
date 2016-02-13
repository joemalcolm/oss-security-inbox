X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2616" "Saturday" "13" "February" "2016" "14:15:13" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160213141513.06096f21@pc1>" "63" "Re: [oss-security] Thoughts about security of Linux distributor collaboration platforms, bugtrackers for opensource software" "^Date:" nil nil "2" "2016021313:15:13" "[oss-security] Thoughts about security of Linux distributor collaboration platforms, bugtrackers for opensource software" (number mark "        hanno@hboeck Feb 13   63/2616  " thread-indent "\"Re: [oss-security] Thoughts about security of Linux distributor collaboration platforms, bugtrackers for opensource software\"\n") "<9d8ff9da-5b07-588e-f2c5-38ba1e46b27c@halfdog.net>" ("<9d8ff9da-5b07-588e-f2c5-38ba1e46b27c@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9304 invoked by uid 550); 13 Feb 2016 13:14:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9282 invoked from network); 13 Feb 2016 13:14:35 -0000
Message-ID: <20160213141513.06096f21@pc1>
In-Reply-To: <9d8ff9da-5b07-588e-f2c5-38ba1e46b27c@halfdog.net>
References: <9d8ff9da-5b07-588e-f2c5-38ba1e46b27c@halfdog.net>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-25230-1455369262-0001-2"
Date: Sat, 13 Feb 2016 14:15:13 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thoughts about security of Linux distributor
 collaboration platforms, bugtrackers for opensource software
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-25230-1455369262-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 13 Feb 2016 05:52:44 +0000
halfdog <me@halfdog.net> wrote:

> Hence really critical security material perhaps should not go to such
> platforms, e.g. Ubuntu Launchpad, or the platform should be modified
> to send security issues only in encrypted mails without talkative
> title, members without mail public key registered should get only
> message "Bug [Number]: Info changed" including the HTTPS link to the
> issue in the platform.

This is roughly what mozilla does and I like it a lot. They have a bug
tracker over https and you can add a PGP key. If you don't add a PGP
key and report a security bug you won't get updates via mail
unencrypted.

I think this is definitely an area that could need improvement. A lot
of projects don't have any reasonable way to securely report bugs. And
some actively discourage reporting bgus in a secure way (apache has
some note on their webpage that you may send your reports encrypted to
some people, but have to expect longer delays if you do so instead of
using the "normal" unencrypted way).
One problem is also that e.g. the github bugtracker (and I think many
other bugtrackers as well) doesn't consider sensitive bug reports.

But I also agree with Florian: Part of the problem can be mitigated by
not keeping things under the hood for too long. I'm often disappointed
with slow reaction times.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-25230-1455369262-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWvyxhAAoJEKWIAHK7tR5CejAP/RrlgDinXJjjGlBEuRBTbkwG
7tzOSmQeqeK4GcoECezUB2nYA1pMWI+xOyN/BkHRlxJ80PUjwlKAcBwu/flWbV9V
K59nfMlrlFLU8+Z4VuDUu4ex5ZURskUu4BzFkBNnjtP2zQ9bgu+MtMFNoTnFaFIi
yno4AK6qQRxT5eqzVsk7NdtgLgI62qn+I3sUZdV2/cIkxsYj+09LkHPSkpPoncb1
9KkI1uO6sEcHeDantN5iRb98cA0NmhTB/f8ZIqpM9PBqEXWp5V4k6S0437FfmuJa
4QQbli+acU8ll6Tnw3apih3KMhsj4gre0Hy5cZTDpxr4x9VvvQHAtYCTXZSKxTHu
JlEqJQpQ7izLNNkcwgWLsZ/vHTNqxRIpTRxY4ujpj20DMHFYrCb+f2nykEenwppL
sGXpo8WKqCDg4M9LFsfJCjE6cTJkXYXvs95hMqNv/RLTaG/bkCc77aqCmXQ8fFeW
+l7M/szfdxoZ1dXpwCwgaJ2YaRcDI//1Sk09Ob+VDUXCvSl8u0fT86qgSvnC893y
1H5qteHO9AphBK0Y3IuvSSkDbbsKcCbUxSvEyY2WvEnKGVhQi41qIJmBpkQwRkAN
FgBLZN9kCWk6CZRBYe0exJRduEgGEiCMgAs0B4JjrZmYe2+r0LxkR629i0xucLuv
rwNnraSZaK7aeqwU6XbS
=M5//
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-25230-1455369262-0001-2--
