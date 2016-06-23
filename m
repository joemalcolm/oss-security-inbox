X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["37024" "Thursday" "23" "June" "2016" "01:47:21" "+0100" "Ibrahim el-sayed" "i.elsayed92@gmail.com" "<B08B9FA8-E745-4327-B7D5-7A67648D3F58@gmail.com>" "618" "[oss-security] Fwd: out-of-bounds read in MagickCore/property.c:1396 could lead to memory leak/ Integer overflow read to RCE" nil nil nil "6" "2016062300:47:21" "[oss-security] Fwd: out-of-bounds read in MagickCore/property.c:1396 could lead to memory leak/ Integer overflow read to RCE" (number mark "U       i.elsayed92@ Jun 23  618/37024 " thread-indent "\"[oss-security] Fwd: out-of-bounds read in MagickCore/property.c:1396 could lead to memory leak/ Integer overflow read to RCE\"\n") "<CAJvHH_TG3QBp+1pSn1KEkcVmeagb2Hn8gvuQZ4opj=X=DF0N7Q@mail.gmail.com>" ("<CAJvHH_TG3QBp+1pSn1KEkcVmeagb2Hn8gvuQZ4opj=X=DF0N7Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32293 invoked by uid 550); 23 Jun 2016 01:22:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7443 invoked from network); 23 Jun 2016 00:47:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:subject:from:date:cc:message-id:references:to;
        bh=beFI+VrwGUg1TPEaXsYE2Ru3SQfcVcGT2bJ03M62cYE=;
        b=mjx4APr0um7EOU8YTlOU4pYKFGRmJhNJKkXPIadzOYLA7M89kKLKmTvlH5Ixj3Ro4K
         R8Zguv40ahcmJW/JylVKG3HW771XAP9J7IZD2llYm5EbgfOXTRt1A0C/tuf2CZm+VtBn
         /nHO2tTnaFKtKSiU2KLBPSxcoKoKDtAGjITo55kynaeqH27fxMNZogVjQTIOkNpA4FHW
         v2yoqLeJAPz0MJr4ANqdO7xwtPWUyoPn9HNujJVFye9MTFXS69DWriciV7rWHmvSl9Bs
         VR7jfTmg47ZrnwHBwK15u8OQ1ffzMxrvpXCyYiKUocrvYWyv3xelXU0ouUsBjwZpipOu
         Qf8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:subject:from:date:cc:message-id
         :references:to;
        bh=beFI+VrwGUg1TPEaXsYE2Ru3SQfcVcGT2bJ03M62cYE=;
        b=e5rZymOQR5IiuRJAzOnGZsHTXDm1Cg08Jr3o4OCTdTVbiBdcGBJbn7dztJXNrRUQtl
         rK5sHGnYWtR9XEWW4047wTREMFsicftzvguStxSoaWFuasbFzuu9jHsA3tS3CtMboX/P
         VX0V9iJAtUqC6fGVJ+HstndzrenL+/ILJk8VcCtdoyMN43YxmHf9fP0m2yYMPEZgtLaX
         P+bnc8DcjcHiFTS9mnKS+HqsurSf8wZLcw6dZHKz26w6EVX2E71oFzrRHVx4labH+CME
         Rlt8h6RmHXWPSAhnHBGaf8BESFaeoTOPKzxZh19VA/aYJdioNPgximyKJPDpWrhD3tl+
         8MzA==
X-Gm-Message-State: ALyK8tIe/rj9QAZuTlNqEwQPN4ZHll66E4NhOOG9iFc15wN5cJ6ZsOQn1u2JdivWDvX5Bw==
X-Received: by 10.28.0.130 with SMTP id 124mr11022381wma.23.1466642843727;
        Wed, 22 Jun 2016 17:47:23 -0700 (PDT)
Content-Type: multipart/signed; boundary="Apple-Mail=_D07CFCB9-6F9B-41D2-9858-0CD03C86D92B"; protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Ibrahim el-sayed <i.elsayed92@gmail.com>
Date: Thu, 23 Jun 2016 01:47:21 +0100
Cc: cve-assign@mitre.org
Message-Id: <B08B9FA8-E745-4327-B7D5-7A67648D3F58@gmail.com>
References: <CAJvHH_TG3QBp+1pSn1KEkcVmeagb2Hn8gvuQZ4opj=X=DF0N7Q@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Fwd: out-of-bounds read in MagickCore/property.c:1396 could lead to memory leak/ Integer overflow read to RCE

--Apple-Mail=_D07CFCB9-6F9B-41D2-9858-0CD03C86D92B
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7DE2D45E-EDB5-41AA-9F83-2B06F79B3686"


--Apple-Mail=_7DE2D45E-EDB5-41AA-9F83-2B06F79B3686
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Mitre CVE assignment team,
I have submitted the following two bugs to ImageMagick. Both got acknowledg=
ed and fixed in the following patch
https://github.com/ImageMagick/ImageMagick/commit/d8ab7f046587f2e9f734b687b=
a7e6e10147c294b <https://github.com/ImageMagick/ImageMagick/commit/d8ab7f04=
6587f2e9f734b687ba7e6e10147c294b>
I would be so glad if you can issue me CVEs for them

Regards
Ibrahim



> Begin forwarded message:
>=20
> From: Ibrahim el-sayed <i.elsayed92@gmail.com>
> Subject: Integer overflow that lead to RCE
> Date: June 21, 2016 at 6:58:20 PM GMT+1
> To: security@imagemagick.org
>=20
> Hi ImageMagick security team,
> I was fuzzing imagemagick with AFL and I think I found an integer overflo=
w that might lead to remote code execution.
>=20
> The vulnerability exists in the following line
> https://github.com/ImageMagick/ImageMagick/blob/master/MagickCore/profile=
.c#L2025 <https://github.com/ImageMagick/ImageMagick/blob/master/MagickCore=
/profile.c#L2025>
>=20
> components=3D(ssize_t) ReadProfileLong(endian,q+4);   << I think componen=
t should be size_t
> number_bytes=3D(size_t) components*format_bytes[format];
> I think components variable is upgraded to integer in this line.
> component is stored in edx in the assembly and before the multplication t=
he following instructions are executed
>=20
> 0000000000475D3E movsxd  rax, edx ;edx contains components variable and i=
t is using movsx (move signed extended which I think the main cause of the =
vulnerability). if The value of components anything above 0xC0000000 the si=
gn extension will be 1 and rax will be 0xFFFFFFFFC0000000. The main problem=
 of this I think because ssize_t which covers the -1 value
> 0000000000475D41 movsxd  rcx, ds:SyncExifProfile_format_bytes[rcx*4]
> 0000000000475D49 imul    rcx, rax
> 0000000000475D4D cmp     rcx, rax ;This is unsigned comparison because of=
 jump below (jl)
> 0000000000475D50 jl      exit
>=20
> After the multiplication rcx contains number_bytes as (integer 64bit) and=
 not size_t
>=20
> https://github.com/ImageMagick/ImageMagick/blob/master/MagickCore/profile=
.c#L2028 <https://github.com/ImageMagick/ImageMagick/blob/master/MagickCore=
/profile.c#L2028>
> In the if condition, the PoC takes the else part.
>=20
> @ line https://github.com/ImageMagick/ImageMagick/blob/master/MagickCore/=
profile.c#L2036 <https://github.com/ImageMagick/ImageMagick/blob/master/Mag=
ickCore/profile.c#L2036>
>=20
> 2036: if ((size_t) (offset+number_bytes) > length)
> An integer oveflow occurs in this comparison because number_bytes is a ve=
ry large number like (0xFFFFFFFFFFFFFF87) and when we add offset to it whic=
h we control we can overflow and the result is < length so we pass this if =
condition.
>=20
> 2040: p=3D(unsigned char *) (exif+offset);
> At 2040 the offset value is the value we are controlling and can range be=
tween 0x7B-0x40000001 as illustrated in the PoC
>=20
> pointer p is used later in to write data to it.
> The PoC goes into the switch statement and then choose case 0x011b. And t=
hen it write 4 bytes on line
> 2052: (void) WriteProfileLong(endian,(size_t) (image->resolution.y+0.5),p=
);
> Needless to day we can control image->resolution.y
> Also if we took another path in the switch statement we can also control
> image->orientation or image->units which are the values written to the po=
inter we can control.
>=20
>=20
> You can find attached two Proof of Concept files.
> PoC1:
> This PoC will set number_bytes =3D 0xFFFFFF87  =3D=3D>> will be sign exte=
nded to 0xFFFFFFFFFFFFFFFF87 and offset =3D 0x7B.
> This PoC will basically write 4 null bytes into position exif+0x7B (offse=
t)
>=20
> PoC2:
> This PoC will set number_bytes =3D 0xC0000000 which will be sign extended=
 to 0xFFFFFFFFC0000000 and offset =3D 0x40000001
> This will write 4 null bytes in position exif+0x40000001 (offset).
>=20
> PoC2 will cause a seg-fault because usually this memory address (exif+0x4=
0000001) might not be mapped or doesn't have the correct permission to writ=
e to
>=20
>=20
> Regards
> Ibrahim M. El-Sayed
> Security Engineer
> Website: https://www.ibrahim-elsayed.com <https://www.ibrahim-elsayed.com=
/>
> @ibrahim_mosaad
>=20





> Begin forwarded message:
>=20
> From: Ibrahim el-sayed <i.elsayed92@gmail.com>
> Subject: out-of-bounds read in MagickCore/property.c:1396 could lead to m=
emory leak
> Date: June 21, 2016 at 3:04:23 PM GMT+1
> To: security@imagemagick.org
>=20
> Hi ImageMagick Security Team,
>=20
> I think I have found a security bug. The bug was found while fuzzing Imag=
eMagick with afl-fuzz
>=20
> command: magick identify PoC.jpg
> The vulnerability could lead to information leakage because the pointer i=
s used later to read data from the memory
>=20
>=20
> MagickCore/property.c:1401 format=3D(size_t) ReadPropertyUnsignedShort(en=
dian,q+2);
> MagickCore/property.c:1404 components=3D(ssize_t) ReadPropertySignedLong(=
endian,q+4);
>=20
> The code basically reads the number of entries inside directory object in=
 an image
> MagickCore/property.c:1382 number_entries=3D(size_t) ReadPropertyUnsigned=
Short(endian,directory);
>=20
> By manipulating bytes at position 0x76 and 0x77 in the PoC image, we can =
control number_entries variable which is used to in the loop. By controllin=
g number_entries we can partially control q
> MagickCore/property.c:1396 q=3D(unsigned char *) (directory+(12*entry)+2);
>=20
> In the previous line we control the value of "entry". As a result, we can=
 partially control q which can be used later to read arbitrary data from th=
e process of ImageMagick.
>=20
> PoC image: https://www.ibrahim-elsayed.com/uploads/PoC_imagemagick_1.jpg =
<https://www.ibrahim-elsayed.com/uploads/PoC_imagemagick_1.jpg>
> [backtrace]
> storm@storm ~/f/f/f/crashes> gdb -q magick core.magick.14585
> Reading symbols from magick...done.
> [New LWP 14585]
> [Thread debugging using libthread_db enabled]
> Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
> Core was generated by `magick identify PoC.jpg'.
> Program terminated with signal SIGABRT, Aborted.
> #0 0x00007f110bac6c37 in __GI_raise (sig=3Dsig@entry=3D6) at ../nptl/sysd=
eps/unix/sysv/linux/raise.c:56
> 56	../nptl/sysdeps/unix/sysv/linux/raise.c: No such file or directory.
> (gdb) bt
> #0 0x00007f110bac6c37 in __GI_raise (sig=3Dsig@entry=3D6) at ../nptl/sysd=
eps/unix/sysv/linux/raise.c:56
> #1 0x00007f110baca028 in __GI_abort () at abort.c:89
> #2 0x0000000000421b5b in MagickSignalHandler (signal_number=3D6) at Magic=
kCore/magick.c:1310
> #3 <signal handler called>
> #4 0x00007f110bac6c37 in __GI_raise (sig=3Dsig@entry=3D6) at ../nptl/sysd=
eps/unix/sysv/linux/raise.c:56
> #5 0x00007f110baca028 in __GI_abort () at abort.c:89
> #6 0x0000000000421b5b in MagickSignalHandler (signal_number=3D11) at Magi=
ckCore/magick.c:1310
> #7 <signal handler called>
> #8 ReadPropertySignedLong (buffer=3D0x293c000 <error: Cannot access memor=
y at address 0x293c000>,
>     endian=3DLSBEndian) at MagickCore/property.c:745
> #9 GetEXIFProperty (image=3Dimage@entry=3D0x291aff0, property=3Dproperty@=
entry=3D0x7ffe5d180910 "exif:*",
>     exception=3Dexception@entry=3D0x28e7f10) at MagickCore/property.c:1404
> #10 0x000000000043e4d8 in GetImageProperty (image=3Dimage@entry=3D0x291af=
f0,
>     property=3Dproperty@entry=3D0x7ffe5d180910 "exif:*", exception=3Dexce=
ption@entry=3D0x28e7f10)
>     at MagickCore/property.c:2197
> #11 0x0000000000441d03 in SetImageProfileInternal (image=3Dimage@entry=3D=
0x291aff0,
>     name=3Dname@entry=3D0x7ffe5d181990 "exif", profile=3Dprofile@entry=3D=
0x28ffe30,
>     recursive=3Drecursive@entry=3DMagickFalse, exception=3Dexception@entr=
y=3D0x28e7f10) at MagickCore/profile.c:1671
> #12 0x000000000044297a in SetImageProfile (image=3Dimage@entry=3D0x291aff=
0, name=3Dname@entry=3D0x7ffe5d181990 "exif",
>     profile=3Dprofile@entry=3D0x28ffe30, exception=3Dexception@entry=3D0x=
28e7f10) at MagickCore/profile.c:1678
> #13 0x000000000053c922 in ReadProfile (jpeg_info=3D<optimised out>) at co=
ders/jpeg.c:738
> #14 0x00007f1110464975 in ?? () from /usr/lib/x86_64-linux-gnu/libjpeg.so=
.8
> #15 0x00007f11104629ca in ?? () from /usr/lib/x86_64-linux-gnu/libjpeg.so=
.8
> #16 0x00007f111045cf57 in jpeg_consume_input () from /usr/lib/x86_64-linu=
x-gnu/libjpeg.so.8
> #17 0x00007f111045d223 in jpeg_read_header () from /usr/lib/x86_64-linux-=
gnu/libjpeg.so.8
> #18 0x000000000053d669 in ReadJPEGImage (image_info=3D0x28fa130, exceptio=
n=3D0x28e7f10) at coders/jpeg.c:1101
> #19 0x00000000005a06ee in ReadImage (image_info=3Dimage_info@entry=3D0x28=
f4b90,
>     exception=3Dexception@entry=3D0x28e7f10) at MagickCore/constitute.c:5=
54
> #20 0x0000000000677326 in ReadStream (image_info=3Dimage_info@entry=3D0x2=
8f1910,
>     stream=3Dstream@entry=3D0x59ffb0 <PingStream>, exception=3Dexception@=
entry=3D0x28e7f10) at MagickCore/stream.c:1012
> #21 0x00000000005a0261 in PingImage (image_info=3Dimage_info@entry=3D0x28=
ee4f0,
> ---Type <return> to continue, or q <return> to quit---
>     exception=3Dexception@entry=3D0x28e7f10) at MagickCore/constitute.c:2=
26
> #22 0x00000000005a04ab in PingImages (image_info=3Dimage_info@entry=3D0x2=
8ee4f0,
>     filename=3Dfilename@entry=3D0x28e7f50 "PoC.jpg", exception=3Dexceptio=
n@entry=3D0x28e7f10)
>     at MagickCore/constitute.c:326
> #23 0x00000000006f2741 in IdentifyImageCommand (image_info=3D0x28eb2c0, i=
mage_info@entry=3D0x28e8090,
>     argc=3Dargc@entry=3D2, argv=3D0x28e6490, argv@entry=3D0x7ffe5d18e4b0,=
 metadata=3Dmetadata@entry=3D0x7ffe5d18c150,
>     exception=3Dexception@entry=3D0x28e7f10) at MagickWand/identify.c:319
> #24 0x000000000071a274 in MagickCommandGenesis (image_info=3Dimage_info@e=
ntry=3D0x28e8090,
>     command=3Dcommand@entry=3D0x6f2180 <IdentifyImageCommand>, argc=3D2, =
argv=3Dargv@entry=3D0x7ffe5d18e4b0,
>     metadata=3D0x7ffe5d18d208, exception=3Dexception@entry=3D0x28e7f10) a=
t MagickWand/mogrify.c:183
> #25 0x0000000000411f11 in MagickMain (argc=3D2, argv=3D0x7ffe5d18e4b0) at=
 utilities/magick.c:250
> #26 0x00007f110bab1f45 in __libc_start_main (main=3D0x40ec10 <main>, argc=
=3D3, argv=3D0x7ffe5d18e4a8,
>     init=3D<optimised out>, fini=3D<optimised out>, rtld_fini=3D<optimise=
d out>, stack_end=3D0x7ffe5d18e498)
>     at libc-start.c:287
> #27 0x0000000000411af5 in _start ()
>=20


--Apple-Mail=_7DE2D45E-EDB5-41AA-9F83-2B06F79B3686
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;" class=3D"">Hi Mitre CVE as=
signment team,<div class=3D"">I have submitted the following two bugs to Im=
ageMagick. Both got acknowledged and fixed in the following patch</div><div=
 class=3D""><a href=3D"https://github.com/ImageMagick/ImageMagick/commit/d8=
ab7f046587f2e9f734b687ba7e6e10147c294b" class=3D"">https://github.com/Image=
Magick/ImageMagick/commit/d8ab7f046587f2e9f734b687ba7e6e10147c294b</a></div=
><div class=3D"">I would be so glad if you can issue me CVEs for them</div>=
<div class=3D""><br class=3D""></div><div class=3D"">Regards</div><div clas=
s=3D"">Ibrahim&nbsp;</div><div class=3D""><br class=3D""></div><div class=
=3D""><br class=3D""></div><div class=3D""><br class=3D""><blockquote type=
=3D"cite" class=3D""><div class=3D"">Begin forwarded message:</div><br clas=
s=3D"Apple-interchange-newline"><div style=3D"margin: 0px;" class=3D""><spa=
n style=3D"font-family: -webkit-system-font, 'Helvetica Neue', Helvetica, s=
ans-serif;" class=3D""><b class=3D"">From:&nbsp;</b></span><span style=3D"f=
ont-family: -webkit-system-font, 'Helvetica Neue', Helvetica, sans-serif;" =
class=3D"">Ibrahim el-sayed &lt;<a href=3D"mailto:i.elsayed92@gmail.com" cl=
ass=3D"">i.elsayed92@gmail.com</a>&gt;<br class=3D""></span></div><div styl=
e=3D"margin: 0px;" class=3D""><span style=3D"font-family: -webkit-system-fo=
nt, 'Helvetica Neue', Helvetica, sans-serif;" class=3D""><b class=3D"">Subj=
ect:&nbsp;</b></span><span style=3D"font-family: -webkit-system-font, 'Helv=
etica Neue', Helvetica, sans-serif;" class=3D""><b class=3D"">Integer overf=
low that lead to RCE</b><br class=3D""></span></div><div style=3D"margin: 0=
px;" class=3D""><span style=3D"font-family: -webkit-system-font, 'Helvetica=
 Neue', Helvetica, sans-serif;" class=3D""><b class=3D"">Date:&nbsp;</b></s=
pan><span style=3D"font-family: -webkit-system-font, 'Helvetica Neue', Helv=
etica, sans-serif;" class=3D"">June 21, 2016 at 6:58:20 PM GMT+1<br class=
=3D""></span></div><div style=3D"margin: 0px;" class=3D""><span style=3D"fo=
nt-family: -webkit-system-font, 'Helvetica Neue', Helvetica, sans-serif;" c=
lass=3D""><b class=3D"">To:&nbsp;</b></span><span style=3D"font-family: -we=
bkit-system-font, 'Helvetica Neue', Helvetica, sans-serif;" class=3D""><a h=
ref=3D"mailto:security@imagemagick.org" class=3D"">security@imagemagick.org=
</a><br class=3D""></span></div><br class=3D""><div class=3D""><div dir=3D"=
ltr" class=3D"">Hi ImageMagick security team,<div class=3D"">I was fuzzing =
imagemagick with AFL and I think I found an integer overflow that might lea=
d to remote code execution.&nbsp;</div><div class=3D""><br class=3D""></div=
><div class=3D"">The vulnerability exists in the following line&nbsp;</div>=
<div class=3D""><a href=3D"https://github.com/ImageMagick/ImageMagick/blob/=
master/MagickCore/profile.c#L2025" class=3D"">https://github.com/ImageMagic=
k/ImageMagick/blob/master/MagickCore/profile.c#L2025</a><br class=3D""></di=
v><div class=3D""><br class=3D""></div><div class=3D""><span class=3D"" sty=
le=3D"color: rgb(51, 51, 51); font-family: Consolas, 'Liberation Mono', Men=
lo, Courier, monospace; line-height: 16.8px; white-space: pre; background-c=
olor: rgb(248, 238, 199);">components=3D(</span><span class=3D"" style=3D"c=
olor: rgb(0, 134, 179); font-family: Consolas, 'Liberation Mono', Menlo, Co=
urier, monospace; line-height: 16.8px; white-space: pre;">ssize_t</span><sp=
an class=3D"" style=3D"color: rgb(51, 51, 51); font-family: Consolas, 'Libe=
ration Mono', Menlo, Courier, monospace; line-height: 16.8px; white-space: =
pre; background-color: rgb(248, 238, 199);">) </span><span class=3D"" style=
=3D"color: rgb(0, 134, 179); font-family: Consolas, 'Liberation Mono', Menl=
o, Courier, monospace; line-height: 16.8px; white-space: pre;">ReadProfileL=
ong</span><span class=3D"" style=3D"color: rgb(51, 51, 51); font-family: Co=
nsolas, 'Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; =
white-space: pre; background-color: rgb(248, 238, 199);">(endian,q+</span><=
span class=3D"" style=3D"color: rgb(0, 134, 179); font-family: Consolas, 'L=
iberation Mono', Menlo, Courier, monospace; line-height: 16.8px; white-spac=
e: pre;">4</span><span class=3D"" style=3D"color: rgb(51, 51, 51); font-fam=
ily: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line-height: 1=
6.8px; white-space: pre; background-color: rgb(248, 238, 199);">);   &lt;&l=
t; I think component should be size_t</span><br class=3D""></div><div class=
=3D""><span class=3D"" style=3D"color: rgb(51, 51, 51); font-family: Consol=
as, 'Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; whit=
e-space: pre; background-color: rgb(248, 238, 199);">number_bytes=3D(</span=
><span class=3D"" style=3D"color: rgb(0, 134, 179); font-family: Consolas, =
'Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; white-sp=
ace: pre;">size_t</span><span class=3D"" style=3D"color: rgb(51, 51, 51); f=
ont-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line-he=
ight: 16.8px; white-space: pre; background-color: rgb(248, 238, 199);">) co=
mponents*format_bytes[format];</span></div><div class=3D"">I think componen=
ts variable is upgraded to integer in this line.</div><div class=3D"">compo=
nent is stored in edx in the assembly and before the multplication the foll=
owing instructions are executed</div><div class=3D""><br class=3D""></div><=
div class=3D"">0000000000475D3E movsxd &nbsp;rax, edx ;edx contains compone=
nts variable and it is using movsx (move signed extended which I think the =
main cause of the vulnerability). if The value of components anything above=
 0xC0000000 the sign extension will be 1 and rax will be 0xFFFFFFFFC0000000=
. The main problem of this I think because ssize_t which covers the -1 valu=
e&nbsp;</div><div class=3D"">0000000000475D41 movsxd &nbsp;rcx, ds:SyncExif=
Profile_format_bytes[rcx*4]&nbsp;<br class=3D""></div><div class=3D"">00000=
00000475D49 imul &nbsp; &nbsp;rcx, rax<br class=3D""></div><div class=3D"">=
0000000000475D4D cmp &nbsp; &nbsp; rcx, rax ;This is unsigned comparison be=
cause of jump below (jl)&nbsp;</div><div class=3D"">0000000000475D50 jl &nb=
sp; &nbsp; &nbsp;exit</div><div class=3D"">&nbsp;&nbsp; &nbsp;<br class=3D"=
"></div><div class=3D"">After the multiplication rcx contains number_bytes =
as (integer 64bit) and not size_t</div><div class=3D""><br class=3D""></div=
><div class=3D""><a href=3D"https://github.com/ImageMagick/ImageMagick/blob=
/master/MagickCore/profile.c#L2028" class=3D"">https://github.com/ImageMagi=
ck/ImageMagick/blob/master/MagickCore/profile.c#L2028</a><br class=3D""></d=
iv><div class=3D"">In the if condition, the PoC takes the else part.&nbsp;<=
/div><div class=3D""><br class=3D""></div><div class=3D"">@ line&nbsp;<a hr=
ef=3D"https://github.com/ImageMagick/ImageMagick/blob/master/MagickCore/pro=
file.c#L2036" class=3D"">https://github.com/ImageMagick/ImageMagick/blob/ma=
ster/MagickCore/profile.c#L2036</a></div><div class=3D""><br class=3D""></d=
iv><div class=3D""><span class=3D"" style=3D"color: rgb(167, 29, 93); font-=
family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line-height=
: 16.8px; white-space: pre;">2036: if</span><span class=3D"" style=3D"color=
: rgb(51, 51, 51); font-family: Consolas, 'Liberation Mono', Menlo, Courier=
, monospace; line-height: 16.8px; white-space: pre; background-color: rgb(2=
48, 238, 199);"> ((</span><span class=3D"" style=3D"color: rgb(0, 134, 179)=
; font-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line=
-height: 16.8px; white-space: pre;">size_t</span><span class=3D"" style=3D"=
color: rgb(51, 51, 51); font-family: Consolas, 'Liberation Mono', Menlo, Co=
urier, monospace; line-height: 16.8px; white-space: pre; background-color: =
rgb(248, 238, 199);">) (offset+number_bytes) &gt; length)</span></div><div =
class=3D"">An integer oveflow occurs in this comparison because number_byte=
s is a very large number like (0xFFFFFFFFFFFFFF87) and when we add offset t=
o it which we control we can overflow and the result is &lt; length so we p=
ass this if condition.&nbsp;<br class=3D""><span class=3D"" style=3D"color:=
 rgb(51, 51, 51); font-family: Consolas, 'Liberation Mono', Menlo, Courier,=
 monospace; line-height: 16.8px; white-space: pre; background-color: rgb(24=
8, 238, 199);">
</span><span class=3D"" style=3D"color: rgb(51, 51, 51); font-family: Conso=
las, 'Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; whi=
te-space: pre; background-color: rgb(248, 238, 199);">2040: p=3D(</span><sp=
an class=3D"" style=3D"color: rgb(167, 29, 93); font-family: Consolas, 'Lib=
eration Mono', Menlo, Courier, monospace; line-height: 16.8px; white-space:=
 pre;">unsigned</span><span class=3D"" style=3D"color: rgb(51, 51, 51); fon=
t-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line-heig=
ht: 16.8px; white-space: pre; background-color: rgb(248, 238, 199);"> </spa=
n><span class=3D"" style=3D"color: rgb(167, 29, 93); font-family: Consolas,=
 'Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; white-s=
pace: pre;">char</span><span class=3D"" style=3D"color: rgb(51, 51, 51); fo=
nt-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line-hei=
ght: 16.8px; white-space: pre; background-color: rgb(248, 238, 199);"> *) (=
exif+offset);</span><span class=3D"" style=3D"color: rgb(51, 51, 51); font-=
family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line-height=
: 16.8px; white-space: pre; background-color: rgb(248, 238, 199);"><br clas=
s=3D""></span></div><div class=3D"">At 2040 the offset value is the value w=
e are controlling and can range between 0x7B-0x40000001 as illustrated in t=
he PoC<span class=3D"" style=3D"color: rgb(51, 51, 51); font-family: Consol=
as, 'Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; whit=
e-space: pre; background-color: rgb(248, 238, 199);"><br class=3D""></span>=
</div><div class=3D""><br class=3D""></div><div class=3D"">pointer p is use=
d later in to write data to it.&nbsp;</div><div class=3D"">The PoC goes int=
o the switch statement and then choose case 0x011b. And then it write 4 byt=
es on line</div><div class=3D""><span class=3D"" style=3D"color: rgb(51, 51=
, 51); font-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace;=
 line-height: 16.8px; white-space: pre;">2052: (</span><span class=3D"" sty=
le=3D"color: rgb(167, 29, 93); font-family: Consolas, 'Liberation Mono', Me=
nlo, Courier, monospace; line-height: 16.8px; white-space: pre;">void</span=
><span class=3D"" style=3D"color: rgb(51, 51, 51); font-family: Consolas, '=
Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; white-spa=
ce: pre;">) </span><span class=3D"" style=3D"color: rgb(0, 134, 179); font-=
family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line-height=
: 16.8px; white-space: pre;">WriteProfileLong</span><span class=3D"" style=
=3D"color: rgb(51, 51, 51); font-family: Consolas, 'Liberation Mono', Menlo=
, Courier, monospace; line-height: 16.8px; white-space: pre;">(endian,(</sp=
an><span class=3D"" style=3D"color: rgb(0, 134, 179); font-family: Consolas=
, 'Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; white-=
space: pre;">size_t</span><span class=3D"" style=3D"color: rgb(51, 51, 51);=
 font-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line-=
height: 16.8px; white-space: pre;">) (image-&gt;resolution.</span><span cla=
ss=3D"" style=3D"color: rgb(51, 51, 51); font-family: Consolas, 'Liberation=
 Mono', Menlo, Courier, monospace; line-height: 16.8px; white-space: pre;">=
y</span><span class=3D"" style=3D"color: rgb(51, 51, 51); font-family: Cons=
olas, 'Liberation Mono', Menlo, Courier, monospace; line-height: 16.8px; wh=
ite-space: pre;">+</span><span class=3D"" style=3D"color: rgb(0, 134, 179);=
 font-family: Consolas, 'Liberation Mono', Menlo, Courier, monospace; line-=
height: 16.8px; white-space: pre;">0.5</span><span class=3D"" style=3D"colo=
r: rgb(51, 51, 51); font-family: Consolas, 'Liberation Mono', Menlo, Courie=
r, monospace; line-height: 16.8px; white-space: pre;">),p);</span><br class=
=3D""></div><div class=3D"">Needless to day we can control image-&gt;resolu=
tion.y<br class=3D""></div><div class=3D"">Also if we took another path in =
the switch statement we can also control&nbsp;</div><div class=3D"">image-&=
gt;orientation or image-&gt;units which are the values written to the point=
er we can control.</div><div class=3D""><br class=3D""></div><div class=3D"=
"><br class=3D""></div><div class=3D"">You can find attached two Proof of C=
oncept files.&nbsp;</div><div class=3D"">PoC1:<br class=3D"">This PoC will =
set number_bytes =3D 0xFFFFFF87 &nbsp;=3D=3D&gt;&gt; will be sign extended =
to 0xFFFFFFFFFFFFFFFF87 and offset =3D 0x7B.<br class=3D"">This PoC will ba=
sically write 4 null bytes into position exif+0x7B (offset)<br class=3D""><=
br class=3D"">PoC2:&nbsp;</div><div class=3D"">This PoC will set number_byt=
es =3D 0xC0000000 which will be sign extended to 0xFFFFFFFFC0000000 and off=
set =3D 0x40000001<br class=3D"">This will write 4 null bytes in position e=
xif+0x40000001 (offset).&nbsp;<br class=3D""><br class=3D"">PoC2 will cause=
 a seg-fault because usually this memory address (exif+0x40000001) might no=
t be mapped or doesn't have the correct permission to write to</div><div cl=
ass=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div cla=
ss=3D"">Regards<br class=3D"">Ibrahim M. El-Sayed</div><div class=3D"">Secu=
rity Engineer</div><div class=3D"">Website:&nbsp;<a href=3D"https://www.ibr=
ahim-elsayed.com/" class=3D"">https://www.ibrahim-elsayed.com</a></div><div=
 class=3D"">@ibrahim_mosaad</div></div><br class=3D""></div></blockquote></=
div><div class=3D""><div class=3D""><br class=3D""></div></div><div class=
=3D""><br class=3D""></div><div class=3D""><br class=3D""><div><br class=3D=
""><blockquote type=3D"cite" class=3D""><div class=3D"">Begin forwarded mes=
sage:</div><br class=3D"Apple-interchange-newline"><div style=3D"margin-top=
: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;" class=3D""=
><span style=3D"font-family: -webkit-system-font, Helvetica Neue, Helvetica=
, sans-serif; color:rgba(0, 0, 0, 1.0);" class=3D""><b class=3D"">From: </b=
></span><span style=3D"font-family: -webkit-system-font, Helvetica Neue, He=
lvetica, sans-serif;" class=3D"">Ibrahim el-sayed &lt;<a href=3D"mailto:i.e=
lsayed92@gmail.com" class=3D"">i.elsayed92@gmail.com</a>&gt;<br class=3D"">=
</span></div><div style=3D"margin-top: 0px; margin-right: 0px; margin-botto=
m: 0px; margin-left: 0px;" class=3D""><span style=3D"font-family: -webkit-s=
ystem-font, Helvetica Neue, Helvetica, sans-serif; color:rgba(0, 0, 0, 1.0)=
;" class=3D""><b class=3D"">Subject: </b></span><span style=3D"font-family:=
 -webkit-system-font, Helvetica Neue, Helvetica, sans-serif;" class=3D""><b=
 class=3D"">out-of-bounds read in MagickCore/property.c:1396 could lead to =
memory leak</b><br class=3D""></span></div><div style=3D"margin-top: 0px; m=
argin-right: 0px; margin-bottom: 0px; margin-left: 0px;" class=3D""><span s=
tyle=3D"font-family: -webkit-system-font, Helvetica Neue, Helvetica, sans-s=
erif; color:rgba(0, 0, 0, 1.0);" class=3D""><b class=3D"">Date: </b></span>=
<span style=3D"font-family: -webkit-system-font, Helvetica Neue, Helvetica,=
 sans-serif;" class=3D"">June 21, 2016 at 3:04:23 PM GMT+1<br class=3D""></=
span></div><div style=3D"margin-top: 0px; margin-right: 0px; margin-bottom:=
 0px; margin-left: 0px;" class=3D""><span style=3D"font-family: -webkit-sys=
tem-font, Helvetica Neue, Helvetica, sans-serif; color:rgba(0, 0, 0, 1.0);"=
 class=3D""><b class=3D"">To: </b></span><span style=3D"font-family: -webki=
t-system-font, Helvetica Neue, Helvetica, sans-serif;" class=3D""><a href=
=3D"mailto:security@imagemagick.org" class=3D"">security@imagemagick.org</a=
><br class=3D""></span></div><br class=3D""><div class=3D""><div dir=3D"ltr=
" class=3D""><p style=3D"margin:0px 0px 1.2em;padding:0px;width:auto;max-wi=
dth:45em;color:rgb(51,51,51);font-family:monospace;font-size:12px;line-heig=
ht:18px" class=3D"">Hi ImageMagick Security Team,</p><p style=3D"margin:0px=
 0px 1.2em;padding:0px;width:auto;max-width:45em;color:rgb(51,51,51);font-f=
amily:monospace;font-size:12px;line-height:18px" class=3D"">I think I have =
found a security bug. The bug was found while fuzzing ImageMagick with afl-=
fuzz<br class=3D""></p><p style=3D"margin:0px 0px 1.2em;padding:0px;width:a=
uto;max-width:45em;color:rgb(51,51,51);font-family:monospace;font-size:12px=
;line-height:18px" class=3D"">command: magick identify PoC.jpg<br class=3D"=
">The vulnerability could lead to information leakage because the pointer i=
s used later to read data from the memory</p><p style=3D"margin:0px 0px 1.2=
em;padding:0px;width:auto;max-width:45em;color:rgb(51,51,51);font-family:mo=
nospace;font-size:12px;line-height:18px" class=3D""><br class=3D"">MagickCo=
re/property.c:1401 format=3D(size_t) ReadPropertyUnsignedShort(endian,q+2);=
<br class=3D"">MagickCore/property.c:1404 components=3D(ssize_t) ReadProper=
tySignedLong(endian,q+4);</p><p style=3D"margin:0px 0px 1.2em;padding:0px;w=
idth:auto;max-width:45em;color:rgb(51,51,51);font-family:monospace;font-siz=
e:12px;line-height:18px" class=3D"">The code basically reads the number of =
entries inside directory object in an image<br class=3D"">MagickCore/proper=
ty.c:1382 number_entries=3D(size_t) ReadPropertyUnsignedShort(endian,direct=
ory);</p><p style=3D"margin:0px 0px 1.2em;padding:0px;width:auto;max-width:=
45em;color:rgb(51,51,51);font-family:monospace;font-size:12px;line-height:1=
8px" class=3D"">By manipulating bytes at position 0x76 and 0x77 in the PoC =
image, we can control number_entries variable which is used to in the loop.=
 By controlling number_entries we can partially control q<br class=3D"">Mag=
ickCore/property.c:1396 q=3D(unsigned char *) (directory+(12*entry)+2);</p>=
<p style=3D"margin:0px 0px 1.2em;padding:0px;width:auto;max-width:45em;colo=
r:rgb(51,51,51);font-family:monospace;font-size:12px;line-height:18px" clas=
s=3D"">In the previous line we control the value of "entry". As a result, w=
e can partially control q which can be used later to read arbitrary data fr=
om the process of ImageMagick.</p><p style=3D"margin:0px 0px 1.2em;padding:=
0px;width:auto;max-width:45em;color:rgb(51,51,51);font-family:monospace;fon=
t-size:12px;line-height:18px" class=3D"">PoC image:&nbsp;<a rel=3D"nofollow=
" href=3D"https://www.ibrahim-elsayed.com/uploads/PoC_imagemagick_1.jpg" st=
yle=3D"color:rgb(0,51,170);text-decoration:none" class=3D"">https://www.ibr=
ahim-elsayed.com/uploads/PoC_imagemagick_1.jpg</a></p><p style=3D"margin:0p=
x 0px 1.2em;padding:0px;width:auto;max-width:45em;color:rgb(51,51,51);font-=
family:monospace;font-size:12px;line-height:18px" class=3D"">[backtrace]<br=
 class=3D"">storm@storm ~/f/f/f/crashes&gt; gdb -q magick core.magick.14585=
<br class=3D"">Reading symbols from magick...done.<br class=3D"">[New LWP 1=
4585]<br class=3D"">[Thread debugging using libthread_db enabled]<br class=
=3D"">Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.s=
o.1".<br class=3D"">Core was generated by `magick identify PoC.jpg'.<br cla=
ss=3D"">Program terminated with signal SIGABRT, Aborted.<br class=3D"">#0 0=
x00007f110bac6c37 in __GI_raise (sig=3Dsig@entry=3D6) at ../nptl/sysdeps/un=
ix/sysv/linux/raise.c:56<br class=3D"">56	../nptl/sysdeps/unix/sysv/linux/r=
aise.c: No such file or directory.<br class=3D"">(gdb) bt<br class=3D"">#0 =
0x00007f110bac6c37 in __GI_raise (sig=3Dsig@entry=3D6) at ../nptl/sysdeps/u=
nix/sysv/linux/raise.c:56<br class=3D"">#1 0x00007f110baca028 in __GI_abort=
 () at abort.c:89<br class=3D"">#2 0x0000000000421b5b in MagickSignalHandle=
r (signal_number=3D6) at MagickCore/magick.c:1310<br class=3D"">#3 &lt;sign=
al handler called&gt;<br class=3D"">#4 0x00007f110bac6c37 in __GI_raise (si=
g=3Dsig@entry=3D6) at ../nptl/sysdeps/unix/sysv/linux/raise.c:56<br class=
=3D"">#5 0x00007f110baca028 in __GI_abort () at abort.c:89<br class=3D"">#6=
 0x0000000000421b5b in MagickSignalHandler (signal_number=3D11) at MagickCo=
re/magick.c:1310<br class=3D"">#7 &lt;signal handler called&gt;<br class=3D=
"">#8 ReadPropertySignedLong (buffer=3D0x293c000 &lt;error: Cannot access m=
emory at address 0x293c000&gt;,<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;endia=
n=3DLSBEndian) at MagickCore/property.c:745<br class=3D"">#9 GetEXIFPropert=
y (image=3Dimage@entry=3D0x291aff0, property=3Dproperty@entry=3D0x7ffe5d180=
910 "exif:*",<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;exception=3Dexception@e=
ntry=3D0x28e7f10) at MagickCore/property.c:1404<br class=3D"">#10 0x0000000=
00043e4d8 in GetImageProperty (image=3Dimage@entry=3D0x291aff0,<br class=3D=
"">&nbsp;&nbsp;&nbsp;&nbsp;property=3Dproperty@entry=3D0x7ffe5d180910 "exif=
:*", exception=3Dexception@entry=3D0x28e7f10)<br class=3D"">&nbsp;&nbsp;&nb=
sp;&nbsp;at MagickCore/property.c:2197<br class=3D"">#11 0x0000000000441d03=
 in SetImageProfileInternal (image=3Dimage@entry=3D0x291aff0,<br class=3D""=
>&nbsp;&nbsp;&nbsp;&nbsp;name=3Dname@entry=3D0x7ffe5d181990 "exif", profile=
=3Dprofile@entry=3D0x28ffe30,<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;recursi=
ve=3Drecursive@entry=3DMagickFalse, exception=3Dexception@entry=3D0x28e7f10=
) at MagickCore/profile.c:1671<br class=3D"">#12 0x000000000044297a in SetI=
mageProfile (image=3Dimage@entry=3D0x291aff0, name=3Dname@entry=3D0x7ffe5d1=
81990 "exif",<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;profile=3Dprofile@entry=
=3D0x28ffe30, exception=3Dexception@entry=3D0x28e7f10) at MagickCore/profil=
e.c:1678<br class=3D"">#13 0x000000000053c922 in ReadProfile (jpeg_info=3D&=
lt;optimised out&gt;) at coders/jpeg.c:738<br class=3D"">#14 0x00007f111046=
4975 in ?? () from /usr/lib/x86_64-linux-gnu/libjpeg.so.8<br class=3D"">#15=
 0x00007f11104629ca in ?? () from /usr/lib/x86_64-linux-gnu/libjpeg.so.8<br=
 class=3D"">#16 0x00007f111045cf57 in jpeg_consume_input () from /usr/lib/x=
86_64-linux-gnu/libjpeg.so.8<br class=3D"">#17 0x00007f111045d223 in jpeg_r=
ead_header () from /usr/lib/x86_64-linux-gnu/libjpeg.so.8<br class=3D"">#18=
 0x000000000053d669 in ReadJPEGImage (image_info=3D0x28fa130, exception=3D0=
x28e7f10) at coders/jpeg.c:1101<br class=3D"">#19 0x00000000005a06ee in Rea=
dImage (image_info=3Dimage_info@entry=3D0x28f4b90,<br class=3D"">&nbsp;&nbs=
p;&nbsp;&nbsp;exception=3Dexception@entry=3D0x28e7f10) at MagickCore/consti=
tute.c:554<br class=3D"">#20 0x0000000000677326 in ReadStream (image_info=
=3Dimage_info@entry=3D0x28f1910,<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;stre=
am=3Dstream@entry=3D0x59ffb0 &lt;PingStream&gt;, exception=3Dexception@entr=
y=3D0x28e7f10) at MagickCore/stream.c:1012<br class=3D"">#21 0x00000000005a=
0261 in PingImage (image_info=3Dimage_info@entry=3D0x28ee4f0,<br class=3D""=
>---Type &lt;return&gt; to continue, or q &lt;return&gt; to quit---<br clas=
s=3D"">&nbsp;&nbsp;&nbsp;&nbsp;exception=3Dexception@entry=3D0x28e7f10) at =
MagickCore/constitute.c:226<br class=3D"">#22 0x00000000005a04ab in PingIma=
ges (image_info=3Dimage_info@entry=3D0x28ee4f0,<br class=3D"">&nbsp;&nbsp;&=
nbsp;&nbsp;filename=3Dfilename@entry=3D0x28e7f50 "PoC.jpg", exception=3Dexc=
eption@entry=3D0x28e7f10)<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;at MagickCo=
re/constitute.c:326<br class=3D"">#23 0x00000000006f2741 in IdentifyImageCo=
mmand (image_info=3D0x28eb2c0, image_info@entry=3D0x28e8090,<br class=3D"">=
&nbsp;&nbsp;&nbsp;&nbsp;argc=3Dargc@entry=3D2, argv=3D0x28e6490, argv@entry=
=3D0x7ffe5d18e4b0, metadata=3Dmetadata@entry=3D0x7ffe5d18c150,<br class=3D"=
">&nbsp;&nbsp;&nbsp;&nbsp;exception=3Dexception@entry=3D0x28e7f10) at Magic=
kWand/identify.c:319<br class=3D"">#24 0x000000000071a274 in MagickCommandG=
enesis (image_info=3Dimage_info@entry=3D0x28e8090,<br class=3D"">&nbsp;&nbs=
p;&nbsp;&nbsp;command=3Dcommand@entry=3D0x6f2180 &lt;IdentifyImageCommand&g=
t;, argc=3D2, argv=3Dargv@entry=3D0x7ffe5d18e4b0,<br class=3D"">&nbsp;&nbsp=
;&nbsp;&nbsp;metadata=3D0x7ffe5d18d208, exception=3Dexception@entry=3D0x28e=
7f10) at MagickWand/mogrify.c:183<br class=3D"">#25 0x0000000000411f11 in M=
agickMain (argc=3D2, argv=3D0x7ffe5d18e4b0) at utilities/magick.c:250<br cl=
ass=3D"">#26 0x00007f110bab1f45 in __libc_start_main (main=3D0x40ec10 &lt;m=
ain&gt;, argc=3D3, argv=3D0x7ffe5d18e4a8,<br class=3D"">&nbsp;&nbsp;&nbsp;&=
nbsp;init=3D&lt;optimised out&gt;, fini=3D&lt;optimised out&gt;, rtld_fini=
=3D&lt;optimised out&gt;, stack_end=3D0x7ffe5d18e498)<br class=3D"">&nbsp;&=
nbsp;&nbsp;&nbsp;at libc-start.c:287<br class=3D"">#27 0x0000000000411af5 i=
n _start ()</p></div>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_7DE2D45E-EDB5-41AA-9F83-2B06F79B3686--

--Apple-Mail=_D07CFCB9-6F9B-41D2-9858-0CD03C86D92B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJXazGZAAoJEK/viYuAjew9E48P/jABAVlWcptNRZj7l7ByPhTb
dXcxEe+ayxQvOMFXonkXsapl+oUXuF1uWEi7qh12dOlUJe5c53ShE3BOkhrN3eEw
jgti9v+IXXDY7lin/nJM6eoFYquwtPUAb/2zrI4cEZ4j3gY14XSoWRw/qjRacgpg
mwg/Zi+wBCSeRhJFba71EpQQr77KTYN1x+0do1OMEq8Bz3GgdDCDlki4RKQHeajw
NmOd0/G3hSxFErihK0robFUEiKsB25zs8sVpmEMigxjOhiFjh3fQGWJIQLsXK13s
7D3V6HXG0CHUUiBY55d8LlG1zUakVlbKNbUVrQMaerO9AkBFKi1HYhuSjQlLW+9U
bdi7K02/lA7yE6QK7JDYOq+6aOitg8RNK0tof1v5LyfOogttaQput9EKWMzeEhzC
09Nr9laRbo10Rym5Z9okAWYn9jBNSmwqExZwMD9SnTDUUZ4mXXyfC3UROXcO1P48
PS8FNVS+sEHKUouLUOJK6WUH/A08u6rgiOwpt/97GjxHFePLQ/vzUInxpySxZWda
sf+2xFyRgyKR/eBO2Wdyse1SsqCXEJW37x9uei9aliGtkGHFxfIClob9A6kQN7Pg
gLpXnLjJrIoMt657dOllfP/zcoVjG3xydFuJWTxTzRFk3QziD6TC2EjgC14kXpxd
bvbYsMdfxqPCFyMZRfG2
=68nY
-----END PGP SIGNATURE-----

--Apple-Mail=_D07CFCB9-6F9B-41D2-9858-0CD03C86D92B--

