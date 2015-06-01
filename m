X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4080" "Monday" "1" "June" "2015" "11:33:48" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150601093348.GA4985@kronk.local>" "104" "Re: [oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7" nil nil nil "6" "2015060109:33:48" "[oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7" (number mark "        alessandro@g Jun  1  104/4080  " thread-indent "\"Re: [oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7\"\n") "<CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>" ("<CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32762 invoked by uid 550); 1 Jun 2015 09:47:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27648 invoked from network); 1 Jun 2015 09:34:03 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=RSxdEmbcywFCCXsXSn3QFxf7FSlmvKnksnirEUIgPhc=;
        b=iL+9awBbhPsoEOWE6gacZkkSzggt9Q3HlCp2Woj6uGNMyo0RQEkj3RsDKFK7+XQWAo
         cCW6C3stzdIn35Sc+IvzrCmaGv+0QEGsTzH8N3s/nM2gl/TT+aZxa0Z880yMxmUYcPLQ
         lG7c2cEwyPHI/APt/M8mZQkGhsDQ/nOJwrJSQQ42vpW7MyRkp2BzVRYJNMLiG98qmE7a
         2Ja2PUlQm9pBOuUcgvm9ReJ47nTHey80oiHytrXgvwsR7KzX+vhD9Rj/q3WUCtpbQT3d
         MmTmTTHrDFiXXNASOy0Pc5aqtZevyq36rZMfWWU0elvydX3IAaJGupNZSzU7DYvX8O69
         4B6w==
X-Received: by 10.194.134.9 with SMTP id pg9mr40390230wjb.5.1433151231468;
        Mon, 01 Jun 2015 02:33:51 -0700 (PDT)
Message-ID: <20150601093348.GA4985@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5mCyUwZo2JvN/JJP"
Content-Disposition: inline
In-Reply-To: <CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Mon, 1 Jun 2015 11:33:48 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7
To: oss-security@lists.openwall.com

--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On lun, giu 01, 2015 at 03:06:57 -0500, Fernando Mu=F1oz wrote:
> libwmf is affected by a heap overflow on the function that decodes BMP im=
ages.
>=20
> WMF files may contain both vector graphics and bitmap components. With
> the attached WMF file, the issue can be reproduced, an overflow
> happens because image_size gets a value of 32, that space is used to
> allocate data->image
>=20
> src/ipa/ipa/bmp.h, function ReadBMPImage:
>=20
> 1129    image_size =3D bytes_per_line * bmp->height;
> 1131    data->image =3D (unsigned char*) wmf_malloc (API,image_size);
> 1147        DecodeImage (API,bmp,src,(unsigned int)
> bmp_info.compression,data->image);
>=20
> Inside DecodeImage we have:
>=20
> DecodeImage (wmfAPI* API,wmfBMP* bmp,BMPSource* src,unsigned int
> compression,unsigned char* pixels)
>=20
> 874     for (u =3D 0; u < ((U32) bmp->width * (U32) bmp->height); u++)
> pixels[u] =3D 0;
>=20
> But bmp->width * bmp->height has a value of 64, and a write out of
> bounds takes place.
>=20
> $ wmf2svg --wmf-fontdir=3D/usr/share/fonts/type1/gsfonts bmpoverflow.wmf
> <partial svg output>
> *** Error in `wmf2svg': free(): invalid next size (fast): 0x091584b8 ***
>=20
> ASAN enabled libwmf/wmf2svg shows the problem:
>=20
> $ ./src/convert/wmf2svg --wmf-fontdir=3D/usr/share/fonts/type1/gsfonts
> bmpoverflow.wmf
> <partial svg output>
> =3D=3D3400=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address
> 0xb5c268b0 at pc 0x807093e bp 0xbfc3cee8 sp 0xbfc3ced8
> WRITE of size 1 at 0xb5c268b0 thread T0
>     #0 0x807093d in DecodeImage ../../src/ipa/ipa/bmp.h:874
>     #1 0x807093d in ReadBMPImage ../../src/ipa/ipa/bmp.h:1147
>     #2 0x807093d in wmf_ipa_bmp_read ../../src/ipa/ipa/bmp.h:477
>     #3 0x815f013 in meta_dib_brush player/meta.h:2187
>     #4 0x815f013 in WmfPlayMetaFile
> /home/fmunozs/wmf/libwmf-0.2.8.4/src/player.c:922
>     #5 0x81a5ff5 in wmf_play /home/fmunozs/wmf/libwmf-0.2.8.4/src/player.=
c:323
>     #6 0x804c583 in wmf2svg_draw
> /home/fmunozs/wmf/libwmf-0.2.8.4/src/convert/wmf2svg.c:208
>     #7 0x804f2c5 in wmf2svg_file
> /home/fmunozs/wmf/libwmf-0.2.8.4/src/convert/wmf2svg.c:439
>     #8 0x804ad78 in main
> /home/fmunozs/wmf/libwmf-0.2.8.4/src/convert/wmf2svg.c:458
>     #9 0xb6efc72d in __libc_start_main (/lib/i386-linux-gnu/libc.so.6+0x1=
872d)
>     #10 0x804b46e
> (/home/fmunozs/wmf/libwmf-0.2.8.4/src/convert/wmf2svg+0x804b46e)
>=20
> 0xb5c268b0 is located 0 bytes to the right of 32-byte region
> [0xb5c26890,0xb5c268b0)
> allocated by thread T0 here:
>     #0 0xb72d718c in __interceptor_malloc
> (/usr/lib/i386-linux-gnu/libasan.so.1+0x5118c)
>     #1 0x80d74a8 in wmf_malloc /home/fmunozs/wmf/libwmf-0.2.8.4/src/api.c=
:482
>=20
> This causes a Denial of Service, or could cause code execution since
> the DecodeImage writes the data of the run-length decoded image to
> data->image.

For the record, the upstream developer was contacted but he did not reply a=
nd
there's currently no patch fixing this.

Cheers

--5mCyUwZo2JvN/JJP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVbCb5AAoJEK+lG9bN5XPLFyAP/RKr7V14qnepwG98pjflCTql
h6OooKCLEVxUDNBLNzzbLl4johr61xkusDA24UM2sqeBif3PJWcPPsSA06ETTVMI
JrgRQX3ymzhqvpMTYZC3j8f3fIdDaR49BvQMOUGyPzgUPTvZ+4ETHVTZ39e0bsgd
2tg0+hf7N0W+hXZ6immU47JCSnxZwv246wHwEdy0xvdIZNq85ukwLMx3uHwA0OCI
ZDVJNVQPjXP3725spKbnyfHdy4tbPcehMfJuV2fWcGQRWHdj3e1z55veRuUduIG+
WF5CSchXN5z/faj7NlxFDomv5t50jJofn1J57UoLQ3hicaAuAwHjy5Ds/92S93bc
gf4UhhZdJEE3Sabz2hy5BRLoOmqSvt0dtx3Z9c5zHzu8tGaXv6XRN7dXJllL3oSm
vS4RlvNu8pgvGQj7YB0/doVZXEDODK+MhleIhAndkaWO3lozdeJ2cwQYA4L/t/8W
jaSPGmOxPwue2KxMp73DeMWP8FCTUXLgvD/KjydpUcAAMtE4sJkSVXLGS/FvoG7T
McKL7hv7ukPH+OmxXjxwP9D+eXoMo9Lv6fQRDTZ/fHOLj1se0WRF2oKfvsbzKgZK
LC3M6I67j7eidiYuAzgZ8h23DXI2tWfcMhRHxiCSd4r0n8osPr1ZiuMaj/TVLezO
U7gO6aOgjzZmq0i84p+c
=bzFz
-----END PGP SIGNATURE-----

--5mCyUwZo2JvN/JJP--
