X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1402" "Friday" "23" "November" "2018" "09:34:51" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<8770596.Fmibit0Khg@overwatch>" "40" "Re: [oss-security] Crashes and memory safety bugs in dcraw" "^Date:" nil nil "11" "2018112308:34:51" "[oss-security] Crashes and memory safety bugs in dcraw" (number mark "        ago@gentoo.o Nov 23   40/1402  " thread-indent "\"Re: [oss-security] Crashes and memory safety bugs in dcraw\"\n") "<20181123092217.7e4a0f84@computer>" ("<20181123092217.7e4a0f84@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29905 invoked by uid 550); 23 Nov 2018 08:35:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29881 invoked from network); 23 Nov 2018 08:35:08 -0000
Message-ID: <8770596.Fmibit0Khg@overwatch>
In-Reply-To: <20181123092217.7e4a0f84@computer>
References: <20181123092217.7e4a0f84@computer>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart5062658.U8SEKzg649"
Content-Transfer-Encoding: 7Bit
Date: Fri, 23 Nov 2018 09:34:51 +0100
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Crashes and memory safety bugs in dcraw
To: oss-security@lists.openwall.com

--nextPart5062658.U8SEKzg649
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On venerd=C3=AC 23 novembre 2018 09:22:17 CET Hanno B=C3=B6ck wrote:
> Segfault / memory read on invalid address in crop_masked_pixels
> =3D=3D6511=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x7fa0aa=
2ad79e (pc
> 0x0000005992fe bp 0x7ffdd236bb50 sp 0x7ffdd236b9e0 T0) =3D=3D6511=3D=3DTh=
e signal
> is caused by a READ memory access.
>     #0 0x5992fd in crop_masked_pixels /mnt/ram/dcraw/dcraw.c:3775:20
>     #1 0x668a33 in main /mnt/ram/dcraw/dcraw.c:10406:7
>     #2 0x7fa05f3264ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
>     #3 0x41c629 in _start (/mnt/ram/dcraw/a.out+0x41c629)
>=20
> Invalid memory read in crop_masked_pixels
> =3D=3D6893=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x7f5514=
dad79e (pc
> 0x0000005992fe bp 0x7ffc83994ad0 sp 0x7ffc83994960 T0) =3D=3D6893=3D=3DTh=
e signal
> is caused by a READ memory access.
>     #0 0x5992fd in crop_masked_pixels /mnt/ram/dcraw/dcraw.c:3775:20
>     #1 0x668a33 in main /mnt/ram/dcraw/dcraw.c:10406:7
>     #2 0x7f54c9df64ca in __libc_start_main (/lib64/libc.so.6+0x234ca)
>     #3 0x41c629 in _start (/mnt/ram/dcraw/a.out+0x41c629)

Hi Hanno,

are the first and the third similar or I'm missing something?
TIA

--=20
Agostino Sarubbo
Gentoo Linux Developer

--nextPart5062658.U8SEKzg649--



