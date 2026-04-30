Received: (qmail 17563 invoked by uid 550); 30 Apr 2026 15:56:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15836 invoked from network); 30 Apr 2026 07:22:44 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Jan Schaumann <jschauma@netmeister.org>
In-Reply-To: <2026043026-treat-devotion-23d7@gregkh>
Organization: Gentoo
References: <afJorKIje4O6dXbH@netmeister.org>
	<d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
	<87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan>
	<2026043026-treat-devotion-23d7@gregkh>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Thu, 30 Apr 2026 08:22:30 +0100
Message-ID: <87bjf0hpzd.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Greg KH <greg@kroah.com> writes:

> On Thu, Apr 30, 2026 at 09:01:22AM +0200, Salvatore Bonaccorso wrote:
>> Hi,
>>=20
>> On Thu, Apr 30, 2026 at 05:52:37AM +0100, Sam James wrote:
>> > Eddie Chapman <eddie@ehuk.net> writes:
>> >=20
>> > > On 29/04/2026 21:23, Jan Schaumann wrote:
>> > >> Affected and fixed versions
>> > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
>> > >> Issue introduced in 4.14 with commit
>> > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
>> > >> 6.18.22 with commit
>> > >> fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
>> > >> Issue introduced in 4.14 with commit
>> > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
>> > >> 6.19.12 with commit
>> > >> ce42ee423e58dffa5ec03524054c9d8bfd4f6237
>> > >> Issue introduced in 4.14 with commit
>> > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
>> > >> 7.0 with commit
>> > >> a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
>> > >> https://git.kernel.org/stable/c/fafe0fa2995a0f7073c1c358d7d3145bcc9=
aedd8
>> > >> https://git.kernel.org/stable/c/ce42ee423e58dffa5ec03524054c9d8bfd4=
f6237
>> > >> https://git.kernel.org/stable/c/a664bf3d603dc3bdcf9ae47cc21e0daec70=
6d7a5
>> > >
>> > > So this is one of the worst make-me-root vulnerabilities in the kern=
el
>> > > in recent times. I see that on the 11th of April 6.19.12 & 6.18.22
>> > > were released with the fix backported.
>> > >
>> > > Longterm 6.12, 6.6, 6.1, 5.15, 5.10 have not received the fix and I
>> > > don't see anything in the upstream stable queues yet as I write. My
>> > > guess is backporting that far back is not as straightforward. As this
>> > > was introduced in 2017 all those older kernels are affected, right? =
Or
>> > > am I missing something?
>> >=20
>> > It does not apply cleanly, no. Attached is the workaround we're going =
to
>> > use. I'm not an expert on IPSec but I think this is the lesser evil.
>> >=20
>> > I attempted a backport but ran into a few API changes and wasn't
>> > confident enough to muck around with it, especially for something to
>> > deploy immediately.
>>=20
>> Backports have just been posted, for 6.12.y:
>> https://lore.kernel.org/stable/2026043038-unwilling-slogan-a20e@gregkh/T=
/#t
>>=20
>> (but I do not see them yet for all versions, but guess following soon)
>
> Yes, they are following, I'll be doing some kernel releases in an hour
> or so with these all applied.

Thanks to both you and Eric, and thanks Salvatore for spotting.

>
> thanks,
>
> greg k-h

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmnzAzYbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkDEO
AP4pT6dUifu6hS42Lxk9SFTC7dMT1+s2lVOzFAH1OOPIcAEA4SPsssm+klGzJfSs
TWSv2zKW/O53suU8pIUHBkDlGw8=
=N2jM
-----END PGP SIGNATURE-----
--=-=-=--
