Received: (qmail 5998 invoked by uid 550); 3 Jan 2023 21:03:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2046 invoked from network); 3 Jan 2023 20:58:38 -0000
Date: Tue, 3 Jan 2023 14:58:22 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Cc: security@apache.org, jorton@apache.org, carnil@debian.org
Message-ID: <Y7SW7g/J7I8h5jMD@gentoo.org>
References: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
 <YwjuUy0a6FFdHPVB@gentoo.org>
 <Y61i4ojYhvXXx7Ap@eldamar.lan>
 <Y69d7JASugX99avX@gentoo.org>
 <CAHKPuKEiTO8uJi=sJxogt9ZUmvQ1o4mXT+bEb+6xBf=N7K_3-Q@mail.gmail.com>
 <Y7B0lbSvEhkIMdoq@gentoo.org>
 <CAHKPuKFDBmPF2So+g=VTkgniFGJpXHZ37kv+urCM-_j4pkjNRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Q2feeH+zzSa2YjqD"
Content-Disposition: inline
In-Reply-To: <CAHKPuKFDBmPF2So+g=VTkgniFGJpXHZ37kv+urCM-_j4pkjNRQ@mail.gmail.com>
Subject: Re: [oss-security] CVE-2022-22728: libapreq2: libapreq2 multipart
 form parse memory corruption

--Q2feeH+zzSa2YjqD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 02, 2023 at 12:51:04PM +0100, Arnout Engelen wrote:
> On Sat, Dec 31, 2022 at 6:42 PM John Helmert III <ajak@gentoo.org> wrote:
> > On Sat, Dec 31, 2022 at 10:54:00AM +0100, Arnout Engelen wrote:
> > > On Fri, Dec 30, 2022 at 10:54 PM John Helmert III <ajak@gentoo.org> w=
rote:
> > > > On Thu, Dec 29, 2022 at 10:50:26AM +0100, Salvatore Bonaccorso wrot=
e:
> > > > > On Fri, Aug 26, 2022 at 11:01:23AM -0500, John Helmert III wrote:
> > > > > > On Thu, Aug 25, 2022 at 02:09:16PM +0000, Joe Orton wrote:
> > > > > > > A flaw in libapreq2 versions 2.16 and earlier could cause a b=
uffer
> > > > > > > overflow while processing multipart form uploads.
> > > > > >
> > > > > > Is there a fixed version or patch or upstream issue?
> > >
> > > libapreq2 2.17 was released on the same day as the advisory describing
> > > the problem with 2.16 and earlier (https://httpd.apache.org/apreq/).
> >
> > Does it fix CVE-2022-22728? Whether or not it does isn't clear from
> > the changelog [1], and I can't find a reference to the CVE elsewhere
> > in the source tree.
>=20
> I think https://svn.apache.org/viewvc?view=3Drevision&revision=3D1894937
> contained the fix for this issue. This is included in 2.17.

Great! Can you add that as a reference to the CVE and note the fixed
version in the description? Ideally, please also do this for future
CVEs/advisories too, so remediation is clear to everyone.

>=20
> Kind regards,
>=20
> Arnout

--Q2feeH+zzSa2YjqD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY7SW7AAKCRCgXq2+aa/J
tQupAP9fr4F8ZMYDVbQfun9fYcF0R3bimNvGVgVo0lOkoMg4JQD+MhXL5S6H04Jq
4g0mA4QOG0rChz7YBBzjAEzJPy+1IAo=
=mXQd
-----END PGP SIGNATURE-----

--Q2feeH+zzSa2YjqD--
