X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6377" "Thursday" "5" "May" "2016" "11:23:50" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160505112350.66f699b5@pc1>" "131" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050509:23:50" "[oss-security] broken RSA keys" (number mark "        hanno@hboeck May  5  131/6377  " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160504124248.GA15148@openwall.com>" ("<20160504124248.GA15148@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17552 invoked by uid 550); 5 May 2016 09:24:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17527 invoked from network); 5 May 2016 09:24:03 -0000
Message-ID: <20160505112350.66f699b5@pc1>
In-Reply-To: <20160504124248.GA15148@openwall.com>
References: <20160504124248.GA15148@openwall.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-30366-1462440232-0001-2"
Date: Thu, 5 May 2016 11:23:50 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-30366-1462440232-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I've now done a bit more thorough analysis, but I really don't think
there's anything overly interesting to find here.

A comment before: The guy who publicized this stuff via his blog writes
some very confused blog entrys and has lately written one where he
threw a lot of insults at me and declared that I'm responsible for
everything that's wrong with computers and with the world. So please
understand that I find it a bit hard to deal with these people, and I
won't attempt to communicate with them in any way. But I'll try to do my
best to clarify what I know. (I don't know if/how the author of phuctor
who wrote in this thread is related to these blogposts.)

As a background: What we're talking about is a so-called batch-gcd
attack, developed by DJB. Arjen Lenstra and Nadia Heninger were as far
as I know the first ones to use this on publicly available keysets in
order to find vulnerable keys. The implementation from Nadia Heninger is
freely available [1] and some code to turn a pgp keyserver dump into a
mysql database is available from me [2]. So everyone should be able to
replicate what I'm saying (the workflow is: use my script to turn
keyserver dump into a database, select the rsa_n value from the
keys_rsa table, run sort -u on it, feed the result into nadia's fastgcd
tool). It takes a couple of hours on a fast machine to replicate the
attack.

What one will find are 273 vulnerable moduli. Of those most have
invalid self signatures. If you look at them the most plausible
explanation is that they're the result of data errors. You'll
find corresponding valid keys for most/all of them (I have only checked
some manually). If you look into them you'll find stuff like this:
f92f34e31bfcd57369ae04bf87888cfbca5525e3b24dd55aa4f7775ffb631c24f511c8de4c6=
707d3f685ea75c8b5f6e432e86fea10edaa6ed4812cdd51a90203010001300b06092a864886=
f70d010104030100fdfdfdfd00000000000000000000000000b0120a01e8220a01684640005=
000000010000000010000002a000000
f92f34e31bfcd57369ae04bf87888cfbca5525e3b24dd55aa4f7775ffb631c24f511c8de4c6=
707d3f685ea75c8b5f6e432e86fea10edaa6ed4812cdd51a90203010001300b06092a864886=
f70d010104030100fdfdfdfd00000000000000000000000000b0120a01e8220a01684640005=
000000010000000010000002a000000

Or in short: lots of repetitions, zero and ff values. I think it'll be
very hard to pinpoint what the source of these issues is, but it looks
a lot like simple data errors. I assume network transmission problems,
disk failures or software bugs. It's also possible that
people just messed with a hexeditor in keys and uploaded them. I think
all primefactor patterns are just factors that happen to be likely once
you do such random data errors.

Now to the 10 keys that have valid selfsigs. Two are for
alice@example.com (and honestly it may be that these one comes from me,
but I don't remember exactly. I created broken test keys, but I don't
know if I uploaded any. At least the date roughly matches when I worked
on this).
2 keys are for Texas Instruments and 512 bit. That's probably some joke
referring to the breakage of TI signing keys [3]. One key is for "FAKE:
key generation test", one has an empty userid field. They're probably
examples as well.

That leaves 4 keys that look somewhat reasonable. They're all really
old (>10 years). Of those two have very small gcd factors and are
pre-2000. The other two are from 2001 and have large factors.
The last two are supposedly (from what Nadia Heninger told me) from a
software called CryptoEx from a german company Gl=C3=BCck&Kanja.
Unfortunately one doesn't find this software anywhere online, just some
old press releases. The product later got bought by PGP (aka
what today belongs to symantec).

Honestly I don't think there's too much to see here. There likely was a
very old commercial PGP implementation that created broken keys. Maybe
there were two (because of the two keys with small primefactors). And
the keyservers take broken copies of valid keys without complains, as
they don't check any signatures. Plus there are some keys that look
like people manually creating broken test keys. I don't see any sign of
a deliberate attack in this data. But you don't have to take my word
for it. The software and data I used to analyze this is all public.

I'll upload a keyids file to the pgpmoduli repo:
https://github.com/hannob/pgpmoduli

The way to interpret that data is that line numbers match. I.e. the gcd
in line 10 of gcds matches the modulus in line 10 of vulnerable_moduli
and the keyid in line 10 of keyids etc.

Slightly related: There are other ways to search for bad pgp (or
generally crypto) keys. I once searched for broken DSA keys (due to
duplicate r values) [4] and found one broken key and for RSA-CRT issues
and found one other broken key (E46DEB00098894FD). The first came from
a beta of an app, the second is of unknown source (the crt issue is
something I haven't published anywhere before).


[1] https://factorable.net/resources.html
[2] https://github.com/hannob/pgpecosystem
[3]
https://en.wikipedia.org/wiki/Texas_Instruments_signing_key_controversy
[4] https://eprint.iacr.org/2015/262
--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-30366-1462440232-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXKxEmAAoJEKWIAHK7tR5CzdEQAMAnAMUMEhxeh13Wuaz6G7uH
8Qs7jC2NIwjzpuvpL/p689xfds1T+u9rFq8PLrZjnc643I7EaM4f4V6KCQdJtoU4
tRob9Lt7VloXhshF15I49L9Flbm36m4Ky40//gab1wvJpK5vPgX763IlpfOLUazh
mDfto3/lkerbZbw3uJ2e76c+L6mw5HvuwxBlvbd5Ck8Y14BFKp3z1djxqOT5fTOJ
6TKJ0FGaIbXzWLZ4h2mchTBWQ4q4z3AV2JRBnAxIAsY27xyjNPYbQymqSFoxJEyc
Xf3ucUp+Tpoq4o56jTPuqT0YdzLsCHdVRXWBnbCaizt9HoeptAQr/GodfKHJaDE8
skl+R3TXAc9kA4+JNeOIGxcvHm92c1JPu9kQe66jafY/X8zYenvlCzCYsSThEAQD
l1s4XtE6eOM16H07ON9rWW3EO+3M7x3EGjTinV0S4E3+g92AAmK+I2ZhyDKrJifs
oVio2RkJ3vEPm1JWGcBkEJ/HCUIdkF2KdKFvAImhki+2rtLQ0Zmj0ORR7obOr4V3
lRrzEMgCuQLBWdQZNJnfYVlEfmup1Rb5NzoNOy3HxPdkj43I0lmji61aSamSvEhq
bzlO8yZPOHCIL8VF+44/LgZ9QOnS5GMTjQ02vP90EYiU9zGJHaFwtYmij09JEOND
mjhAyxGCML4EUBnzrLHs
=CxDs
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-30366-1462440232-0001-2--
