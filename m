X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4308" "Monday" "26" "October" "2015" "16:14:53" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQOivzKjPO-5vk6ySYFUPr_MjGcY-kH4ZLLp+-+DyaA1Q@mail.gmail.com>" "113" "[oss-security] Re: Pointer misuse unziping files with busybox" nil nil nil "10" "2015102619:14:53" "[oss-security] Re: Pointer misuse unziping files with busybox" (number mark "        gustavo.grie Oct 26  113/4308  " thread-indent "\"[oss-security] Re: Pointer misuse unziping files with busybox\"\n") "<CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>" ("<CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7265 invoked by uid 550); 26 Oct 2015 19:15:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7228 invoked from network); 26 Oct 2015 19:15:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=kPa27OhB+4nBkpxJnZUutd7/FsoIZbIVjFT4FbRFUHk=;
        b=a5G5eyC/K7FtGpXngb5UNWKfKHN0AVeKYF+9Oeaa7ktfQlNZ/fgKc2m7osqZmVPwJQ
         tyqDb5Uiy4IitZFEmKLT4OemCJp+GzViwSE0nn/3k6t5fPHJlRdh4aEApwNj5R54XXlZ
         KdNFR3bY3a0OIcXECtftVn36dsEtOypIN2zc3G0ujyxaykbzm5nNQ8S1JxJ+0OWTA8uY
         Uk+tuUoufwIVI+kDAlEwSONeEomR9angPw3GTNoq250RbXpn2GbGQVzz7dUIYg0otRgZ
         h2cWLgBuh/qrzmZuyYmWVSYI8M8P8fzrsHMvMNEDc+NQJRH4Pdo/mMYFzBPiCjSEj31n
         GKcQ==
MIME-Version: 1.0
X-Received: by 10.25.78.80 with SMTP id c77mr11989113lfb.18.1445886893509;
 Mon, 26 Oct 2015 12:14:53 -0700 (PDT)
In-Reply-To: <CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>
References: <CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>
Message-ID: <CACn5sdQOivzKjPO-5vk6ySYFUPr_MjGcY-kH4ZLLp+-+DyaA1Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114194e4ac575c052306c6d3
Date: Mon, 26 Oct 2015 16:14:53 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Pointer misuse unziping files with busybox
To: oss-security@lists.openwall.com

--001a114194e4ac575c052306c6d3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Fix:

http://git.busybox.net/busybox/commit/?id=3D1de25a6e87e0e627aa34298105a3d17=
c60a1f44e

2015-10-25 19:34 GMT-03:00 Gustavo Grieco <gustavo.grieco@gmail.com>:

> Unziping a specially crafted zip file results in a computation of an
> invalid
> pointer and a crash reading an invalid address. Upstream is taking a look
> to it, but in the meantime if someone wants to provide some feedback, it
> will be nice. Find an attached a test case to reproduce it. A
> complete backtrace in busybox 1.21 (debug) is available here:
>
> $ gdb --args ./busybox_unstripped unzip x.-6170921383890712452
> ...
> (gdb) run
> Starting program: /home/g/Code/busybox-1.21.0/busybox_unstripped unzip
> x.-6170921383890712452
> [Thread debugging using libthread_db enabled]
> Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
> Archive:  x.-6170921383890712452
>   inflating: ]3j=C2=BDr=C2=ABI K-%Ix
>
> Program received signal SIGSEGV, Segmentation fault.
> huft_build (b=3Db@entry=3D0x7fffffffd320, n=3Dn@entry=3D264, s=3Ds@entry=
=3D257,
> d=3Dd@entry=3D0x5fa900 <cplens>, e=3De@entry=3D0x5fa8c0 <cplext> "",
> t=3D0x60620000eb08,
>     t@entry=3D0x602c0000fe60, m=3D0x7fffffffd260) at
> archival/libarchive/decompress_gunzip.c:441
> 441                    r.e =3D (unsigned char) e[*p - s]; /*
> non-simple--look up
> in lists */
> (gdb) bt
> #0  huft_build (b=3Db@entry=3D0x7fffffffd320, n=3Dn@entry=3D264, s=3Ds@en=
try=3D257,
> d=3Dd@entry=3D0x5fa900 <cplens>, e=3De@entry=3D0x5fa8c0 <cplext> "",
>     t=3D0x60620000eb08, t@entry=3D0x602c0000fe60, m=3D0x7fffffffd260) at
> archival/libarchive/decompress_gunzip.c:441
> #1  0x0000000000520b52 in inflate_block (state=3Dstate@entry=3D0x602c0000=
fe00,
> e=3De@entry=3D0x602c0000fe83 "") at
> archival/libarchive/decompress_gunzip.c:905
> #2  0x00000000005222d1 in inflate_get_next_window (state=3D0x602c0000fe00=
) at
> archival/libarchive/decompress_gunzip.c:947
> #3  inflate_unzip_internal (state=3Dstate@entry=3D0x602c0000fe00, in=3Din=
@entry
> =3D3,
> out=3Dout@entry=3D4) at archival/libarchive/decompress_gunzip.c:1004
> #4  0x0000000000522a6a in inflate_unzip (aux=3Daux@entry=3D0x7fffffffdc30,
> in=3Din@entry=3D3, out=3Dout@entry=3D4) at
> archival/libarchive/decompress_gunzip.c:1048
> #5  0x000000000051b255 in unzip_extract (dst_fd=3D4,
> zip_header=3D0x7fffffffdd50)
> at archival/unzip.c:255
> #6  unzip_main (argc=3D<optimized out>, argv=3D<optimized out>) at
> archival/unzip.c:654
> #7  0x00000000004088bd in run_applet_no_and_exit
> (applet_no=3Dapplet_no@entry=3D328, argv=3Dargv@entry=3D0x7fffffffe170) at
> libbb/appletlib.c:759
> #8  0x0000000000408935 in run_applet_and_exit (name=3D0x7fffffffe4c8 "unz=
ip",
> argv=3Dargv@entry=3D0x7fffffffe170) at libbb/appletlib.c:766
> #9  0x0000000000408e7c in busybox_main (argv=3D0x7fffffffe170) at
> libbb/appletlib.c:728
> #10 run_applet_and_exit (name=3D<optimized out>, argv=3Dargv@entry
> =3D0x7fffffffe168)
> at libbb/appletlib.c:768
> #11 0x0000000000408f65 in main (argc=3D<optimized out>, argv=3D0x7fffffff=
e168)
> at
> libbb/appletlib.c:823
>
> (gdb) x/i $rip
> =3D> 0x51fb17 <huft_build+2852>:    mov    (%rdi),%dl
> (gdb) info registers
> rax            0x0    0
> rbx            0x57    87
> rcx            0x814a18    8473112
> rdx            0x140900    1313024
> rsi            0x5fa900    6269184
> rdi            0xa04dcc    10505676
> rbp            0x10007fff7940    0x10007fff7940
> rsp            0x7fffffffc930    0x7fffffffc930
> r8             0x7fffffffcb64    140737488341860
> r9             0x7fffffffcbe8    140737488341992
> r10            0x60620000eb10    105974023121680
> r11            0x7fffffffcadc    140737488341724
> r12            0x7fffffffd260    140737488343648
> r13            0x8    8
> r14            0x10007fff7944    17594333493572
> r15            0x0    0
> rip            0x51fb17    0x51fb17 <huft_build+2852>
> eflags         0x10216    [ PF AF IF RF ]
> cs             0x33    51
> ss             0x2b    43
> ds             0x0    0
> es             0x0    0
> fs             0x0    0
> gs             0x0    0
>
> This issue was discovered with QuickFuzz
>
> Thanks!
>

--001a114194e4ac575c052306c6d3--
