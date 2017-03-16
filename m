X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3273" "Thursday" "16" "March" "2017" "17:34:21" "+0100" "Peter Bex" "peter@more-magic.net" "<20170316163421.GI759@scully.more-magic.net>" "105" "Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" nil nil nil "3" "2017031616:34:21" "[oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" (number mark "U       peter@more-m Mar 16  105/3273  " thread-indent "\"Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme\"\n") "<877f3p8lh2.fsf@dell.be.48ers.dk>" ("<20170315224749.GG759@scully.more-magic.net>" "<1489656677.3059.3.camel@redhat.com>" "<20170316100821.GH759@scully.more-magic.net>" "<877f3p8lh2.fsf@dell.be.48ers.dk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32613 invoked by uid 550); 16 Mar 2017 16:34:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32589 invoked from network); 16 Mar 2017 16:34:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=more-magic.net; s=dkim-2016-12;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date; bh=4/lTAdOrXwLB3xjGaJ4bvpuq4+VwgssIeVj9VvtrnkU=;
	b=CW4wQdpSSNSgmBgH+1c3kpO82jwTlhQfTPbHMnTVCVVzbwQ4vNVhSlAGMES1o2MKdSsarbt2dkeiAVXjZNRRHYD8lTwhqBAiAR7fwgXKPj5+afem7koYYrp+TlMwo0xoAvnfAQ92UG7b4vy7Y+lnZa+oJPMKEcEyts6wFRenrww=;
Date: Thu, 16 Mar 2017 17:34:21 +0100
From: Peter Bex <peter@more-magic.net>
To: oss-security@lists.openwall.com
Cc: Adam Maris <amaris@redhat.com>
Message-ID: <20170316163421.GI759@scully.more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com,
	Adam Maris <amaris@redhat.com>
References: <20170315224749.GG759@scully.more-magic.net>
 <1489656677.3059.3.camel@redhat.com>
 <20170316100821.GH759@scully.more-magic.net>
 <877f3p8lh2.fsf@dell.be.48ers.dk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="enGqbSaueFq5omEL"
Content-Disposition: inline
In-Reply-To: <877f3p8lh2.fsf@dell.be.48ers.dk>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] CVE request for unchecked size argument in
 malloc() in CHICKEN Scheme

--enGqbSaueFq5omEL
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 16, 2017 at 01:17:13PM +0100, Peter Korsgaard wrote:
> >>>>> "Peter" =3D=3D Peter Bex <peter@more-magic.net> writes:
>=20
>  > On Thu, Mar 16, 2017 at 10:31:17AM +0100, Adam Maris wrote:
>  >> Hi Peter,
>  >>=20
>  >> oss-security mailing is no longer a place for requesting CVEs. Please,
>  >> request CVE from MITRE via=A0https://cveform.mitre.org/=A0or also pos=
sibly
>  >> from DWF project via=A0http://iwantacve.org/
>=20
>  > Oh yeah, I forgot about that.  I've filled out the form, and I hope I'=
ve
>  > done this correctly.
>=20
> Please don't forget to forward the form details to this list once a CVE
> has been assigned. Thanks.

This was assigned CVE-2017-6949.  The form details were in my original
mail, but I'll include them here again, though I must say fiddling around
with e-mail to forward it is much much more inconvenient than how it used
to work:

> [Suggested description]
> An issue was discovered in CHICKEN Scheme through 4.12.0.
> When using a nonstandard CHICKEN-specific extension to allocate an
> SRFI-4 vector in unmanaged memory, the vector size would be used in
> unsanitised form as an argument to malloc(). With an unexpected size,
> the impact may have been a segfault or buffer overflow.
>=20
> ------------------------------------------
>=20
> [Vulnerability Type]
> Buffer Overflow
>=20
> ------------------------------------------
>=20
> [Affected Product Code Base]
> Affected: All versions up to and including 4.12.0.  No fixed versions rel=
eased yet
>=20
> ------------------------------------------
>=20
> [Affected Component]
> All SRFI-4 vector constructor functions in CHICKEN Scheme
>=20
> ------------------------------------------
>=20
> [Attack Type]
> Context-dependent
>=20
> ------------------------------------------
>=20
> [Impact Code execution]
> true
>=20
> ------------------------------------------
>=20
> [Impact Denial of Service]
> true
>=20
> ------------------------------------------
>=20
> [Attack Vectors]
> When using a nonstandard CHICKEN-specific extension to allocate a
> SRFI-4 vector in unmanaged memory, the vector size would be used in
> unsanitised form as argument to malloc().
>=20
> ------------------------------------------
>=20
> [Reference]
> http://lists.gnu.org/archive/html/chicken-announce/2017-03/msg00000.html
>=20
> ------------------------------------------
>=20
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>=20
> ------------------------------------------
>=20
> [Discoverer]
> Lemonboy

--enGqbSaueFq5omEL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYyr6NAAoJEBEdufnLRYmwBW4H/3j/hV2xR+8g6lmKF9iyixOV
KuJVi89in7J90oM4KxZMRf5sPnPuvtUhno06wylnF6aqZbN4cVw46NzITkaBrlKl
VUGxIsYr3mRcOlG+6WDVo/IdK8CQP8e9tSZ9mQBlivKiPJjZSyz4OWUeiHt09kIp
BnWDMrO/2QlunSzTMjYipI6mJl4nw/Rv3OaTvRMSgaoTWk0Uway8TmWgbm+FmPo2
j+94tJGPgotN9qDhAD9cX4pQz0BB3hJKUUwupEA54e8tg3k6YMGX/KHlrPkVfKKH
bGLeWsr7ha/5ttmsOvkFVBdFtES24nqI6e1GRCAuKWOwom9CxONjV+fLzlA6j1g=
=gRq8
-----END PGP SIGNATURE-----

--enGqbSaueFq5omEL--
