X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5735" "Thursday" "15" "December" "2016" "10:04:56" "-0600" "Brandon Perry" "bperry.volatile@gmail.com" "<1F4307CC-21CD-4712-95AE-65813E5A2903@gmail.com>" "127" "Re: [oss-security] CVE-2016-9584: heap use-after-free on libical" nil nil nil "12" "2016121516:04:56" "[oss-security] CVE-2016-9584: heap use-after-free on libical" (number mark "U       bperry.volat Dec 15  127/5735  " thread-indent "\"Re: [oss-security] CVE-2016-9584: heap use-after-free on libical\"\n") "<CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>" ("<CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>" "<CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23783 invoked by uid 550); 15 Dec 2016 16:05:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23765 invoked from network); 15 Dec 2016 16:05:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=1aBj9wdp6+UG3/STYwfGThXxcBpOaC/7Hzyv09HK+xQ=;
        b=hKnXQ0Pj5DB4UPXWHmPtTvAoKQQYNbPJQa+SCcQAFY/0sJTxqN46gAVag/eWAYWAVa
         uinJlb5n7sZbRwuZJSJUdvkyPofS0LwPmaanVPftkSj4rdRlrD4k5a0fK0vS22kTLh0Q
         Gdh+FXr1B6OYe1bFOBSgiK2AXYetnKrMbAq6QcKe1tL85/DvICrMdbHfnWT8X7v85Ud7
         tt69DPRiVP1D/CB/ZrDwfPAn8IZc2yGlBqx0B/vRwUdZi7rGpIOLu1GTVJcsFhZgIDJX
         ZI2Eevdmya+cs1mRa1UAlkRNB69+2RiW/crdGjqG3+oCkym9hEn6YO0C1WPPl61S/Ovw
         qhrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=1aBj9wdp6+UG3/STYwfGThXxcBpOaC/7Hzyv09HK+xQ=;
        b=cCqZ+F+yoWmXXU5hGR1oC+dODrv9k4HtwH5ImLTB9pLgrhFQjkkKHW5CQmERbShfQq
         9T49pKDBgocSC9ojjyfS1794wGPbJPWyFQCTg51K9INSOz6tQo48ddEoFHHXVRM7ubJG
         tBUJ60X/w84mCExTnU/GVJIINcnAansbaWrhm6RXG+t2DX5QWuagZiMB1VbipcTrUOc6
         c2MgwLvxSl9iF8Q/MwlqZfAgz6FRNnOVg5ztr8cDZGmRi04S7w6B1+OCnJLv6mQkbBt0
         pBhc6ngClIK/sPE3VRcCurFE9lr4uhGDhvIqZV+F8SwuwuR3tJ46QQ/ZvNg24Px7auO8
         iGag==
X-Gm-Message-State: AIkVDXJfhgeIV0zRjRr5RjHjEk7zN04W0n2i9OjEkXfmjBRD6xIieHV7zfha8PFuKRiGiA==
X-Received: by 10.157.56.36 with SMTP id i33mr1731075otc.253.1481817898372;
        Thu, 15 Dec 2016 08:04:58 -0800 (PST)
From: Brandon Perry <bperry.volatile@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Date: Thu, 15 Dec 2016 10:04:56 -0600
References: <CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>
 <CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>
Message-Id: <1F4307CC-21CD-4712-95AE-65813E5A2903@gmail.com>
X-Mailer: Apple Mail (2.3251)
Subject: Re: [oss-security] CVE-2016-9584: heap use-after-free on libical


> On Dec 15, 2016, at 8:38 AM, Agustin Mista <mista.agustin@gmail.com> wrot=
e:
>=20
> We found a heap use-after-free in a recent revision of libical (
> f3688b444f820cecf51b1539b0856a392c0fdb0f),
> using a specially crafted ics file. This bugs looks particularly dangerous
> since it allows to read a big chunk of the heap memory.
>=20
> The address sanitizer report is as follows:
>=20
> =3D=3D14573=3D=3DERROR: AddressSanitizer: heap-use-after-free on address
> 0x60700001e394 at pc 0x00000044478e bp 0x7fffffffc4a0 sp 0x7fffffffbc28
> READ of size 62 at 0x60700001e394 thread T0
> #0 0x44478d (/home/agustin/Code/libical/build/src/test/parser+0x44478d)
> #1 0x444eb3 (/home/agustin/Code/libical/build/src/test/parser+0x444eb3)
> #2 0x4461f0 (/home/agustin/Code/libical/build/src/test/parser+0x4461f0)
> #3 0x7ffff7b519e8 (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0x19a9e8)
> #4 0x7ffff7b5a40f (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0x1a340f)
> #5 0x7ffff7add113 (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0x126113)
> #6 0x7ffff7a978ec (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0xe08ec)
> #7 0x7ffff7a97b4a (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0xe0b4a)
> #8 0x7ffff7a96f11 (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0xdff11)
> #9 0x4b8db7 (/home/agustin/Code/libical/build/src/test/parser+0x4b8db7)
> #10 0x7ffff61baf44 (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)
> #11 0x4b829c (/home/agustin/Code/libical/build/src/test/parser+0x4b829c)
>=20
> 0x60700001e394 is located 4 bytes inside of 66-byte region [0x60700001e39=
0,
> 0x60700001e3d2)
> freed by thread T0 here:
> #0 0x49a99b (/home/agustin/Code/libical/build/src/test/parser+0x49a99b)
> #1 0x7ffff7abab48 (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0x103b48)
> #2 0x7ffff7ad0da1 (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0x119da1)
> #3 0x4b8cde (/home/agustin/Code/libical/build/src/test/parser+0x4b8cde)
> #4 0x7ffff61baf44 (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)
>=20
> previously allocated by thread T0 here:
> #0 0x49ac1b (/home/agustin/Code/libical/build/src/test/parser+0x49ac1b)
> #1 0x7ffff7aba55a (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0x10355a)
> #2 0x7ffff7ad7777 (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0x120777)
> #3 0x7ffff7ad808a (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0x12108a)
> #4 0x7ffff7ad0220 (/home/agustin/Code/libical/build/lib/libical.so.2+
> 0x119220)
> #5 0x4b8cde (/home/agustin/Code/libical/build/src/test/parser+0x4b8cde)
> #6 0x7ffff61baf44 (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)
>=20
> SUMMARY: AddressSanitizer: heap-use-after-free ??:0 ??
> Shadow bytes around the buggy address:
> 0x0c0e7fffbc20: fd fd fd fd fd fd fd fd fa fa fa fa fd fd fd fd
> 0x0c0e7fffbc30: fd fd fd fd fd fd fa fa fa fa fd fd fd fd fd fd
> 0x0c0e7fffbc40: fd fd fd fd fa fa fa fa fd fd fd fd fd fd fd fd
> 0x0c0e7fffbc50: fd fd fa fa fa fa fd fd fd fd fd fd fd fd fd fd
> 0x0c0e7fffbc60: fa fa fa fa fd fd fd fd fd fd fd fd fd fd fa fa
> =3D>0x0c0e7fffbc70: fa fa[fd]fd fd fd fd fd fd fd fd fa fa fa fa fa
> 0x0c0e7fffbc80: fd fd fd fd fd fd fd fd fd fd fa fa fa fa 00 00
> 0x0c0e7fffbc90: 00 00 00 00 00 00 03 fa fa fa fa fa fd fd fd fd
> 0x0c0e7fffbca0: fd fd fd fd fd fa fa fa fa fa fd fd fd fd fd fd
> 0x0c0e7fffbcb0: fd fd fd fd fa fa fa fa fd fd fd fd fd fd fd fd
> 0x0c0e7fffbcc0: fd fd fa fa fa fa fd fd fd fd fd fd fd fd fd fd
>=20
>=20
> And the backtrace is available here:
>=20
> #0 0x00007ffff61cfc37 in __GI_raise (sig=3Dsig@entry=3D6)
> at ../nptl/sysdeps/unix/sysv/linux/raise.c:56
> #1 0x00007ffff61d3028 in __GI_abort () at abort.c:89
> #2 0x00000000004b1356 in __sanitizer::Abort() ()
> #3 0x00000000004a2037 in __asan::AsanDie() ()
> #4 0x00000000004a8a6f in __sanitizer::Die() ()
> #5 0x00000000004a06cb in __asan::ScopedInErrorReport::~ScopedInErrorRepor=
t()
> ()
> #6 0x00000000004a0211 in __asan_report_error ()
> #7 0x00000000004447a9 in printf_common(void*, char const*, __va_list_tag*)
> ()
> #8 0x0000000000444eb4 in vsnprintf ()
> #9 0x00000000004461f1 in snprintf ()
> #10 0x00007ffff7b519e9 in icalreqstattype_as_string_r (stat=3D...)
> at /home/agustin/Code/libical/src/libical/icaltypes.c:171
> #11 0x00007ffff7b5a410 in icalvalue_as_ical_string_r (value=3D0x60e000028=
0c0)
> at /home/agustin/Code/libical/src/libical/icalvalue.c:1208
> #12 0x00007ffff7add114 in icalproperty_as_ical_string_r
> (prop=3D0x6060000010a0)
> at /home/agustin/Code/libical/src/libical/icalproperty.c:442
> #13 0x00007ffff7a978ed in icalcomponent_as_ical_string_r
> (impl=3D0x60700001e7f0)
> at /home/agustin/Code/libical/src/libical/icalcomponent.c:291
> #14 0x00007ffff7a97b4b in icalcomponent_as_ical_string_r
> (impl=3D0x60700000ded0)
> at /home/agustin/Code/libical/src/libical/icalcomponent.c:300
> #15 0x00007ffff7a96f12 in icalcomponent_as_ical_string (impl=3D0x60700000=
ded0)
> at /home/agustin/Code/libical/src/libical/icalcomponent.c:247
> #16 0x00000000004b8db8 in main (argc=3D2, argv=3D0x7fffffffdf08)
> at /home/agustin/Code/libical/src/test/icaltestparser.c:109
>=20
> It is worth to mention there is a very similar bug found (CVE-2016-5824) =
on
> the libical version used by
> Thunderbird but we think is *not* the same as this one. In fact, we've
> tested it on Thunderbird and it does *not* crash.

I=E2=80=99ve found multiple use-after-frees in libical that affected Thunde=
rbird that did not cause Thunderbird to crash. Did you run this through val=
grind or are you using Thunderbird not crashing as evidence it isn=E2=80=99=
t vulnerable.

>=20
> The reproducer is available upon request.
>=20
> Unfortunately, there is no fix yet, but upstream is working on it.
>=20
> Regards.

