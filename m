X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4113" "Tuesday" "13" "September" "2016" "13:24:58" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20160913202458.GB13420@hunt>" "99" "Re: [oss-security] Heapoverflow in giflib5.1.4" "^Cc:" nil nil "9" "2016091320:24:58" "[oss-security] Heapoverflow in giflib5.1.4" (number mark "        seth.arnold@ Sep 13   99/4113  " thread-indent "\"Re: [oss-security] Heapoverflow in giflib5.1.4\"\n") "<20160913215303.56ec6504@hboeck.de>" ("<a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>" "<20160913185508.1351b147@hboeck.de>" "<20160913192423.GA13420@hunt>" "<20160913215303.56ec6504@hboeck.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7838 invoked by uid 550); 13 Sep 2016 20:25:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7813 invoked from network); 13 Sep 2016 20:25:14 -0000
Message-ID: <20160913202458.GB13420@hunt>
Mail-Followup-To: Hanno =?iso-8859-1?Q?B=F6ck?= <hanno@hboeck.de>,
	"vul@724safe" <vul@724safe.com>, oss-security@lists.openwall.com
References: <a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>
 <20160913185508.1351b147@hboeck.de>
 <20160913192423.GA13420@hunt>
 <20160913215303.56ec6504@hboeck.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+g7M9IMkV8truYOl"
Content-Disposition: inline
In-Reply-To: <20160913215303.56ec6504@hboeck.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "vul@724safe" <vul@724safe.com>, oss-security@lists.openwall.com
Date: Tue, 13 Sep 2016 13:24:58 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heapoverflow in giflib5.1.4
To: Hanno =?iso-8859-1?Q?B=F6ck?= <hanno@hboeck.de>

--+g7M9IMkV8truYOl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 13, 2016 at 09:53:03PM +0200, Hanno B=F6ck wrote:
> I can however easily generate another sample that causes the same bug.
> See attachment.

This attachment does indeed trigger ASAN here, too:

ubuntu@x1:~/giflib-code$ util/gif2rgb gif2rgb-oob-new.gif=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D5394=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address 0x=
60200000efdc at pc 0x000000402b8b bp 0x7ffdafbd60f0 sp 0x7ffdafbd60e0
READ of size 1 at 0x60200000efdc thread T0
    #0 0x402b8a in DumpScreen2RGB /home/ubuntu/giflib-code/util/gif2rgb.c:2=
94
    #1 0x4045a8 in GIF2RGB /home/ubuntu/giflib-code/util/gif2rgb.c:480
    #2 0x404af0 in main /home/ubuntu/giflib-code/util/gif2rgb.c:531
    #3 0x7f2a7693682f in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6=
+0x2082f)
    #4 0x4015c8 in _start (/home/ubuntu/giflib-code/util/.libs/lt-gif2rgb+0=
x4015c8)

0x60200000efdc is located 0 bytes to the right of 12-byte region [0x6020000=
0efd0,0x60200000efdc)
allocated by thread T0 here:
    #0 0x7f2a76f9179a in __interceptor_calloc (/usr/lib/x86_64-linux-gnu/li=
basan.so.2+0x9879a)
    #1 0x7f2a76cf0e55 in GifMakeMapObject /home/ubuntu/giflib-code/lib/gifa=
lloc.c:55
    #2 0x7f2a76ce3179 in DGifGetScreenDesc /home/ubuntu/giflib-code/lib/dgi=
f_lib.c:268
    #3 0x7f2a76ce2412 in DGifOpenFileHandle /home/ubuntu/giflib-code/lib/dg=
if_lib.c:140
    #4 0x7f2a76ce1dde in DGifOpenFileName /home/ubuntu/giflib-code/lib/dgif=
_lib.c:61
    #5 0x4034f3 in GIF2RGB /home/ubuntu/giflib-code/util/gif2rgb.c:356
    #6 0x404af0 in main /home/ubuntu/giflib-code/util/gif2rgb.c:531
    #7 0x7f2a7693682f in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6=
+0x2082f)

SUMMARY: AddressSanitizer: heap-buffer-overflow /home/ubuntu/giflib-code/ut=
il/gif2rgb.c:294 DumpScreen2RGB
Shadow bytes around the buggy address:
  0x0c047fff9da0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9db0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9dc0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9dd0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9de0: fa fa fa fa fa fa fa fa fa fa 06 fa fa fa 02 fa
=3D>0x0c047fff9df0: fa fa 02 fa fa fa 00 00 fa fa 00[04]fa fa 03 fa
  0x0c047fff9e00: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9e10: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9e20: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9e30: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c047fff9e40: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07=20
  Heap left redzone:       fa
  Heap right redzone:      fb
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack partial redzone:   f4
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
=3D=3D5394=3D=3DABORTING


Thanks Hanno

--+g7M9IMkV8truYOl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJX2GCaAAoJEPMhclmdjS6XWlsH/Rkm71T/hWR/pJBZM1x8ziEj
BWHXyaqWYgtu60ZH5cCEQritMPudhPS5Vuwm0u6ENkWhQLl3XtnvetbmuAvIzcGn
uoicpwMMY8GG2BO1/Z5pkKgUTIyHJ0CcEWu6NJv1LST3fCOAfLqiUSI6b/OG5woe
ryOVcWrsrA7/obGQq6il4TBNEzjdxvr8JxKX67ufHploZ7XIkJwQ7hfE+gglH9Sz
b9ggvyCgoMvU5170aUAAxA1sUXyAJC/VftU2+EfTmV/ec5otHzOXARVmiCXzO2tg
DKUTMkmE+XGz4MPKHBInD0QbYDIpg0IF51LQ/QDpnVblGndUSShWY5ZatGxR7nY=
=9cm/
-----END PGP SIGNATURE-----

--+g7M9IMkV8truYOl--
