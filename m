Received: (qmail 20350 invoked by uid 550); 15 Jul 2024 00:28:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26094 invoked from network); 14 Jul 2024 22:33:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1720996372;
	 x=1721082772; bh=l/s1NZMMwPqlZpl/CatjQcmiVPsiXZHefUAEcMudUKI=; b=
	fmvymrqGDcHYnez3oL+lsvDkcrGLVxmxE1ZDfOABdM9qY+cAtNGuGVsxOyf/JLAt
	O4Dtp3BJB7vyamXqVu+DR23OkwEuuXyXyhcBLwDV18WAnrKSUXv86bnJu21bDPCI
	oQWVuZs+8OvFEsg1T94NlM7haGicodKtvwMuc0ow3zX3aOQK+0yjbz9cIYYubdZi
	cg6HKRsRj/61p9W3prEefm0TlJHqp42rks8OMoO8oQKaFxcZwI5VNuukC18LQk9u
	YK8YTOOKkVyOwx/q8P4VdTDOEFK2d1hHOsNR6+1YDa9FGfZ6dDj2s4QtXSYI9n3P
	Czr/KqorR6bYMBpFqfZQXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1720996372; x=1721082772; bh=l/s1NZMMwPqlZpl/CatjQcmiVPsi
	XZHefUAEcMudUKI=; b=s82r7HZf2+/1i71Z1vAXVl+fhTGwhrQxv8Dmd7jX+zUl
	opDRoZWdWL42H+hv//5xdnnkR2ny8IzZq2NSbLh5b4lsc5Cet0SJp7q5p1yOLc4M
	qpEcdgaMwG8zYXLGmvAWavm48JMm978fZ8Yhc8NO1Xlf9kuxWF4tRWD5OVHu7xPL
	M3mV9ziPWHp7AsMucZZyNEuDMtrNtq9rpoophnDwTqHLapQvULtKtA43zvMFT+M/
	1L16ClzScFLr6nfN55mlPKpOSMbAguMJYJQkcYS1d3gQ065Q6MKE5jSBnbcTYyPy
	mGvXhDUWHxFNvsF8NWGNRjfvLLKA7kx91ZUu6ljPOQ==
X-ME-Sender: <xms:E1KUZsy9O-2Pt7cEB8s9EFBtnWtVx-dZc9dZc1-uj98Rj33VUtx6HA>
    <xme:E1KUZgQ0-9aY42O6QUeF1Sl1WvyAX26qFRIM6DKxKqtfwAhRcAj1K0MVp3zkopCIx
    HhJM8yvkB50SZ8>
X-ME-Received: <xmr:E1KUZuUVwZwXhkIMvlAGYVhDnzM47QLgI2JR_5hu_GaRijsBcj7_mQX5zoc0qM9k1rp094_IxlpE3tLnqCeAjhYOA8FrGctLESIlL91io3fwb_7s>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrgedugdduvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttdejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    dttedtueeivdefiedugfejtdeutdelfedvueekledtudegjedviedukeefhfeuteenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:E1KUZqh84UEWjLgotfDnWCNhvpB-xX_lpwG6fCaF9mcVZBNLfACd0g>
    <xmx:E1KUZuDHJHoU8YLnvkbwmDx3jD_bZnIpd8XPD8nG9j4Wsa4SV-JogA>
    <xmx:E1KUZrL2ohBw43Ti_qjEuKGbuwUQ1VIA9QMlNEkXY0dl4gUv6azZcQ>
    <xmx:E1KUZlCHvLnQ_p6PaTkpW18o-XPIf7OCPCi7cSMaf_lr5uDQPa1GPg>
    <xmx:FFKUZpoq464Wdf60NBqtnObXcEc-XF9wxYAoKcgcPNNjepq-vFp-J2Hx>
Feedback-ID: iac594737:Fastmail
Date: Sun, 14 Jul 2024 18:32:33 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZpRSEWkkG6hmNhNo@itl-email>
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
 <20240710214412.8IXhxf8b@steffen%sdaoden.eu>
 <83F0CF09-6257-4949-9332-E6990CFE14C7@dwheeler.com>
 <20240712170603.XJ6iwd6q@steffen%sdaoden.eu>
 <6691E39C.8090600@gmail.com>
 <20240713205858.LSnJJGoo@steffen%sdaoden.eu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q34x8WjG5DGMWW6P"
Content-Disposition: inline
In-Reply-To: <20240713205858.LSnJJGoo@steffen%sdaoden.eu>
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

--q34x8WjG5DGMWW6P
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Jul 2024 18:32:33 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

On Sat, Jul 13, 2024 at 10:58:58PM +0200, Steffen Nurpmeso wrote:
> Jacob Bachmeyer wrote in
>  <6691E39C.8090600@gmail.com>:
>  |Steffen Nurpmeso wrote:
>  |> [...]
>  |>
>  |> So if someone says "this  was a source of
>  |> denial=E2=80=90of=E2=80=90service attacks" then i need to wrap my hea=
d, and it is
>  |> not as if an in-between-the-lines reference to MAP_DENYWRITE ring
>  |> any bells except that i think the flag has been removed.
>  |
>  |The manpage indicates that, long ago, a mapping with MAP_DENYWRITE woul=
d=20
>  |effectively make the underlying file read-only, even to root, for as=20
>  |long as the mapping exists.
>=20
> Thank you.  I add a search result from Google Groups which still
> exists for doing so collected just now:
>=20
>   Linus Torvalds Oct 4, 2001, 7:38:12=E2=80=AFAM
>=20
>   Rob Landley <lan...@trommello.org> wrote:
>   >I.E. it seems like they go out of their way to ALLOW writing to the li=
baries.
>   > (I assume they KNOW the difference between MAP_DENYWRITE, MAP_COPY, a=
nd
>   >MAP_PRIVATE...?)
>=20
>   Note that the kernel will refuse to honour MAP_DENYWRITE from user
>   space, so I'm afraid that changing ld.so won't do a thing.
>=20
>   The reason the kernel refuses to honour it, is that MAP_DENYWRITE is an
>   excellent DoS-vehicle - you just mmap("/etc/passwd") with MAP_DENYWRITE,
>   and even root cannot write to it.. Vary nasty.
>=20
>   Which is why the kernel only allows it when the binary loader itself
>   sets the flag, because security-conscious application writers are
>   already aware of the "oh, a running binary may not be writable" issues.
>=20
>   So sorry..
>=20
>   Linus
>=20
>   Linus Torvalds Oct 4, 2001, 7:49:27=E2=80=AFAM
>=20
>   On Thu, 4 Oct 2001, Alexander Viro wrote:
>   > <nit>
>   > I _really_ doubt that something does write() on /etc/passwd. Create a
>   > file and rename it over the thing - sure, but that's it.
>   > </nit>
>=20
>   Well, yeah, bad choice. Can you believe /var/run/utmp or similar?
>=20
>   And yes, we could add checks for the thing being executable before we
>   accept MAP_DENYWRITE instead of just ignoring the flag from user space.
>   Nobody has cared enough to make the effort.
>=20
>   Until now?
>=20
>   Linus
>=20
> Some findings:
>   . I note that the mentioned files are writable by only root (and
>   i would assume MAP_DENYWRITE to only work if i could do so
>   myself).
>   . Capabilities have become more fine-grained.
>   . I always whimper when i have to rm(1) a running executable before
>   placing an updated variant on Linux, on BSDs i simply over-cp(1)
>   (and i do not understand as long as one gets either the one or
>   the other when executing the path).
>   . Shouldn't mandatory file locking have the same effect.
> But it is ok to me, Linux is as it is, and they progress and
> iterate over the code at an unbelievable speed.  And some things
> are just the way they are.  (Or change.  Back.  And forth.  And
> back etc etc)

Executable files and shared libraries should _never_ be modified
in-place.  They should _always_ be renamed over.  Otherwise, a program
might be a mixture of the old and new version, with completely undefined
results when the program is run.

>  |>   And then
>  |> someone who seems to know uses it nonetheless in a small showcase
>  |> program, likely trying to say even more in-between-the-lines.
>  |
>  |That commit message seems to indicate that the program was using=20
>  |SHM_HUGETLB when it should have been using MAP_HUGETLB, those constants=
=20
>  |represent different bits, and passing SHM_HUGETLB to mmap(2) will be=20
>  |interpreted as MAP_DENYWRITE, and therefore ignored.  Presumably, there=
=20
>  |is some other syscall (likely shmat(2)) that uses that bit (represented=
=20
>  |under the constant SHM_HUGETLB) to request huge pages, and the test=20
>  |program in question was supposed to get huge pages from mmap(2) but was=
=20
>  |not actually asking for huge pages because it was using the wrong const=
ant.
>  |
>  |In other words, MAP_DENYWRITE was not being intentionally used at all.=
=20=20
>  |Another constant, for a different set of flags, that happens to have th=
e=20
>  |same value, was being used, causing a quiet bug.  (The test program=20
>  |would have still worked, but was not actually exercising huge pages as=
=20
>  |intended.)
>=20
> The Linux commit messages are tremendous books that often leave me
> stunning.  I *never* get together such things in my own work
> process.  So thanks for spending additional time reiterating this.
>=20
>  |-- Jacob
>=20
> Thank you very much.
>=20
>  --End of <6691E39C.8090600@gmail.com>
>=20
> --steffen
> |
> |Der Kragenbaer,                The moon bear,
> |der holt sich munter           he cheerfully and one by one
> |einen nach dem anderen runter  wa.ks himself off
> |(By Robert Gernhardt)

--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--q34x8WjG5DGMWW6P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmaUUhEACgkQsoi1X/+c
IsHQHw/8Cs2g6cF7LXmZvcUOSBZ9vNY2zSFeEi7cNI1D7uFnrbYTuN4qifHt1SGv
xjYYT/fo7XlyE1Y+s/9RB3+rSMXbXgXUP50cPDFuIC8HI4ZsgLeoZ59xBpvEHn4O
ydYrA+EsksvQ/gByneRg361mnQgiVqCxAOow0eKa4x1scyig97tVWnfGqJSLYsGM
qKbWLbBfNIKj5Z0RquLyWDAxDU51LPJwI0qTcMYoNyNz6oxMBOnUy+BrbYieuDFw
sjVvITUC/lH7LNb3rbkHR6+g5PqUyzSHeijNa+XfCDGGOPW5V1a1oiT2cTBi3u5R
4wNq+8qGBKuYnWYYXzi4nYmeuMlIDqsFev3AWGztSlY//0jy2jxgNwT72zkRucrb
IsOGk/DheGzXYTnLsnRwHwqvcZtEqGKsLeVfx5apK11Q4bbHWYtWfpbsUHuz+WjT
b+PClzFgLtCB/GXzftckZ6gfLpSod1ZePS7uA5VOU7BcBSmj9ZVP86TxM/x1NoZQ
MCKgRxL3CyPO9WgFcxhPOUjzwFX4hkepTSM1EZNfKdkQIyep29x0nL2DAgEWs2a5
KKmb6GdR1PxgrQVfAwGMtvMZM0tp6TJaiYNh/uOaUGQdKqggI1K/WqXv6KEA1qKB
PWzpVjKAWEpClWd7U30qcz+vT0n2SEpvOato6n7J7pB/1+dJhZQ=
=0hPB
-----END PGP SIGNATURE-----

--q34x8WjG5DGMWW6P--
