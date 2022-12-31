Received: (qmail 6091 invoked by uid 550); 31 Dec 2022 19:47:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7766 invoked from network); 31 Dec 2022 17:42:59 -0000
Date: Sat, 31 Dec 2022 11:42:45 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Cc: security@apache.org, jorton@apache.org, carnil@debian.org
Message-ID: <Y7B0lbSvEhkIMdoq@gentoo.org>
References: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
 <YwjuUy0a6FFdHPVB@gentoo.org>
 <Y61i4ojYhvXXx7Ap@eldamar.lan>
 <Y69d7JASugX99avX@gentoo.org>
 <CAHKPuKEiTO8uJi=sJxogt9ZUmvQ1o4mXT+bEb+6xBf=N7K_3-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="R5H6+KPhPzANtJHW"
Content-Disposition: inline
In-Reply-To: <CAHKPuKEiTO8uJi=sJxogt9ZUmvQ1o4mXT+bEb+6xBf=N7K_3-Q@mail.gmail.com>
Subject: Re: [oss-security] CVE-2022-22728: libapreq2: libapreq2 multipart
 form parse memory corruption

--R5H6+KPhPzANtJHW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 31, 2022 at 10:54:00AM +0100, Arnout Engelen wrote:
> On Fri, Dec 30, 2022 at 10:54 PM John Helmert III <ajak@gentoo.org> wrote:
> > On Thu, Dec 29, 2022 at 10:50:26AM +0100, Salvatore Bonaccorso wrote:
> > > On Fri, Aug 26, 2022 at 11:01:23AM -0500, John Helmert III wrote:
> > > > On Thu, Aug 25, 2022 at 02:09:16PM +0000, Joe Orton wrote:
> > > > > A flaw in libapreq2 versions 2.16 and earlier could cause a buffer
> > > > > overflow while processing multipart form uploads.
> > > >
> > > > Is there a fixed version or patch or upstream issue?
>=20
> libapreq2 2.17 was released on the same day as the advisory describing
> the problem with 2.16 and earlier (https://httpd.apache.org/apreq/).

Does it fix CVE-2022-22728? Whether or not it does isn't clear from
the changelog [1], and I can't find a reference to the CVE elsewhere
in the source tree.

[1] https://svn.apache.org/repos/asf/httpd/apreq/trunk/CHANGES

>=20
> Kind regards,
>=20
> Arnout

--R5H6+KPhPzANtJHW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY7B0kwAKCRCgXq2+aa/J
td/OAP9rUnrnp+8tlq6BeVXJ3r36EK+YQ809nYzF2t12vW8efgD+KAQtu+Jj8BAB
1mLn4gEtu1wthGtXCzlZE8s1dmH04Qo=
=Dmie
-----END PGP SIGNATURE-----

--R5H6+KPhPzANtJHW--
