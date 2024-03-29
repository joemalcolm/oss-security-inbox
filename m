Received: (qmail 9380 invoked by uid 550); 29 Mar 2024 21:05:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31826 invoked from network); 29 Mar 2024 20:46:28 -0000
DKIM-Signature: a=rsa-sha256; b=Eh2fZSYQPHMmRpzG3hBCwTv8un1zwDxDRzXFGgfvNPsU2NmiC7HS9XWIn28e7nTA2GbOZl1UInBkuNShsQ5PGoc5Kjz4GT4r2iNA5Bx/P1tBRjCYbPM2OT3mbfPDRAal+oHOYr7mbMW9Gr1gdOfqrULpzbqgdXmB6vFrtvMl8awG0H+YIMWKAgoprG8woC7HN1f1aJUWaW9S3UJQ+lil5rJB3sx2jy8RdEIscNhGYNslGp37WNz8hGPXjq4l2QKXLjgnUdYNT4FfggQ44eZC+zuakb+vtvTEQPCL3qtGfJgEgKhuKkkIhfUN2iq9GSZGNZek3yzxWPS6Ifd4BHJLBw==; s=purelymail2; d=levitati.ng; v=1; bh=Jerk5x/Ep5wd1n+q9nZjoP7xWisioy5oetPN0lnvOns=; h=Received:From:To:Subject;
DKIM-Signature: a=rsa-sha256; b=GTWRab1v4ygbEyUKyOEO9ONPjVrU4jQ94KqyYqBSADNK3kereikMmgenxd7jGEoRSFIwtuzk/2htLWGCrJsxbhn5W48XqI0xIbVN2fH+0jAJQkXyC/HbsX/okiDj2j6O97AVdXvtx4t6eYRuPG1L6sIeXCUTwkt3Q7riHj5C8VSpoISXvDwpATcf5HcHdCdZ0jauGBg8iG16iFFkwSyL72oekOPimxGAhcoCEOgzJyax/cKfdyhPk+/EgNOnMKoQBRLorjvn/R842iXdsaN5yzJaordxAm1kys/9dr/h25SyjLzHsS26E+oI0RT21bSwJur93VK0oXT3rFTNtNq/8g==; s=purelymail2; d=purelymail.com; v=1; bh=Jerk5x/Ep5wd1n+q9nZjoP7xWisioy5oetPN0lnvOns=; h=Feedback-ID:Received:From:To:Subject;
Feedback-ID: 25799:4744:null:purelymail
X-Pm-Original-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Date: Fri, 29 Mar 2024 21:46:05 +0100
From: "Rein Fernhout (Levitating)" <me@levitati.ng>
To: oss-security@lists.openwall.com
Cc: "Alexander E. Patrakov" <patrakov@gmail.com>
In-Reply-To: <CAN_LGv3B4_K16osLRiinny7SbOsxvvtJHbU3Fgbu4ytnEPgoww@mail.gmail.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <CAN_LGv0CU6J+5d6RX=mDrMvAg4kf3EGi+56x+J4iW0NCFRee1g@mail.gmail.com>
 <CAN_LGv3B4_K16osLRiinny7SbOsxvvtJHbU3Fgbu4ytnEPgoww@mail.gmail.com>
User-Agent: Purely Mail via Roundcube/1.6.5
Message-ID: <e134c4ab081dce2bba40540075585837@purelymail.com>
X-Sender: me@levitati.ng
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

> so I would appreciate it if somebody else confirms my conclusion.

I can confirm there is no difference in the disassembly of libzlma in=20
Archlinux packages 5.6.1-1 and 5.6.1-2.

This is the difference of the hexdumps as created by xxd:

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

The commit that updated the pkgrel can be seen here:

https://gitlab.archlinux.org/archlinux/packaging/packages/xz/-/commit/88138=
5757abdc39d3cfea1c3e34ec09f637424ad

5.6.1-1 was build from the tarball found in releases but 5.6.1-2 is not.

On 2024-03-29 21:18, Alexander E. Patrakov wrote:
> On Sat, Mar 30, 2024 at 2:59=E2=80=AFAM Alexander E. Patrakov
> <patrakov@gmail.com> wrote:
>>=20
>> On Sat, Mar 30, 2024 at 12:09=E2=80=AFAM Andres Freund <andres@anarazel.=
de>=20
>> wrote:
>> > =3D=3D Affected Systems =3D=3D
>> >
>> > The attached de-obfuscated script is invoked first after configure, wh=
ere it
>> > decides whether to modify the build process to inject the code.
>> >
>> > These conditions include...
>> <snip>
>> > Running as part of a debian or RPM package build:
>> >     if test -f "$srcdir/debian/rules" || test "x$RPM_ARCH" =3D "xx86_6=
4";then
>>=20
>> Could you please confirm that the Arch Linux binary package was never
>> actually compromised?
>=20
> Answering my own question. Supposedly (as "confirmed" by
> https://lists.archlinux.org/archives/list/arch-security@lists.archlinux.o=
rg/thread/R3HBBSVYIRTXB4O64N2WZX55BF6IIPST/),
> "package xz before version 5.6.1-2 is vulnerable". So, I downloaded
> versions 5.6.1-1 (supposedly vulnerable) and 5.6.1-2 (supposedly
> fixed) from Arch Linux Archive:
> https://archive.archlinux.org/packages/x/xz/
>=20
> I extracted both binary packages and disassembled the liblzma.so.5.6.1
> library contained therein using "objdump -d". The files are not
> identical, however, their disassembly is. Therefore, either both are
> trojaned, or none. Based on the "if test -f "$srcdir/debian/rules" ||
> test "x$RPM_ARCH" =3D "xx86_64";then" line, I think that the correct
> answer is "none", and therefore no advisory should have been created.
> But it's 4:18am here, not the best time to think, so I would
> appreciate it if somebody else confirms my conclusion.
>=20
> P.S. Kudos to the reproducible-builds project for making the analysis=20
> that easy.
