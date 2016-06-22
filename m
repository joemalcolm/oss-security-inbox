X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2407" "Wednesday" "22" "June" "2016" "16:48:55" "-0500" "John Lightsey" "john@nixnuts.net" "<1466632135.2458.9.camel@nixnuts.net>" "64" "[oss-security] Re: CVE request: SQL injection in MovableType xml-rpc interface" nil nil nil "6" "2016062221:48:55" "[oss-security] Re: CVE request: SQL injection in MovableType xml-rpc interface" (number mark "U       john@nixnuts Jun 22   64/2407  " thread-indent "\"[oss-security] Re: CVE request: SQL injection in MovableType xml-rpc interface\"\n") "<20160622213446.7624B6C01D7@smtpvmsrv1.mitre.org>" ("<20160622213446.7624B6C01D7@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
X-Quarantine-ID: <oRjIXdmVClil>
Received: (qmail 3337 invoked by uid 550); 22 Jun 2016 21:49:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3314 invoked from network); 22 Jun 2016 21:49:23 -0000
Message-ID: <1466632135.2458.9.camel@nixnuts.net>
From: John Lightsey <john@nixnuts.net>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Date: Wed, 22 Jun 2016 16:48:55 -0500
In-Reply-To: <20160622213446.7624B6C01D7@smtpvmsrv1.mitre.org>
References: <20160622213446.7624B6C01D7@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-jDB+st1zbuoAGWE9od8A"
X-Mailer: Evolution 3.20.3-1 
Mime-Version: 1.0
X-Spam_score: -1.5
X-Spam_score_int: -14
X-Spam_bar: -
X-Spam_report: Spam detection software, running on the system "nixnuts.net",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2016-06-22 at 17:34 -0400, cve-assign@mitre.org wrote:
    > > SixApart just released new versions of MovableType 6.2 and 6.1 to fix
    an SQL > > injection in the xml-rpc interface.Â > > > https://movabletype.org/news/2016/06/movable_type_626_and_613_released.html
    > > This says: > > >> Previous versions, including Movable Type 6.2.4 and
    6.1.2, are > >> susceptible to SQL injection attacks via XML-RPC interface.
    > > >> AFFECTED VERSIONS OF MOVABLE TYPE > > >>Â Â Â Â Movable Type Pro 6.0.x,
    6.1.x, 6.2.x > >>Â Â Â Â Movable Type Advanced 6.0.x, 6.1.x, 6.2.x > > Use
    CVE-2016-5742. > > > The vulnerability also affects the older GPLv2 licensed
    MovableType > > 5.2.13. > > Is there a separate public reference stating
   that 5.2.13 is affected? > Or, do you mean that you've done your own analysis
    and concluded > that 5.2.13 has the same vulnerability as 6.x? (Either one
    seems > fine, and wouldn't affect the number of CVE IDs - we are mostly >
    interested in linking the CVE to the primary-source reference about > the
    5.2.13 vulnerability, if such a reference exists elsewhere.) > [...] 
 Content analysis details:   (-1.5 points, 3.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
Subject: [oss-security] Re: CVE request: SQL injection in MovableType xml-rpc interface

--=-jDB+st1zbuoAGWE9od8A
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-06-22 at 17:34 -0400, cve-assign@mitre.org wrote:
> > SixApart just released new versions of MovableType 6.2 and 6.1 to fix a=
n SQL
> > injection in the xml-rpc interface.=C2=A0
>=20
> > https://movabletype.org/news/2016/06/movable_type_626_and_613_released.=
html
>=20
> This says:
>=20
> >> Previous versions, including Movable Type 6.2.4 and 6.1.2, are
> >> susceptible to SQL injection attacks via XML-RPC interface.
>=20
> >> AFFECTED VERSIONS OF MOVABLE TYPE
>=20
> >>=C2=A0=C2=A0=C2=A0=C2=A0Movable Type Pro 6.0.x, 6.1.x, 6.2.x
> >>=C2=A0=C2=A0=C2=A0=C2=A0Movable Type Advanced 6.0.x, 6.1.x, 6.2.x
>=20
> Use CVE-2016-5742.
>=20
> > The vulnerability also affects the older GPLv2 licensed MovableType
> > 5.2.13.
>=20
> Is there a separate public reference stating that 5.2.13 is affected?
> Or, do you mean that you've done your own analysis and concluded
> that 5.2.13 has the same vulnerability as 6.x? (Either one seems
> fine, and wouldn't affect the number of CVE IDs - we are mostly
> interested in linking the CVE to the primary-source reference about
> the 5.2.13 vulnerability, if such a reference exists elsewhere.)
>=20

I sent the original vulnerability report to SixApart and based my report on=
 the
5.2.13 version of the code.=

--=-jDB+st1zbuoAGWE9od8A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXawfHAAoJEORPgBbTYw+JdggQAI2OYHemXLEu827K04hEUwR/
qmZqcTvZxwLq6MaezVbFsSaT/XQsCJcFstLrxDU5lEWyVBkxUOvEVh8MUW5nlNB5
jn91X54UBzo/QZfMwoJfDK0M4jCLlbgeaYJt9Dm662bhtAA7T5bUCyTn+C0tW2GK
PHtVqxSY3SyTvdIfmTEHaGJGxD2PcvBUXkPFKfhqoTWHUz+YXhtgK0cft6uGWxil
uRyaEABD+T+di3zHYF7B6orr4cdwX3Z3FKVubJqPtvFT9CEdlPdAWeIIt0gHLnZb
7irq2oofB43zdoZ6BGAqNjcGry69s5g6OaGqvjivt9X0wEf6bdajKrPw5ZMXr5mX
HCLpnyccOzm69+XLyh5y6TmpgZFH2a4YfJWuB8rT1eqQV3tcySSEoO6yr1iOaBT9
WIfE1W7KT9Ndls2/xcLRAS3FblX0Yc6Pa/BdfEkNet4P6PGHM4pHefs87wb053IJ
pP0Q4N4jr7Rj2/CyRM1CAZxKzUn38yu9n+PBZTkFOLWdNWVDTLwP6VjPAn742Qb8
kaSWilbVPPNWN+w+qTus+MK6j2f10id1U64VVsGtrLmbLB09zlavv0YDMA/hJfsJ
Ayz2Sf1x2lgYDXPbkCuC1FLqqdzHeCrMQ0F3UcrGo4NzvNnQiKm2mTfOQ2P410+V
LOW3I/uX+TT7b1Fto31P
=bIJq
-----END PGP SIGNATURE-----

--=-jDB+st1zbuoAGWE9od8A--

