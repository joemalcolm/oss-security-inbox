X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8477" "Saturday" "6" "February" "2016" "15:18:22" "+0100" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQtnriS6yC4Hh0GNk6SZVT1Xfvvzsi26iP-hNt7S_u6xA@mail.gmail.com>" "154" "[oss-security] Re: CVE request: Out-of-bound read in the parsing of gif files using GraphicsMagick 1.3.18" nil nil nil "2" "2016020614:18:22" "[oss-security] Re: CVE request: Out-of-bound read in the parsing of gif files using GraphicsMagick 1.3.18" (number mark "U       gustavo.grie Feb  6  154/8477  " thread-indent "\"[oss-security] Re: CVE request: Out-of-bound read in the parsing of gif files using GraphicsMagick 1.3.18\"\n") "<CACn5sdSpUpBuZK6dXCFfpjWvaSd0NLzEqhfJNacGzMq4VvyWFw@mail.gmail.com>" ("<CACn5sdSpUpBuZK6dXCFfpjWvaSd0NLzEqhfJNacGzMq4VvyWFw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30600 invoked by uid 550); 6 Feb 2016 14:18:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30582 invoked from network); 6 Feb 2016 14:18:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=W6TfEjwsqnI8XcRw/DiiKQgxDYQPowdlJkb8UvUZtfQ=;
        b=sLrsfYXG1ZagfHc0D6hPs/+vREM8WotsHOA9Vrz8NHLnVFX9DOTj/Ci7CX65uNdrAs
         WxctBBVK+ISRE1bxRprKEfYJfjSIk/BoKoQUsGjuH8ssj1t1YLq6zUhDqrzAhi48BMFY
         9bvOOqp8uw/6l2Fb+dgDs701QDIm8KR1YkIIMBP5XzvbrkTh84WtMr0diTc0UcbUdDIz
         C2/yiehHf9XG0+Ya/1DT1M/giV6gOsTTMcZP2cT/GPfD3oXwM68N+ep+9Fx5AS4wyZMT
         rZsqQD5h5Vh1tSxLjRvvKFPz/Yp0K7AFfpo6lDRM+M3rP453ac4YbYSUqBic1NH/YmUy
         7QJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=W6TfEjwsqnI8XcRw/DiiKQgxDYQPowdlJkb8UvUZtfQ=;
        b=FNosb7Nrw6lI94xo6h0In431erWCRQyN54JGzx2+j4VO2OGxnSuOLaGTe1ehaWRNFJ
         X70+42XDIgkgiRW4iXD697iFts22dt+n9lGntO4b7kDh7zLN6oKKmBsopbSELfMJWq8o
         hcjkIeVOzRRT+rO1zam3EwPU//AxL7GrXYLcZrl42pRwz8SykD6CiWzVxPQGIe/Qf4v8
         41Tucg4yDLkPtrLh5Pv55N4cOiQUDizv58yDLVSLpX7ph+GR3pRe/h+wfwS0MClEPLKx
         SYqsWiEjTu+4RJz+6sz7p6scclskkijc3Gv5bOTsn1yCXdDoV9DeGtL5f3rQcFSTvUMe
         2g0w==
X-Gm-Message-State: AG10YOQFmGz8iewgFe5JkYeo3RPK2qBt8+PE7g7RG7c7kKON4pDO7p7xTlIBr+mAQxCtdAYvoRii2qLGsD/Svg==
MIME-Version: 1.0
X-Received: by 10.25.161.144 with SMTP id k138mr8132939lfe.83.1454768302526;
 Sat, 06 Feb 2016 06:18:22 -0800 (PST)
In-Reply-To: <CACn5sdSpUpBuZK6dXCFfpjWvaSd0NLzEqhfJNacGzMq4VvyWFw@mail.gmail.com>
References: <CACn5sdSpUpBuZK6dXCFfpjWvaSd0NLzEqhfJNacGzMq4VvyWFw@mail.gmail.com>
Date: Sat, 6 Feb 2016 15:18:22 +0100
Message-ID: <CACn5sdQtnriS6yC4Hh0GNk6SZVT1Xfvvzsi26iP-hNt7S_u6xA@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary=001a114028a6e73629052b1aa3e5
Subject: [oss-security] Re: CVE request: Out-of-bound read in the parsing of gif files using
 GraphicsMagick 1.3.18

--001a114028a6e73629052b1aa3e5
Content-Type: multipart/alternative; boundary=001a114028a6e73622052b1aa3e3

--001a114028a6e73622052b1aa3e3
Content-Type: text/plain; charset=UTF-8

Test case to reproduce this is attached here, sorry!

2016-02-06 14:42 GMT+01:00 Gustavo Grieco <gustavo.grieco@gmail.com>:

> Hi,
>
> We found a read out-of-bound in the parsing of gif files using
> GraphicsMagick. This issue was tested in Ubuntu 14.04 (x86_64) using
> GraphicsMagick 1.3.18. Find attached a specially crafted file to reproduce
> this issue. The AddressSanitizer report showing the faulty code is here:
>
> $ ./gm identify overflow.gif
> =================================================================
> ==3173==ERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x6210000037be at pc 0x0000007e5f56 bp 0x7fffffffa940 sp 0x7fffffffa938
> READ of size 1 at 0x6210000037be thread T0
>     #0 0x7e5f55 in DecodeImage coders/gif.c:276
>     #1 0x7ebdac in ReadGIFImage coders/gif.c:1075
>     #2 0x490fc6 in ReadImage magick/constitute.c:1600
>     #3 0x48fcd0 in PingImage magick/constitute.c:1363
>     #4 0x43fc25 in IdentifyImageCommand magick/command.c:8350
>     #5 0x4427b9 in MagickCommand magick/command.c:8840
>     #6 0x47c4d6 in GMCommandSingle magick/command.c:17253
>     #7 0x47c79c in GMCommand magick/command.c:17306
>     #8 0x40c8c5 in main utilities/gm.c:61
>     #9 0x7ffff3739ec4 in __libc_start_main
> (/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)
>     #10 0x40c7d8
> (/home/vagrant/repos/graphicsmagick-1.3.18/utilities/gm+0x40c7d8)
> AddressSanitizer can not describe address in more detail (wild memory
> access suspected).
> SUMMARY: AddressSanitizer: heap-buffer-overflow coders/gif.c:276
> DecodeImage
> Shadow bytes around the buggy address:
>   0x0c427fff86a0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c427fff86b0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c427fff86c0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c427fff86d0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c427fff86e0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
> =>0x0c427fff86f0: fa fa fa fa fa fa fa[fa]fa fa fa fa fa fa fa fa
>   0x0c427fff8700: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c427fff8710: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c427fff8720: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c427fff8730: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>   0x0c427fff8740: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
> Shadow byte legend (one shadow byte represents 8 application bytes):
>   Addressable:           00
>   Partially addressable: 01 02 03 04 05 06 07
>   Heap left redzone:       fa
>   Heap right redzone:      fb
>   Freed heap region:       fd
>   Stack left redzone:      f1
>   Stack mid redzone:       f2
>   Stack right redzone:     f3
>   Stack partial redzone:   f4
>   Stack after return:      f5
>   Stack use after scope:   f8
>   Global redzone:          f9
>   Global init order:       f6
>   Poisoned by user:        f7
>   Container overflow:      fc
>   Array cookie:            ac
>   Intra object redzone:    bb
>   ASan internal:           fe
> ==3173==ABORTING
>
> This issue is caused by the use of unintialized memory in DecodeImage and
> fortunately it was fixed here:
>
> http://marc.info/?l=graphicsmagick-commit&m=142283721604323&w=2
>
> Regards,
> Gus.
>

--001a114028a6e73622052b1aa3e3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Test case to reproduce this is attached here, sorry!<br><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-02-06 14:42 GM=
T+01:00 Gustavo Grieco <span dir=3D"ltr">&lt;<a href=3D"mailto:gustavo.grie=
co@gmail.com" target=3D"_blank">gustavo.grieco@gmail.com</a>&gt;</span>:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hi,<br><br>=
We found a read out-of-bound in the parsing of gif files using=20
GraphicsMagick. This issue was tested in Ubuntu 14.04 (x86_64) using=20
GraphicsMagick 1.3.18. Find attached a specially crafted file to=20
reproduce this issue. The AddressSanitizer report showing the faulty=20
code is here:<br><br>$ ./gm identify overflow.gif <br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>=3D=3D3173=3D=3DERROR: AddressSanitizer: heap-b=
uffer-overflow on address 0x6210000037be at pc 0x0000007e5f56 bp 0x7fffffff=
a940 sp 0x7fffffffa938<br>READ of size 1 at 0x6210000037be thread T0<br>=C2=
=A0=C2=A0=C2=A0 #0 0x7e5f55 in DecodeImage coders/gif.c:276<br>=C2=A0=C2=A0=
=C2=A0 #1 0x7ebdac in ReadGIFImage coders/gif.c:1075<br>=C2=A0=C2=A0=C2=A0 =
#2 0x490fc6 in ReadImage magick/constitute.c:1600<br>=C2=A0=C2=A0=C2=A0 #3 =
0x48fcd0 in PingImage magick/constitute.c:1363<br>=C2=A0=C2=A0=C2=A0 #4 0x4=
3fc25 in IdentifyImageCommand magick/command.c:8350<br>=C2=A0=C2=A0=C2=A0 #=
5 0x4427b9 in MagickCommand magick/command.c:8840<br>=C2=A0=C2=A0=C2=A0 #6 =
0x47c4d6 in GMCommandSingle magick/command.c:17253<br>=C2=A0=C2=A0=C2=A0 #7=
 0x47c79c in GMCommand magick/command.c:17306<br>=C2=A0=C2=A0=C2=A0 #8 0x40=
c8c5 in main utilities/gm.c:61<br>=C2=A0=C2=A0=C2=A0 #9 0x7ffff3739ec4 in _=
_libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)<br>=C2=A0=C2=A0=
=C2=A0 #10 0x40c7d8=C2=A0 (/home/vagrant/repos/graphicsmagick-1.3.18/utilit=
ies/gm+0x40c7d8)<br>AddressSanitizer can not describe address in more detai=
l (wild memory access suspected).<br>SUMMARY: AddressSanitizer: heap-buffer=
-overflow coders/gif.c:276 DecodeImage<br>Shadow bytes around the buggy add=
ress:<br>=C2=A0 0x0c427fff86a0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa f=
a fa<br>=C2=A0 0x0c427fff86b0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa=
 fa<br>=C2=A0 0x0c427fff86c0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa =
fa<br>=C2=A0 0x0c427fff86d0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa f=
a<br>=C2=A0 0x0c427fff86e0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa=
<br>=3D&gt;0x0c427fff86f0: fa fa fa fa fa fa fa[fa]fa fa fa fa fa fa fa fa<=
br>=C2=A0 0x0c427fff8700: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa<b=
r>=C2=A0 0x0c427fff8710: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa<br=
>=C2=A0 0x0c427fff8720: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa<br>=
=C2=A0 0x0c427fff8730: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa<br>=
=C2=A0 0x0c427fff8740: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa<br>S=
hadow byte legend (one shadow byte represents 8 application bytes):<br>=C2=
=A0 Addressable:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 00<br>=C2=A0 Partially addressable: 01 02 03 04 05 06 07 <br>=C2=A0 Hea=
p left redzone:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fa<br>=C2=A0 Heap right=
 redzone:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fb<br>=C2=A0 Freed heap region:=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fd<br>=C2=A0 Stack left redzone:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 f1<br>=C2=A0 Stack mid redzone:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 f2<br>=C2=A0 Stack right redzone:=C2=A0=C2=A0=C2=A0=C2=A0 f=
3<br>=C2=A0 Stack partial redzone:=C2=A0=C2=A0 f4<br>=C2=A0 Stack after ret=
urn:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f5<br>=C2=A0 Stack use after scope:=C2=
=A0=C2=A0 f8<br>=C2=A0 Global redzone:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 f9<br>=C2=A0 Global init order:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 f6<br>=C2=A0 Poisoned by user:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 f7<br>=C2=A0 Container overflow:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 fc<br>=C2=A0 Array cookie:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 ac<br>=C2=A0 Intra object redzone:=C2=A0=C2=A0=C2=A0 bb<=
br>=C2=A0 ASan internal:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 fe<br>=3D=3D3173=3D=3DABORTING<br><br></div>This issue is caused =
by the use of unintialized memory in DecodeImage and fortunately it was fix=
ed here:<br><br><a href=3D"http://marc.info/?l=3Dgraphicsmagick-commit&amp;=
m=3D142283721604323&amp;w=3D2" target=3D"_blank">http://marc.info/?l=3Dgrap=
hicsmagick-commit&amp;m=3D142283721604323&amp;w=3D2</a><br></div><br></div>=
<div>Regards,<br></div><div>Gus.<br></div></div>
</blockquote></div><br></div></div>

--001a114028a6e73622052b1aa3e3--

--001a114028a6e73629052b1aa3e5--
