X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["21402" "Monday" "5" "October" "2015" "08:14:31" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQE8spxUUZCSsXRwxRu-bYbEkWo8M55JwfBCQGaVvL9dw@mail.gmail.com>" "398" "Re: [oss-security] CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" nil nil nil "10" "2015100511:14:31" "[oss-security] CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" (number mark "U       gustavo.grie Oct  5  398/21402 " thread-indent "\"Re: [oss-security] CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1\"\n") "<561250B6.9070102@suse.com>" ("<CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>" "<561250B6.9070102@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11841 invoked by uid 550); 5 Oct 2015 11:14:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11820 invoked from network); 5 Oct 2015 11:14:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=m7FzCnBtHlHe9Z/oSPdH57igTfmaxUDWASptx81ojxg=;
        b=KS6pVLs0O7i5e/ifWme+r9yRA+dJxB8WxfAHnr/ERt199Isk2i7qMQqDXHVpF8utjH
         K86aU1PW5TXLzJY4HYvPmBst9qsdK5x3yavvZFCwK96CP8wTMBRB95V+3ln7zVcGxLtv
         mKsrh0fxhE2CkSmQyZZ8qs9NCzsja98kQbjZmnbqqph8GTtelMBaeP0GSO3Quuwd9jmE
         Pq1Al1QlR6tOSLxKIhQm2h1E60z4umAF7Xi4aqedGYRfwiM8C8hHK9QY7tKwBKPmGLCV
         y00+JL+txFAMCEGahFR4i4uOJPTnyuG8As32UXbnnz2NT6VzRBMSjW4MrY9KG/FKM7MG
         5gAA==
MIME-Version: 1.0
X-Received: by 10.112.164.35 with SMTP id yn3mr11186156lbb.18.1444043671960;
 Mon, 05 Oct 2015 04:14:31 -0700 (PDT)
In-Reply-To: <561250B6.9070102@suse.com>
References: <CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>
	<561250B6.9070102@suse.com>
Date: Mon, 5 Oct 2015 08:14:31 -0300
Message-ID: <CACn5sdQE8spxUUZCSsXRwxRu-bYbEkWo8M55JwfBCQGaVvL9dw@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary=001a11c335301bb98c0521599ef1
Subject: Re: [oss-security] CVE request: Heap overflow with a gif file in
 gdk-pixbuf < 2.32.1

--001a11c335301bb98c0521599ef1
Content-Type: multipart/alternative; boundary=001a11c335301bb97f0521599eef

--001a11c335301bb97f0521599eef
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

>
> Could you please share you fuzzed sample?

Sure!, please find attached the compressed test case as well as a minimal
example of a vulnerable program: it is just a call to
gdk_pixbuf_new_from_file_at_size. Trying to attach the test case in the
last version of Evolution will also produce a crash.

A detailed backtrace of the heap overflow is here:

Program received signal SIGSEGV, Segmentation fault.
0x00007ffff7bced38 in pixops_scale_nearest (dest_has_alpha=3D<optimized out=
>,
src_has_alpha=3D<optimized out>, scale_y=3D1, scale_x=3D1, src_channels=3D4,
    src_rowstride=3D262076, src_height=3D4096, src_width=3D65519,
src_buf=3D0x7fffb599b010 "", dest_channels=3D4, dest_rowstride=3D24,
render_y1=3D<optimized out>,
    render_x1=3D6, render_y0=3D<optimized out>, render_x0=3D0,
dest_buf=3D<optimized out>) at pixops.c:332
332        pixops.c: No such file or directory.
(gdb) bt
#0  0x00007ffff7bced38 in pixops_scale_nearest (dest_has_alpha=3D<optimized
out>, src_has_alpha=3D<optimized out>, scale_y=3D1, scale_x=3D1, src_channe=
ls=3D4,
    src_rowstride=3D262076, src_height=3D4096, src_width=3D65519,
src_buf=3D0x7fffb599b010 "", dest_channels=3D4, dest_rowstride=3D24,
render_y1=3D<optimized out>,
    render_x1=3D6, render_y0=3D<optimized out>, render_x0=3D0,
dest_buf=3D<optimized out>) at pixops.c:332
#1  _pixops_scale_real (interp_type=3Dinterp_type@entry=3DPIXOPS_INTERP_NEA=
REST,
scale_y=3D1, scale_x=3D1, src_has_alpha=3D1, src_channels=3D4,
    src_rowstride=3D262076, src_height=3D4096, src_width=3D65519,
src_buf=3D0x7fffb599b010 "", dest_has_alpha=3D<optimized out>, dest_channel=
s=3D4,
    dest_rowstride=3D24, render_y1=3D<optimized out>, render_x1=3D6,
render_y0=3D<optimized out>, render_x0=3D0, dest_buf=3D<optimized out>) at
pixops.c:2207
#2  _pixops_scale (dest_buf=3D<optimized out>, dest_width=3Ddest_width@entr=
y=3D6,
dest_height=3Ddest_height@entry=3D65532, dest_rowstride=3D24, dest_channels=
=3D4,
    dest_has_alpha=3D<optimized out>, src_buf=3D0x7fffb599b010 "",
src_width=3D65519, src_height=3D4096, src_rowstride=3D262076, src_channels=
=3D4,
    src_has_alpha=3D1, dest_x=3Ddest_x@entry=3D0, dest_y=3Ddest_y@entry=3D0,
dest_region_width=3Ddest_region_width@entry=3D6,
    dest_region_height=3Ddest_region_height@entry=3D4096,
offset_x=3Doffset_x@entry=3D-32768, offset_y=3D<optimized out>,
scale_x=3Dscale_x@entry=3D1,
    scale_y=3Dscale_y@entry=3D1,
interp_type=3Dinterp_type@entry=3DPIXOPS_INTERP_NEAREST)
at pixops.c:2285
#3  0x00007ffff7bc6a2d in gdk_pixbuf_scale (src=3D0x6288a0, dest=3D0x628850,
dest_x=3D0, dest_y=3D0, dest_width=3D6, dest_height=3D4096, offset_x=3D-327=
68,
    offset_y=3D<optimized out>, scale_x=3D1, scale_y=3D1,
interp_type=3DGDK_INTERP_NEAREST) at gdk-pixbuf-scale.c:147
#4  0x00007ffff595b40b in gif_get_lzw (context=3D0x6160e0) at io-gif.c:967
#5  gif_main_loop (context=3Dcontext@entry=3D0x6160e0) at io-gif.c:1424
#6  0x00007ffff595ba4c in gdk_pixbuf__gif_image_load_increment
(data=3D0x6160e0, buf=3D0x60fa0c "GIF89a\357\377", size=3D1357, error=3D<op=
timized
out>)
    at io-gif.c:1610
#7  0x00007ffff7bc5a45 in gdk_pixbuf_loader_load_module
(loader=3Dloader@entry=3D0x60f2a0,
image_type=3Dimage_type@entry=3D0x0,
    error=3Derror@entry=3D0x7ffffffee478) at gdk-pixbuf-loader.c:445
#8  0x00007ffff7bc62b8 in gdk_pixbuf_loader_close
(loader=3Dloader@entry=3D0x60f2a0,
error=3Derror@entry=3D0x7fffffffe548) at gdk-pixbuf-loader.c:810
#9  0x00007ffff7bc3e2a in gdk_pixbuf_new_from_file_at_scale
(filename=3D0x7fffffffe890 "sigsegv.gif", width=3D<optimized out>,
height=3D<optimized out>,
    preserve_aspect_ratio=3D<optimized out>, error=3D0x7fffffffe548) at
gdk-pixbuf-io.c:1372
#10 0x0000000000400838 in main ()
(gdb) x/i $rip
=3D> 0x7ffff7bced38 <_pixops_scale+1048>:        mov    (%r9),%r15d
(gdb) info registers
rax            0x7ffff7e4c010        140737352351760
rbx            0x80068000        2147909632 <callto:2147909632>
rcx            0x0        0
rdx            0x80008000        2147516416 <callto:2147516416>
rsi            0x7fffb599b010        140736240136208
rdi            0x7ffff7e4c010        140737352351760
rbp            0x80068000        0x80068000
rsp            0x7ffffffee130        0x7ffffffee130
r8             0x1000        4096
r9             0x7fffb597b028        140736240005160
r10            0x10000        65536
r11            0x80068000        2147909632 <callto:2147909632>
r12            0x4        4
r13            0x8000        32768
r14            0x80008000        2147516416 <callto:2147516416>
r15            0x7ffff7e4c010        140737352351760
rip            0x7ffff7bced38        0x7ffff7bced38 <_pixops_scale+1048>
eflags         0x10206        [ PF IF RF ]
cs             0x33        51
ss             0x2b        43
ds             0x0        0
es             0x0        0
fs             0x0        0
gs             0x0        0

and the valgrind report:

=3D=3D8162=3D=3D Memcheck, a memory error detector
=3D=3D8162=3D=3D Copyright (C) 2002-2013, and GNU GPL'd, by Julian Seward e=
t al.
=3D=3D8162=3D=3D Using Valgrind-3.10.0.SVN and LibVEX; rerun with -h for co=
pyright
info
=3D=3D8162=3D=3D Command: ../bins/gdk-pixbuf sigsegv.gif
=3D=3D8162=3D=3D
=3D=3D8162=3D=3D Warning: set address range perms: large range [0x3a00e040,
0x79fca040) (undefined)
=3D=3D8162=3D=3D Invalid read of size 4
=3D=3D8162=3D=3D    at 0x4E4CD38: _pixops_scale (in
/usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)
=3D=3D8162=3D=3D    by 0x4E44A2C: gdk_pixbuf_scale (in
/usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)
=3D=3D8162=3D=3D    by 0x74B540A: gif_main_loop (in
/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-gif=
.so)
=3D=3D8162=3D=3D    by 0x74B5A4B: gdk_pixbuf__gif_image_load_increment (in
/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-gif=
.so)
=3D=3D8162=3D=3D    by 0x4E43A44: gdk_pixbuf_loader_load_module (in
/usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)
=3D=3D8162=3D=3D    by 0x4E442B7: gdk_pixbuf_loader_close (in
/usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)
=3D=3D8162=3D=3D    by 0x4E41E29: gdk_pixbuf_new_from_file_at_scale (in
/usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)
=3D=3D8162=3D=3D    by 0x400837: main (in
/home/vagrant/repos/QuickFuzz/bins/gdk-pixbuf)
=3D=3D8162=3D=3D  Address 0x39fee058 is in the BSS segment of
/usr/lib/valgrind/memcheck-amd64-linux
=3D=3D8162=3D=3D
=3D=3D8162=3D=3D Invalid read of size 4
=3D=3D8162=3D=3D    at 0x4E4CD48: _pixops_scale (in
/usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)
=3D=3D8162=3D=3D    by 0x4E44A2C: gdk_pixbuf_scale (in
/usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)
=3D=3D8162=3D=3D    by 0x74B540A: gif_main_loop (in
/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-gif=
.so)
=3D=3D8162=3D=3D    by 0x74B5A4B: gdk_pixbuf__gif_image_load_increment (in
/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-gif=
.so)
=3D=3D8162=3D=3D    by 0x4E43A44: gdk_pixbuf_loader_load_module (in
/usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)
=3D=3D8162=3D=3D    by 0x4E442B7: gdk_pixbuf_loader_close (in
/usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)
=3D=3D8162=3D=3D    by 0x4E41E29: gdk_pixbuf_new_from_file_at_scale (in
/usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)
=3D=3D8162=3D=3D    by 0x400837: main (in
/home/vagrant/repos/QuickFuzz/bins/gdk-pixbuf)
=3D=3D8162=3D=3D  Address 0x39fee058 is in the BSS segment of
/usr/lib/valgrind/memcheck-amd64-linux
=3D=3D8162=3D=3D
=3D=3D8162=3D=3D Warning: set address range perms: large range [0x3a00e028,
0x79fca058) (noaccess)
Gerror: GIF file was missing some data (perhaps it was truncated somehow?)

>
>
> Thanks,
> Andreas
>
> --
> Andreas Stieger <astieger@suse.com>
> Project Manager Security
> SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton=
, HRB
21284 (AG N=C3=BCrnberg)
>
>

--001a11c335301bb97f0521599eef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt;<br>&gt; Could you please share you fuzzed sample?<br>=
<br>Sure!, please find attached the compressed test case as well as a minim=
al=20
example of a vulnerable program: it is just a call to=20
gdk_pixbuf_new_from_file_at_size. Trying to attach the test case in the las=
t version of Evolution will also produce a crash.<br><br>A detailed backtra=
ce of the heap overflow is here:<br><br>Program received signal SIGSEGV, Se=
gmentation fault.<br>0x00007ffff7bced38
 in pixops_scale_nearest (dest_has_alpha=3D&lt;optimized out&gt;,=20
src_has_alpha=3D&lt;optimized out&gt;, scale_y=3D1, scale_x=3D1,=20
src_channels=3D4, <br>=C2=A0=C2=A0 =C2=A0src_rowstride=3D262076, src_height=
=3D4096,=20
src_width=3D65519, src_buf=3D0x7fffb599b010 &quot;&quot;, dest_channels=3D4=
,=20
dest_rowstride=3D24, render_y1=3D&lt;optimized out&gt;, <br>=C2=A0=C2=A0 =
=C2=A0render_x1=3D6, render_y0=3D&lt;optimized out&gt;, render_x0=3D0, dest=
_buf=3D&lt;optimized out&gt;) at pixops.c:332<br>332=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0pixops.c: No such file or directory.<br>(gdb) bt=
<br>#0
 =C2=A00x00007ffff7bced38 in pixops_scale_nearest=20
(dest_has_alpha=3D&lt;optimized out&gt;, src_has_alpha=3D&lt;optimized=20
out&gt;, scale_y=3D1, scale_x=3D1, src_channels=3D4, <br>=C2=A0=C2=A0 =C2=
=A0src_rowstride=3D262076,
 src_height=3D4096, src_width=3D65519, src_buf=3D0x7fffb599b010 &quot;&quot=
;,=20
dest_channels=3D4, dest_rowstride=3D24, render_y1=3D&lt;optimized out&gt;, =
<br>=C2=A0=C2=A0 =C2=A0render_x1=3D6, render_y0=3D&lt;optimized out&gt;, re=
nder_x0=3D0, dest_buf=3D&lt;optimized out&gt;) at pixops.c:332<br>#1
 =C2=A0_pixops_scale_real=20
(interp_type=3Dinterp_type@entry=3DPIXOPS_INTERP_NEAREST, scale_y=3D1,=20
scale_x=3D1, src_has_alpha=3D1, src_channels=3D4, <br>=C2=A0=C2=A0 =C2=A0sr=
c_rowstride=3D262076,
 src_height=3D4096, src_width=3D65519, src_buf=3D0x7fffb599b010 &quot;&quot=
;,=20
dest_has_alpha=3D&lt;optimized out&gt;, dest_channels=3D4, <br>=C2=A0=C2=A0=
 =C2=A0dest_rowstride=3D24,
 render_y1=3D&lt;optimized out&gt;, render_x1=3D6, render_y0=3D&lt;optimize=
d=20
out&gt;, render_x0=3D0, dest_buf=3D&lt;optimized out&gt;) at pixops.c:2207<=
br>#2
 =C2=A0_pixops_scale (dest_buf=3D&lt;optimized out&gt;,=20
dest_width=3Ddest_width@entry=3D6, dest_height=3Ddest_height@entry=3D65532,=
=20
dest_rowstride=3D24, dest_channels=3D4, <br>=C2=A0=C2=A0 =C2=A0dest_has_alp=
ha=3D&lt;optimized
 out&gt;, src_buf=3D0x7fffb599b010 &quot;&quot;, src_width=3D65519, src_hei=
ght=3D4096,=20
src_rowstride=3D262076, src_channels=3D4, <br>=C2=A0=C2=A0 =C2=A0src_has_al=
pha=3D1, dest_x=3Ddest_x@entry=3D0, dest_y=3Ddest_y@entry=3D0, dest_region_=
width=3Ddest_region_width@entry=3D6, <br>=C2=A0=C2=A0 =C2=A0dest_region_hei=
ght=3Ddest_region_height@entry=3D4096,
 offset_x=3Doffset_x@entry=3D-32768, offset_y=3D&lt;optimized out&gt;,=20
scale_x=3Dscale_x@entry=3D1, <br>=C2=A0=C2=A0 =C2=A0scale_y=3Dscale_y@entry=
=3D1, interp_type=3Dinterp_type@entry=3DPIXOPS_INTERP_NEAREST) at pixops.c:=
2285<br>#3
 =C2=A00x00007ffff7bc6a2d in gdk_pixbuf_scale (src=3D0x6288a0, dest=3D0x628=
850,=20
dest_x=3D0, dest_y=3D0, dest_width=3D6, dest_height=3D4096, offset_x=3D-327=
68, <br>=C2=A0=C2=A0 =C2=A0offset_y=3D&lt;optimized out&gt;, scale_x=3D1, s=
cale_y=3D1, interp_type=3DGDK_INTERP_NEAREST) at gdk-pixbuf-scale.c:147<br>=
#4 =C2=A00x00007ffff595b40b in gif_get_lzw (context=3D0x6160e0) at io-gif.c=
:967<br>#5 =C2=A0gif_main_loop (context=3Dcontext@entry=3D0x6160e0) at io-g=
if.c:1424<br>#6
 =C2=A00x00007ffff595ba4c in gdk_pixbuf__gif_image_load_increment=20
(data=3D0x6160e0, buf=3D0x60fa0c &quot;GIF89a\357\377&quot;, size=3D1357,=20
error=3D&lt;optimized out&gt;)<br>=C2=A0=C2=A0 =C2=A0at io-gif.c:1610<br>#7=
 =C2=A00x00007ffff7bc5a45 in gdk_pixbuf_loader_load_module (loader=3Dloader=
@entry=3D0x60f2a0, image_type=3Dimage_type@entry=3D0x0, <br>=C2=A0=C2=A0 =
=C2=A0error=3Derror@entry=3D0x7ffffffee478) at gdk-pixbuf-loader.c:445<br>#8
 =C2=A00x00007ffff7bc62b8 in gdk_pixbuf_loader_close=20
(loader=3Dloader@entry=3D0x60f2a0, error=3Derror@entry=3D0x7fffffffe548) at=
=20
gdk-pixbuf-loader.c:810<br>#9 =C2=A00x00007ffff7bc3e2a in=20
gdk_pixbuf_new_from_file_at_scale (filename=3D0x7fffffffe890=20
&quot;sigsegv.gif&quot;, width=3D&lt;optimized out&gt;, height=3D&lt;optimi=
zed=20
out&gt;, <br>=C2=A0=C2=A0 =C2=A0preserve_aspect_ratio=3D&lt;optimized out&g=
t;, error=3D0x7fffffffe548) at gdk-pixbuf-io.c:1372<br>#10 0x00000000004008=
38 in main ()<br>(gdb) x/i $rip<br>=3D&gt; 0x7ffff7bced38 &lt;_pixops_scale=
+1048&gt;:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mov =C2=A0 =C2=A0=
(%r9),%r15d<br>(gdb) info registers <br>rax =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00x7ffff7e4c010=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0140=
737352351760<br>rbx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x80068000=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span class=3D"" id=3D"OBJ_PRE=
FIX_DWT434_com_zimbra_phone"><a href=3D"callto:2147909632">2147909632</a></=
span><br>rcx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00<br>rdx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00x80008000=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span class=
=3D"" id=3D"OBJ_PREFIX_DWT435_com_zimbra_phone"><a href=3D"callto:214751641=
6">2147516416</a></span><br>rsi =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x=
7fffb599b010=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0140736240136208=
<br>rdi =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x7ffff7e4c010=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0140737352351760<br>rbp =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00x80068000=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A00x80068000<br>rsp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x7f=
fffffee130=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00x7ffffffee130<br=
>r8 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x1000=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A04096<br>r9 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 0x7fffb597b028=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0140736=
240005160<br>r10 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x10000=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A065536<br>r11 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00x80068000=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0<span class=3D"" id=3D"OBJ_PREFIX_DWT436_com_zimbra_phone"><a href=3D"ca=
llto:2147909632">2147909632</a></span><br>r12 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00x4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A04<br>r13 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x8000=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A032768<br>r14 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0x80008000=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span class=3D"" =
id=3D"OBJ_PREFIX_DWT437_com_zimbra_phone"><a href=3D"callto:2147516416">214=
7516416</a></span><br>r15 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x7ffff7=
e4c010=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0140737352351760<br>ri=
p =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x7ffff7bced38=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00x7ffff7bced38 &lt;_pixops_scale+1048&gt;<br>=
eflags =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x10206=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0[ PF IF RF ]<br>cs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 0x33=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A051<br>ss =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x2b=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A043<br>ds =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00<br>es =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 0x0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00<br>fs =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A00<br>gs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A00<br><br>and the valgrind report:<br=
><br>=3D=3D8162=3D=3D Memcheck, a memory error detector<br>=3D=3D8162=3D=3D=
 Copyright (C) 2002-2013, and GNU GPL&#39;d, by Julian Seward et al.<br>=3D=
=3D8162=3D=3D Using Valgrind-3.10.0.SVN and LibVEX; rerun with -h for copyr=
ight info<br>=3D=3D8162=3D=3D Command: ../bins/gdk-pixbuf sigsegv.gif<br>=
=3D=3D8162=3D=3D <br>=3D=3D8162=3D=3D Warning: set address range perms: lar=
ge range [0x3a00e040, 0x79fca040) (undefined)<br>=3D=3D8162=3D=3D Invalid r=
ead of size 4<br>=3D=3D8162=3D=3D =C2=A0 =C2=A0at 0x4E4CD38: _pixops_scale =
(in /usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)<br>=3D=3D8162=
=3D=3D =C2=A0 =C2=A0by 0x4E44A2C: gdk_pixbuf_scale (in /usr/lib/x86_64-linu=
x-gnu/libgdk_pixbuf-2.0.so.0.3000.7)<br>=3D=3D8162=3D=3D =C2=A0 =C2=A0by 0x=
74B540A: gif_main_loop (in /usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/2.10.0/=
loaders/libpixbufloader-gif.so)<br>=3D=3D8162=3D=3D
 =C2=A0 =C2=A0by 0x74B5A4B: gdk_pixbuf__gif_image_load_increment (in=20
/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-gif=
.so)<br>=3D=3D8162=3D=3D =C2=A0 =C2=A0by 0x4E43A44: gdk_pixbuf_loader_load_=
module (in /usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)<br>=3D=
=3D8162=3D=3D =C2=A0 =C2=A0by 0x4E442B7: gdk_pixbuf_loader_close (in /usr/l=
ib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)<br>=3D=3D8162=3D=3D =C2=
=A0 =C2=A0by 0x4E41E29: gdk_pixbuf_new_from_file_at_scale (in /usr/lib/x86_=
64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)<br>=3D=3D8162=3D=3D =C2=A0 =C2=
=A0by 0x400837: main (in /home/vagrant/repos/QuickFuzz/bins/gdk-pixbuf)<br>=
=3D=3D8162=3D=3D =C2=A0Address 0x39fee058 is in the BSS segment of /usr/lib=
/valgrind/memcheck-amd64-linux<br>=3D=3D8162=3D=3D <br>=3D=3D8162=3D=3D Inv=
alid read of size 4<br>=3D=3D8162=3D=3D =C2=A0 =C2=A0at 0x4E4CD48: _pixops_=
scale (in /usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)<br>=3D=
=3D8162=3D=3D =C2=A0 =C2=A0by 0x4E44A2C: gdk_pixbuf_scale (in /usr/lib/x86_=
64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)<br>=3D=3D8162=3D=3D =C2=A0 =C2=
=A0by 0x74B540A: gif_main_loop (in /usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0=
/2.10.0/loaders/libpixbufloader-gif.so)<br>=3D=3D8162=3D=3D
 =C2=A0 =C2=A0by 0x74B5A4B: gdk_pixbuf__gif_image_load_increment (in=20
/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-gif=
.so)<br>=3D=3D8162=3D=3D =C2=A0 =C2=A0by 0x4E43A44: gdk_pixbuf_loader_load_=
module (in /usr/lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)<br>=3D=
=3D8162=3D=3D =C2=A0 =C2=A0by 0x4E442B7: gdk_pixbuf_loader_close (in /usr/l=
ib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)<br>=3D=3D8162=3D=3D =C2=
=A0 =C2=A0by 0x4E41E29: gdk_pixbuf_new_from_file_at_scale (in /usr/lib/x86_=
64-linux-gnu/libgdk_pixbuf-2.0.so.0.3000.7)<br>=3D=3D8162=3D=3D =C2=A0 =C2=
=A0by 0x400837: main (in /home/vagrant/repos/QuickFuzz/bins/gdk-pixbuf)<br>=
=3D=3D8162=3D=3D =C2=A0Address 0x39fee058 is in the BSS segment of /usr/lib=
/valgrind/memcheck-amd64-linux<br>=3D=3D8162=3D=3D <br>=3D=3D8162=3D=3D War=
ning: set address range perms: large range [0x3a00e028, 0x79fca058) (noacce=
ss)<br>Gerror: GIF file was missing some data (perhaps it was truncated som=
ehow?)<br>=C2=A0<br>&gt;<br>&gt;<br>&gt; Thanks,<br>&gt; Andreas<br>&gt;<br=
>&gt; --<br>&gt; Andreas Stieger &lt;<a href=3D"mailto:astieger@suse.com" t=
arget=3D"_blank">astieger@suse.com</a>&gt;<br>&gt; Project Manager Security=
<br>&gt; SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham=
 Norton, HRB 21284 (AG N=C3=BCrnberg)<br>&gt;<br>&gt;<br></div>

--001a11c335301bb97f0521599eef--

--001a11c335301bb98c0521599ef1
Content-Type: text/x-csrc; charset=US-ASCII; name="pixbuf_vuln_poc.c"
Content-Disposition: attachment; filename="pixbuf_vuln_poc.c"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ifdugotb0

I2luY2x1ZGUgPGdkay1waXhidWYvZ2RrLXBpeGJ1Zi5oPgovLyBnY2MgcGl4
YnVmX3Z1bG5fcG9jLmMgLW8gcGl4YnVmX3Z1bG5fcG9jICBgcGtnLWNvbmZp
ZyAtLWxpYnMgLS1jZmxhZ3MgZ2RrLXBpeGJ1Zi0yLjBgCgppbnQgbWFpbihp
bnQgYXJnYywgY2hhciAqKmFyZ3YpIHsKICAgIEdka1BpeGJ1ZiogYnVmOwog
ICAgaW50IHNpemUgPSAxODA7CiAgICBHRXJyb3IqIGVyciA9IE5VTEw7Cgog
ICAgYnVmID0gIGdka19waXhidWZfbmV3X2Zyb21fZmlsZV9hdF9zaXplKGFy
Z3ZbMV0sIHNpemUsIHNpemUsICZlcnIpOwoKICAgIGlmIChlcnIpCiAgICAg
IHByaW50ZiAoIkdlcnJvcjogJXNcbiIsIGVyci0+bWVzc2FnZSk7CgogICAg
Z19vYmplY3RfdW5yZWYoYnVmKTsKICAgIHJldHVybiAwOwp9Cg==

--001a11c335301bb98c0521599ef1
Content-Type: application/x-gzip; name="overflow.gif.gz"
Content-Disposition: attachment; filename="overflow.gif.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ifdugotr1

H4sICKJ88FUCA292ZXJmbG93LmdpZgBz93SzsEx8/59B4DkDQ1iCVwF7cEax
YaGKCAM6aGDADphQeIzo0gqMmOK4jMIPGFkYqAgEGAYhAAWMAxEhgTv8iQMK
IIKDQkMGdUhiBpQClFb8z+3nGhLs7BjgaqRnwAxSovhThIEFGPg6IHlgXmBg
YOGasNHDQFa9OlFmKVCaBexJHVD8sDH8+d/oXJhmwGxj4RgYQ1IYMrHGmF/6
fx1s4O7/DBD7Pv7/8b+ROzFAXkg3jjFQSBNr4OIKYyb2M69kmF26XcBmfoeZ
ycHw+X+jiJtIvpu8pE2clUQDc0laDhtECyjaWQTIiEkmRhGwLZ9htvAwfPvf
LKmvYVwdCVHBwrZha/g5JUWwsn8QZYwMoMBrcgyq8DRP82DN9S/y42dKDPZJ
AapnZs8IqLAODZsP0uDADnQb2FwuYCA3Ssf4GdYruzExoziB+Y9sBNh0Vgao
I779//C/0c+GX75MrILH2wg5AzGx9XTd8t0XD9bAD9IA8uCP/3//L+TLwO1L
FrD6X1BfsrAx/P7fGJQvJKuj75bKiqmBhb1AvOFrnfMCBmsArDNVgU0FAAA=

--001a11c335301bb98c0521599ef1--
