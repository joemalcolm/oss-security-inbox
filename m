X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4129" "Thursday" "26" "July" "2018" "21:11:28" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20180726191128.GA24065@eldamar.local>" "105" "Re: [oss-security] Pointer misuse unziping files with busybox" "^Date:" nil nil "7" "2018072619:11:28" "[oss-security] Pointer misuse unziping files with busybox" (number mark "        carnil@debia Jul 26  105/4129  " thread-indent "\"Re: [oss-security] Pointer misuse unziping files with busybox\"\n") "<CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>" ("<CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18300 invoked by uid 550); 26 Jul 2018 19:11:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18282 invoked from network); 26 Jul 2018 19:11:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=ezb/CPsp30GPb3fta856mI2eG0Cv9CEMhV9DOY9c5Io=;
        b=tnMhIzcaytm5vP5OAuo7CUzuf/gN3va2k3wKnq2Ux8rtwuloqp8E/NkJ/kKV3j7Gpa
         CbT5MpaO1y2Mub7ZJ82H/LT/xIdJvqjEmj246QxGUxXVn/A43zllrfz94tvZN8nnUm7u
         m8dxBm528rixk38CW8fM6Ygw13ouhZ4qCw0LZ1MActKzHAXH7aymGYkrc5tUE2Uqf74v
         TYd5TvqTTMc2HVBffKfq4XnyPkh+IVFPAYxLYjlzghk3tAj2Beq9yRQTDl6/oSPyKnQ3
         MNafM8/coEyJrau2GA0RH8Ue+HctS4mArQTGXFZSmemNdevUBUEC2Z2gmrhjRBrcCpBn
         FHIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=ezb/CPsp30GPb3fta856mI2eG0Cv9CEMhV9DOY9c5Io=;
        b=UqzJZfqkLGjzwxbiPXAm53CahnTAAaSt2NZnPk0Tt9BRRoI4Js6z2HWhcW5Fc3tQrN
         STpblIRC4rxBXHm2ni391nCF3QpSSRxpwxeNHx2d19yjEWJCz5ybxP0v+XspUZbCg1LY
         Pb3nkaXfGutgGxk+P65pOZv4kTRrMYDC2ma76R1NsUMWR8/L2VwWKbnVw6BV0VkOh3K3
         gDBG4RXwDrA0WwZkHX8SMFp42iKrmgcziM5nLqnZgNO5dLA92xQybdqK3MS5bIGJGi7Q
         v6f97PAvMJolsN0bg+CZkVmIgxWDJNK0PD8u9rcQIphx34lvflWdAJc2Rc8nDJiBw9SU
         GZ+g==
X-Gm-Message-State: AOUpUlGe5nwraQNkcDHvlw/TnT8b2fAb5VW2RQX4WqAWJMBQ96xc6lSh
	Atg9mGYjcKQTnZVdeGVHcwF7Bdsszx8=
X-Google-Smtp-Source: AAOMgpccV11arAClQwckBzKlDjnOFScJQ5ShkzEBUsZClk/42H1MiKUIJKAsSYBiNcP4f2FUpQjNHA==
X-Received: by 2002:adf:ee4e:: with SMTP id w14-v6mr2637360wro.63.1532632291521;
        Thu, 26 Jul 2018 12:11:31 -0700 (PDT)
Message-ID: <20180726191128.GA24065@eldamar.local>
References: <CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 26 Jul 2018 21:11:28 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Pointer misuse unziping files with busybox
To: oss-security@lists.openwall.com

Hi,

On Sun, Oct 25, 2015 at 11:34:27PM +0100, Gustavo Grieco wrote:
> Unziping a specially crafted zip file results in a computation of an inva=
lid
> pointer and a crash reading an invalid address. Upstream is taking a look
> to it, but in the meantime if someone wants to provide some feedback, it
> will be nice. Find an attached a test case to reproduce it. A
> complete backtrace in busybox 1.21 (debug) is available here:
>=20
> $ gdb --args ./busybox_unstripped unzip x.-6170921383890712452
> ...
> (gdb) run
> Starting program: /home/g/Code/busybox-1.21.0/busybox_unstripped unzip
> x.-6170921383890712452
> [Thread debugging using libthread_db enabled]
> Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1".
> Archive:  x.-6170921383890712452
>   inflating: ]3j=BDr=ABI=1B=12K-%Ix
>=20
> Program received signal SIGSEGV, Segmentation fault.
> huft_build (b=3Db@entry=3D0x7fffffffd320, n=3Dn@entry=3D264, s=3Ds@entry=
=3D257,
> d=3Dd@entry=3D0x5fa900 <cplens>, e=3De@entry=3D0x5fa8c0 <cplext> "",
> t=3D0x60620000eb08,
>     t@entry=3D0x602c0000fe60, m=3D0x7fffffffd260) at
> archival/libarchive/decompress_gunzip.c:441
> 441                    r.e =3D (unsigned char) e[*p - s]; /* non-simple--=
look
> up
> in lists */
> (gdb) bt
> #0  huft_build (b=3Db@entry=3D0x7fffffffd320, n=3Dn@entry=3D264, s=3Ds@en=
try=3D257,
> d=3Dd@entry=3D0x5fa900 <cplens>, e=3De@entry=3D0x5fa8c0 <cplext> "",
>     t=3D0x60620000eb08, t@entry=3D0x602c0000fe60, m=3D0x7fffffffd260) at
> archival/libarchive/decompress_gunzip.c:441
> #1  0x0000000000520b52 in inflate_block (state=3Dstate@entry=3D0x602c0000=
fe00,
> e=3De@entry=3D0x602c0000fe83 "") at archival/libarchive/decompress_gunzip=
.c:905
> #2  0x00000000005222d1 in inflate_get_next_window (state=3D0x602c0000fe00=
) at
> archival/libarchive/decompress_gunzip.c:947
> #3  inflate_unzip_internal (state=3Dstate@entry=3D0x602c0000fe00, in=3Din=
@entry=3D3,
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
>=20
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
>=20
> This issue was discovered with QuickFuzz

FTR, this older issue got CVE-2015-9261 assigned.

Regards,
Salvatore
