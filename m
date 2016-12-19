X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6415" "Monday" "19" "December" "2016" "14:47:38" "+0000" "Agustin Mista" "mista.agustin@gmail.com" "<CAFR3uCO-7U0pAyrP7RKfLNUN1JeA6UbB=TpsHLff1hiuHeudLw@mail.gmail.com>" "156" "Re: [oss-security] CVE-2016-9584: heap use-after-free on libical" nil nil nil "12" "2016121914:47:38" "[oss-security] CVE-2016-9584: heap use-after-free on libical" (number mark "U       mista.agusti Dec 19  156/6415  " thread-indent "\"Re: [oss-security] CVE-2016-9584: heap use-after-free on libical\"\n") "<1F48D2B8-E1B2-48AB-A7F6-3EB320F269B1@gmail.com>" ("<CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>" "<CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>" "<1F4307CC-21CD-4712-95AE-65813E5A2903@gmail.com>" "<1F48D2B8-E1B2-48AB-A7F6-3EB320F269B1@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20341 invoked by uid 550); 19 Dec 2016 15:02:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7623 invoked from network); 19 Dec 2016 14:48:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rPWGG7qFjpo4STPXjion4mOo1l6SPnmhZ8OiruiPq3s=;
        b=Ws2TWRkXz+7be194Q2nxmvemq4S+b1cpViek+2OR2qcS6ALSydAAoptNtGHLsZzm6L
         zLaBmehJqnhSRnMgaiDiTLbFZu5ElIgJwMYICBpix9PPSCkYqv58SUJmjn/8OvcEtAAc
         nRbVWrZi29nIywJvTAzihumZMib4vAVOuCJfyz4MWsUDeZoK5VpN01HTeFoa907hEp9m
         346d29NRTlHPFgg3GidD/jPWMXDcCxOc4Hn76nUS9tjarU/7VPJz1kiz18kefrjhvOVI
         QraxxMP75gfJQbiBG7o3IxevU0PBFiWG0GtGiCruly3STm58hMspKP6KPdi6XOwl8UeZ
         pEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rPWGG7qFjpo4STPXjion4mOo1l6SPnmhZ8OiruiPq3s=;
        b=Z4M6R6WcGBIsD9qRA9kIF9cDq2NPG0eWo25xZsFTTcuDxL18y5J2NJqZ/vL8Ica7nl
         sOQyEnlkK0xFyWFyPp9B5T+pztmcyicDA3FY1syrYjwS4FmEeZXw0lyFqVVtsVepVCeG
         M78WWhsk6scfs6EKSjr7vqFGeJTq7CQHiGmD7JLnKY0VHNWxdlnR+6iCX16g9fRLSM3+
         PQqdQy+bjEShj2H3IxbGFm0e/OxePsFblMzZ+hsjYnXz58u84ldHayupeCWzij9MU6bV
         INVvUBumdsymFjvbf3Cu1oAYzF+Y5SK5JktdWF+ukI/AWTO2+J+UM0UaQWZZFqLYl2a/
         Raig==
X-Gm-Message-State: AIkVDXIcSSZuwxMep1sy2vAC6j77GgCDdGmojicuVvz46sZK238PlRNF/wiqfOBpvd5oiVzP9xdObNMKxTi37Q==
X-Received: by 10.31.7.204 with SMTP id 195mr6338861vkh.175.1482158869358;
 Mon, 19 Dec 2016 06:47:49 -0800 (PST)
MIME-Version: 1.0
References: <CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>
 <CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>
 <1F4307CC-21CD-4712-95AE-65813E5A2903@gmail.com> <1F48D2B8-E1B2-48AB-A7F6-3EB320F269B1@gmail.com>
In-Reply-To: <1F48D2B8-E1B2-48AB-A7F6-3EB320F269B1@gmail.com>
From: Agustin Mista <mista.agustin@gmail.com>
Date: Mon, 19 Dec 2016 14:47:38 +0000
Message-ID: <CAFR3uCO-7U0pAyrP7RKfLNUN1JeA6UbB=TpsHLff1hiuHeudLw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1143d6f4e8ade30544040044
Subject: Re: [oss-security] CVE-2016-9584: heap use-after-free on libical

--001a1143d6f4e8ade30544040044
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brandon,

Thunderbird 45 seems to be handling this corrupted file properly. Also, we
used Valgrind
and found nothing suspicious.

Regards.
Agust=C3=ADn.

El jue., 15 dic. 2016 a las 13:10, Brandon Perry (<bperry.volatile@gmail.co=
m>)
escribi=C3=B3:


> On Dec 15, 2016, at 10:04 AM, Brandon Perry <bperry.volatile@gmail.com>
wrote:
>
>
>> On Dec 15, 2016, at 8:38 AM, Agustin Mista <mista.agustin@gmail.com>
wrote:
>>
>> We found a heap use-after-free in a recent revision of libical (
>> f3688b444f820cecf51b1539b0856a392c0fdb0f),
>> using a specially crafted ics file. This bugs looks particularly
dangerous
>> since it allows to read a big chunk of the heap memory.
>>
>> The address sanitizer report is as follows:
>>
>> =3D=3D14573=3D=3DERROR: AddressSanitizer: heap-use-after-free on address
>> 0x60700001e394 at pc 0x00000044478e bp 0x7fffffffc4a0 sp 0x7fffffffbc28
>> READ of size 62 at 0x60700001e394 thread T0
>> #0 0x44478d (/home/agustin/Code/libical/build/src/test/parser+0x44478d)
>> #1 0x444eb3 (/home/agustin/Code/libical/build/src/test/parser+0x444eb3)
>> #2 0x4461f0 (/home/agustin/Code/libical/build/src/test/parser+0x4461f0)
>> #3 0x7ffff7b519e8 (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0x19a9e8)
>> #4 0x7ffff7b5a40f (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0x1a340f)
>> #5 0x7ffff7add113 (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0x126113)
>> #6 0x7ffff7a978ec (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0xe08ec)
>> #7 0x7ffff7a97b4a (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0xe0b4a)
>> #8 0x7ffff7a96f11 (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0xdff11)
>> #9 0x4b8db7 (/home/agustin/Code/libical/build/src/test/parser+0x4b8db7)
>> #10 0x7ffff61baf44 (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)
>> #11 0x4b829c (/home/agustin/Code/libical/build/src/test/parser+0x4b829c)
>>
>> 0x60700001e394 is located 4 bytes inside of 66-byte region
[0x60700001e390,
>> 0x60700001e3d2)
>> freed by thread T0 here:
>> #0 0x49a99b (/home/agustin/Code/libical/build/src/test/parser+0x49a99b)
>> #1 0x7ffff7abab48 (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0x103b48)
>> #2 0x7ffff7ad0da1 (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0x119da1)
>> #3 0x4b8cde (/home/agustin/Code/libical/build/src/test/parser+0x4b8cde)
>> #4 0x7ffff61baf44 (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)
>>
>> previously allocated by thread T0 here:
>> #0 0x49ac1b (/home/agustin/Code/libical/build/src/test/parser+0x49ac1b)
>> #1 0x7ffff7aba55a (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0x10355a)
>> #2 0x7ffff7ad7777 (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0x120777)
>> #3 0x7ffff7ad808a (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0x12108a)
>> #4 0x7ffff7ad0220 (/home/agustin/Code/libical/build/lib/libical.so.2+
>> 0x119220)
>> #5 0x4b8cde (/home/agustin/Code/libical/build/src/test/parser+0x4b8cde)
>> #6 0x7ffff61baf44 (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)
>>
>> SUMMARY: AddressSanitizer: heap-use-after-free ??:0 ??
>> Shadow bytes around the buggy address:
>> 0x0c0e7fffbc20: fd fd fd fd fd fd fd fd fa fa fa fa fd fd fd fd
>> 0x0c0e7fffbc30: fd fd fd fd fd fd fa fa fa fa fd fd fd fd fd fd
>> 0x0c0e7fffbc40: fd fd fd fd fa fa fa fa fd fd fd fd fd fd fd fd
>> 0x0c0e7fffbc50: fd fd fa fa fa fa fd fd fd fd fd fd fd fd fd fd
>> 0x0c0e7fffbc60: fa fa fa fa fd fd fd fd fd fd fd fd fd fd fa fa
>> =3D>0x0c0e7fffbc70: fa fa[fd]fd fd fd fd fd fd fd fd fa fa fa fa fa
>> 0x0c0e7fffbc80: fd fd fd fd fd fd fd fd fd fd fa fa fa fa 00 00
>> 0x0c0e7fffbc90: 00 00 00 00 00 00 03 fa fa fa fa fa fd fd fd fd
>> 0x0c0e7fffbca0: fd fd fd fd fd fa fa fa fa fa fd fd fd fd fd fd
>> 0x0c0e7fffbcb0: fd fd fd fd fa fa fa fa fd fd fd fd fd fd fd fd
>> 0x0c0e7fffbcc0: fd fd fa fa fa fa fd fd fd fd fd fd fd fd fd fd
>>
>>
>> And the backtrace is available here:
>>
>> #0 0x00007ffff61cfc37 in __GI_raise (sig=3Dsig@entry=3D6)
>> at ../nptl/sysdeps/unix/sysv/linux/raise.c:56
>> #1 0x00007ffff61d3028 in __GI_abort () at abort.c:89
>> #2 0x00000000004b1356 in __sanitizer::Abort() ()
>> #3 0x00000000004a2037 in __asan::AsanDie() ()
>> #4 0x00000000004a8a6f in __sanitizer::Die() ()
>> #5 0x00000000004a06cb in
__asan::ScopedInErrorReport::~ScopedInErrorReport()
>> ()
>> #6 0x00000000004a0211 in __asan_report_error ()
>> #7 0x00000000004447a9 in printf_common(void*, char const*,
__va_list_tag*)
>> ()
>> #8 0x0000000000444eb4 in vsnprintf ()
>> #9 0x00000000004461f1 in snprintf ()
>> #10 0x00007ffff7b519e9 in icalreqstattype_as_string_r (stat=3D...)
>> at /home/agustin/Code/libical/src/libical/icaltypes.c:171
>> #11 0x00007ffff7b5a410 in icalvalue_as_ical_string_r
(value=3D0x60e0000280c0)
>> at /home/agustin/Code/libical/src/libical/icalvalue.c:1208
>> #12 0x00007ffff7add114 in icalproperty_as_ical_string_r
>> (prop=3D0x6060000010a0)
>> at /home/agustin/Code/libical/src/libical/icalproperty.c:442
>> #13 0x00007ffff7a978ed in icalcomponent_as_ical_string_r
>> (impl=3D0x60700001e7f0)
>> at /home/agustin/Code/libical/src/libical/icalcomponent.c:291
>> #14 0x00007ffff7a97b4b in icalcomponent_as_ical_string_r
>> (impl=3D0x60700000ded0)
>> at /home/agustin/Code/libical/src/libical/icalcomponent.c:300
>> #15 0x00007ffff7a96f12 in icalcomponent_as_ical_string
(impl=3D0x60700000ded0)
>> at /home/agustin/Code/libical/src/libical/icalcomponent.c:247
>> #16 0x00000000004b8db8 in main (argc=3D2, argv=3D0x7fffffffdf08)
>> at /home/agustin/Code/libical/src/test/icaltestparser.c:109
>>
>> It is worth to mention there is a very similar bug found (CVE-2016-5824)
on
>> the libical version used by
>> Thunderbird but we think is *not* the same as this one. In fact, we've
>> tested it on Thunderbird and it does *not* crash.
>
> I=E2=80=99ve found multiple use-after-frees in libical that affected Thun=
derbird
that did not cause Thunderbird to crash. Did you run this through valgrind
or are you using Thunderbird not crashing as evidence it isn=E2=80=99t vuln=
erable.

An example: https://bugzilla.mozilla.org/show_bug.cgi?id=3D1275400 <
https://bugzilla.mozilla.org/show_bug.cgi?id=3D1275400>
>
>>
>> The reproducer is available upon request.
>>
>> Unfortunately, there is no fix yet, but upstream is working on it.
>>
>> Regards.
>

--001a1143d6f4e8ade30544040044--
