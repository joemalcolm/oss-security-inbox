X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["18568" "Thursday" "28" "July" "2016" "19:50:14" "+0100" "Ibrahim el-sayed" "i.elsayed92@gmail.com" "<5FE87C7D-93F9-45CE-91F4-4C29BEB1A8E2@gmail.com>" "327" "[oss-security] CVE-Request Buffer overflow ImageMagick" nil nil nil "7" "2016072818:50:14" "[oss-security] CVE-Request Buffer overflow ImageMagick" (number mark "U       i.elsayed92@ Jul 28  327/18568 " thread-indent "\"[oss-security] CVE-Request Buffer overflow ImageMagick\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27736 invoked by uid 550); 28 Jul 2016 19:07:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18140 invoked from network); 28 Jul 2016 18:50:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:subject:from:date:cc:message-id:to;
        bh=x/XRYKoeKB6xg6FiIPjJLYv2wCA7s6z7Jx3lXY7Wc/w=;
        b=QwAN9uGBYe9/hMfFPMroeKVrlN4IYngrZwESW8jUANJEebRf9uPaghYWoJ11ofhzm+
         xUB2AjcRdx5iNRyh8c6hweDIKjhMFpZpmrjLjPxzjk0b/2oDovq+Xrs6+kAhWUXwqb5u
         SZQ/So9r5JP5ydYYzSUrjs0r6x8Ha1gsC8012a4N94I4xpY+sI1Au3NXML2PEbDnYKkw
         2ZOk9Lv/79GY8kNTKrelorPiHettEK7QOOLEcq3LdrmfqCdFQW6zuBwudiDfS2Y+EYyq
         YKe/4Ur6r/J6P40FJRc5FWBY6cYSEhnsDjv6wJYdVy3J2/ju68LjpGSNcYvjMT5XAU5g
         mZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:subject:from:date:cc:message-id:to;
        bh=x/XRYKoeKB6xg6FiIPjJLYv2wCA7s6z7Jx3lXY7Wc/w=;
        b=I3tA+iD8k/79C2rUO16l5JAunSmHl1Zoy8rms+sQepb1jw7J/f+Fq86Q+ep+sw19cM
         kJZgSA2ZPsx6CLxXsASEA98pOieCroWArurQdrpsnE6+hupzenYOs3ZWIHEnNwq/wKMW
         GclfhjC/HwGYJdCvsaQeoZc4DwebsFWvsCRn8TV2zCsAKAe2a/eftgOzzAMTMlR4LBoL
         HfHpqORHCNmt18n59fHIwDkBRWZS3WR7aJNs+U+SJc+zs4yPK0ID7ZBC5TjiQOZLJf2A
         qOwmeYHT/ookYpQ5lpPvUB0cZmxPbmRkUNoLtCKriQpV+Cm3UNVuZqXlzho6qPue6kQ6
         lWzg==
X-Gm-Message-State: AEkooutIB/LOgQ3AIaHjwgyBfeI34b6hkgp/4wc/3T2uUAr3VYgRLSp/DgtGgnT4Zt8HDQ==
X-Received: by 10.28.48.71 with SMTP id w68mr38587631wmw.4.1469731825918;
        Thu, 28 Jul 2016 11:50:25 -0700 (PDT)
Content-Type: multipart/signed; boundary="Apple-Mail=_252BC396-4975-4831-948B-F3264868ED8E"; protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Ibrahim el-sayed <i.elsayed92@gmail.com>
Date: Thu, 28 Jul 2016 19:50:14 +0100
Cc: oss-security@lists.openwall.com
Message-Id: <5FE87C7D-93F9-45CE-91F4-4C29BEB1A8E2@gmail.com>
To: cve-assign@mitre.org
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] CVE-Request Buffer overflow ImageMagick

--Apple-Mail=_252BC396-4975-4831-948B-F3264868ED8E
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_33316DCA-7105-44A6-8511-437CA5FB6A3D"


--Apple-Mail=_33316DCA-7105-44A6-8511-437CA5FB6A3D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi CVE Assignemnt Team,
I would like to request a CVE for a buffer overflow in ImageMagick that was=
 fixed in the following commit:
https://github.com/ImageMagick/ImageMagick/commit/dd84447b63a71fa8c3f47071b=
09454efc667767b <https://github.com/ImageMagick/ImageMagick/commit/dd84447b=
63a71fa8c3f47071b09454efc667767b>

Details of the vulnerability in the forwarded message:




> Begin forwarded message:
>=20
> From: Ibrahim el-sayed <i.elsayed92@gmail.com>
> Subject: Re: Read out-of-bound could lead to memory leak
> Date: June 27, 2016 at 3:44:40 AM GMT+1
> To: security@imagemagick.org
>=20
> PS:
> to run the PoC try:
> magick convert -clip PoC1  <<<-- This will run the first PoC
>=20
>=20
> On Mon, Jun 27, 2016 at 3:09 AM, Ibrahim el-sayed <i.elsayed92@gmail.com =
<mailto:i.elsayed92@gmail.com>> wrote:
> Hi Imagemagick security team,
> The vulnerability gets triggered at
> https://github.com/ImageMagick/ImageMagick/blob/master/MagickCore/propert=
y.c#L697 <https://github.com/ImageMagick/ImageMagick/blob/master/MagickCore=
/property.c#L697>
>  (void) CopyMagickMemory(attribute,(char *) info,(size_t) count);
> The info ptr points at the end of the PoC image. The out-of-bound read oc=
curs when info+count is > image_size. The attribute ptr then points to data=
 that is read from the memory.
>=20
> backtrace
> #9  0x000000000043a5f8 in CopyMagickMemory (destination=3D0x7f760dd5c010,=
 source=3D0x239b3b8, size=3D3878239) at MagickCore/memory.c:696
> #10 0x000000000046f0ff in Get8BIMProperty (image=3D<optimized out>, key=
=3D<optimized out>, exception=3D<optimized out>) at MagickCore/property.c:6=
98
> #11 GetImageProperty (image=3D0x238bf00, property=3D0x2361c50 "8BIM:1999,=
2998:#1", exception=3D0x23580a0) at MagickCore/property.c:2201
> #12 0x0000000000416ceb in ClipImagePath (image=3D0x238bf00, pathname=3D0x=
bb5a89 "#1", inside=3D<optimized out>, exception=3D0x23580a0) at MagickCore=
/image.c:723
> #13 0x0000000000416b66 in ClipImage (image=3D0x7f760dd5c010, exception=3D=
0x765abe <XDisplayImage+11038>) at MagickCore/image.c:695
> #14 0x0000000000a40f5d in MogrifyImage (image_info=3D0x235e4a0, argc=3D<o=
ptimized out>, argv=3D0x2361858, image=3D0x7ffcf1b60098, exception=3D0x2358=
0a0) at MagickWand/mogrify.c:1084
> #15 0x0000000000aae42e in MogrifyImages (image_info=3D0x235e4a0, post=3DM=
agickTrue, argc=3D2, argv=3D0x2361858, images=3D0x7ffcf1b60098, exception=
=3D0x23580a0) at MagickWand/mogrify.c:8908
>=20
> Attached two PoC files:
> PoC1: reads 0xff5f extra bytes from the memory
> PoC2: reads 0xb0ff5f bytes of the memory (it is likely that this PoC caus=
es a crash because the memory segment isn't mapped or doesn't have the corr=
ect permissions)
>=20
> The read out-of-bound could lead to memory leak because the data read is =
then written into the output image using SetImageProperty which is called a=
fter the read
>=20
> The PoC has been tested on
> version: ImageMagick 7.0.2-1 Q16 x86_64 2016-06-19 http://www.imagemagick=
.org <http://www.imagemagick.org/>
>=20
> --
> Regards
> Ibrahim M. El-Sayed
> Security Engineer
> Website: https://www.ibrahim-elsayed.com <https://www.ibrahim-elsayed.com=
/>
> @ibrahim_mosaad
>=20
>=20
>=20
> --
> Regards
> Ibrahim M. El-Sayed
> Security Engineer
> Website: https://www.ibrahim-elsayed.com <https://www.ibrahim-elsayed.com=
/>
> @ibrahim_mosaad






> Begin forwarded message:
>=20
> From: vir.prudens.non.contra.ventum.mingit@imagemagick.org
> Subject: Re: Read out-of-bound could lead to memory leak
> Date: July 25, 2016 at 1:56:01 AM GMT+1
> To: vir.prudens.non.contra.ventum.mingit@imagemagick.org, i.elsayed92@gma=
il.com
>=20
> Ibrahim el-sayed <i.elsayed92@gmail.com> wrote:
>=20
>> Are you sure you run it the following way:
>> magick convert -clip PoC1 /dev/null
>=20
> Thanks for the problem report.  We can reproduce it and will have a patch=
 to fix it in GIT master branch @ https://github.com/ImageMagick/ImageMagic=
k later today.  The patch will be available in the beta releases of ImageMa=
gick @ http://www.imagemagick.org/download/beta/ by sometime tomorrow.
>=20
> The ImageMagick Development Team



--Apple-Mail=_33316DCA-7105-44A6-8511-437CA5FB6A3D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;" class=3D"">Hi CVE Assignem=
nt Team,<div class=3D"">I would like to request a CVE for a buffer overflow=
 in ImageMagick that was fixed in the following commit:&nbsp;</div><div cla=
ss=3D""><a href=3D"https://github.com/ImageMagick/ImageMagick/commit/dd8444=
7b63a71fa8c3f47071b09454efc667767b" class=3D"">https://github.com/ImageMagi=
ck/ImageMagick/commit/dd84447b63a71fa8c3f47071b09454efc667767b</a></div><di=
v class=3D""><br class=3D""></div><div class=3D"">Details of the vulnerabil=
ity in the forwarded message:</div><div class=3D""><br class=3D""></div><di=
v class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div=
 class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><div class=
=3D"">Begin forwarded message:</div><br class=3D"Apple-interchange-newline"=
><div style=3D"margin: 0px;" class=3D""><span style=3D"font-family: -webkit=
-system-font, 'Helvetica Neue', Helvetica, sans-serif;" class=3D""><b class=
=3D"">From:&nbsp;</b></span><span style=3D"font-family: -webkit-system-font=
, 'Helvetica Neue', Helvetica, sans-serif;" class=3D"">Ibrahim el-sayed &lt=
;<a href=3D"mailto:i.elsayed92@gmail.com" class=3D"">i.elsayed92@gmail.com<=
/a>&gt;<br class=3D""></span></div><div style=3D"margin: 0px;" class=3D""><=
span style=3D"font-family: -webkit-system-font, 'Helvetica Neue', Helvetica=
, sans-serif;" class=3D""><b class=3D"">Subject:&nbsp;</b></span><span styl=
e=3D"font-family: -webkit-system-font, 'Helvetica Neue', Helvetica, sans-se=
rif;" class=3D""><b class=3D"">Re: Read out-of-bound could lead to memory l=
eak</b><br class=3D""></span></div><div style=3D"margin: 0px;" class=3D""><=
span style=3D"font-family: -webkit-system-font, 'Helvetica Neue', Helvetica=
, sans-serif;" class=3D""><b class=3D"">Date:&nbsp;</b></span><span style=
=3D"font-family: -webkit-system-font, 'Helvetica Neue', Helvetica, sans-ser=
if;" class=3D"">June 27, 2016 at 3:44:40 AM GMT+1<br class=3D""></span></di=
v><div style=3D"margin: 0px;" class=3D""><span style=3D"font-family: -webki=
t-system-font, 'Helvetica Neue', Helvetica, sans-serif;" class=3D""><b clas=
s=3D"">To:&nbsp;</b></span><span style=3D"font-family: -webkit-system-font,=
 'Helvetica Neue', Helvetica, sans-serif;" class=3D""><a href=3D"mailto:sec=
urity@imagemagick.org" class=3D"">security@imagemagick.org</a><br class=3D"=
"></span></div><br class=3D""><div class=3D""><div dir=3D"ltr" class=3D"">P=
S:<br class=3D"">to run the PoC try:<br class=3D"">magick convert -clip PoC=
1 &nbsp;&lt;&lt;&lt;-- This will run the first PoC<br class=3D""><div class=
=3D""><br class=3D""></div></div><div class=3D"gmail_extra"><br class=3D"">=
<div class=3D"gmail_quote">On Mon, Jun 27, 2016 at 3:09 AM, Ibrahim el-saye=
d&nbsp;<span dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:i.elsayed92@gmail=
.com" target=3D"_blank" class=3D"">i.elsayed92@gmail.com</a>&gt;</span>&nbs=
p;wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin: 0=
px 0px 0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, =
204); border-left-style: solid; padding-left: 1ex;"><div dir=3D"ltr" class=
=3D"">Hi Imagemagick security team,<div class=3D"">The vulnerability gets t=
riggered at&nbsp;</div><div class=3D""><a href=3D"https://github.com/ImageM=
agick/ImageMagick/blob/master/MagickCore/property.c#L697" target=3D"_blank"=
 class=3D"">https://github.com/ImageMagick/ImageMagick/blob/master/MagickCo=
re/property.c#L697</a></div><div class=3D""><span class=3D"" style=3D"color=
: rgb(51, 51, 51); font-family: Consolas, 'Liberation Mono', Menlo, Courier=
, monospace; line-height: 16.8px; white-space: pre-wrap; background-color: =
rgb(248, 238, 199);"> (</span><span class=3D"" style=3D"color: rgb(167, 29,=
 93); font-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; =
line-height: 16.8px; white-space: pre-wrap;">void</span><span class=3D"" st=
yle=3D"color: rgb(51, 51, 51); font-family: Consolas, 'Liberation Mono', Me=
nlo, Courier, monospace; line-height: 16.8px; white-space: pre-wrap; backgr=
ound-color: rgb(248, 238, 199);">) </span><span class=3D"" style=3D"color: =
rgb(0, 134, 179); font-family: Consolas, 'Liberation Mono', Menlo, Courier,=
 monospace; line-height: 16.8px; white-space: pre-wrap;">CopyMagickMemory</=
span><span class=3D"" style=3D"color: rgb(51, 51, 51); font-family: Consola=
s, 'Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; white=
-space: pre-wrap; background-color: rgb(248, 238, 199);">(attribute,(</span=
><span class=3D"" style=3D"color: rgb(167, 29, 93); font-family: Consolas, =
'Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; white-sp=
ace: pre-wrap;">char</span><span class=3D"" style=3D"color: rgb(51, 51, 51)=
; font-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line=
-height: 16.8px; white-space: pre-wrap; background-color: rgb(248, 238, 199=
);"> *) info,(</span><span class=3D"" style=3D"color: rgb(0, 134, 179); fon=
t-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line-heig=
ht: 16.8px; white-space: pre-wrap;">size_t</span><span class=3D"" style=3D"=
color: rgb(51, 51, 51); font-family: Consolas, 'Liberation Mono', Menlo, Co=
urier, monospace; line-height: 16.8px; white-space: pre-wrap; background-co=
lor: rgb(248, 238, 199);">) count);</span></div><div class=3D"">The info pt=
r points at the end of the PoC image. The out-of-bound read occurs when inf=
o+count is &gt; image_size. The attribute ptr then points to data that is r=
ead from the memory.</div><div class=3D""><br class=3D""></div><div class=
=3D""><div class=3D"">backtrace</div><div class=3D"">#9 &nbsp;0x00000000004=
3a5f8 in CopyMagickMemory (destination=3D0x7f760dd5c010, source=3D0x239b3b8=
, size=3D3878239) at MagickCore/memory.c:696</div><div class=3D"">#10 0x000=
000000046f0ff in Get8BIMProperty (image=3D&lt;optimized out&gt;, key=3D&lt;=
optimized out&gt;, exception=3D&lt;optimized out&gt;) at MagickCore/propert=
y.c:698</div><div class=3D"">#11 GetImageProperty (image=3D0x238bf00, prope=
rty=3D0x2361c50 "8BIM:1999,2998:#1", exception=3D0x23580a0) at MagickCore/p=
roperty.c:2201</div><div class=3D"">#12 0x0000000000416ceb in ClipImagePath=
 (image=3D0x238bf00, pathname=3D0xbb5a89 "#1", inside=3D&lt;optimized out&g=
t;, exception=3D0x23580a0) at MagickCore/image.c:723</div><div class=3D"">#=
13 0x0000000000416b66 in ClipImage (image=3D0x7f760dd5c010, exception=3D0x7=
65abe &lt;XDisplayImage+11038&gt;) at MagickCore/image.c:695</div><div clas=
s=3D"">#14 0x0000000000a40f5d in MogrifyImage (image_info=3D0x235e4a0, argc=
=3D&lt;optimized out&gt;, argv=3D0x2361858, image=3D0x7ffcf1b60098, excepti=
on=3D0x23580a0) at MagickWand/mogrify.c:1084</div><div class=3D"">#15 0x000=
0000000aae42e in MogrifyImages (image_info=3D0x235e4a0, post=3DMagickTrue, =
argc=3D2, argv=3D0x2361858, images=3D0x7ffcf1b60098, exception=3D0x23580a0)=
 at MagickWand/mogrify.c:8908</div></div><div class=3D""><br class=3D""></d=
iv><div class=3D"">Attached two PoC files:&nbsp;</div><div class=3D"">PoC1:=
 reads 0xff5f extra bytes from the memory&nbsp;</div><div class=3D"">PoC2: =
reads 0xb0ff5f bytes of the memory (it is likely that this PoC causes a cra=
sh because the memory segment isn't mapped or doesn't have the correct perm=
issions)</div><div class=3D""><br class=3D""></div><div class=3D"">The read=
 out-of-bound could lead to memory leak because the data read is then writt=
en into the output image using SetImageProperty which is called after the r=
ead</div><div class=3D""><br class=3D""></div><div class=3D"">The PoC has b=
een tested on&nbsp;</div><div class=3D"">version: ImageMagick 7.0.2-1 Q16 x=
86_64 2016-06-19&nbsp;<a href=3D"http://www.imagemagick.org/" target=3D"_bl=
ank" class=3D"">http://www.imagemagick.org</a></div><span class=3D"HOEnZb">=
<font color=3D"#888888" class=3D""><div class=3D""><div class=3D""><br clas=
s=3D""></div>--&nbsp;<br class=3D""><div data-smartmail=3D"gmail_signature"=
 class=3D""><div dir=3D"ltr" class=3D""><div class=3D"" style=3D"font-size:=
 small;">Regards<br class=3D"">Ibrahim M. El-Sayed</div><div class=3D"" sty=
le=3D"font-size: small;">Security Engineer</div><div class=3D"" style=3D"fo=
nt-size: small;">Website:&nbsp;<a href=3D"https://www.ibrahim-elsayed.com/"=
 target=3D"_blank" class=3D"">https://www.ibrahim-elsayed.com</a></div><div=
 class=3D"" style=3D"font-size: small;">@ibrahim_mosaad</div></div></div></=
div></font></span></div></blockquote></div><br class=3D""><br clear=3D"all"=
 class=3D""><div class=3D""><br class=3D""></div>--&nbsp;<br class=3D""><di=
v class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"=
ltr" class=3D""><div class=3D"" style=3D"font-size: small;">Regards<br clas=
s=3D"">Ibrahim M. El-Sayed</div><div class=3D"" style=3D"font-size: small;"=
>Security Engineer</div><div class=3D"" style=3D"font-size: small;">Website=
:&nbsp;<a href=3D"https://www.ibrahim-elsayed.com/" target=3D"_blank" class=
=3D"">https://www.ibrahim-elsayed.com</a></div><div class=3D"" style=3D"fon=
t-size: small;">@ibrahim_mosaad</div></div></div></div></div></blockquote><=
/div><div class=3D""><div class=3D""><div class=3D"gmail_extra"><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr" cl=
ass=3D""><div class=3D"" style=3D"font-size: small;"><br class=3D""></div><=
div class=3D"" style=3D"font-size: small;"><br class=3D""></div><div class=
=3D"" style=3D"font-size: small;"><br class=3D""></div><div class=3D"" styl=
e=3D"font-size: small;"><br class=3D""></div><div class=3D"" style=3D"font-=
size: small;"><br style=3D"font-size: 12px;" class=3D""><blockquote type=3D=
"cite" style=3D"font-size: 12px;" class=3D""><div class=3D"">Begin forwarde=
d message:</div><br class=3D"Apple-interchange-newline"><div style=3D"margi=
n: 0px;" class=3D""><span style=3D"font-family: -webkit-system-font, 'Helve=
tica Neue', Helvetica, sans-serif;" class=3D""><b class=3D"">From:&nbsp;</b=
></span><span style=3D"font-family: -webkit-system-font, 'Helvetica Neue', =
Helvetica, sans-serif;" class=3D""><a href=3D"mailto:vir.prudens.non.contra=
.ventum.mingit@imagemagick.org" class=3D"">vir.prudens.non.contra.ventum.mi=
ngit@imagemagick.org</a><br class=3D""></span></div><div style=3D"margin: 0=
px;" class=3D""><span style=3D"font-family: -webkit-system-font, 'Helvetica=
 Neue', Helvetica, sans-serif;" class=3D""><b class=3D"">Subject:&nbsp;</b>=
</span><span style=3D"font-family: -webkit-system-font, 'Helvetica Neue', H=
elvetica, sans-serif;" class=3D""><b class=3D"">Re: Read out-of-bound could=
 lead to memory leak</b><br class=3D""></span></div><div style=3D"margin: 0=
px;" class=3D""><span style=3D"font-family: -webkit-system-font, 'Helvetica=
 Neue', Helvetica, sans-serif;" class=3D""><b class=3D"">Date:&nbsp;</b></s=
pan><span style=3D"font-family: -webkit-system-font, 'Helvetica Neue', Helv=
etica, sans-serif;" class=3D"">July 25, 2016 at 1:56:01 AM GMT+1<br class=
=3D""></span></div><div style=3D"margin: 0px;" class=3D""><span style=3D"fo=
nt-family: -webkit-system-font, 'Helvetica Neue', Helvetica, sans-serif;" c=
lass=3D""><b class=3D"">To:&nbsp;</b></span><span style=3D"font-family: -we=
bkit-system-font, 'Helvetica Neue', Helvetica, sans-serif;" class=3D""><a h=
ref=3D"mailto:vir.prudens.non.contra.ventum.mingit@imagemagick.org" class=
=3D"">vir.prudens.non.contra.ventum.mingit@imagemagick.org</a>, <a href=3D"=
mailto:i.elsayed92@gmail.com" class=3D"">i.elsayed92@gmail.com</a><br class=
=3D""></span></div><br class=3D""><div class=3D"">Ibrahim el-sayed &lt;<a h=
ref=3D"mailto:i.elsayed92@gmail.com" class=3D"">i.elsayed92@gmail.com</a>&g=
t; wrote:<br class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""=
>Are you sure you run it the following way:<br class=3D"">magick convert -c=
lip PoC1 /dev/null<br class=3D""></blockquote><br class=3D"">Thanks for the=
 problem report. &nbsp;We can reproduce it and will have a patch to fix it =
in GIT master branch @ <a href=3D"https://github.com/ImageMagick/ImageMagic=
k" class=3D"">https://github.com/ImageMagick/ImageMagick</a> later today. &=
nbsp;The patch will be available in the beta releases of ImageMagick @ <a h=
ref=3D"http://www.imagemagick.org/download/beta/" class=3D"">http://www.ima=
gemagick.org/download/beta/</a> by sometime tomorrow.&nbsp;<br class=3D""><=
br class=3D"">The ImageMagick Development Team<br class=3D""></div></blockq=
uote><div class=3D""><div class=3D""><br class=3D""></div></div></div></div=
></div></div></div></div><div class=3D""><div class=3D""><br class=3D""></d=
iv></div></body></html>=

--Apple-Mail=_33316DCA-7105-44A6-8511-437CA5FB6A3D--

--Apple-Mail=_252BC396-4975-4831-948B-F3264868ED8E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJXmlPwAAoJEK/viYuAjew9fbUQAJm1yeKxm2DDkIKMkX0IGELF
loCi2acDokADYsskP77ycweSaMv6LAPjdrwod9AEmk5CC2lINONrcQNJfY0jjFeh
uIa2aM1/otHRxvl9zWNrQLRRGNhY2HaByEkkZjzFN13NpGbjk+xydSXFWWZiMWmg
Aid2EJ3Uywh5V5mASHzrLv9TYXjM+1s4bDeqeRud9N774GMeWzIJRuC33NI/Kex0
FFr8Xl55RIINXRTnZq+AEx+yNTkn7h7zsagFxbAO6Wz2XZgNXMXl9zQqhRfzc6IK
6qFbXCVVU+/gajfT3Jhdzzj3O1KxpTr5NAQylDEGbnDYvxlfJy974yl70Qf6FQFJ
klEOL2F2HOlhWvYIfNcg2NCECI0esHEB0JqennL73OFnxa2R2gxtnsIpuwn5Ujwd
0SJrL0ANpVbfOOtOtHBe9Vt07YfPyHf2jaLHJ3GARBpvXlqya6VGn8pfnVmE0Qpx
MfGpXEcXrOGqDh+4Kh8Wsq/wUFAS0G+BDvKMACIMk1U6RI7DnqvhaREcg+M8L4NJ
Ve5tjbpkAPHVSBf3+JbN9q7gEgSn0T1eM9mhbs7fVNiOIDjyJbfSCY96Vr+vEPBP
3M+QLRDl5SY5Ut781o8/dE4wx2Ly3BoAVypaR4Y9qIMOZQ7CYjgLCyYZ7j6oGkY9
IWe2uAnL5Df5rzpeKZXX
=emIl
-----END PGP SIGNATURE-----

--Apple-Mail=_252BC396-4975-4831-948B-F3264868ED8E--
