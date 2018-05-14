X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2271" "Monday" "14" "May" "2018" "16:01:42" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<e4671df7733e6783cb7dd9ecce3062f4964fbf71.camel@debian.org>" "54" "Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" "^Date:" nil nil "5" "2018051414:01:42" "[oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" (number mark "        corsac@debia May 14   54/2271  " thread-indent "\"Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities\"\n") "<20180514102951.GD18567@256bit.org>" ("<6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>" "<20180514102951.GD18567@256bit.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22362 invoked by uid 550); 14 May 2018 14:02:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22344 invoked from network); 14 May 2018 14:02:03 -0000
Message-ID: <e4671df7733e6783cb7dd9ecce3062f4964fbf71.camel@debian.org>
In-Reply-To: <20180514102951.GD18567@256bit.org>
References: <6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>
	 <20180514102951.GD18567@256bit.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Ujl1HWkQ6gNGopsOxvWa"
X-Mailer: Evolution 3.28.2-1 
Mime-Version: 1.0
Date: Mon, 14 May 2018 16:01:42 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities
To: oss-security@lists.openwall.com

--=-Ujl1HWkQ6gNGopsOxvWa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2018-05-14 at 12:29 +0200, Christian Brabandt wrote:
> Looks like details have just been published:
> https://efail.de/

So, as far as I can tell, in that attack scenario (where the attacker has
read/write access to encrypted mails):

- S/MIME is completely broken at the protocol level since it has no way to
defend against blind modification. Only mitigation for the clients are to
prevent HTML mails and/or prevent loading of external resources. There might
be other avenues to exploit the vulnerability in the future though.

- PGP/MIME is a bit safer because the OpenPGP format compresses plaintext
before encryption (which makes it harder for the attacker) and has some kind
of authenticated (symmetric) encryption (the MDC), which helps gnupg detects
modifications to the cyphertext. Most mail clients properly handle gnupg hi=
nts
when something went wrong but the external interface is a bit fragile (gnupg
will still output the cleartext, for example). One exception is apparently
Thunderbird with enigmail before 2.0.0, but this is now fixed (I didn't find
the proper commit yet). Again, not displaying HTML mails and not allowing
remote content loading can help, but other =E2=80=9Cbackchannels=E2=80=9D m=
ight be found in
the future.

I hope this can help other people. I'm no cryptographer so I didn't look
thoroughly to the crypto part of the paper, rather to the mail client
integration. Feel free to correct me if there's anything wrong.

Regards,
--=20
Yves-Alexis=

--=-Ujl1HWkQ6gNGopsOxvWa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlr5lsYACgkQ3rYcyPpX
RFu64wf+IMp0TFu8kk35QVQ8uCaQfU1IhqmsOh8AAqiL1U/h5U89zPLUaBZxbQLt
SzWrmB+JKkfuUTw4PHFzfuhf+jcKYdM0YQHL2hcaq8dSnmjHLKMmWXejWTPcvcFQ
sszgnSIlzDGdfxAvypLRpiPtTRNY7rnW2nGao/yBiVQbfiyEUtj2tLzjzsHH5d2d
xrm13GU7OBp/6QjbtzGVZR7OfJemGEtxM7eaY5qE1V/goMBgHmOTEC2DzHWXP/nd
0iTl+BTKO+D7UHhCE2rjbL0m3TNu7RaVIcosB5ivhKo/GgXqjAgoo9hrhL3l+9Vo
+jiMI9Ea/0HhnC7X5UwXcB68bBeuHA==
=acJF
-----END PGP SIGNATURE-----

--=-Ujl1HWkQ6gNGopsOxvWa--
