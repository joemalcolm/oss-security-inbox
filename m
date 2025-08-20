Received: (qmail 6009 invoked by uid 550); 20 Aug 2025 21:39:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1535 invoked from network); 20 Aug 2025 21:38:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1755725919;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=e5LYdfrYgmBOndDJ8SwwIFOqrnhG2BU1TLpS2Eum96Q=;
	b=EcxogT0Gxh28eg5JxDwnTvZDO7DpjFPAIzJwcDinRx+Q7/+8We7h864c8z5AsoUFcvGLVi
	wChqSIZOIAW6tre/RJ3p2xHmm184Rokk6cj/v/eVqFXEaHQG+zJK+7QZe2iveXf9vHqogp
	SNreelhlRiIxcXif2sU518xhZttQtIc=
X-MC-Unique: NwDFWSzQNVy6WjgF_AdbaQ-1
X-Mimecast-MFC-AGG-ID: NwDFWSzQNVy6WjgF_AdbaQ_1755725915
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755725915; x=1756330715;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e5LYdfrYgmBOndDJ8SwwIFOqrnhG2BU1TLpS2Eum96Q=;
        b=Zspm7AlFdkJ1cNGGP0QRJVSoyDbPu34VsLLvJNh8xiUR41/XwN+BcATJe7Vso9+hQp
         fuePaouyHwjZgnK4U/h1P9iKUlp0cEYsYCEoY7vfv9cf6qQB67gc6mmWT8ntBw/mVeBF
         rzH6Uexm4DOx9V+pWxLRdWiG8M7hwX/7WSjdH8FWp4riREMkYHbSlFMNKgBoSc1bkQgr
         JgEL74GFQs/vNESgnXv+cVYmwbaP64xviTgnDYBMVavn1W+rw/yQwKxqDJy+IOdAgBUQ
         dU2w+dBoQzrZk4V0yc37ID7AnOuWdXQp5xbguRph7SA0bhfozJiBmKOU2d7ezCQUEn2R
         ZWrg==
X-Gm-Message-State: AOJu0YzdRsCzLar65NCj1kK7SbsZ60/cmcq5wAU2GEU6W88Kt6FzedV+
	hbCpT3Sq3DM1guZUMz7YVewj9CV1qFNhEROPP5jT8d5Xotxq2ziV4zMa/+03bTlHOIcI5p08BLa
	3PLikM1kF0bCk+E+2BhavmYyBNu0xqFnfPIaU0diLeFBqcxG3zMFp/N60MqkKMT3vmOs6Cg23Ms
	WqSjkHBZyX0vvwOCl3O2BIyTtkS7hB8Gu1MC1rK+OQaMZrLhDnRTO6U3w4ag==
X-Gm-Gg: ASbGnctPYlozoSOTcnv2qYbPKUBr8VMEcXr9nQ95rPFBo1YaOwPa8AcAginPgQglAAk
	xaxb7JTnYsVzhrR30FEr2lJkh4k1wgD97IM3bbew52Zv9hXKiyL6bmOaZn6zp7fjnlfmmR2BhrE
	nMMHIxXEyjkZ6+vwDha+E=
X-Received: by 2002:a17:907:d8f:b0:afd:eb4f:d5ce with SMTP id a640c23a62f3a-afe07d4c7b9mr24568166b.62.1755725914772;
        Wed, 20 Aug 2025 14:38:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkobmZY0nw4apKMwe5/1VDYp0L78M4AWh7lSJfbVFKFKak9LFxAxyJwWutuMzx1nwkGDc3gFYwyptBdKeJmfw=
X-Received: by 2002:a17:907:d8f:b0:afd:eb4f:d5ce with SMTP id
 a640c23a62f3a-afe07d4c7b9mr24566366b.62.1755725914167; Wed, 20 Aug 2025
 14:38:34 -0700 (PDT)
MIME-Version: 1.0
References: <9d746b4d-0fcb-45b9-8c43-16247cf79dec@oracle.com> <2dd5cf69-44a8-44f0-8fd9-8a3e654a8d45@oracle.com>
In-Reply-To: <2dd5cf69-44a8-44f0-8fd9-8a3e654a8d45@oracle.com>
From: Nick Tait <ntait@redhat.com>
Date: Wed, 20 Aug 2025 15:38:18 -0600
X-Gm-Features: Ac12FXyby4ahXAKYLFetl2a5-9BDloriwmsjMPm4SS4vXlA3IoSiWnrBTXX46xU
Message-ID: <CALDM2HcdZBx2fBazx0oe2Om9VokTrYUMjb77DN80Ov40Ru1mcQ@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vFzGe13JIRLKO3XcXuEEoya-LMuGyt98RAXoUjdDzRc_1755725915
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000006fec8d063cd2cbe5"
Subject: Re: [oss-security] HTTP/2 implementations are vulnerable to
 "MadeYouReset" DoS attack through HTTP/2 control frames

--0000000000006fec8d063cd2cbe5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One more was published today:

- Jetty - CVE-2025-5115

https://github.com/jetty/jetty.project/security/advisories/GHSA-mmxm-8w33-w=
c4h

----------

Jetty's Team Notes
> Impact
> A denial of service vulnerability similar to Rapid Reset, but where the
> client triggers a reset from the server by sending a malformed or invalid
> frame.
> In particular, this may be triggered by WINDOW_UPDATE frames that are
> invalid (e.g. with delta=3D=3D0 or when the delta makes the window exceed
> 2^31-1).
>
> Patches
> Patch has been merged into 12.0.x mainline via #13449.
>
> Workarounds
> No workarounds apart disabling HTTP/2.


On Sat, Aug 16, 2025 at 11:30=E2=80=AFAM Alan Coopersmith <
alan.coopersmith@oracle.com> wrote:

> On 8/13/25 11:27, Alan Coopersmith wrote:
> > https://kb.cert.org/vuls/id/767506 was published today:
> >
> >> HTTP/2 implementations are vulnerable to "MadeYouReset" DoS attack
> >>  through HTTP/2 control frames
> >> Vulnerability Note VU#767506
> >> Original Release Date: 2025-08-13 | Last Revised: 2025-08-13
> >>
> >> Overview
> >> --------
> >> A vulnerability has been discovered within many HTTP/2 implementations
> >> allowing for denial of service (DoS) attacks through HTTP/2 control
> frames.
> >> This vulnerability is colloquially known as "MadeYouReset" and is
> tracked
> >> as CVE-2025-8671. Some vendors have assigned a specific CVE to their
> >> products to describe the vulnerability, such as CVE-2025-48989, which =
is
> >> used to identify Apache Tomcat products affected by the vulnerability.
>
> OSS implementations that have responded (whether affected or not) include:
>
> - Apache Tomcat - CVE-2025-48989
>    https://www.openwall.com/lists/oss-security/2025/08/13/2
>
> - h2o - CVE-2025-8671
>    https://github.com/h2o/h2o/security/advisories/GHSA-mrjm-qq9m-9mjq
>
> - hyper.rs h2 - CVE-2025-8671
>    https://seanmonstar.com/blog/hyper-http2-didnt-madeyoureset/
>
> - ISC BIND - CVE-2025-8671
>    https://gitlab.isc.org/isc-projects/bind9/-/issues/5325
>
> - lighttpd - CVE-2025-8671
>    https://www.lighttpd.net/2025/8/13/1.4.80/
>
> - Netty - CVE-2025-55163
>    https://github.com/netty/netty/security/advisories/GHSA-prj3-ccx8-p6x4
>
> - Varnish - CVE-2025-8671
>    https://varnish-cache.org/security/VSV00017.html
>
> --
>          -Alan Coopersmith-                 alan.coopersmith@oracle.com
>           Oracle Solaris Engineering - https://blogs.oracle.com/solaris
>
>

--0000000000006fec8d063cd2cbe5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>One more was published today:</div><div><br></div><di=
v>- Jetty - CVE-2025-5115
  </div><div>=C2=A0 =C2=A0<a href=3D"https://github.com/jetty/jetty.project=
/security/advisories/GHSA-mmxm-8w33-wc4h">https://github.com/jetty/jetty.pr=
oject/security/advisories/GHSA-mmxm-8w33-wc4h</a></div><div><br></div><div>=
----------</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Jetty&#39;s Team Notes<br>Impact<br>A denial of service vulnerability=
 similar to Rapid Reset, but where the client triggers a reset from the ser=
ver by sending a malformed or invalid frame.<br>In particular, this may be =
triggered by WINDOW_UPDATE frames that are invalid (e.g. with delta=3D=3D0 =
or when the delta makes the window exceed 2^31-1).<br><br>Patches<br>Patch =
has been merged into 12.0.x mainline via #13449.<br><br>Workarounds<br>No w=
orkarounds apart disabling HTTP/2.</blockquote></div><br><div class=3D"gmai=
l_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sat=
, Aug 16, 2025 at 11:30=E2=80=AFAM Alan Coopersmith &lt;<a href=3D"mailto:a=
lan.coopersmith@oracle.com">alan.coopersmith@oracle.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">On 8/13/25 11:27, Al=
an Coopersmith wrote:<br>
&gt; <a href=3D"https://kb.cert.org/vuls/id/767506" rel=3D"noreferrer" targ=
et=3D"_blank">https://kb.cert.org/vuls/id/767506</a> was published today:<b=
r>
&gt; <br>
&gt;&gt; HTTP/2 implementations are vulnerable to &quot;MadeYouReset&quot; =
DoS attack<br>
&gt;&gt; =C2=A0through HTTP/2 control frames<br>
&gt;&gt; Vulnerability Note VU#767506<br>
&gt;&gt; Original Release Date: 2025-08-13 | Last Revised: 2025-08-13<br>
&gt;&gt;<br>
&gt;&gt; Overview<br>
&gt;&gt; --------<br>
&gt;&gt; A vulnerability has been discovered within many HTTP/2 implementat=
ions<br>
&gt;&gt; allowing for denial of service (DoS) attacks through HTTP/2 contro=
l frames.<br>
&gt;&gt; This vulnerability is colloquially known as &quot;MadeYouReset&quo=
t; and is tracked<br>
&gt;&gt; as CVE-2025-8671. Some vendors have assigned a specific CVE to the=
ir<br>
&gt;&gt; products to describe the vulnerability, such as CVE-2025-48989, wh=
ich is<br>
&gt;&gt; used to identify Apache Tomcat products affected by the vulnerabil=
ity.<br>
<br>
OSS implementations that have responded (whether affected or not) include:<=
br>
<br>
- Apache Tomcat - CVE-2025-48989<br>
=C2=A0 =C2=A0<a href=3D"https://www.openwall.com/lists/oss-security/2025/08=
/13/2" rel=3D"noreferrer" target=3D"_blank">https://www.openwall.com/lists/=
oss-security/2025/08/13/2</a><br>
<br>
- h2o - CVE-2025-8671<br>
=C2=A0 =C2=A0<a href=3D"https://github.com/h2o/h2o/security/advisories/GHSA=
-mrjm-qq9m-9mjq" rel=3D"noreferrer" target=3D"_blank">https://github.com/h2=
o/h2o/security/advisories/GHSA-mrjm-qq9m-9mjq</a><br>
<br>
- <a href=3D"http://hyper.rs" rel=3D"noreferrer" target=3D"_blank">hyper.rs=
</a> h2 - CVE-2025-8671<br>
=C2=A0 =C2=A0<a href=3D"https://seanmonstar.com/blog/hyper-http2-didnt-made=
youreset/" rel=3D"noreferrer" target=3D"_blank">https://seanmonstar.com/blo=
g/hyper-http2-didnt-madeyoureset/</a><br>
<br>
- ISC BIND - CVE-2025-8671<br>
=C2=A0 =C2=A0<a href=3D"https://gitlab.isc.org/isc-projects/bind9/-/issues/=
5325" rel=3D"noreferrer" target=3D"_blank">https://gitlab.isc.org/isc-proje=
cts/bind9/-/issues/5325</a><br>
<br>
- lighttpd - CVE-2025-8671<br>
=C2=A0 =C2=A0<a href=3D"https://www.lighttpd.net/2025/8/13/1.4.80/" rel=3D"=
noreferrer" target=3D"_blank">https://www.lighttpd.net/2025/8/13/1.4.80/</a=
><br>
<br>
- Netty - CVE-2025-55163<br>
=C2=A0 =C2=A0<a href=3D"https://github.com/netty/netty/security/advisories/=
GHSA-prj3-ccx8-p6x4" rel=3D"noreferrer" target=3D"_blank">https://github.co=
m/netty/netty/security/advisories/GHSA-prj3-ccx8-p6x4</a><br>
<br>
- Varnish - CVE-2025-8671<br>
=C2=A0 =C2=A0<a href=3D"https://varnish-cache.org/security/VSV00017.html" r=
el=3D"noreferrer" target=3D"_blank">https://varnish-cache.org/security/VSV0=
0017.html</a><br>
<br>
-- <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-Alan Coopersmith-=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:alan.coopersmith=
@oracle.com" target=3D"_blank">alan.coopersmith@oracle.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Oracle Solaris Engineering - <a href=3D"=
https://blogs.oracle.com/solaris" rel=3D"noreferrer" target=3D"_blank">http=
s://blogs.oracle.com/solaris</a><br>
<br>
</blockquote></div>

--0000000000006fec8d063cd2cbe5--

