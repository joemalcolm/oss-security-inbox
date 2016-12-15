X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5221" "Thursday" "15" "December" "2016" "14:38:19" "+0000" "Agustin Mista" "mista.agustin@gmail.com" "<CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>" "116" "[oss-security] CVE-2016-9584: heap use-after-free on libical" nil nil nil "12" "2016121514:38:19" "[oss-security] CVE-2016-9584: heap use-after-free on libical" (number mark "U       mista.agusti Dec 15  116/5221  " thread-indent "\"[oss-security] CVE-2016-9584: heap use-after-free on libical\"\n") "<CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>" ("<CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12115 invoked by uid 550); 15 Dec 2016 16:01:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30065 invoked from network); 15 Dec 2016 14:38:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=eHE84Wm/Tn3hibFEgZw4k+J6g2qhpItd9w4zL6smILY=;
        b=jm60v+8s957YI9RYkDmlXYrybThhvuUqPTxgtwxUyRA/Q8LeFmU+CyMGFbbplnE+3a
         u8OCIJDkvUgFqRpufBYNrJpBGwGG+7AWKL4kqKEy0YZsP985IAYxdTBNnXtQP1FQLYWh
         ZdeO62ml+vQ9KFLq+Y0CvzRs3oWeKmJxJo8ZW0NkWkNbo76Ai4MrWnZQ/H9IwygH9eAo
         MuLR/DpIrojh8GYn9sJXdFKav88oGLOpFasfCe5pLXCfhCrt+7RQMA08U/tW/o/AtKBF
         tZhsD4Nc/SE5vKT5mGugT8UjhPd5cDgTpQbE4d1DXHkMqPtoxl5uaVBJIatK8c8XhljH
         ls7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=eHE84Wm/Tn3hibFEgZw4k+J6g2qhpItd9w4zL6smILY=;
        b=kQzWHjfMsiYlT8rk+QbFI8YNtpumBYPOKaRVoomdEJZWIFIAkn2Xo8Z+Hrz1IASfDo
         Lg5augJtUY7NT3lLP3D3Umoc0yvFcTWn7PJBH3ZjhETYbPviGnfqhFPurC65IEtGlZeb
         P+AA8xQAIYs3rhIxPs+fh++Yzglv28V4Py7GgDaX1Fmd83RRkYr2ubhrm5I7t+JeW7av
         E+UfA8yn9+I1a0lqwBCnUgXWvQtwI6nUy8kbPyu11Vdp5Z1Gqnb3h14WK/+1pnd+0Hv0
         1wz52wS7KU47yNnIVo6+023SG2W1On4OK0/tDvqhZRur133wOs3HZzCaGSm8/LdRcEnD
         M3kw==
X-Gm-Message-State: AKaTC03DJaDqdYGVKbyoQgco0aRUNzq58ikjQocrtr9WXpow1dZxtiJBJdByzjsOTTTaUKAb1IHyHOg1TE+/vw==
X-Received: by 10.176.64.4 with SMTP id h4mr1399456uad.18.1481812710357; Thu,
 15 Dec 2016 06:38:30 -0800 (PST)
MIME-Version: 1.0
References: <CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>
In-Reply-To: <CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>
From: Agustin Mista <mista.agustin@gmail.com>
Date: Thu, 15 Dec 2016 14:38:19 +0000
Message-ID: <CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c0b91e63981a90543b3682a
Subject: [oss-security] CVE-2016-9584: heap use-after-free on libical

--94eb2c0b91e63981a90543b3682a
Content-Type: text/plain; charset=UTF-8

We found a heap use-after-free in a recent revision of libical (
f3688b444f820cecf51b1539b0856a392c0fdb0f),
using a specially crafted ics file. This bugs looks particularly dangerous
since it allows to read a big chunk of the heap memory.

The address sanitizer report is as follows:

==14573==ERROR: AddressSanitizer: heap-use-after-free on address
0x60700001e394 at pc 0x00000044478e bp 0x7fffffffc4a0 sp 0x7fffffffbc28
READ of size 62 at 0x60700001e394 thread T0
#0 0x44478d (/home/agustin/Code/libical/build/src/test/parser+0x44478d)
#1 0x444eb3 (/home/agustin/Code/libical/build/src/test/parser+0x444eb3)
#2 0x4461f0 (/home/agustin/Code/libical/build/src/test/parser+0x4461f0)
#3 0x7ffff7b519e8 (/home/agustin/Code/libical/build/lib/libical.so.2+
0x19a9e8)
#4 0x7ffff7b5a40f (/home/agustin/Code/libical/build/lib/libical.so.2+
0x1a340f)
#5 0x7ffff7add113 (/home/agustin/Code/libical/build/lib/libical.so.2+
0x126113)
#6 0x7ffff7a978ec (/home/agustin/Code/libical/build/lib/libical.so.2+
0xe08ec)
#7 0x7ffff7a97b4a (/home/agustin/Code/libical/build/lib/libical.so.2+
0xe0b4a)
#8 0x7ffff7a96f11 (/home/agustin/Code/libical/build/lib/libical.so.2+
0xdff11)
#9 0x4b8db7 (/home/agustin/Code/libical/build/src/test/parser+0x4b8db7)
#10 0x7ffff61baf44 (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)
#11 0x4b829c (/home/agustin/Code/libical/build/src/test/parser+0x4b829c)

0x60700001e394 is located 4 bytes inside of 66-byte region [0x60700001e390,
0x60700001e3d2)
freed by thread T0 here:
#0 0x49a99b (/home/agustin/Code/libical/build/src/test/parser+0x49a99b)
#1 0x7ffff7abab48 (/home/agustin/Code/libical/build/lib/libical.so.2+
0x103b48)
#2 0x7ffff7ad0da1 (/home/agustin/Code/libical/build/lib/libical.so.2+
0x119da1)
#3 0x4b8cde (/home/agustin/Code/libical/build/src/test/parser+0x4b8cde)
#4 0x7ffff61baf44 (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)

previously allocated by thread T0 here:
#0 0x49ac1b (/home/agustin/Code/libical/build/src/test/parser+0x49ac1b)
#1 0x7ffff7aba55a (/home/agustin/Code/libical/build/lib/libical.so.2+
0x10355a)
#2 0x7ffff7ad7777 (/home/agustin/Code/libical/build/lib/libical.so.2+
0x120777)
#3 0x7ffff7ad808a (/home/agustin/Code/libical/build/lib/libical.so.2+
0x12108a)
#4 0x7ffff7ad0220 (/home/agustin/Code/libical/build/lib/libical.so.2+
0x119220)
#5 0x4b8cde (/home/agustin/Code/libical/build/src/test/parser+0x4b8cde)
#6 0x7ffff61baf44 (/lib/x86_64-linux-gnu/libc.so.6+0x21f44)

SUMMARY: AddressSanitizer: heap-use-after-free ??:0 ??
Shadow bytes around the buggy address:
0x0c0e7fffbc20: fd fd fd fd fd fd fd fd fa fa fa fa fd fd fd fd
0x0c0e7fffbc30: fd fd fd fd fd fd fa fa fa fa fd fd fd fd fd fd
0x0c0e7fffbc40: fd fd fd fd fa fa fa fa fd fd fd fd fd fd fd fd
0x0c0e7fffbc50: fd fd fa fa fa fa fd fd fd fd fd fd fd fd fd fd
0x0c0e7fffbc60: fa fa fa fa fd fd fd fd fd fd fd fd fd fd fa fa
=>0x0c0e7fffbc70: fa fa[fd]fd fd fd fd fd fd fd fd fa fa fa fa fa
0x0c0e7fffbc80: fd fd fd fd fd fd fd fd fd fd fa fa fa fa 00 00
0x0c0e7fffbc90: 00 00 00 00 00 00 03 fa fa fa fa fa fd fd fd fd
0x0c0e7fffbca0: fd fd fd fd fd fa fa fa fa fa fd fd fd fd fd fd
0x0c0e7fffbcb0: fd fd fd fd fa fa fa fa fd fd fd fd fd fd fd fd
0x0c0e7fffbcc0: fd fd fa fa fa fa fd fd fd fd fd fd fd fd fd fd


And the backtrace is available here:

#0 0x00007ffff61cfc37 in __GI_raise (sig=sig@entry=6)
at ../nptl/sysdeps/unix/sysv/linux/raise.c:56
#1 0x00007ffff61d3028 in __GI_abort () at abort.c:89
#2 0x00000000004b1356 in __sanitizer::Abort() ()
#3 0x00000000004a2037 in __asan::AsanDie() ()
#4 0x00000000004a8a6f in __sanitizer::Die() ()
#5 0x00000000004a06cb in __asan::ScopedInErrorReport::~ScopedInErrorReport()
()
#6 0x00000000004a0211 in __asan_report_error ()
#7 0x00000000004447a9 in printf_common(void*, char const*, __va_list_tag*)
()
#8 0x0000000000444eb4 in vsnprintf ()
#9 0x00000000004461f1 in snprintf ()
#10 0x00007ffff7b519e9 in icalreqstattype_as_string_r (stat=...)
at /home/agustin/Code/libical/src/libical/icaltypes.c:171
#11 0x00007ffff7b5a410 in icalvalue_as_ical_string_r (value=0x60e0000280c0)
at /home/agustin/Code/libical/src/libical/icalvalue.c:1208
#12 0x00007ffff7add114 in icalproperty_as_ical_string_r
(prop=0x6060000010a0)
at /home/agustin/Code/libical/src/libical/icalproperty.c:442
#13 0x00007ffff7a978ed in icalcomponent_as_ical_string_r
(impl=0x60700001e7f0)
at /home/agustin/Code/libical/src/libical/icalcomponent.c:291
#14 0x00007ffff7a97b4b in icalcomponent_as_ical_string_r
(impl=0x60700000ded0)
at /home/agustin/Code/libical/src/libical/icalcomponent.c:300
#15 0x00007ffff7a96f12 in icalcomponent_as_ical_string (impl=0x60700000ded0)
at /home/agustin/Code/libical/src/libical/icalcomponent.c:247
#16 0x00000000004b8db8 in main (argc=2, argv=0x7fffffffdf08)
at /home/agustin/Code/libical/src/test/icaltestparser.c:109

It is worth to mention there is a very similar bug found (CVE-2016-5824) on
the libical version used by
Thunderbird but we think is *not* the same as this one. In fact, we've
tested it on Thunderbird and it does *not* crash.

The reproducer is available upon request.

Unfortunately, there is no fix yet, but upstream is working on it.

Regards.

--94eb2c0b91e63981a90543b3682a--
