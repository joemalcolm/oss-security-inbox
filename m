X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1810" "Thursday" "7" "December" "2017" "22:15:59" "+0100" "Peter Bex" "peter@more-magic.net" "<20171207211559.fhrmtg7wul36znzp@scully.more-magic.net>" "47" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017120721:15:59" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "        peter@more-m Dec  7   47/1810  " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") "<20171207210134.GA7079@openwall.com>" ("<20171207210134.GA7079@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7305 invoked by uid 550); 7 Dec 2017 21:16:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7286 invoked from network); 7 Dec 2017 21:16:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=more-magic.net; s=dkim-2016-12; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=2sW+gsDelwWhqswVqXhdOm32gHKCDja5wsSR8/ivFqI=; b=SZSzwi2nLbk1Ct9e2ZeZbAMoZ
	MEJnygxMAvunGPRMHxw/59hKLhof7rM9uStJZyrxlplB/n0hbHRpgtxUZTfYqIznOOkwNSMwG7dsV
	idR939VoC4XrTD0uYUxVa2sHaYxxHR6LjGrTTx/NoowBuTDvowxg4CYQ7BtajCJ3PjnDg=;
Message-ID: <20171207211559.fhrmtg7wul36znzp@scully.more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171207210134.GA7079@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cjlpmalib2ewdl3g"
Content-Disposition: inline
In-Reply-To: <20171207210134.GA7079@openwall.com>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Thu, 7 Dec 2017 22:15:59 +0100
From: Peter Bex <peter@more-magic.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

--cjlpmalib2ewdl3g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 07, 2017 at 10:01:34PM +0100, Solar Designer wrote:
> On Thu, Dec 07, 2017 at 03:15:06PM +0000, Jeremy Stanley wrote:
> > Sounds like my use case is likely not your use case, so perhaps you
> > should look at the signify utility OpenBSD developed for this
> > purpose instead? It's included in Debian since Stretch under the
> > package name "signify-openbsd" and seems to work well; I've used it
> > semi-regularly as I tend to do a lot of cross-platform things in a
> > mixed Debian/OpenBSD environment.
>=20
> There's also asignify:
>=20
> https://github.com/vstakhov/asignify

As for free GPG-compatible alternatives, I happened to remember that
years ago, NetBSD was working on their own BSD-licensed PGP
implementation as a GSoC project, but it never really went anywhere.
Looks like that finally exists now:
http://netbsd.gw.com/cgi-bin/man-cgi?netpgp++NetBSD-current

I don't know if it's any good or if it can be easily ported to Linux
but it could be worth investigating if you really want to avoid GPG,
and it should probably be a lot simpler.

Cheers,
Peter

--cjlpmalib2ewdl3g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE6bh5EUSYP1EE+1UTER25+ctFibAFAlopr4QACgkQER25+ctF
ibDZRQf8CvzDm4fJNqkYyYflzFrpYez1XHR3r1JfVEKQwIEcR8rKyXqZaA2zXTNV
YfNTMq/uoMcQuDek2Yrs3K9QwNmVAfkg/qNAJA+Trh3bkf8tkyYgqnvFg/zHv7Bt
hSxk3uVxMPw5rap3HbMLxzwOYaYrntmdbWimIAoichaLUmlCNCvO1QDji+XKP7n6
jv8XtAdl3rpgv5UwaGsYD0budQRfaKNM/OuPgyhqiTz/dl/h3vWJgMy6XHD5QBzC
w6Sl65LJgrf9ALtrF4F57zHsQd4rvIjtZArC4oTaanM32o4oZaKh2rcfOBtNtwp9
pkc68ScyJIiDEr6z4hVkpkxGLXmunA==
=mvI9
-----END PGP SIGNATURE-----

--cjlpmalib2ewdl3g--
