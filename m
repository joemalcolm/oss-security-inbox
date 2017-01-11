X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2753" "Wednesday" "11" "January" "2017" "15:23:55" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20170111045354.GA9514@sin.redhat.com>" "71" "Re: [oss-security] Re: CVE request: python-pysaml2 XML external entity attack" nil nil nil "1" "2017011104:53:55" "[oss-security] Re: CVE request: python-pysaml2 XML external entity attack" (number mark "U       dmoppert@red Jan 11   71/2753  " thread-indent "\"Re: [oss-security] Re: CVE request: python-pysaml2 XML external entity attack\"\n") "<4375de127e2d48fd8cba3125c00de83c@imshyb02.MITRE.ORG>" ("<20170110072939.GC18447@centurion.befour.org>" "<4375de127e2d48fd8cba3125c00de83c@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26454 invoked by uid 550); 11 Jan 2017 04:54:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26436 invoked from network); 11 Jan 2017 04:54:10 -0000
Date: Wed, 11 Jan 2017 15:23:55 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20170111045354.GA9514@sin.redhat.com>
References: <20170110072939.GC18447@centurion.befour.org>
 <4375de127e2d48fd8cba3125c00de83c@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OXfL5xGRrasGEqWY"
Content-Disposition: inline
In-Reply-To: <4375de127e2d48fd8cba3125c00de83c@imshyb02.MITRE.ORG>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Wed, 11 Jan 2017 04:54:00 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE request: python-pysaml2 XML external
 entity attack

--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Jan 10 2017, cve-assign@mitre.org wrote:
> > python-pysaml2 does
> > not sanitize SAML XML requests or responses:
> >=20
> >   https://github.com/rohe/pysaml2/commit/6e09a25d9b4b7aa7a506853210a9a1=
4100b8bc9b
>=20
> Use CVE-2016-10127 for the vulnerability addressed by "Fix XXE in XML
> parsing" in 6e09a25d9b4b7aa7a506853210a9a14100b8bc9b.

> The scope of this CVE does not include the various other issues that
> may be found in the above references:
>=20
>  - it does not include any aspect of
>    https://bugzilla.gnome.org/show_bug.cgi?id=3D772726

This (libxml2 XXE) has already been assigned CVE-2016-9318.

I have proposed a(n incomplete) patch on that ticket, but do not have
sufficient familiarity with libxml2 to be sure it is sound (and thus
worth completing with proper tests and docs).  If it is, it's possible
that downstream projects could apply a similar patch in client code
while remaining compatible with current (unpatched) libxml2.

Even if this gets into libxml2, client code will need to enable a new
option explicitly to prevent XXE.  There's an argument to make NOXXE
default behaviour, but this could potentially impact a lot of projects
that silently rely on some form of external entity resolution.


>  - it does not include any vulnerabilities in the XML Security Library
>    (xmlsec), such as ones that are now, or previously were, listed at
>    https://github.com/lsh123/xmlsec/issues

xmlsec is exposed to CVE-2016-9318, but considers this a bug in libxml2
and at present has no plans to provide a workaround.  I expect a CVE
assignment for xmlsec will only be needed if it is fixed/worked around
in that project.


--=20
Doran Moppert
Red Hat Product Security

--OXfL5xGRrasGEqWY
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJYdbpiAAoJEGohqWcZR7qpQj0QAIzh5CrS+q5aKR6A1Z+6ljs4
W+7rBJ24SYnPbRZNGS0ehaKNBFoVqtyPT0umDsrZT60P4nuyUtwLSwJnOl+Hk84o
unjuIF7sH6PtCES10Ebsac/wb/829S3oQcFs9o/QWQC+8QF070z5Z6FvO9jFuT6b
DdSyfMGAIEyJcLddhXD1Cghv1QM0cEj7AYxih7fLsLVmJRCxVwJWuEczScfQGlzG
70XKk7R1dG6Zs7yuUpl6bssoqGR2nd7D/uH13xMRoQlcYxirpOj5QyD/GBykp57Y
EgEHFOh1srVogbouTLVaNtIPcR19s4AuwMpbJ5syOMiS+/eF1IP3v+VNaLfAfInQ
IMqserbgFrlk5oRnoZcSCihKg2nNUw/dnDIvDnzhr3owHa1DhpkO4cDhvaxhr1FQ
WNT0NRHsB75JeRo/x/OD8g4QJkXufyfIY1lT7JojibVovrbRMDhtdnwrkdXu0ZSN
if8JiqG2eVWdjT6lXGS200R3BJ6TcY1Yhkkw3lryd7pK1k+uYRAezeh8gs92IPul
fTu00ViiBusTS8NRfLzIya5qAt/mqAskQegwTuyyf8zeoeI2o9sQ+JfrxwdBR0J8
toZdSV6WsaINsxqUYKq/mO7qHn2+DN7+wNHa1KDpq5hOyrYt5qGnpYeRdyXNBoYc
MYkJTNr2wfEAD919vzRZ
=0d/c
-----END PGP SIGNATURE-----

--OXfL5xGRrasGEqWY--
