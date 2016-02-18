X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3496" "Thursday" "18" "February" "2016" "11:08:31" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160218110831.17429da5@pc1>" "86" "Re: [oss-security] Address Sanitizer local root" "^Date:" nil nil "2" "2016021810:08:31" "[oss-security] Address Sanitizer local root" (number mark "        hanno@hboeck Feb 18   86/3496  " thread-indent "\"Re: [oss-security] Address Sanitizer local root\"\n") "<20160217221921.GB24130@port70.net>" ("<20160217221921.GB24130@port70.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32392 invoked by uid 550); 18 Feb 2016 10:07:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32368 invoked from network); 18 Feb 2016 10:07:49 -0000
Message-ID: <20160218110831.17429da5@pc1>
In-Reply-To: <20160217221921.GB24130@port70.net>
References: <20160217221921.GB24130@port70.net>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-21551-1455790057-0001-2"
Date: Thu, 18 Feb 2016 11:08:31 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Address Sanitizer local root
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-21551-1455790057-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks a lot for your analysis.

On Wed, 17 Feb 2016 23:19:21 +0100
Szabolcs Nagy <nsz@port70.net> wrote:

> https://blog.hboeck.de/archives/879-Safer-use-of-C-code-running-Gentoo-wi=
th-Address-Sanitizer.html
> (the later was presented at FOSDEM 2016:
> https://fosdem.org/2016/schedule/event/csafecode/ )
>=20
> While these are interesting projects, ASan should not be
> used for hardening in production systems in its current form,
> so at least the language ("hardening", "protection", "safe")
> should be fixed.

Given that this is my work (I did the asanized Gentoo and the FOSDEM
talk) I think I should answer.

I hope I have made it clear that whether using asan for production
purposes makes any sense was an open question to me. I have placed
warnings that this is experimental and I didn't recommend any production
use right now.

I was aware about the performance and memory costs of asan, and I was
aware that there are risks involved, but it appeared to me that
balancing issues out it would still be a security win and might
therefore be an option for some highly security sensitive environments.
Your mail makes it clear to me that I was in error and at least in its
current form asan is probably not suitable for secure use at all.
I will add a note to my blogpost and the Gentoo wiki with a link to
your mail to make this clear.


Appart from that I wonder whether this should have any consequences for
asan and which ones. Would it be desirable to:
a) Try to fix security issues like the one you presented with suid
binaries? (not sure what the best fix would be, maybe detect suid
binaries and drop privileges back to user [not sure if that's even
possible]).
b) Leave issues unfixed and declare that asan is just not good for
production use. In this case I agree that the asan documentation should
probably include some more obvious warnings / explanations of the
risks involved.
c) Some other variant, like splitting asan into two different variants.
One could imagine having a new cflag that would enable asan, but
disable some of the ASAN_OPTIONS things like logging (however thinking
about this I don't like it - if I imagine running asan on some kind of
server I would want to be able to log issues).

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-21551-1455790057-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWxZgfAAoJEKWIAHK7tR5CeCsQAJq6ZmHrNN9F6Aj7IO/MZ5BV
tF/mVZC1CVTzljr/ud94tm1AwsnkqtMTTX6UkJwnFAjeQ9n3xeFqWlM7h8+ql/db
X3CWgM/0L43UksJ5+2l42C3dfR9Kpl76xJjSgUN5JhcD8U6fwGxo2jb+Sey0SBia
AW11UHDo/k0CqVPsAHHwUxXbElm3q+Wnm3Dv51OVxUzYvNbDajZfzhPWhcd2Aolp
Xfh5dbjxA1MpqQzCQx6Vg5v8LK2DYo7ckSuOKX4hAY2xcI5G89wNFVG8RJGZmGKf
TLDHIPnAORQPcBhMb7VA6JX0v8P51T5gpZSgRMRdHjbR73iFRVhfcpnzZFd4oFM8
Ls2J26PgL+H+TjiT1oB872Fhc+/Sj4RNiEBNaPbvqxSeMxDuKKTTWwddjb3fq7pA
GuIIbdu58PX21Sxe6nMj4juB4RClTF0F3BJYcUesGMQYzs1pjiwhuGH1Ps+eOuOo
DAFFOorsKqfuQvgjuNPiYlzuf/Gi+9EHjmXBH1Wh1+P67KDii3CytNMl4f5RBSOX
U8ceWJfdXOLEMp2J3s7lx7be+kJGnb1liQ6IKBBf6bEEVpPCyRCuk+22ueSE6LiT
Pw9pai8SpjrCBuFEZTy4mYp3Z8htrJFlBzfo8nKKMGcxPZcOVzPXkDksW7zMXO5E
onWhGLf+qDsQ9VrR08AP
=SWyv
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-21551-1455790057-0001-2--
