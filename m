X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4615" "Sunday" "29" "July" "2018" "11:58:08" "-0700" "Justin Ferguson" "justin@asac.co" "<CABejAMJfYbPQAeLLAdFojWawcACw3rHXBLp=6XOFOhV5wmwE1w@mail.gmail.com>" "121" "Re: [oss-security] Pointer misuse unziping files with busybox" "^Date:" nil nil "7" "2018072918:58:08" "[oss-security] Pointer misuse unziping files with busybox" (number mark "        justin@asac. Jul 29  121/4615  " thread-indent "\"Re: [oss-security] Pointer misuse unziping files with busybox\"\n") "<20180726191128.GA24065@eldamar.local>" ("<CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>" "<20180726191128.GA24065@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27795 invoked by uid 550); 29 Jul 2018 20:04:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1867 invoked from network); 29 Jul 2018 18:58:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asac-co.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=tXnHMtCCnyuUXQc0YEFJYKJNAGsRLirwbpdzuLLp7+Q=;
        b=yYGPnXmkJqOU9OsK8YKciFncC+ynqQhxPWGrR/YUpGm39k8ZN8u14DySgH1LJcIcOL
         ct8PUTp30vKPiMOU+DsHEP8OGRJqkrIjaBZCZsJVxO7BZG9DWg91PQgvLF5v7jFHEs8J
         5n0yP/RWTia/XLv6FtUqncdnZ+thmukaDkBNHT8YZgdM/pfeVWBX5fFB/GBSC3e/Y4h9
         Csj021gAyUzhycj6+W8iEuJ15iCt7kCcaxT20gOi98EAHWvvL5Z4bTx4l/1UG6USC6to
         ZlbjqVJ5lzyMfG3Rrfsg/i5GDr6/B4ViiQtFiY/g6/pGytq/Q2iENXC9H+xHLuFKmw5M
         pzgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=tXnHMtCCnyuUXQc0YEFJYKJNAGsRLirwbpdzuLLp7+Q=;
        b=G+IQ9I0ksCMawEfwZNnb5VVQPP0FCfWOkhUvJTaqiEARaawFrGGmD2r5E+W6bnn527
         Pj3c0I67jom0ydESNINfyqMKk2e2oqLdRdOL3bCyxti5JQHqARfgCJzr/RMmemrU+qXS
         bruf1Zy6Cer7PNYDorLgRMTUQmu9WL/S/ngNFwViNsNrz8G9/FM0q7eeLjsQTsyLqByl
         F+bKgQdaumSAnnMO9MRh55Fzz/dzkNN6UFfZrn8RpgOgf3KDtypp+Ehe71tmZ7Bsy5F5
         lEY1Np4PL9BF7vOOvDuPQr59rvL7WNveXFA6DdfioYLFW+eYTwd6UeA6BCRHhKvBGT0I
         rmKw==
X-Gm-Message-State: AOUpUlGCkoNDZIGnO+RGE3GvKID8PfxyrPDNcANCxjtkUNOC3p5NnSAa
	VpDBgRN31XiTxrDn6EJxZm20cYkWF5FiE9fwgFVc1HKu5vs=
X-Google-Smtp-Source: AAOMgpfz8+qnCUVkfmUpn3dwYL4inIIiprYNt9BKxiYVHTDWtttl3xnCZBgCZNySOjxqF/1tTAQvwuOLDaQW8xAvs5Y=
X-Received: by 2002:a17:902:a5:: with SMTP id a34-v6mr13936071pla.60.1532890688720;
 Sun, 29 Jul 2018 11:58:08 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [172.56.6.97]
In-Reply-To: <20180726191128.GA24065@eldamar.local>
References: <CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>
 <20180726191128.GA24065@eldamar.local>
Message-ID: <CABejAMJfYbPQAeLLAdFojWawcACw3rHXBLp=6XOFOhV5wmwE1w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Sun, 29 Jul 2018 11:58:08 -0700
From: Justin Ferguson <justin@asac.co>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Pointer misuse unziping files with busybox
To: oss-security@lists.openwall.com

Hello,

As an additional addendum, bugs are sometimes hard to quantify in
terms of what vernacular to use. From the written description this
would be termed as an "out-of-bounds read" or "read access violation".
(I stopped and read because I was curious what weird thing was
happening with a pointer)

-me


On Thu, Jul 26, 2018 at 12:11 PM, Salvatore Bonaccorso
<carnil@debian.org> wrote:
> Hi,
>
> On Sun, Oct 25, 2015 at 11:34:27PM +0100, Gustavo Grieco wrote:
>> Unziping a specially crafted zip file results in a computation of an inv=
alid
>> pointer and a crash reading an invalid address. Upstream is taking a look
>> to it, but in the meantime if someone wants to provide some feedback, it
>> will be nice. Find an attached a test case to reproduce it. A
>> complete backtrace in busybox 1.21 (debug) is available here:
>>
>> $ gdb --args ./busybox_unstripped unzip x.-6170921383890712452
>> ...
>> (gdb) run
>> Starting program: /home/g/Code/busybox-1.21.0/busybox_unstripped unzip
>> x.-6170921383890712452
>> [Thread debugging using libthread_db enabled]
>> Using host libthread_db library "/lib/x86_64-linux-gnu/libthread_db.so.1=
".
>> Archive:  x.-6170921383890712452
>>   inflating: ]3j=C2=BDr=C2=ABI  K-%Ix
>>
>> Program received signal SIGSEGV, Segmentation fault.
>> huft_build (b=3Db@entry=3D0x7fffffffd320, n=3Dn@entry=3D264, s=3Ds@entry=
=3D257,
>> d=3Dd@entry=3D0x5fa900 <cplens>, e=3De@entry=3D0x5fa8c0 <cplext> "",
>> t=3D0x60620000eb08,
>>     t@entry=3D0x602c0000fe60, m=3D0x7fffffffd260) at
>> archival/libarchive/decompress_gunzip.c:441
>> 441                    r.e =3D (unsigned char) e[*p - s]; /* non-simple-=
-look
>> up
>> in lists */
>> (gdb) bt
>> #0  huft_build (b=3Db@entry=3D0x7fffffffd320, n=3Dn@entry=3D264, s=3Ds@e=
ntry=3D257,
>> d=3Dd@entry=3D0x5fa900 <cplens>, e=3De@entry=3D0x5fa8c0 <cplext> "",
>>     t=3D0x60620000eb08, t@entry=3D0x602c0000fe60, m=3D0x7fffffffd260) at
>> archival/libarchive/decompress_gunzip.c:441
>> #1  0x0000000000520b52 in inflate_block (state=3Dstate@entry=3D0x602c000=
0fe00,
>> e=3De@entry=3D0x602c0000fe83 "") at archival/libarchive/decompress_gunzi=
p.c:905
>> #2  0x00000000005222d1 in inflate_get_next_window (state=3D0x602c0000fe0=
0) at
>> archival/libarchive/decompress_gunzip.c:947
>> #3  inflate_unzip_internal (state=3Dstate@entry=3D0x602c0000fe00, in=3Di=
n@entry=3D3,
>> out=3Dout@entry=3D4) at archival/libarchive/decompress_gunzip.c:1004
>> #4  0x0000000000522a6a in inflate_unzip (aux=3Daux@entry=3D0x7fffffffdc3=
0,
>> in=3Din@entry=3D3, out=3Dout@entry=3D4) at
>> archival/libarchive/decompress_gunzip.c:1048
>> #5  0x000000000051b255 in unzip_extract (dst_fd=3D4,
>> zip_header=3D0x7fffffffdd50)
>> at archival/unzip.c:255
>> #6  unzip_main (argc=3D<optimized out>, argv=3D<optimized out>) at
>> archival/unzip.c:654
>> #7  0x00000000004088bd in run_applet_no_and_exit
>> (applet_no=3Dapplet_no@entry=3D328, argv=3Dargv@entry=3D0x7fffffffe170) =
at
>> libbb/appletlib.c:759
>> #8  0x0000000000408935 in run_applet_and_exit (name=3D0x7fffffffe4c8 "un=
zip",
>> argv=3Dargv@entry=3D0x7fffffffe170) at libbb/appletlib.c:766
>> #9  0x0000000000408e7c in busybox_main (argv=3D0x7fffffffe170) at
>> libbb/appletlib.c:728
>> #10 run_applet_and_exit (name=3D<optimized out>, argv=3Dargv@entry
>> =3D0x7fffffffe168)
>> at libbb/appletlib.c:768
>> #11 0x0000000000408f65 in main (argc=3D<optimized out>, argv=3D0x7ffffff=
fe168)
>> at
>> libbb/appletlib.c:823
>>
>> (gdb) x/i $rip
>> =3D> 0x51fb17 <huft_build+2852>:    mov    (%rdi),%dl
>> (gdb) info registers
>> rax            0x0    0
>> rbx            0x57    87
>> rcx            0x814a18    8473112
>> rdx            0x140900    1313024
>> rsi            0x5fa900    6269184
>> rdi            0xa04dcc    10505676
>> rbp            0x10007fff7940    0x10007fff7940
>> rsp            0x7fffffffc930    0x7fffffffc930
>> r8             0x7fffffffcb64    140737488341860
>> r9             0x7fffffffcbe8    140737488341992
>> r10            0x60620000eb10    105974023121680
>> r11            0x7fffffffcadc    140737488341724
>> r12            0x7fffffffd260    140737488343648
>> r13            0x8    8
>> r14            0x10007fff7944    17594333493572
>> r15            0x0    0
>> rip            0x51fb17    0x51fb17 <huft_build+2852>
>> eflags         0x10216    [ PF AF IF RF ]
>> cs             0x33    51
>> ss             0x2b    43
>> ds             0x0    0
>> es             0x0    0
>> fs             0x0    0
>> gs             0x0    0
>>
>> This issue was discovered with QuickFuzz
>
> FTR, this older issue got CVE-2015-9261 assigned.
>
> Regards,
> Salvatore
