Received: (qmail 32635 invoked by uid 550); 15 Oct 2024 19:31:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11759 invoked from network); 15 Oct 2024 19:17:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1729019859;
	 x=1729106259; bh=MZd9dimMao9AZM5Fj09mA0d9akAydwHBgc11QwTyxuI=; b=
	PUx+FEHflx1+UKX/N0lK4jYoVmpWFbsJ7UjDacWykt0h5Ts6z0UNVsZWY3coq2uC
	3oK18SEFDuhxtI0BWyESEcNeqOP+2bEA5oDlEcisGmkPp5ErvU/Sl+IWA9+c0heC
	XKFazbFL4fNzpv2+FTxPq1Z2hfJVvMf7kmim74sbb7W01KFmQfygI6Umndg05ayN
	cX1W+cI/VuP1IBXqllYXQ6evMZcyZeI3DxRT6BOXAZkSUVl1utjUTLvDoHxNUDGx
	qYn+bPK3+FzyAutRFe7mlTtz8Dx6UHQl1ABPWGBC8KvZg30OPwGqhnlK6R8mGEUr
	wK57fjzk8fNwCTAJqHRl7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1729019859; x=1729106259; bh=MZd9dimMao9AZM5Fj09mA0d9akAy
	dwHBgc11QwTyxuI=; b=TwQ86WMQzGK3tSKBd/kuJFWBI1XKXq5q/vFM0B58tFPf
	HaZezYabJR6186dSxfiv58Jcwsqv5haa40GU8RxrmcZpsY7BuYJ05SzUl2clqxAP
	SzvuSboEov8unEapgLyTK+iUztzxZbBztlSv9tuu5hyiHD5utQyxq99tx3grDPKn
	kC8ezzDyPQYv5rsaaISaUvzmo7I0kO88+mf+dZYlHp9Fy9im8B+I+8GYjaou9Tjl
	P+buV/lxAb3M9v6Jdjg3XmlccWNs9qoffzezA06P4xbTbvvTEvdftIgBg0gKRDFA
	HwfShPV1lqsgdwKEi6o/X/i11d+cjs/YsZgD9mr+xw==
X-ME-Sender: <xms:078OZ3aJl9Oas3E1ooaqSDPDke1uxPs95L2fAB2mp8dvMT8q59-bEQ>
    <xme:078OZ2anw5GQa3ggH4PGuWSP70BzJ8lj1yMr5INGRY2JsIrsdjnoM1uvENWIolIZO
    CnmWEk4xmssMBg>
X-ME-Received: <xmr:078OZ59CHJbFYRCfpBQi_N7nduw5NYMuLbaYVm4VVQq8I4XgKkaJognoWZQiva3VVppiTUftgNApvcGHI_-KzAyTqdDIdRa8DAHn_iMMeWO21_Lq>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdegjedgudefhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    fukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgs
    vghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqe
    enucggtffrrghtthgvrhhnpeekteehjeetjeegteelgfdtffffgfevheeuteevveehgeev
    hfeghfekfffggedttdenucffohhmrghinhepghhithhhuhgsrdgtohhmnecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhs
    ihgslhgvthhhihhnghhslhgrsgdrtghomhdpnhgspghrtghpthhtohepuddpmhhouggvpe
    hsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdho
    phgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:078OZ9qjWt_pdawq6qTqeE7DjwIemQd0VXRASW9a_TJoshsYbj2Fpw>
    <xmx:078OZypkCd50ZJQR8dEa3Z2oFg0z1tE-ekH94OJDK1-h_Ak8IKQmoQ>
    <xmx:078OZzT-mz1AgY1Gzg7vsJdBW-flul_yjH-LzjHyBdLhlYRPTosRuQ>
    <xmx:078OZ6qFW0QTRZqS2bEyVCjDbC2jdoXy2QxuDzpOJv-s9UhRHRRdeA>
    <xmx:078OZ5R0TXFWPtoRhrrpVywSHKcARERRXnngveHOjEj2yM0AfuE6e6Sl>
Feedback-ID: iac594737:Fastmail
Date: Tue, 15 Oct 2024 15:17:34 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Zw6_0fzKlkBIbRSj@itl-email>
References: <Zv-9gAGM_X7QQShJ@suse.com>
 <878qv251x7.fsf@kaka.sjd.se>
 <20241008025402.GA2904@openwall.com>
 <878quzt99y.fsf@kaka.sjd.se>
 <20241008205659.GA7086@openwall.com>
 <Zw5VcOQzbCUChikG@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hNHX0KLS4LOo9/yF"
Content-Disposition: inline
In-Reply-To: <Zw5VcOQzbCUChikG@kasco.suse.de>
Subject: Re: [oss-security] CVE-2024-47191: Local root exploit in the PAM
 module pam_oath.so

--hNHX0KLS4LOo9/yF
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Oct 2024 15:17:34 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2024-47191: Local root exploit in the PAM
 module pam_oath.so

On Tue, Oct 15, 2024 at 01:43:42PM +0200, Matthias Gerstner wrote:
> Hi,
>=20
> thanks for bringing up the potential problems with the patch we (SUSE)
> suggested. The missing drop of the ancillary group list has indeed been
> overlooked and will result in a lack of protection, since the
> "unprivileged" process will likely still be a member of the root group.
>=20
> I will adjust the patch to contain this and one or two other adjustments
> and can then share it again here on the list.
>=20
> Please find a few more comments below inline.
>=20
> On Tue, Oct 08, 2024 at 10:56:59PM +0200, Solar Designer wrote:
> > On Tue, Oct 08, 2024 at 08:10:17AM +0200, Simon Josefsson wrote:
> > > I noticed that that there are Linux-PAM helpers to drop privileges:
> > >=20
> > > https://github.com/linux-pam/linux-pam/blob/master/libpam/pam_modutil=
_priv.c#L52
> >=20
> > This currently switches fsuid/fsgid (so for the current thread only),
> > but uses initgroups() and setgroups() libc functions (so affects all
> > threads).
>=20
> Regarding thread safety, the SUSE patch forks a new process to drop the
> privileges, so it shouldn't be an issue here.
>=20
> > In particular, I worry that the SUSE approach could be susceptible to
> > hard link attacks (when the fs.protected_hardlinks sysctl is not set).
> > Would this allow to overwrite someone else's file (the original issue)
> > if the user can hard link that file?  I currently don't see why not, so
> > it's probably a vulnerability.
>=20
> Indeed the patch does not take care of hard link attacks. Our products
> don't have any supported configuration without protected_hardlinks
> enabled, so we didn't have this in mind.
>=20
> The change to address this concern should be rather small, though, so I
> will try to incorporate it in a new version of the patch.
>=20
> > In general, switching to a user not only drops privileges for file
> > access, but also potentially exposes the process as that user's.
> > fsuid/fsgid switching is the safest in this respect (these were meant
> > just for file access purposes), but with other IDs (depending on which)
> > there may be extra exposure of the partially privileged log in process
> > to the user via /proc, kill(), setpriority(), etc. ... but thankfully
> > and hopefully not also via ptrace() on modern systems anymore.
>=20
> On modern Linux there shouldn't be a problem with dropping UID/GID, as
> the kernel will set the process's suid_dumpable attribute to the setting
> found in sys.fs.suid_dumpable, which should be 0. When this happens no
> ptrace() etc. will be possible on the end on the user/group that the
> process drops privileges to.
>=20
> It can be problematic when the unprivileged process subsequently
> performs an execve() without closing sensitive file descriptors, like it
> happened in open-vm-tools (CVE-2023-34059).
>=20
> An explicit prctl(PR_SETDUMPABLE, 0) could be considered in the patch to
> make this requirement explicit.
>=20
> Dropping only the fsuid and fsgid on Linux would avoid any potential
> ptrace() dangers. The system calls are marked deprecated, though,
> and have unfortunate error handling. What makes me feel a bit uneasy
> about this approach is that the programmer has to make sure that
> the privilege drop context only ever deals with file system operations.
> Things like e.g. obtaining SO_PEERCREDs from a UNIX domain socket will
> still operate on the egid and euid, which will remain at 0.
>=20
> For me it feels better to drop all privileges for good. For specific
> purposes like in the case of pam-oath I believe it can make sense to
> take that route, though.
>=20
> Best Regards
>=20
> Matthias

What about opening the path one portion at a time using openat() with
O_NOFOLLOW (and, as applicable, O_DIRECTORY), ensuring that each portion
is not "." or "..", does not contain "/", and is owned by either the
target user or root?  This solves all race conditions and does not
require spawning another process.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--hNHX0KLS4LOo9/yF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEopQtqVJW1aeuo9/sszaHOrMp8lMFAmcOv88ACgkQszaHOrMp
8lMf/Q//Wg9Z73oKQVzSY38yaVAMKrLYHkOJCw8TblmXV1cxdxyo6OJ5X8RG8Qng
D5hCGzjQHiqpd2QgSHdgiMPwSpZ7Q9ARRHjrauOE7YdRxu+vGPj78n5ih2Z8N5j8
XfIKU8Fz/7lp0p4pMMQBlPigWOlfNV1ql4kVfqjHHjulUcATr0gsiruqYiWSBR5n
w6G7NwSJxl4IgMaq3UWUTWf9XOch8PXPnq4CNtYo7kPEn4bAuiNgvig2BiSF7Sap
IHXHHtUlsPq8RCifKap8RH4JoCcgM1aqlcwtjKf/Zfkh0V5LbUxv08NkI8nxcKs4
M4v6PX5U7Ee6Tci6NsabTohq3g1C2kVjAQtBsUdRewrDOVb+me5i3LpiBeaUljH7
C20FUWzs4jKOASlPNvxvUvvK3daW4gVbes50/ahdCzJLc7YH+hz+gg85FskBGBVS
s4A8+ST4lNpRiTjNF8M+86RTpvaEO4OgzlCGqkZ/1dtPoVdWm5Q9zv7HFCewXL5D
Hjp5lPU5IzusP76P9kVy6iZSeTQIqV5DestEp8v5jeo7lSSYkCDqH5z2QHWso/GD
XcllZPaTLpxWU3hTe69x7oxCV5RB53iAjIJG9Xv+OlfVsbqbl4QSoVcADZLBe+H5
pXEqkc97EMpalfgS4NTlCcPiUFi8DSgrV8Lrlwqw4/abTKI8CD8=
=/OHO
-----END PGP SIGNATURE-----

--hNHX0KLS4LOo9/yF--
