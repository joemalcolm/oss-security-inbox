Received: (qmail 24557 invoked by uid 550); 29 Mar 2024 21:49:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16263 invoked from network); 29 Mar 2024 21:14:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1711746848; x=1712006048;
	bh=PWGpuBvraFj1rUjNy2rUn2Wt3r5dpAVXbK80IAoxGsQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ZUvqJQNpr+3QZaUvB/8xcuS2zpxblqzmOQ+chn6Pd8eSjwQlQjMOjs8cflbONycGO
	 SNZ3QfIGfo+6jWphohix3mAPrdb90mW2/sB3zIGBF9XuF2ziOvFjmAnKgvAjGeyVKU
	 LTC45HE0+FuHOwPbKRroTFZpYZRYUGtQcB+sPsegjgnBnK8mzu3g5GWWSTaOXQmfyP
	 jLLHXm80NP9A/2kEtP+vsO58X/St1n49ex810Ey/ur6GmHLd+QPzn8K6qyMxtPSwZZ
	 6gTAMwUROgB5loOY70EO5IlzeLPdEqKX1sRkpwZ8Ynk4OIpSNpsq7F3LDn/SUpVeh9
	 MktohI7lIs+WQ==
Date: Fri, 29 Mar 2024 21:14:02 +0000
To: oss-security@lists.openwall.com
From: terraminator <terraminator@protonmail.com>
Cc: "Alexander E. Patrakov" <patrakov@gmail.com>
Message-ID: <lixIOlr_cPeSSS0_EVVTqw8lci0pVbGThxVoko6vjc4nCYcUMZataEuQanpLUZqPKkjNEGB8ciM0XH7aeRDM3xU5NA_H8v1nnEu4Enix3n0=@protonmail.com>
In-Reply-To: <e134c4ab081dce2bba40540075585837@purelymail.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <CAN_LGv0CU6J+5d6RX=mDrMvAg4kf3EGi+56x+J4iW0NCFRee1g@mail.gmail.com> <CAN_LGv3B4_K16osLRiinny7SbOsxvvtJHbU3Fgbu4ytnEPgoww@mail.gmail.com> <e134c4ab081dce2bba40540075585837@purelymail.com>
Feedback-ID: 49885992:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh server compromise

I can confirm your observation:
there is no relevant difference between the "patched" and the affected vers=
ion on arch linux.
48,49c48,49
< 000002f0: 0300 0000 474e 5500 71f9 a255 f686 4e44  ....GNU.q..U..ND
< 00000300: c325 3a10 dc37 9c25 c8bf b302 0000 0000  .%:..7.%........
---
> 000002f0: 0300 0000 474e 5500 69df 3c77 1c62 8668  ....GNU.i.<w.b.h
> 00000300: 86ef f245 d5b1 5834 540d f808 0000 0000  ...E..X4T.......
12804c12804
< 00032030: 2e36 2e31 2e64 6562 7567 0000 82fd 6f66  .6.1.debug....of
---
> 00032030: 2e36 2e31 2e64 6562 7567 0000 4ad1 cc28  .6.1.debug..J..(

Terraminator

Rein Fernhout (Levitating) <me@levitati.ng> schrieb am Freitag, 29. M=C3=A4=
rz 2024 um 21:46:

> > so I would appreciate it if somebody else confirms my conclusion.
>=20
>=20
> I can confirm there is no difference in the disassembly of libzlma in
> Archlinux packages 5.6.1-1 and 5.6.1-2.
>=20
> This is the difference of the hexdumps as created by xxd:
>=20
> 48,49c48,49
> < 000002f0: 0300 0000 474e 5500 71f9 a255 f686 4e44 ....GNU.q..U..ND
> < 00000300: c325 3a10 dc37 9c25 c8bf b302 0000 0000 .%:..7.%........
> ---
>=20
> > 000002f0: 0300 0000 474e 5500 69df 3c77 1c62 8668 ....GNU.i.<w.b.h
> > 00000300: 86ef f245 d5b1 5834 540d f808 0000 0000 ...E..X4T.......
>=20
> 12804c12804
> < 00032030: 2e36 2e31 2e64 6562 7567 0000 82fd 6f66 .6.1.debug....of
> ---
>=20
> > 00032030: 2e36 2e31 2e64 6562 7567 0000 4ad1 cc28 .6.1.debug..J..(
>=20
>=20
> The commit that updated the pkgrel can be seen here:
>=20
> https://gitlab.archlinux.org/archlinux/packaging/packages/xz/-/commit/881=
385757abdc39d3cfea1c3e34ec09f637424ad
>=20
> 5.6.1-1 was build from the tarball found in releases but 5.6.1-2 is not.
>=20
> On 2024-03-29 21:18, Alexander E. Patrakov wrote:
>=20
> > On Sat, Mar 30, 2024 at 2:59=E2=80=AFAM Alexander E. Patrakov
> > patrakov@gmail.com wrote:
> >=20
> > > On Sat, Mar 30, 2024 at 12:09=E2=80=AFAM Andres Freund andres@anaraze=
l.de
> > > wrote:
> > >=20
> > > > =3D=3D Affected Systems =3D=3D
> > > >=20
> > > > The attached de-obfuscated script is invoked first after configure,=
 where it
> > > > decides whether to modify the build process to inject the code.
> > > >=20
> > > > These conditions include...
> > > > <snip>
> > > > Running as part of a debian or RPM package build:
> > > > if test -f "$srcdir/debian/rules" || test "x$RPM_ARCH" =3D "xx86_64=
";then
> > >=20
> > > Could you please confirm that the Arch Linux binary package was never
> > > actually compromised?
> >=20
> > Answering my own question. Supposedly (as "confirmed" by
> > https://lists.archlinux.org/archives/list/arch-security@lists.archlinux=
.org/thread/R3HBBSVYIRTXB4O64N2WZX55BF6IIPST/),
> > "package xz before version 5.6.1-2 is vulnerable". So, I downloaded
> > versions 5.6.1-1 (supposedly vulnerable) and 5.6.1-2 (supposedly
> > fixed) from Arch Linux Archive:
> > https://archive.archlinux.org/packages/x/xz/
> >=20
> > I extracted both binary packages and disassembled the liblzma.so.5.6.1
> > library contained therein using "objdump -d". The files are not
> > identical, however, their disassembly is. Therefore, either both are
> > trojaned, or none. Based on the "if test -f "$srcdir/debian/rules" ||
> > test "x$RPM_ARCH" =3D "xx86_64";then" line, I think that the correct
> > answer is "none", and therefore no advisory should have been created.
> > But it's 4:18am here, not the best time to think, so I would
> > appreciate it if somebody else confirms my conclusion.
> >=20
> > P.S. Kudos to the reproducible-builds project for making the analysis
> > that easy.
