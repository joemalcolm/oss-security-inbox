Received: (qmail 28374 invoked by uid 550); 18 Oct 2025 20:44:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1628 invoked from network); 18 Oct 2025 20:01:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760817702; x=1761422502; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xM0yWbsstEZYT7AKJi5Ab6Xg6L2whbA2IdI+XfYBdfc=;
        b=R/h6rcmKT8HHjS18B+wqAIqXfCq064+85GpflGCXgGXXMBUvyN4AKMVKenUkihcqS/
         jC9m/QpV2wdLTdn68vrCac0Zmiv3cOShehOTMUbfXOaq0Qz3jtvnknlYiM33prB0PRdX
         bZUptZxm6mRspZ65gRt+PbyzOOdpy/IhOBT426RIP1APFZTy8RgRVF5+j1ocp3ZYINJf
         sqrD7DpfNeFVjvGKC7iE3KfZlThoJRyE79VLB4iEEMUV/e5yRAg65zNz2aWkYa+pR3ZZ
         TH/5TLef0I5/HRAMra9CPZYwL8GZFt7BoZWZ5qsGiTTxbzUio1OoSQR4yI+pNDGM7VPt
         95XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760817702; x=1761422502;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xM0yWbsstEZYT7AKJi5Ab6Xg6L2whbA2IdI+XfYBdfc=;
        b=nXt4dKkL+0b9ZdfiAIuVIX1bhVYiT4Xydr7MVIvHeiYtcSIfF65uado5763Vf0XuH2
         mxQFvXmDRMDandN0eXhzGz8kZ6UP/Kt71dlkRiwVfNJgwXJJsDWpavz9jutGRhYIcHVn
         6fD0hcDfpQAjpFHXfq6zEOTc/EhfkGUWIlvdnxbuDdqZ4+wzYvVUFtJ3IKCMYqD5moee
         lBJ6r4+dirP6w0TWoDlFo8d1v+IaQS+V9y7fof01KRQXhEKj+exwTx9Smc7/Y3jQeNxb
         ztXwcIhRk1nQpqCUG5gXZRIzmKF8Xlmu8kWJfvn2B1OcB7/l/oZO/Ze1UPAYjn+iaatj
         df3g==
X-Gm-Message-State: AOJu0YzvDRfICs6QFg/EEsvz3QbB9rieiWO5dDO6VdOcFf7NwvtmyZV8
	fc7LAXGf0aJTaHdkRylX/dagiqBozi7Tdge/Uk3I0hAZdMO5kZXb/HykBoPk5YK5EvEmeRJl3Q6
	VZiX5d6ZUFYrSEZGI4hH7Grasrb3+LH6YsIZm
X-Gm-Gg: ASbGncuRlfsIgySTa1uSObYmELZUEdvO/n/H1xT0MwcXi5ozkPP5TUS0U/IJLE3Ax1K
	Hj/bW/GbXNMiPCMejBdZ70hc8AuY/U/NmMfPHLCTa6JJPNw/gdsOmchlGzCcdUtIRXCZWWs5ma0
	U8IIX81wcNl9IzKiCPOMvhrEpRY7a5q7QIRY5svaGjvHNVwuyA1E+7Mauy+mWXxzLsIwBrizP1c
	O8Q3MTylE/fTU81veGHnRHs66QREw+j0WzzsBKO5l0yFQNdSOlRD+KkywNALTFubrjgqbB8Vh4b
	/ftzsLP+JaMWu1e2y7U=
X-Google-Smtp-Source: AGHT+IH5wp5eSofk+AJ6vKA/hPe6+DSiZJ+vvC2PN35m7p9NsnCaIsI36LU6Svw+smr9IuPIGBkR5zwEs/oJvusvLQI=
X-Received: by 2002:a05:651c:901:b0:36b:698b:1f00 with SMTP id
 38308e7fff4ca-37797815b55mr20969281fa.6.1760817701677; Sat, 18 Oct 2025
 13:01:41 -0700 (PDT)
MIME-Version: 1.0
References: <20251017231636.GC2696@qaa.vinc17.org> <20251017235023.GA23530@openwall.com>
 <20251017235949.GD2696@qaa.vinc17.org>
In-Reply-To: <20251017235949.GD2696@qaa.vinc17.org>
From: Fabio Degrigis <degrigis@gmail.com>
Date: Sat, 18 Oct 2025 13:01:30 -0700
X-Gm-Features: AS18NWCSaCZr0-nWaGjFxLe6wUii2SDMYm8SwlmpiM9QAsQgd5yYjUItGJrvWXM
Message-ID: <CAJpB=GE_vgzy4sGFoBybfFD1O1Q+LWxc8RVurqmwAM6OCBzPeg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000009f6f5c0641745107"
Subject: Re: [oss-security] rplay (Mark R. Boyns) potential security issues
 (unsanitized data, unchecked malloc...)

--0000000000009f6f5c0641745107
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I can confirm I can trigger a SIGSEGV at
https://salsa.debian.org/alteholz/rplay/-/blob/master/librplay/rplay.c?ref_=
type=3Dheads#L470
reachable from "rplay_unpack" with a simple harness.
This is indeed a bit concerning since these packets can potentially be
processed by the audio server with no authentication.

Fabio

Il giorno ven 17 ott 2025 alle ore 17:26 Vincent Lefevre <vincent@vinc17.ne=
t>
ha scritto:

> On 2025-10-18 01:50:23 +0200, Solar Designer wrote:
> > On Sat, Oct 18, 2025 at 01:16:36AM +0200, Vincent Lefevre wrote:
> > > Debian distributes Mark R. Boyns's rplay 3.3.2. I've had
> > > a very quick look at the source and found at least:
> > >
> > > * In rplay/rplay.c line 600, the use of atoi() on something that
> > >   looks like unsanitized data from a remote server:
> > >
> > >         remote_size =3D -1;
> > >         p =3D rptp_parse(response, "size");
> > >         if (p)
> > >             remote_size =3D atoi(p);
> > >
> > > * Various malloc() without a check of failure, such as:
> >
> > These look like minor correctness and robustness issues.
>
> Some of them may be minor, but ones in librplay may be a major
> issue. For instance, in Debian, /usr/libexec/fvwm2/2.7.0/FvwmEvent
> is linked against this library:
>
> qaa:~> ldd /usr/libexec/fvwm2/2.7.0/FvwmEvent
> [...]
>         librplay.so.3 =3D> /lib/librplay.so.3 (0x00007f25461f4000)
> [...]
>
> meaning that this could make the window manager crash (unless it
> has some protection for modules).
>
> --
> Vincent Lef=C3=A8vre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
> 100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
> Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
>

--0000000000009f6f5c0641745107
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div>I can confirm I can trigge=
r a SIGSEGV=C2=A0at=C2=A0<a href=3D"https://salsa.debian.org/alteholz/rplay=
/-/blob/master/librplay/rplay.c?ref_type=3Dheads#L470">https://salsa.debian=
.org/alteholz/rplay/-/blob/master/librplay/rplay.c?ref_type=3Dheads#L470</a=
> reachable from &quot;rplay_unpack&quot; with a simple harness.</div><div>=
This is indeed a bit concerning since these packets can potentially be proc=
essed by the audio server with no authentication.</div><div><br></div><div>=
Fabio</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D=
"ltr" class=3D"gmail_attr">Il giorno ven 17 ott 2025 alle ore 17:26 Vincent=
 Lefevre &lt;<a href=3D"mailto:vincent@vinc17.net">vincent@vinc17.net</a>&g=
t; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n 2025-10-18 01:50:23 +0200, Solar Designer wrote:<br>
&gt; On Sat, Oct 18, 2025 at 01:16:36AM +0200, Vincent Lefevre wrote:<br>
&gt; &gt; Debian distributes Mark R. Boyns&#39;s rplay 3.3.2. I&#39;ve had<=
br>
&gt; &gt; a very quick look at the source and found at least:<br>
&gt; &gt; <br>
&gt; &gt; * In rplay/rplay.c line 600, the use of atoi() on something that<=
br>
&gt; &gt;=C2=A0 =C2=A0looks like unsanitized data from a remote server:<br>
&gt; &gt; <br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0remote_size =3D -1;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p =3D rptp_parse(response, &quot=
;size&quot;);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (p)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0remote_size =3D at=
oi(p);<br>
&gt; &gt; <br>
&gt; &gt; * Various malloc() without a check of failure, such as:<br>
&gt; <br>
&gt; These look like minor correctness and robustness issues.<br>
<br>
Some of them may be minor, but ones in librplay may be a major<br>
issue. For instance, in Debian, /usr/libexec/fvwm2/2.7.0/FvwmEvent<br>
is linked against this library:<br>
<br>
qaa:~&gt; ldd /usr/libexec/fvwm2/2.7.0/FvwmEvent<br>
[...]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 librplay.so.3 =3D&gt; /lib/librplay.so.3 (0x000=
07f25461f4000)<br>
[...]<br>
<br>
meaning that this could make the window manager crash (unless it<br>
has some protection for modules).<br>
<br>
-- <br>
Vincent Lef=C3=A8vre &lt;<a href=3D"mailto:vincent@vinc17.net" target=3D"_b=
lank">vincent@vinc17.net</a>&gt; - Web: &lt;<a href=3D"https://www.vinc17.n=
et/" rel=3D"noreferrer" target=3D"_blank">https://www.vinc17.net/</a>&gt;<b=
r>
100% accessible validated (X)HTML - Blog: &lt;<a href=3D"https://www.vinc17=
.net/blog/" rel=3D"noreferrer" target=3D"_blank">https://www.vinc17.net/blo=
g/</a>&gt;<br>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)<br>
</blockquote></div></div>

--0000000000009f6f5c0641745107--
