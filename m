X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1880" "Tuesday" "15" "May" "2018" "10:22:46" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<83c6b5d6e961fc6c1130e634ab35763b3aaf43b8.camel@debian.org>" "51" "Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" nil nil nil "5" "2018051508:22:46" "[oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" (number mark "U       corsac@debia May 15   51/1880  " thread-indent "\"Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities\"\n") "<87vabp5puz.fsf@silverfish.pri>" ("<6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>" "<20180514102951.GD18567@256bit.org>" "<e4671df7733e6783cb7dd9ecce3062f4964fbf71.camel@debian.org>" "<87vabp5puz.fsf@silverfish.pri>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23923 invoked by uid 550); 15 May 2018 08:23:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23905 invoked from network); 15 May 2018 08:23:03 -0000
Message-ID: <83c6b5d6e961fc6c1130e634ab35763b3aaf43b8.camel@debian.org>
From: Yves-Alexis Perez <corsac@debian.org>
To: Brian May <brian@linuxpenguins.xyz>, oss-security@lists.openwall.com
Date: Tue, 15 May 2018 10:22:46 +0200
In-Reply-To: <87vabp5puz.fsf@silverfish.pri>
References: <6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>
	 <20180514102951.GD18567@256bit.org>
	 <e4671df7733e6783cb7dd9ecce3062f4964fbf71.camel@debian.org>
	 <87vabp5puz.fsf@silverfish.pri>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.2-1 
Mime-Version: 1.0
Subject: Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Tue, 2018-05-15 at 17:40 +1000, Brian May wrote:
> Have a look at some official statements on this:
>=20
> * https://lists.gnupg.org/pipermail/gnupg-users/2018-May/060334.html
> * https://protonmail.com/blog/pgp-vulnerability-efail/
>=20
> For the case of PGP it sounds like the only problems occur when mail
> clients ignore the GPG hints.

Thanks for the links (I had already included the information in my summary
though).
>=20
> For S/MIME, it does sound like the standard is broken and needs fixing.

That was my understanding as well, thus the mitigations.
>=20
> If I understand this correctly, the "Direct Exfiltration" is an attack
> that doesn't require modifying the encrypted data - so presumably the
> MDC in PGP won't help.=20

Yes indeed.

> To me this sounds like a email client problem
> (allowing mixing encrypted and encrypted data in the one HTML document
> seems like a very bad idea), but the https://efail.de/ page says the
> standards need to be updated to fix this.

Maybe the fixing the standard will help, but indeed the client can already
sanitize the various chunks of message and not render them as part of one H=
TML
document. As far as I can tell only Thunderbird was vulnerable to this (in
open-source software), but I can't find a CVE number or a public bug for th=
is.

Regards,
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlr6mNYACgkQ3rYcyPpX
RFtn4ggAtq1Ex6jbj0XbMxQt2j9l4/p1OFSoemqJEEXse2E6cgB/UMd4LPBpzeW0
kS1I6glL4j3ODpUrcBKFkWTqUMXwYATayzBGX08HWti5vj+CRtqd+QtpMziymhiC
UzB77gsDi3IBssANPDVrW1YmF/pN5FUvrmBx6F+yEXOd0dQkKwQrbnvgQVskVGBP
TisoHpMDvEAZGToNlHh/HokonliCnnN7vQRp4ZiardcWsFY5oBnmHcvZKYaW1R9G
PG65KWRDSxiU9hB6UGoZNAgM8vlBjZzEk6kgSm8XC5vam2Co/Egg0JQenK0C8YyP
ATG6D5cEDa31XswrNeZLVr5VF035JQ=3D=3D
=3DdZri
-----END PGP SIGNATURE-----
