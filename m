X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17637" "Friday" "24" "June" "2016" "08:54:08" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>" "336" "[oss-security] libical 0.47 SEGV on unknown address" nil nil nil "6" "2016062413:54:08" "[oss-security] libical 0.47 SEGV on unknown address" (number mark "U       bperry.volat Jun 24  336/17637 " thread-indent "\"[oss-security] libical 0.47 SEGV on unknown address\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21768 invoked by uid 550); 24 Jun 2016 13:54:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21567 invoked from network); 24 Jun 2016 13:54:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:date:message-id:to:mime-version;
        bh=B7b0N1tIRcdbTMT4mFKdBEQ5HVX7UxKyIUdah3gbHnI=;
        b=qM2dXhQfve9fm3fL82uVk4Qi+jBn5S1GlCFv0h1RbUjg9Q0/vG0EWHt1Wbm9W+rdvk
         fO1ai07GILvTkatOudPpc4tTmMOKh6T8mWcRliYm7/B5g7k5/uNcCJOMQrS0cytjie11
         nF/gSlCngfRC9qMchRTsdfzlADsqUrsDQj85bfT95e/6Oh2Rliqtn4wk+vlUl0nkd54+
         5LbZjo4/eVXmANbiZ0064WrekFWG/lratsC7oOHhxGuVqkcSG4+grXxXvDn1mWgAHonr
         nlEYeGudTZaQFCXc3tHq2GG7U5lI31zZrEfzlzU38nS/iGp/A/SKInZJhU9PZTDBp/P+
         9DHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:date:message-id:to:mime-version;
        bh=B7b0N1tIRcdbTMT4mFKdBEQ5HVX7UxKyIUdah3gbHnI=;
        b=eIirx4eNY6r1nn91OtH+5YJTkNMs3Q2R/vgWNz2VIcmIL60BY5SpWpGSpcCRFDn96J
         pBi+8UuL73pwt3uITuQOQVsT0gVeU7gUtku3UDiETfk02BMQNoWmesa+xIvqshVJFtfg
         ksQIw1Q5ILvX6o8tIlK26BXXBuaneIOAtxiJKq94EWg34T8vcdG16THGuvroeY3yTLgB
         Q6rwiGCT3Dz4Lug6RP7ypCbMYNbFwupsZs6JZprNLeEoEICzROa5rE73tAmOTQUkrb1P
         6O7D12+8A28EnQjjWlRzr8ddvaoCh38Y/6CxRJl7kilrkuNfiwImxbx8FGlLfl7dvJBi
         CQZA==
X-Gm-Message-State: ALyK8tIuxGpFrVWfcpbRwqbFLm8Pt3zyZsbJ76hZ9dVA86pYw0rhCtMQMjxXVytV1XiiPw==
X-Received: by 10.157.37.242 with SMTP id q105mr2792574ota.29.1466776459047;
        Fri, 24 Jun 2016 06:54:19 -0700 (PDT)
From: Brandon Perry <bperry.volatile@gmail.com>
X-Pgp-Agent: GPGMail 2.6b2
Content-Type: multipart/signed; boundary="Apple-Mail=_1641B94C-1942-4663-BD4A-4E01F6B39F08"; protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Fri, 24 Jun 2016 08:54:08 -0500
Message-Id: <6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>
To: fulldisclosure@seclists.org,
 oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] libical 0.47 SEGV on unknown address

--Apple-Mail=_1641B94C-1942-4663-BD4A-4E01F6B39F08
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_53812491-E718-4BB8-9761-1A2133684BAF"


--Apple-Mail=_53812491-E718-4BB8-9761-1A2133684BAF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello lists

Attached is a test case for causing a crash in libical 0.47 (shipped with T=
hunderbird) and this was also tested against 1.0 (various versions shipped =
with various email clients).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D24662=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x0000000=
00008 (pc 0x0000004fbb80 bp 0x7ffd68d966f0 sp 0x7ffd68d96520 T0)
    #0 0x4fbb7f in icalproperty_new_clone (/root/tmp/new_parse/parse_string=
047_asan+0x4fbb7f)
    #1 0x4f44e6 in icalparser_add_line (/root/tmp/new_parse/parse_string047=
_asan+0x4f44e6)
    #2 0x4efabe in icalparser_parse (/root/tmp/new_parse/parse_string047_as=
an+0x4efabe)
    #3 0x4f9c1f in icalparser_parse_string (/root/tmp/new_parse/parse_strin=
g047_asan+0x4f9c1f)
    #4 0x4eb7ef in main (/root/tmp/new_parse/parse_string047_asan+0x4eb7ef)
    #5 0x7fb657683a3f in __libc_start_main /build/glibc-ryFjv0/glibc-2.21/c=
su/libc-start.c:289
    #6 0x444ae8 in _start (/root/tmp/new_parse/parse_string047_asan+0x444ae=
8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV ??:0 icalproperty_new_clone
=3D=3D24662=3D=3DABORTING



I am posting this to Full Disclosure/OSS instead of reporting it because I =
have opened a handful of libical bugs in the Mozilla bug tracker, alerted s=
ecurity@mozilla.org <mailto:security@mozilla.org>, and worked to show how a=
nd where to reproduce the bugs in Thunderbird, but Mozilla hasn=E2=80=99t s=
hown any care at all about the bugs. Perhaps if I give a sample to the comm=
unity of the bugs in the bug reports, Mozilla will take the bug reports mor=
e seriously. This bug attached had not been reported yet.

While list members likely will not have access to these bugs, I am listing =
them here in case someone on the list can make something happen.

https://bugzilla.mozilla.org/show_bug.cgi?id=3D1275400 <https://bugzilla.mo=
zilla.org/show_bug.cgi?id=3D1275400> (Opened a month ago. After Tyson repro=
ed the bug in libical, no responses).

The following three bugs are distinct heap over-reads in libical (tested ag=
ainst libical 0.47 and 1.0) which have had little to no reception by Mozill=
a.

https://bugzilla.mozilla.org/show_bug.cgi?id=3D1280832 <https://bugzilla.mo=
zilla.org/show_bug.cgi?id=3D1280832>
https://bugzilla.mozilla.org/show_bug.cgi?id=3D1281041 <https://bugzilla.mo=
zilla.org/show_bug.cgi?id=3D1281041>
https://bugzilla.mozilla.org/show_bug.cgi?id=3D1281043 <https://bugzilla.mo=
zilla.org/show_bug.cgi?id=3D1281043>

My roommate mentioned Thunderbird being a second-class citizen in the Mozil=
la world, so if this is the case, this should be made explicit in regards t=
o bug bounty expectations.

--Apple-Mail=_53812491-E718-4BB8-9761-1A2133684BAF
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_A3E72F48-54E1-4D22-AD69-316DA5681FF3"


--Apple-Mail=_A3E72F48-54E1-4D22-AD69-316DA5681FF3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D"">Hello lists<div cl=
ass=3D""><br class=3D""></div><div class=3D"">Attached is a test case for c=
ausing a crash in libical 0.47 (shipped with Thunderbird) and this was also=
 tested against 1.0 (various versions shipped with various email clients).<=
div class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><d=
iv class=3D"">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br class=3D"">=
=3D=3D24662=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x0000000=
00008 (pc 0x0000004fbb80&nbsp;bp 0x7ffd68d966f0 sp 0x7ffd68d96520 T0)<br cl=
ass=3D"">&nbsp; &nbsp;&nbsp;#0 0x4fbb7f in icalproperty_new_clone&nbsp;(/ro=
ot/tmp/new_parse/parse_string047_asan+0x4fbb7f)<br class=3D"">&nbsp; &nbsp;=
&nbsp;#1 0x4f44e6 in icalparser_add_line (/root/tmp/new_parse/parse_string0=
47_asan+0x4f44e6)<br class=3D"">&nbsp; &nbsp;&nbsp;#2 0x4efabe in icalparse=
r_parse (/root/tmp/new_parse/parse_string047_asan+0x4efabe)<br class=3D"">&=
nbsp; &nbsp;&nbsp;#3 0x4f9c1f in icalparser_parse_string&nbsp;(/root/tmp/ne=
w_parse/parse_string047_asan+0x4f9c1f)<br class=3D"">&nbsp; &nbsp;&nbsp;#4 =
0x4eb7ef in main (/root/tmp/new_parse/parse_string047_asan+0x4eb7ef)<br cla=
ss=3D"">&nbsp; &nbsp;&nbsp;#5 0x7fb657683a3f in __libc_start_main /build/gl=
ibc-ryFjv0/glibc-2.21/csu/libc-start.c:289<br class=3D"">&nbsp; &nbsp;&nbsp=
;#6 0x444ae8 in _start (/root/tmp/new_parse/parse_string047_asan+0x444ae8)<=
br class=3D""><br class=3D"">AddressSanitizer can not provide additional in=
fo.<br class=3D"">SUMMARY: AddressSanitizer: SEGV ??:0 icalproperty_new_clo=
ne<br class=3D"">=3D=3D24662=3D=3DABORTING<br class=3D""><br class=3D""></d=
iv><div class=3D""><br class=3D""></div><div class=3D""><br class=3D""></di=
v><div class=3D"">I am posting this to Full Disclosure/OSS instead of repor=
ting it because I have opened a handful of libical bugs in the Mozilla bug =
tracker, alerted&nbsp;<a href=3D"mailto:security@mozilla.org" class=3D"">se=
curity@mozilla.org</a>, and worked to show how and where to reproduce the b=
ugs in Thunderbird, but Mozilla hasn=E2=80=99t shown any care at all about =
the bugs. Perhaps if I give a sample to the community of the bugs in the bu=
g reports, Mozilla will take the bug reports more seriously. This bug attac=
hed had not been reported yet.</div></div></body></html>=

--Apple-Mail=_A3E72F48-54E1-4D22-AD69-316DA5681FF3
Content-Disposition: attachment;
	filename=segv.ics.bug
Content-Type: application/octet-stream;
	name="segv.ics.bug"
Content-Transfer-Encoding: 7bit

BEGIN:0
00000;:
DTEND;0000\"MMARY:0
STATUS:0
CLASS:0
PRIORITY:0
TRANSP:0
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT0H3M,/,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT0H30M,000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT0H30M,000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT0H30M,000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT0H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT0H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;0000000000000=0:000000000000000Z/00000,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000000000000000/
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FRE(BUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0H30M,00000000000/0,
FREEBUSY;VA000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEB?SY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=;ERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
FREEBUSY;VALUE=PERIOD:00000010T000000Z/PT8H30M,00000000000/0,
URL:0
TRANSP:0
BEGIN:DAYLIGHT
0:
RDATE:00000000T020000
0:
TZOFFSETFROM:0
TZOFFSETTO:0
TZNAME:000
0:
END:0
END:0

--Apple-Mail=_A3E72F48-54E1-4D22-AD69-316DA5681FF3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;" class=3D""><div class=3D""=
><div class=3D""></div><div class=3D""><br class=3D""></div><div class=3D""=
>While list members likely will not have access to these bugs, I am listing=
 them here in case someone on the list can make something happen.</div><div=
 class=3D""><br class=3D""></div><div class=3D""><a href=3D"https://bugzill=
a.mozilla.org/show_bug.cgi?id=3D1275400" class=3D"">https://bugzilla.mozill=
a.org/show_bug.cgi?id=3D1275400</a>&nbsp;(Opened a month ago. After Tyson r=
eproed the bug in libical, no responses).</div><div class=3D""><br class=3D=
""></div><div class=3D"">The following three bugs are distinct heap over-re=
ads in libical (tested against libical 0.47 and 1.0) which have had little =
to no reception by Mozilla.</div><div class=3D""><br class=3D""></div><div =
class=3D""><a href=3D"https://bugzilla.mozilla.org/show_bug.cgi?id=3D128083=
2" class=3D"">https://bugzilla.mozilla.org/show_bug.cgi?id=3D1280832</a></d=
iv><div class=3D""><a href=3D"https://bugzilla.mozilla.org/show_bug.cgi?id=
=3D1281041" class=3D"">https://bugzilla.mozilla.org/show_bug.cgi?id=3D12810=
41</a></div><div class=3D""><a href=3D"https://bugzilla.mozilla.org/show_bu=
g.cgi?id=3D1281043" class=3D"">https://bugzilla.mozilla.org/show_bug.cgi?id=
=3D1281043</a></div><div class=3D""><br class=3D""></div><div class=3D"">My=
 roommate mentioned Thunderbird being a second-class citizen in the Mozilla=
 world, so if this is the case, this should be made explicit in regards to =
bug bounty expectations.&nbsp;</div></div></body></html>=

--Apple-Mail=_A3E72F48-54E1-4D22-AD69-316DA5681FF3--

--Apple-Mail=_53812491-E718-4BB8-9761-1A2133684BAF--

--Apple-Mail=_1641B94C-1942-4663-BD4A-4E01F6B39F08
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJXbTuHAAoJEKJq8VjVbt2pDqUP/1iu2LiJue7hJoMzVxda8AjX
OK2FZm7YwbXqTdhjej5SerwjMdcfIpxej5BMgzw0qBiUVEzNaSzqzCiwdW1m/ST4
ob5CbDIB5nIVVuvNsduMFGgUnucGcV9VUIakBYvD7/4I2cYGMZYQszFEi2j+LFzE
CqoH9/KO+XpwtMkcxozFufc2hff4u270OpSihYnAVrpwgm3lqudD+zCwzViOjx14
PgXmZ6sAIMa67SImgi+BE/SLGA1fidVykYEQc7GnnjZgFIzajOe6OI1bklo13h63
lY++zr8obGCdnHvpq6r/KK+72wvyKENRsUxfulpvGnTjvzXlEUtyHPBIcEuAMZlr
UC35A5ym1ItSc+kEhnq2XSDeV/vNFsTJX+LBhpjT2D+t/oV4zItW+fO84o7jPXVr
TeQO4GCXZ437BKDQzkY2EAyVrheS/QEAgWAFO+nEwAYjrqyaSePcp5sayRvVnm1K
qP/TXgEVSdUkpkCyGPVqWpFwkN+rW5nVtNtiDI5Aksx4zVUfkaQgAX9w1NgqmIUb
/smeFtzNQk7YCqNa57llr0WlgyWZrTBi20dln2ytLi7NHPsgWp+TBGHklaONJZLU
l/xyq2sLYxwUgxvmEZLjEAgfjzbRJ6EZuTf06tfZFiW1isyMePmw67B7phfbO9jp
zR5sorddIRNHcHL+KWTb
=Dh0c
-----END PGP SIGNATURE-----

--Apple-Mail=_1641B94C-1942-4663-BD4A-4E01F6B39F08--
