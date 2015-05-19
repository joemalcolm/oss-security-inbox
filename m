X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2011" "Tuesday" "19" "May" "2015" "12:16:45" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150519101645.GB4245@kronk.local>" "58" "Re: [oss-security] CVE reject request CVE-2015-8146/8147 (was: [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL)" nil nil nil "5" "2015051910:16:45" "[oss-security] CVE reject request CVE-2015-8146/8147 (was: [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL)" (number mark "        alessandro@g May 19   58/2011  " thread-indent "\"Re: [oss-security] CVE reject request CVE-2015-8146/8147 (was: [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL)\"\n") "<20150519090559.56944c45@redhat.com>" ("<CAEDdjHdR4LYTL_3BUibrYbiBfB2==aJXXLF0RKxcHQgep_SNSw@mail.gmail.com>" "<20150519090559.56944c45@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32417 invoked by uid 550); 19 May 2015 10:16:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32361 invoked from network); 19 May 2015 10:16:57 -0000
Message-ID: <20150519101645.GB4245@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAEDdjHdR4LYTL_3BUibrYbiBfB2==aJXXLF0RKxcHQgep_SNSw@mail.gmail.com>
 <20150519090559.56944c45@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z6Eq5LdranGa6ru8"
Content-Disposition: inline
In-Reply-To: <20150519090559.56944c45@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Tue, 19 May 2015 12:16:45 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE reject request CVE-2015-8146/8147 (was:
 [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL)
To: oss-security@lists.openwall.com

--z6Eq5LdranGa6ru8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 19, 2015 at 09:05:59AM +0200, Tomas Hoger wrote:
> On Tue, 5 May 2015 09:19:20 +0100 Pedro Ribeiro wrote:
>=20
> > tl;dr heap and integer overflows in ICU, many packages affected,
> > unknown if these can be exploited or not - everyone names vulns
> > nowadays, so I name these I-C-U-FAIL.
>=20
> ...
>=20
> > #1 Vulnerability: Heap overflow
> > CVE-2014-8146
>=20
> ...
>=20
> > #2 Vulnerability: Integer overflow
> > CVE-2014-8147
>=20
> Apparently a typo was made when fixing these issues in Ubuntu and
> subsequently in Debian when ids with year 2015 were used instead of
> 2014.

Note that as far as Debian is concerned, the only place where incorrect IDs
were used is the bug report you linked (which has now been fixed). The
changelog of the upload to Debian unstable had the correct IDs, and we have=
n't
released a DSA yet (the information on our security tracker is also correct=
).

Cheers

--z6Eq5LdranGa6ru8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVWw2NAAoJEK+lG9bN5XPL/O4P/3SEomr2FnF/dzCfrilZ+8mJ
56gqgKycRjcNL0FIdkit7yXF3OxhangwwjA9GrikyYhZh1hLcC7PWIgI4BeyUHJz
bYQM4m8N0yO6moRlSDWjbYhrN1I/PZQv7herxak4biRBSE2NYZKHJonAMev6aVU0
e2Av9vq0VU9X1N6jWz1VNaD7yIXSL06/bmSd6Xvl1y+UmmhbwL4kUsNK8tS2fiqL
UKUZeZ/9lyDT0ij4T8vv7TDLzBRp1dSynR1e8puxh5Sk6sT4bn9yJu5xONKLlmCd
VMOgr4ImEIkGDLueV6GJON4dGqXiFalVQvzP1vCQ35kPKKgNWwBvfw9vroWeAIV8
oDM1XOeFy05Lf8NsPCRZNQeMtrhcqrwgQfCoTNXoTB3Z6wcWobn1aroRfbccGDmb
cJdnmyInu2RPwRobnwAclMP61aWpktG4yyJvSUiQW1pqaTl9qx8++P+Y4x+yz2Ij
a/ESASYbaS7jrcToHamkAckF1R5Ml21p1f9NsiwnNFwQRm+gQxJxy7ldAI1SDy7T
O4++3Gjryim/mQOV6a8lAmQ/RbQdR4sqzQOkR07ynLf693xfmy46+esHgkXoC0je
W6iXrCiYVmsq9SP8e7fDO9kpvJgwBLHpEWxhrPk58B3U/reZeN2JxeaQTN2IvaUR
/ELYHoH1d2sOo+8QEkph
=NOq8
-----END PGP SIGNATURE-----

--z6Eq5LdranGa6ru8--
