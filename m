X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1474" "Sunday" "18" "September" "2016" "15:23:32" "+0200" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pg=8HG5oAJqBTY71pVCEBsqACFeN3DV35ANjckixNhyCA@mail.gmail.com>" "53" "Re: [oss-security] CVE request - openjpeg null ptr dereference" nil nil nil "9" "2016091813:23:32" "[oss-security] CVE request - openjpeg null ptr dereference" (number mark "U       robert@swiec Sep 18   53/1474  " thread-indent "\"Re: [oss-security] CVE request - openjpeg null ptr dereference\"\n") "<7c197fe9-19b4-6d6b-69a9-5504a9efbcb2@724safe.com>" ("<7c197fe9-19b4-6d6b-69a9-5504a9efbcb2@724safe.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26303 invoked by uid 550); 18 Sep 2016 13:23:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26284 invoked from network); 18 Sep 2016 13:23:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=1NaFF45BMKZAJA3S3ZDDNM7BXv1tThFd9SoZKzO0mS0=;
        b=BbwkzYYSDRpx4r+yMobsgDiummo3MqSxWqp6GDwZXqL6qblJzdN0RKRMUrfZAJbJPt
         NeIfbuivBeKvNmArXPh+gEiSHTnP804EcSI8LH0yd+kmTnqqO9xD9GBBUcy+BiLQA8NZ
         ho1gVcrBQtQPPGCSfV5Vrcitj4NHAL+3jgTeo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=1NaFF45BMKZAJA3S3ZDDNM7BXv1tThFd9SoZKzO0mS0=;
        b=SW47/a/nS5FIrogCWWvc79iyMfRS3nZygnQGMbiUFkTdEECG/2RpRtWXHWDQnMLXMi
         GaDtrlpT0j0IzxDxIuboipzsT2/xF/8pRf2D5k0fmthczFlv8mYFvb7zC15oqwQpNasb
         J7DxoINT63cmDiDZXqwKH68p+yKLNiTMwzypq6r2ou+0yyAoc8dyZsng3NrtxKwAKhsB
         r7pHykI+57yKhiVwdpN6mICI9mKoNYibBaW32cidyNWhZT3YFuJXnLUbDFy43p11I4lG
         /TOJwfNETEFC4trH9zTzZKrqAnxRAW1MKzM9Q6xeKJtfTA+IX3AA/OmYA3RiY3CIGf3n
         o+vQ==
X-Gm-Message-State: AE9vXwOljNibdrUHm3te/eZo68pn9JgvfMYhYrNQyqAGof/giG9FjP/piGnO6ApCzzWbCJ4DWMwL5onU9sy8Vg==
X-Received: by 10.55.141.5 with SMTP id p5mr25271771qkd.223.1474205012569;
 Sun, 18 Sep 2016 06:23:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <7c197fe9-19b4-6d6b-69a9-5504a9efbcb2@724safe.com>
References: <7c197fe9-19b4-6d6b-69a9-5504a9efbcb2@724safe.com>
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Date: Sun, 18 Sep 2016 15:23:32 +0200
Message-ID: <CAP145pg=8HG5oAJqBTY71pVCEBsqACFeN3DV35ANjckixNhyCA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE request - openjpeg null ptr dereference

Hi,

2016-09-18 14:41 GMT+02:00 vul@724safe <vul@724safe.com>:
> # Vulnerability

Would you have an idea who (and how) is exactly *vulnerable* to this
specific vulnerability?

> openjpeg null ptr dereference in convert.c:1331
>
> # Version
> 2.1.1  ( http://www.openjpeg.org/ )
>
> # Address Sanitizer Output
> ASAN:SIGSEGV
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D7358=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x000000=
00 (pc
> 0x0815d204 bp 0xff846938 sp 0xff846380 T0)
>     #0 0x815d203 in skip_white
> /home/starlab/fuzzing/openjpeg/src/bin/jp2/convert.c:1331
>     #1 0x8135d81 in main
> /home/starlab/fuzzing/openjpeg/src/bin/jp2/opj_compress.c:1723
>     #2 0xf7343636 in __libc_start_main ??:?
>     #3 0x807a31b in _start ??:?
>
> # PoC
> See poc.ppm
>
> # Analysis
> In convert.c:1483 and convert.c:1485, variable s is uncheck after
> skip_int is called.
> A null ptr will be passed to skip_int again and will cause a null ptr
> dereference.
>
> # Report Timeline
> 2016-09-16: FB3F15 of STARLAB discovered this issue
> 2016-09-18:Patch released
>
> # Credit
> FB3F15 of STARLAB
>
> # PoC
> https://github.com/STARLABSEC/pocs/raw/master/openjpeg-nullptr-github-iss=
ue-842.ppm
>
> # External link
> https://github.com/uclouvain/openjpeg/issues/843

--=20
Robert =C5=9Awi=C4=99cki
