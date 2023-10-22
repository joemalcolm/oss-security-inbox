Received: (qmail 5433 invoked by uid 550); 22 Oct 2023 16:03:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32291 invoked from network); 22 Oct 2023 15:54:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1697990064; x=1698076464; bh=MWwVmPufR4jJdW3Ym8DJkWUKXj5hUn33g+J
	NU10AJ0o=; b=df9Cuf2D+TgjabPpBa9gKasg6/Gjx8lRiYeqIublMVgsjWSyLZh
	6NfDRKShyHgWtkTs+Y5F6T4+RnjDlDdbbCRMTdkiwHhcau8mOl9/DagsXOGufkqs
	nOL2Jya2n8wMGDHGSwbuGkyQoiIwsSmZMouRULJB28Vc40NXSKX1+FOUZBeCuoTh
	Uec0c9QhHlWWAIed3kpIORjwqI8F5X/NlyeffGg51HUueGgelXZgPXJWX9d2TRVi
	InoBy2kzPk6Fs/SbcKVLxIvVKxJRuci+NK+m80gLQG4ZcbU2Sct+fTL6Rv67pDHl
	hXB06IlDDmbnETuvP3gp6WH8iYJi+k8ElcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697990064; x=1698076464; bh=MWwVmPufR4jJd
	W3Ym8DJkWUKXj5hUn33g+JNU10AJ0o=; b=f22Pq2HF/YMZQ+1Y5/KHjPUcfsER+
	e8qt/aabZp3IzWTzuzpryWPpZQVKYvPI6FcLpluKrGCq4NWEN6+/f8mjjiamPUWq
	2wpSFBu9TuoXtZ9WyaZE21H170ba4EsbNuSAj4dGeo+ruLE9TtE9lE2KXAwBuXGn
	ksHcToYWxKoOX28/PnDtDiwNR9AfmDVvo9Wmpx0OZLWpBOAjqWo8fHMBJ3y37EDh
	OTu/eyU2W2VI13Le0Evoj6EQvZbvUzWCaXRmFaWUYm/VqX+go5J/evRimeCqeAWS
	Hg/ydMRdz+dchEa9lB23rTpFCHkq98wdPeAPs7VKDHLJUgqqqXkYTj90g==
X-ME-Sender: <xms:sEU1ZRqw6Jzdix8q9ay6WpD00VfEQXMcup-MI6g0ZMl-zGNLsKxT-w>
    <xme:sEU1ZTpzOAnDI0DA1srVc5ZpOgj9agFITFStPen34vMKzLIzEaH0Z_mncoZJmF98U
    Sg3kt6UHJ4did8>
X-ME-Received: <xmr:sEU1ZeODZyEeSpjPShQeRZeBILeubC9KGeW_lXLCoIAs1PLjNc5yJv1RzLLch9R08m1WwO9bGJ64Q1ACp_TCTMoy9xxiv3wOV6hVOJYaWxos4YrW>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrkeeggddthecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    ehhedtkefhgfegledtjeefjeduteduieeileeiudekvdekvdeuueehffevtedutdenucff
    ohhmrghinheprhgvughhrghtrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhslhgr
    sgdrtghomh
X-ME-Proxy: <xmx:sEU1Zc6FuO3y19OdXslx-eFbQBI-JI0MZCviAadtxq8tqUjvn6RBdA>
    <xmx:sEU1ZQ7R8zmfTiASkG-WDqsNXk4fQhPpAkkGa1EVhbPcKES_aYwBKQ>
    <xmx:sEU1ZUgzcRj9olCI8Yq4GlqRd2eYEhv_FCD4_faPnpRtFDRCK92uLg>
    <xmx:sEU1ZSFEceV2g3kXdqE94M6Uer3ttqJy_5VAmAkhONKAjGiifJEcPw>
Feedback-ID: iac594737:Fastmail
Date: Sun, 22 Oct 2023 11:54:03 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZTVFrvd2h+70PhaV@itl-email>
References: <56c8798b-0ad7-652b-d034-90229b6768f7@gmail.com>
 <20231022000649.GA14340@openwall.com>
 <ZTRwxHaoUqTPyf+b@itl-email>
 <alpine.GSO.2.20.2310220847390.6992@scrappy.simplesystems.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JGiqKf+NN94R0z40"
Content-Disposition: inline
In-Reply-To: <alpine.GSO.2.20.2310220847390.6992@scrappy.simplesystems.org>
Subject: Re: [oss-security] sandboxing,of upstream programs by distros

--JGiqKf+NN94R0z40
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 22 Oct 2023 11:54:03 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] sandboxing,of upstream programs by distros

On Sun, Oct 22, 2023 at 09:19:59AM -0500, Bob Friesenhahn wrote:
> On Sat, 21 Oct 2023, Demi Marie Obenour wrote:
> > >=20
> > > For Rocky Linux Security SIG, the only relevant thing mentioned so far
> > > was possibly offering an OpenBSD pledge()-alike that other packages
> > > could use.  However, I am skeptical any actually would, unless we also
> > > introduce such uses ourselves and maintain own "override" packages
> > > (replacing RHEL rebuild ones or those coming from EPEL, etc.) of such
> > > software.  Initially, we are going to only create "override' packages
> > > for core or very commonly used/exposed components, and to do so only =
for
> > > specific good reasons.  So stuff like e.g. ImageMagick/GraphicsMagick
> > > coming from EPEL and with most of its dependency libraries coming from
> > > AppStream repos, or e.g. GraphViz coming from AppStream, is unlikely =
to
> > > make the cut, at least not initially.
> >=20
> > Has deprecating ImageMagick and/or GraphicsMagick outright been
> > considered?  I don=E2=80=99t just mean the downstream packages, but the=
 entire
> > upstream projects, or at least the libraries.
>=20
> RHEL already deprecated ImageMagick several years ago and advised users to
> use GraphicsMagick (https://access.redhat.com/documentation/en-us/red_hat=
_enterprise_linux/7/html/7.7_release_notes/deprecated_functionality).
> Those users were confused given that many of the recipes they were using =
for
> ImageMagick did not work with GraphicsMagick. The solution for those users
> was to find a different way to install ImageMagick.
>=20
> > One option would be to instead make an IPC call to a persistent daemon
> > running in the background.  That said, has wasm2c been considered?  The
> > best fix would be something that can make C code memory-safe, even if it
> > comes at a performance hit of 4x or more (like SoftBound+CETS did).
> > Stuff that cares about performance should be migrating to something like
> > libvips or ImageFlow.
> >=20
> > If neither of these are options, I think the entire library will need to
> > be deprecated for eventual removal.  The command-line tools can remain,
> > but they can be much more strongly sandboxed than a library can, because
> > they have the entire process to themselves.
>=20
> Any deprecations or sandboxing approaches which fail to understand and
> address the needs of the "user" will fail.  Replacing package 'A' with
> package 'B', where package 'B' works totally differently, or performs
> different functions than package 'A' will fail because the users will not
> use it.

That is true.

> Unfortunately, most Linux IPC mechanisms are not very secure since they r=
ely
> on historical Unix privilege models to control access.

If one can bypass access control on IPC, one can easily get root by
sending malicious commands to systemd, so I don't think this is
something to worry about.

> Common ways to assure
> security such as TLS usually result in a considerable reduction of
> performance. Solutions like Landlock seem useful for very restricted usage
> applications.  Sandboxing solutions which work for any use of a program s=
eem
> better than requiring a client/server model.

The advantage of a client/server model is that it avoids a library
having to spawn child processes, which was mentioned as a concern
earlier.  I agree that it is more effort than desirable.

> As the developer/maintainer of a complex C program (GraphicsMagick), I
> appreciate any advice on improvements which make it more suitable for
> sandboxing, or less likely to appear as a hazard on the security radar.

To make a program suitable for sandboxing, several requirements must be
met:

1. The program must run in a separate address space.  This can either be
   a OS process, a software fault isolation (SFI) container, or a SFI
   container inside an OS process.  If an SFI container is used without
   a separate OS process, additional care must be taken to prevent
   side-channel attacks, so I do not recommend this solution without
   significant additional research.

2. All I/O resources (such as file descriptors) must be acquired before
   processing untrusted input.  It must not be possible to use these
   resources to access additional resources the program should not have
   access to.

3. Before processing untrusted input, the program must lose the ability
   to acquire additional I/O resources.

4. The address space (whether an OS process or an SFI container) must
   not be reused once processing has completed, unless it can be
   forcibly and verifiably reset to its initial state.

5. If the inputs to the processing were untrusted, the results must also
   be considered untrusted.

A command-line tool can probably meet all of these requirements but the
last one quite easily.  For a library, the difficulty of meeting these
requirements will depend significantly on the library API.  I am not
familiar with the GraphicsMagick API and so am not sure how difficult it
will be for the GraphicsMagick API to support sandboxing.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--JGiqKf+NN94R0z40
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmU1Ra4ACgkQsoi1X/+c
IsEO2xAAslHUOgTp80kCH17B32aDs8Ngs0hZd544sR+uzC1/MaQe15N/uFCxc5Ll
bpSIHCbrgHk2kELgAfvuyd2adfAQQUjr8OD5xsWQpO/2KLqeMMWf0zd4yUlq+xyH
znSBhHUlg+cbifGlXre3MsznGWJ7B/Hx+oSsmfxqSxKmxBZ34JlPTJNhtrQ4GAED
B2lA+TwT3pdGrNABEEhFqnBOu3joEAfLk7vQGQV3KLfE/uBSqHQHF/Gd/jJS5DPr
b2Vo+3zqVHOpSSTiDp3y5xyjx5wS66kv8naC9jqf8BUat0VBiE28i4CQQRqFyZGD
Yy6vfeubFXzYiYMnhnnscShqAlS0i5q118DAFHQC8jYt4AjKBgqeKI4iVqBinBJ5
DEJXGp2rXMMnnsCworze8tcZKV9SBYeFHJJl4mJLrJwuWl8urI1192yw6BYG48XV
eqcHXRQ9O8DoYwzEiGeIyZzd8ae95ZtC/SJty7c0v+6DfDH5a62dXfBDKUNRIkwT
/aoXKyAqxvj5OaWrBOSLbXuRsiDYh+dCm2qgYHDtEsXFCdx0mSWgqtmGLFw8QKdw
SlQHkHE+KEbssHd+Ot+MAZubGQNvqsw4qn6DreH5NvOke0Z6Nhp+OQZZeI/BY2xv
vY9GGgUxWnhGElEvHIJOuh/grtipbdAN2gzJ19wJ513GxhMn0Mc=
=tt8F
-----END PGP SIGNATURE-----

--JGiqKf+NN94R0z40--
