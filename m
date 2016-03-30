X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7044" "Wednesday" "30" "March" "2016" "15:24:54" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQ1V7zLe=vy3msAAEF+vPpaYmftukhMBtRre=eKbk7MyQ@mail.gmail.com>" "126" "[oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files" "^Date:" nil nil "3" "2016033018:24:54" "[oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files" (number mark "U       gustavo.grie Mar 30  126/7044  " thread-indent "\"[oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files\"\n") "<CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>" ("<CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26530 invoked by uid 550); 30 Mar 2016 18:25:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26509 invoked from network); 30 Mar 2016 18:25:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=qQlOj4pVPTRh5bkGeHuTZl4ByaffPO6KkUZssBzF8yc=;
        b=RtrWKjZ9+MbzhJwj8kmActjl056Vj6T//oxZGNES76FG3qpxDn54djDWuwzhiqsPtj
         hCOyROhN3kQHDYb+nL5VjGoEjv5qP4AAJo42vnVy2N30lWTlFkuU7S4NSXgzIHO8Ffsd
         6pRaFL35SCPt+iCXYcryCH+De4pHwMoL9XuezE+uZzXkx1rL1Y8PhwGsZPGhqiqn1hJa
         IbtP4N+OEVnIXcHOtcuY6aPVS2oTS39I4afIXtrSrKIrEsTbFdgK2s2yPDRMovEoFM78
         FgLYNz75TCqxQW3IQfknvGPGIiK3ZdhRxkX3SkuqbHOCFyPXrk4nRbCEzjfm+u6MV2rW
         4dbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=qQlOj4pVPTRh5bkGeHuTZl4ByaffPO6KkUZssBzF8yc=;
        b=W7jihPzY3KdSub4qqsM1AzUxChKyF6HMGu2DR54+KrnWKYnz781P9yqbI9o09Ak+l7
         5ksty0shmSnDSQMzK2m6m94OH8kh1J+EDWkkOJ6dHkHWWVlIYVf8dLKdnwJqvIePExgE
         A1SeucfzIe8o0x6DOniNWa4rde9PL5fvGR/suiwxzg33QqasrHuvbWQD/RFb7vBnSqRS
         PrjkP2DUvtm3dFbL2NDtt+NAFJkOqxNFlXz9YXDXanMGbLsN7DKI+r2dMqYn6Ya3mc4e
         yHZ0pJle+KIsq7qiAl7PptkCZ/lFt6VG/nQjsRwW50xL7cC3IDopp4e9ZBg+8TVVR9Pz
         d0bw==
X-Gm-Message-State: AD7BkJI97ZXLNGxNKcziA8bnQS6CvKWaissis0LFDmHwTI1kG3XqbSAkkLgC8/h4QP7a0X8uu5rnco2U8+IXgQ==
MIME-Version: 1.0
X-Received: by 10.25.212.213 with SMTP id l204mr4842777lfg.118.1459362294735;
 Wed, 30 Mar 2016 11:24:54 -0700 (PDT)
In-Reply-To: <CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>
References: <CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>
Message-ID: <CACn5sdQ1V7zLe=vy3msAAEF+vPpaYmftukhMBtRre=eKbk7MyQ@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a1140c8ec2da890052f484361
Date: Wed, 30 Mar 2016 15:24:54 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files
To: oss-security@lists.openwall.com

--001a1140c8ec2da890052f484361
Content-Type: multipart/alternative; boundary=001a1140c8ec2da889052f48435f

--001a1140c8ec2da889052f48435f
Content-Type: text/plain; charset=UTF-8

For some reason, the attached test case did not go to the mailing list.
Let's try again..

2016-03-30 14:43 GMT-03:00 Gustavo Grieco <gustavo.grieco@gmail.com>:

> Hi,
>
> We found a buffer overflow in the parsing and processing of wav files in
> VLC (version 2.1.6-0). It was tested in Ubuntu 14.04 (x86_64), but it will
> probably affects other versions as well. Fortunately, it seems to be fixed
> in the last release of VLC. Here you can see the gdb stack trace:
>
> __memcpy_sse2_unaligned () at
> ../sysdeps/x86_64/multiarch/memcpy-sse2-unaligned.S:116
> 116 ../sysdeps/x86_64/multiarch/memcpy-sse2-unaligned.S: No existe el
> archivo o el directorio.
> (gdb) bt
> #0 __memcpy_sse2_unaligned () at
> ../sysdeps/x86_64/multiarch/memcpy-sse2-unaligned.S:116
> #1 0x00007ffff71436e9 in memcpy (__len=4290773038, __src=<optimized out>,
> __dest=<optimized out>) at /usr/include/x86_64-linux-gnu/bits/string3.h:51
> #2 AStreamPeekStream (s=<optimized out>, pp_peek=0x7fffea824988,
> i_read=4294967276) at input/stream.c:1115
> #3 0x00007fffdebb42b3 in ChunkFind (p_demux=p_demux@entry=0x7fffd4c01828,
> fcc=fcc@entry=0x7fffdebb576b "fmt ", pi_size=pi_size@entry=0x7fffea824a3c)
> at wav.c:522
> #4 0x00007fffdebb4761 in Open (p_this=0x7fffd4c01828) at wav.c:166
> #5 0x00007ffff716d178 in module_load (obj=obj@entry=0x7fffd4c01828,
> m=m@entry=0x7b92b0, init=init@entry=0x7ffff716d0d0 <generic_start>,
> args=args@entry=0x7fffea824b50) at modules/modules.c:185
> #6 0x00007ffff716d72e in vlc_module_load (obj=obj@entry=0x7fffd4c01828,
> capability=capability@entry=0x7ffff71a4059 "demux", name=0x7ffff71a43bb
> "",
> name@entry=0x7fffd4c018e0 "", strict=<optimized out>, probe=probe@entry=0x7ffff716d0d0
> <generic_start>) at modules/modules.c:277
> #7 0x00007ffff716dc04 in module_need (obj=obj@entry=0x7fffd4c01828,
> cap=cap@entry=0x7ffff71a4059 "demux", name=name@entry=0x7fffd4c018e0 "",
> strict=<optimized out>) at modules/modules.c:366
> #8 0x00007ffff712cfbe in demux_New (p_obj=p_obj@entry=0x7fffd00009b8,
> p_parent_input=p_parent_input@entry=0x7fffd00009b8,
> psz_access=<optimized out>, psz_demux=0x7ffff71b9ca5 "",
> psz_location=<optimized out>, s=<optimized out>, out=0x7fffd4000aa0,
> b_quick=false)
> at input/demux.c:188
> #9 0x00007ffff7139d5d in InputSourceInit (p_input=p_input@entry=0x7fffd00009b8,
> in=<optimized out>, psz_mrl=<optimized out>,
> psz_forced_demux=psz_forced_demux@entry=0x0,
> b_in_can_fail=b_in_can_fail@entry=false) at input/input.c:2535
> #10 0x00007ffff713ab6b in Init (p_input=p_input@entry=0x7fffd00009b8) at
> input/input.c:1225
> #11 0x00007ffff713e0e6 in Run (obj=0x7fffd00009b8) at input/input.c:521
> #12 0x00007ffff79a9182 in start_thread (arg=0x7fffea825700) at
> pthread_create.c:312
> #13 0x00007ffff74d247d in clone () at
> ../sysdeps/unix/sysv/linux/x86_64/clone.S:111
>
> It is evident that the memcpy operation has an abnormally large size
> parameter (4290773038). Find attached a test case to reproduce it.
>
> Regards,
> Gustavo.
>

--001a1140c8ec2da889052f48435f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For some reason, the attached test case did not go to the =
mailing list. Let&#39;s try again..<br>
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-03-30 =
14:43 GMT-03:00 Gustavo Grieco <span dir=3D"ltr">&lt;<a href=3D"mailto:gust=
avo.grieco@gmail.com" target=3D"_blank">gustavo.grieco@gmail.com</a>&gt;</s=
pan>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<br><br>We foun=
d a buffer overflow in the parsing and processing of wav files in VLC (vers=
ion 2.1.6-0). It was tested in Ubuntu 14.04 (x86_64), but it will probably =
affects other versions as well. Fortunately, it seems to be fixed in the la=
st release of VLC. Here you can see the gdb stack trace:<br><br>__memcpy_ss=
e2_unaligned () at ../sysdeps/x86_64/multiarch/memcpy-sse2-unaligned.S:116<=
br>116 ../sysdeps/x86_64/multiarch/memcpy-sse2-unaligned.S: No existe el ar=
chivo o el directorio.<br>(gdb) bt<br>#0 __memcpy_sse2_unaligned () at ../s=
ysdeps/x86_64/multiarch/memcpy-sse2-unaligned.S:116<br>#1 0x00007ffff71436e=
9 in memcpy (__len=3D4290773038, __src=3D&lt;optimized out&gt;, __dest=3D&l=
t;optimized out&gt;) at /usr/include/x86_64-linux-gnu/bits/string3.h:51<br>=
#2 AStreamPeekStream (s=3D&lt;optimized out&gt;, pp_peek=3D0x7fffea824988, =
i_read=3D4294967276) at input/stream.c:1115<br>#3 0x00007fffdebb42b3 in Chu=
nkFind (p_demux=3Dp_demux@entry=3D0x7fffd4c01828, fcc=3Dfcc@entry=3D0x7fffd=
ebb576b &quot;fmt &quot;, pi_size=3Dpi_size@entry=3D0x7fffea824a3c)<br>at w=
av.c:522<br>#4 0x00007fffdebb4761 in Open (p_this=3D0x7fffd4c01828) at wav.=
c:166<br>#5 0x00007ffff716d178 in module_load (obj=3Dobj@entry=3D0x7fffd4c0=
1828, m=3Dm@entry=3D0x7b92b0, init=3Dinit@entry=3D0x7ffff716d0d0 &lt;generi=
c_start&gt;, <br>args=3Dargs@entry=3D0x7fffea824b50) at modules/modules.c:1=
85<br>#6 0x00007ffff716d72e in vlc_module_load (obj=3Dobj@entry=3D0x7fffd4c=
01828, capability=3Dcapability@entry=3D0x7ffff71a4059 &quot;demux&quot;, na=
me=3D0x7ffff71a43bb &quot;&quot;, <br>name@entry=3D0x7fffd4c018e0 &quot;&qu=
ot;, strict=3D&lt;optimized out&gt;, probe=3Dprobe@entry=3D0x7ffff716d0d0 &=
lt;generic_start&gt;) at modules/modules.c:277<br>#7 0x00007ffff716dc04 in =
module_need (obj=3Dobj@entry=3D0x7fffd4c01828, cap=3Dcap@entry=3D0x7ffff71a=
4059 &quot;demux&quot;, name=3Dname@entry=3D0x7fffd4c018e0 &quot;&quot;, <b=
r>strict=3D&lt;optimized out&gt;) at modules/modules.c:366<br>#8 0x00007fff=
f712cfbe in demux_New (p_obj=3Dp_obj@entry=3D0x7fffd00009b8, p_parent_input=
=3Dp_parent_input@entry=3D0x7fffd00009b8, <br>psz_access=3D&lt;optimized ou=
t&gt;, psz_demux=3D0x7ffff71b9ca5 &quot;&quot;, psz_location=3D&lt;optimize=
d out&gt;, s=3D&lt;optimized out&gt;, out=3D0x7fffd4000aa0, b_quick=3Dfalse=
)<br>at input/demux.c:188<br>#9 0x00007ffff7139d5d in InputSourceInit (p_in=
put=3Dp_input@entry=3D0x7fffd00009b8, in=3D&lt;optimized out&gt;, psz_mrl=
=3D&lt;optimized out&gt;, <br>psz_forced_demux=3Dpsz_forced_demux@entry=3D0=
x0, b_in_can_fail=3Db_in_can_fail@entry=3Dfalse) at input/input.c:2535<br>#=
10 0x00007ffff713ab6b in Init (p_input=3Dp_input@entry=3D0x7fffd00009b8) at=
 input/input.c:1225<br>#11 0x00007ffff713e0e6 in Run (obj=3D0x7fffd00009b8)=
 at input/input.c:521<br>#12 0x00007ffff79a9182 in start_thread (arg=3D0x7f=
ffea825700) at pthread_create.c:312<br>#13 0x00007ffff74d247d in clone () a=
t ../sysdeps/unix/sysv/linux/x86_64/clone.S:111<br><br>It is evident that t=
he memcpy operation has an abnormally large size parameter (4290773038). Fi=
nd attached a test case to reproduce it.<br><br>Regards,<br>Gustavo.</div>
</blockquote></div><br></div>

--001a1140c8ec2da889052f48435f--

--001a1140c8ec2da890052f484361--
