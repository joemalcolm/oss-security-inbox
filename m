Received: (qmail 9295 invoked by uid 550); 10 Jan 2023 14:38:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20377 invoked from network); 10 Jan 2023 14:03:59 -0000
Date: Tue, 10 Jan 2023 08:03:44 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Y71wQPQeIU1pTxCy@gentoo.org>
References: <CADW8OBsT3Lhc2GrgQQThG_-sUz5SyExn-XvbLm7q+wGjuHxPqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3Z+SEGI8hknOT1Am"
Content-Disposition: inline
In-Reply-To: <CADW8OBsT3Lhc2GrgQQThG_-sUz5SyExn-XvbLm7q+wGjuHxPqA@mail.gmail.com>
Subject: Re: [oss-security] Type Confusion in Linux Kernel

--3Z+SEGI8hknOT1Am
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 09, 2023 at 03:09:22PM -0700, Kyle Zeng wrote:
> Hi there,
>=20
> I recently found a type-confusion vulnerability in the Linux kernel.
> Since it interprets random data as pointers, it is potentially
> exploitable. According to the fix commit, this bug was introduced in
> Linux-2.6.12-rc2 in 2005. I already contacted security@kernel.org and
> helped them patch the vulnerability.
>=20
> # Vulnerability
> The vulnerability is caused by accessing classification results before
> checking the classification return code in the network scheduler's
> code. For example, in the following snippet from `cbq_classify`:
> ~~~
> struct cbq_class *cl;
> ......
> result =3D tcf_classify(skb, fl, &res, true);
> if (!fl || result < 0)
> goto fallback;
>=20
> cl =3D (void *)res.class;
> ~~~
> It checks `result < 0` before casting `res.class` to `struct cbq_class
> *`. However, `result >=3D 0` does not ensure `res.class` contains valid
> results. Specifically, it is possible `result` itself says the packet
> is invalid and should be dropped (`TC_ACT_SHOT`) while at the same
> time res.class contains invalid data because res.class is a huge union
> attribute and can be used for other purposes before it is marked as
> `TC_ACT_SHOT`. As a result, it is a type confusion between `struct
> cbq_class` and whatever struct that res.class was used as before it is
> returned.
>=20
> # Patch
> Two schedulers have the same vulnerable code patterns and the fixes
> can be found https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/lin=
ux.git/commit/?id=3Dcaa4b35b4317d5147b3ab0fbdc9c075c7d2e9c12
> and https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/co=
mmit/?id=3Da2965c7be0522eaa18808684b7b82b248515511b
>=20
> This vulnerability does not have a CVE assigned. I'll appreciate it if
> anyone on the mailing list can give it a CVE to signify its security
> implications.

You haven't really elaborated on the security implications, but you
can request a CVE at cveform.mitre.org I guess. MITRE tends to be
prickley regarding kernel issues, though.

> Best,
> Kyle Zeng

--3Z+SEGI8hknOT1Am
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY71wQAAKCRCgXq2+aa/J
tXmYAP0dlaQq38twDrXeg0g37VpakDvzfz9mIxQQkorxk3m3UwD/auzOV04mtHWB
hFhYC/ocgA/0JHt5SeDXJ9cy3/X+kAQ=
=sFp4
-----END PGP SIGNATURE-----

--3Z+SEGI8hknOT1Am--
