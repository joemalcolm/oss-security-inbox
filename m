X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10308" "Sunday" "25" "October" "2015" "23:34:27" "+0100" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>" "199" "[oss-security] Pointer misuse unziping files with busybox" nil nil nil "10" "2015102522:34:27" "[oss-security] Pointer misuse unziping files with busybox" (number mark "U       gustavo.grie Oct 25  199/10308 " thread-indent "\"[oss-security] Pointer misuse unziping files with busybox\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7732 invoked by uid 550); 25 Oct 2015 22:34:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7688 invoked from network); 25 Oct 2015 22:34:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=1ax4QX5SPkWFabWUV5+m39C1Sk/x+DK3/HquJz/TQj0=;
        b=VqFDTRgCF43m+Om0qq0Oi67Fxd8oX50zpd4mLVeOHBnCE903CSJ+lh2TEbZhFNsKyF
         43czDtFE1lOH0T/lU8MvuLG4ROvQB5z7YwtcAbNTdpwru3DtareajBYHP0aef/QfUPI9
         /ZhgKsrnQbnzJfbtVNS129nl81t0EW9OHz6QNvSTD8kX6gqpKqNUsDu6NSg2yrMMQXqt
         in73VZr0k7ZbHIq1zvNgGxAE8nS/P1ts9jSqqx30lsDukSJmt7EuT1f/hxr7qsbaYATF
         5PLVnuStGBSZCykv/IBNczhE9yOX/V7c5x27iswhQSVK0ees2Nl9GlEqqxR8gbnrvg4a
         JXSg==
MIME-Version: 1.0
X-Received: by 10.112.180.230 with SMTP id dr6mr15376106lbc.72.1445812468151;
 Sun, 25 Oct 2015 15:34:28 -0700 (PDT)
Date: Sun, 25 Oct 2015 23:34:27 +0100
Message-ID: <CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary=001a11c345bc9396390522f572da
Subject: [oss-security] Pointer misuse unziping files with busybox

--001a11c345bc9396390522f572da
Content-Type: multipart/alternative; boundary=001a11c345bc9396320522f572d8

--001a11c345bc9396320522f572d8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Unziping a specially crafted zip file results in a computation of an invalid
pointer and a crash reading an invalid address. Upstream is taking a look
to it, but in the meantime if someone wants to provide some feedback, it
will be nice. Find an attached a test case to reproduce it. A
complete backtrace in busybox 1.21 (debug) is available here:

$ gdb --args ./busybox_unstripped unzip x.-6170921383890712452
...
(gdb) run
Starting program: /home/g/Code/busybox-1.21.0/busybox_unstripped unzip
x.-6170921383890712452
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
Archive:  x.-6170921383890712452
  inflating: ]3j=C2=BDr=C2=ABI=1B=12K-%Ix

Program received signal SIGSEGV, Segmentation fault.
huft_build (b=3Db@entry=3D0x7fffffffd320, n=3Dn@entry=3D264, s=3Ds@entry=3D=
257,
d=3Dd@entry=3D0x5fa900 <cplens>, e=3De@entry=3D0x5fa8c0 <cplext> "",
t=3D0x60620000eb08,
    t@entry=3D0x602c0000fe60, m=3D0x7fffffffd260) at
archival/libarchive/decompress_gunzip.c:441
441                    r.e =3D (unsigned char) e[*p - s]; /* non-simple--lo=
ok
up
in lists */
(gdb) bt
#0  huft_build (b=3Db@entry=3D0x7fffffffd320, n=3Dn@entry=3D264, s=3Ds@entr=
y=3D257,
d=3Dd@entry=3D0x5fa900 <cplens>, e=3De@entry=3D0x5fa8c0 <cplext> "",
    t=3D0x60620000eb08, t@entry=3D0x602c0000fe60, m=3D0x7fffffffd260) at
archival/libarchive/decompress_gunzip.c:441
#1  0x0000000000520b52 in inflate_block (state=3Dstate@entry=3D0x602c0000fe=
00,
e=3De@entry=3D0x602c0000fe83 "") at archival/libarchive/decompress_gunzip.c=
:905
#2  0x00000000005222d1 in inflate_get_next_window (state=3D0x602c0000fe00) =
at
archival/libarchive/decompress_gunzip.c:947
#3  inflate_unzip_internal (state=3Dstate@entry=3D0x602c0000fe00, in=3Din@e=
ntry=3D3,
out=3Dout@entry=3D4) at archival/libarchive/decompress_gunzip.c:1004
#4  0x0000000000522a6a in inflate_unzip (aux=3Daux@entry=3D0x7fffffffdc30,
in=3Din@entry=3D3, out=3Dout@entry=3D4) at
archival/libarchive/decompress_gunzip.c:1048
#5  0x000000000051b255 in unzip_extract (dst_fd=3D4,
zip_header=3D0x7fffffffdd50)
at archival/unzip.c:255
#6  unzip_main (argc=3D<optimized out>, argv=3D<optimized out>) at
archival/unzip.c:654
#7  0x00000000004088bd in run_applet_no_and_exit
(applet_no=3Dapplet_no@entry=3D328, argv=3Dargv@entry=3D0x7fffffffe170) at
libbb/appletlib.c:759
#8  0x0000000000408935 in run_applet_and_exit (name=3D0x7fffffffe4c8 "unzip=
",
argv=3Dargv@entry=3D0x7fffffffe170) at libbb/appletlib.c:766
#9  0x0000000000408e7c in busybox_main (argv=3D0x7fffffffe170) at
libbb/appletlib.c:728
#10 run_applet_and_exit (name=3D<optimized out>, argv=3Dargv@entry
=3D0x7fffffffe168)
at libbb/appletlib.c:768
#11 0x0000000000408f65 in main (argc=3D<optimized out>, argv=3D0x7fffffffe1=
68)
at
libbb/appletlib.c:823

(gdb) x/i $rip
=3D> 0x51fb17 <huft_build+2852>:    mov    (%rdi),%dl
(gdb) info registers
rax            0x0    0
rbx            0x57    87
rcx            0x814a18    8473112
rdx            0x140900    1313024
rsi            0x5fa900    6269184
rdi            0xa04dcc    10505676
rbp            0x10007fff7940    0x10007fff7940
rsp            0x7fffffffc930    0x7fffffffc930
r8             0x7fffffffcb64    140737488341860
r9             0x7fffffffcbe8    140737488341992
r10            0x60620000eb10    105974023121680
r11            0x7fffffffcadc    140737488341724
r12            0x7fffffffd260    140737488343648
r13            0x8    8
r14            0x10007fff7944    17594333493572
r15            0x0    0
rip            0x51fb17    0x51fb17 <huft_build+2852>
eflags         0x10216    [ PF AF IF RF ]
cs             0x33    51
ss             0x2b    43
ds             0x0    0
es             0x0    0
fs             0x0    0
gs             0x0    0

This issue was discovered with QuickFuzz

Thanks!

--001a11c345bc9396320522f572d8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Unziping a specially crafted zip file results in a computa=
tion of an invalid<br>pointer and a crash reading an invalid address. Upstr=
eam is taking a look to it, but in the meantime if someone wants to provide=
 some feedback, it will be nice. Find an attached a test case to reproduce =
it. A<br>complete backtrace in busybox 1.21 (debug) is available here:<br><=
br>$ gdb --args ./busybox_unstripped unzip x.-6170921383890712452 <br>...<b=
r>(gdb) run<br>Starting program: /home/g/Code/busybox-1.21.0/busybox_unstri=
pped unzip<br>x.-6170921383890712452<br>[Thread debugging using libthread_d=
b enabled]<br>Using host libthread_db library &quot;/lib/x86_64-linux-gnu/l=
ibthread_db.so.1&quot;.<br>Archive: =C2=A0x.-6170921383890712452<br>=C2=A0 =
inflating: ]3j=C2=BDr=C2=ABI=1B=12K-%Ix<br><br>Program received signal SIGS=
EGV, Segmentation fault.<br>huft_build (b=3Db@entry=3D0x7fffffffd320, n=3Dn=
@entry=3D264, s=3Ds@entry=3D257,<br>d=3Dd@entry=3D0x5fa900 &lt;cplens&gt;, =
e=3De@entry=3D0x5fa8c0 &lt;cplext&gt; &quot;&quot;, t=3D0x60620000eb08, <br=
>=C2=A0 =C2=A0 t@entry=3D0x602c0000fe60, m=3D0x7fffffffd260) at<br>archival=
/libarchive/decompress_gunzip.c:441<br>441 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r.e =3D (unsigned char) e[*p - s]; /*=
 non-simple--look up<br>in lists */<br>(gdb) bt<br>#0 =C2=A0huft_build (b=
=3Db@entry=3D0x7fffffffd320, n=3Dn@entry=3D264, s=3Ds@entry=3D257,<br>d=3Dd=
@entry=3D0x5fa900 &lt;cplens&gt;, e=3De@entry=3D0x5fa8c0 &lt;cplext&gt; &qu=
ot;&quot;, <br>=C2=A0 =C2=A0 t=3D0x60620000eb08, t@entry=3D0x602c0000fe60, =
m=3D0x7fffffffd260) at<br>archival/libarchive/decompress_gunzip.c:441<br>#1=
 =C2=A00x0000000000520b52 in inflate_block (state=3Dstate@entry=3D0x602c000=
0fe00,<br>e=3De@entry=3D0x602c0000fe83 &quot;&quot;) at archival/libarchive=
/decompress_gunzip.c:905<br>#2 =C2=A00x00000000005222d1 in inflate_get_next=
_window (state=3D0x602c0000fe00) at<br>archival/libarchive/decompress_gunzi=
p.c:947<br>#3 =C2=A0inflate_unzip_internal (state=3Dstate@entry=3D0x602c000=
0fe00, in=3Din@entry=3D3,<br>out=3Dout@entry=3D4) at archival/libarchive/de=
compress_gunzip.c:1004<br>#4 =C2=A00x0000000000522a6a in inflate_unzip (aux=
=3Daux@entry=3D0x7fffffffdc30,<br>in=3Din@entry=3D3, out=3Dout@entry=3D4) a=
t archival/libarchive/decompress_gunzip.c:1048<br>#5 =C2=A00x000000000051b2=
55 in unzip_extract (dst_fd=3D4, zip_header=3D0x7fffffffdd50)<br>at archiva=
l/unzip.c:255<br>#6 =C2=A0unzip_main (argc=3D&lt;optimized out&gt;, argv=3D=
&lt;optimized out&gt;) at<br>archival/unzip.c:654<br>#7 =C2=A00x00000000004=
088bd in run_applet_no_and_exit<br>(applet_no=3Dapplet_no@entry=3D328, argv=
=3Dargv@entry=3D0x7fffffffe170) at<br>libbb/appletlib.c:759<br>#8 =C2=A00x0=
000000000408935 in run_applet_and_exit (name=3D0x7fffffffe4c8 &quot;unzip&q=
uot;,<br>argv=3Dargv@entry=3D0x7fffffffe170) at libbb/appletlib.c:766<br>#9=
 =C2=A00x0000000000408e7c in busybox_main (argv=3D0x7fffffffe170) at<br>lib=
bb/appletlib.c:728<br>#10 run_applet_and_exit (name=3D&lt;optimized out&gt;=
, argv=3Dargv@entry=3D0x7fffffffe168)<br>at libbb/appletlib.c:768<br>#11 0x=
0000000000408f65 in main (argc=3D&lt;optimized out&gt;, argv=3D0x7fffffffe1=
68) at<br>libbb/appletlib.c:823<br><br>(gdb) x/i $rip<br>=3D&gt; 0x51fb17 &=
lt;huft_build+2852&gt;: =C2=A0 =C2=A0mov =C2=A0 =C2=A0(%rdi),%dl<br>(gdb) i=
nfo registers <br>rax =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0 =C2=A0 =
=C2=A00<br>rbx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x57 =C2=A0 =C2=A08=
7<br>rcx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x814a18 =C2=A0 =C2=A0847=
3112<br>rdx =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x140900 =C2=A0 =C2=A0=
1313024<br>rsi =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x5fa900 =C2=A0 =C2=
=A06269184<br>rdi =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00xa04dcc =C2=A0 =
=C2=A010505676<br>rbp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x10007fff79=
40 =C2=A0 =C2=A00x10007fff7940<br>rsp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00x7fffffffc930 =C2=A0 =C2=A00x7fffffffc930<br>r8 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 0x7fffffffcb64 =C2=A0 =C2=A0140737488341860<br>r9 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x7fffffffcbe8 =C2=A0 =C2=A014073748=
8341992<br>r10 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x60620000eb10 =C2=
=A0 =C2=A0105974023121680<br>r11 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=
x7fffffffcadc =C2=A0 =C2=A0140737488341724<br>r12 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00x7fffffffd260 =C2=A0 =C2=A0140737488343648<br>r13 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x8 =C2=A0 =C2=A08<br>r14 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00x10007fff7944 =C2=A0 =C2=A017594333493572<br>r1=
5 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0 =C2=A0 =C2=A00<br>rip =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x51fb17 =C2=A0 =C2=A00x51fb17 &lt;huft_=
build+2852&gt;<br>eflags =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x10216 =C2=A0 =C2=A0[=
 PF AF IF RF ]<br>cs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x33 =C2=A0 =
=C2=A051<br>ss =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x2b =C2=A0 =C2=A0=
43<br>ds =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A00<br>es=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A00<br>fs =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A00<br>gs =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0x0 =C2=A0 =C2=A00<br><br>This issue was discov=
ered with QuickFuzz<br><br>Thanks!</div>

--001a11c345bc9396320522f572d8--

--001a11c345bc9396390522f572da
Content-Type: application/octet-stream; name="x.-6170921383890712452"
Content-Disposition: attachment; filename="x.-6170921383890712452"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ig739j5p0

UEsDBBQAAgkIAAAAIQA5AAAANwAAADwAAAAQAAcAXTNqwr1ywqtJGxJLLSVJ
eCkBD0AdKBk8JzQsIj01JC0/ORJQSwMEFAECCAAAAAAhADoAAAAPAAAANgAA
AAwAAQASw73Ct1DCokohPXQiNjoUNTUiHRwgLT4WHlBLAQIQABQAAggIAAAA
oQA5AAAANwAAADwAAAAQQAcADAAAACwAMgCAAAAAAABdM2rCvXLCq0kbEkst
JUl4KQEPQB0oGSY4Cz4QNgEnJSYIPVBLAQIAABQAAggAAAAAIQAqAAAADwAA
BDYAAAAMAAEADQAAADIADQAAAEEAAAASw73Ct1DKokohPXQiNzA+FAI1HCcW
NzITNFBLBQUKAC4JAA04Cw0EOhZQSwUGAQAABAIAAgCZAAAAeQAAAAIALhM=

--001a11c345bc9396390522f572da--
