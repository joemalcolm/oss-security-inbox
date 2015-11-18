X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2605" "Wednesday" "18" "November" "2015" "18:35:50" "+0100" "Peter Bex" "peter@more-magic.net" "<20151118173550.GA4160@more-magic.net>" "68" "[oss-security] Re: CVE request for path traversal / info leak bug in Spiffy web server" nil nil nil "11" "2015111817:35:50" "[oss-security] Re: CVE request for path traversal / info leak bug in Spiffy web server" (number mark "U       peter@more-m Nov 18   68/2605  " thread-indent "\"[oss-security] Re: CVE request for path traversal / info leak bug in Spiffy web server\"\n") "<20151118171541.3A12B6C0188@smtpvmsrv1.mitre.org>" ("<20151117165117.GB2631@more-magic.net>" "<20151118171541.3A12B6C0188@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20096 invoked by uid 550); 18 Nov 2015 17:35:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20078 invoked from network); 18 Nov 2015 17:35:58 -0000
Date: Wed, 18 Nov 2015 18:35:50 +0100
From: Peter Bex <peter@more-magic.net>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Message-ID: <20151118173550.GA4160@more-magic.net>
Mail-Followup-To: cve-assign@mitre.org, oss-security@lists.openwall.com
References: <20151117165117.GB2631@more-magic.net>
 <20151118171541.3A12B6C0188@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wRRV7LY7NUeQGEoC"
Content-Disposition: inline
In-Reply-To: <20151118171541.3A12B6C0188@smtpvmsrv1.mitre.org>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] Re: CVE request for path traversal / info leak bug in Spiffy web
 server

--wRRV7LY7NUeQGEoC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 18, 2015 at 12:15:41PM -0500, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>=20
> > http://lists.gnu.org/archive/html/chicken-announce/2015-11/msg00000.html
>=20
> > if you are using awful,
> > chickadee, pastiche, qwiki, websockets or any other egg that uses Spiffy
> > as HTTP server, your server is vulnerable as well.
>=20
> > Spiffy 5.4 eliminates the
> > vulnerability without requiring the fix for the CHICKEN core.
>=20
> Use CVE-2015-8235 for the Spiffy vulnerability.

Thank you.

> > The issue with the CHICKEN core procedures has been addressed by
> > edd4926bb4f4c97760a0e03b0d0e8210398fe967 in the git repository, but it
> > is not in any stable release yet.
> >=20
> > http://code.call-cc.org/cgi-bin/gitweb.cgi?p=3Dchicken-core.git;a=3Dcom=
mit;h=3Dedd4926bb4f4c97760a0e03b0d0e8210398fe967
>=20
> If this is a CHICKEN core vulnerability, it needs a separate CVE ID.
> The description above -- especially the 'supposed to be "atomic"'
> comment -- suggests that the code is unambiguously wrong, but the
> commit message presents the issue differently. Also, it appears that
> introducing '/' characters into strings is a general problem for any
> program that prohibits only '/' characters in user-supplied filenames
> (e.g., because the program, for whatever reason, can only be used on
> UNIX platforms). Is there a rationale for not considering this a
> CHICKEN vulnerability?

I'm not 100% sure, but I think it was not considered to be a
vulnerability as such because, while it's indeed unambiguously wrong,
it doesn't directly present a vulnerability.  It's only, like you say,
when an application prohibits only '/' characters, when this results in
a vulnerability.

I trust your judgement on this, so if this is worth a CVE ID, please
assign one.

Regards,
Peter Bex

--wRRV7LY7NUeQGEoC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWTLb2AAoJEBEdufnLRYmwnJwIAIbUDI6jRBngy9diecSr8Wi4
1VES5BV7T7DIY9ySQDBzdDw8GBnNj4Tv8WMqsNtPo9KId8oEGJuhZauCm6qWtpwE
bMsr3dXeCFD7XAUV/xVljKY7+ckQOpPSghmhqKlwjhrd05pdCvzYuASZfc+mPrbC
JzPwRZ+tPIS82NVZxRs/dOFWXj2AL4YtD4lkAdG7LRdBkzqWj123S7IskaEQYUKI
zRA5tHxVjD9xXLzrRsyb8ec2z9LgFNHT9rOkhkula6Zr4QnJABgOF/+C/lrmxLuZ
o2RmkecheHn6XnVIBldDel2ewjT7TDLhOSo1rvMTOcI5r8Dlv0q0dNPAk7xlG24=
=OUTC
-----END PGP SIGNATURE-----

--wRRV7LY7NUeQGEoC--
