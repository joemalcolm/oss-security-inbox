X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4152" "Monday" "2" "November" "2015" "08:24:10" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQxv1xrLWNJi4eiS=mN3ZkXvaGQOzbNGw4HZqr3Dfg=Fw@mail.gmail.com>" "86" "[oss-security] CVE request: DoS in libxml2 if xz is enabled" nil nil nil "11" "2015110211:24:10" "[oss-security] CVE request: DoS in libxml2 if xz is enabled" (number mark "        gustavo.grie Nov  2   86/4152  " thread-indent "\"[oss-security] CVE request: DoS in libxml2 if xz is enabled\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5542 invoked by uid 550); 2 Nov 2015 11:24:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5511 invoked from network); 2 Nov 2015 11:24:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=fYgks78uZP4xfo/mHHp5UPz/uX3aAFCZMWzZApRygIM=;
        b=tZWxrzu60MWjz2yypV08usgP1XbrIcC9+/S5o0vo5AbZV3S7+UdWQIX27D8VJkx6Df
         1f5wnX1RcuSBzW0SYE2PKqfkNfLaWtf0XJiUBywWdJvrgNoZ13Sj6uCDozCxCSEwdxib
         6l+cdOl51r382m8g00UCOcosZoPsdB7ATY01UPqXKVgcB+R45BwmmWHJ7tWgWmHgCl1D
         VwP9s+qVYdzH37FRVDvxdI2qkFHebLGOXLj8n+ShtFO7sbnVf24H4TkKQY4NUK2Tl3Zd
         E/ZXbw6JbJPt4IoBea+mcxeZPDICBE1M3oVq9+waeonBNpxVFul/24L4SO7OkKhCKb69
         KLQw==
MIME-Version: 1.0
X-Received: by 10.112.236.8 with SMTP id uq8mr10010064lbc.116.1446463450352;
 Mon, 02 Nov 2015 03:24:10 -0800 (PST)
Message-ID: <CACn5sdQxv1xrLWNJi4eiS=mN3ZkXvaGQOzbNGw4HZqr3Dfg=Fw@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a11c3bffc23bbb005238d044b
Date: Mon, 2 Nov 2015 08:24:10 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: DoS in libxml2 if xz is enabled
To: oss-security@lists.openwall.com

--001a11c3bffc23bbb005238d044b
Content-Type: multipart/alternative; boundary=001a11c3bffc23bbaa05238d0449

--001a11c3bffc23bbaa05238d0449
Content-Type: text/plain; charset=UTF-8

Hello,

We found a denegation of service parsing a specially crafted xml in libxml2
if xz support is enabled. It affects version 2.9.1 and probably others.
Find attached a xml that never finishes the parsing process:

gdb --quiet --args xmllint /tmp/test.xz
Reading symbols from xmllint...(no debugging symbols found)...done.
(gdb) run
Starting program: /usr/bin/xmllint /tmp/test.xz
^C
Program received signal SIGINT, Interrupt.
0xb7f3e63c in xz_decomp (state=state@entry=0x8001cff0) at ../../xzlib.c:509
509 ../../xzlib.c: No such file or directory.
(gdb) bt
#0  0xb7f3e63c in xz_decomp (state=state@entry=0x8001cff0) at
../../xzlib.c:509
#1  0xb7f3ea25 in xz_make (state=<optimized out>) at ../../xzlib.c:603
#2  0xb7f3f3e7 in __libxml2_xzread (file=file@entry=0x8001cff0,
buf=buf@entry=0x8001d190, len=len@entry=4000) at ../../xzlib.c:694
#3  0xb7e87dfb in xmlXzfileRead (context=0x8001cff0, buffer=0x8001d190 "",
len=4000) at ../../xmlIO.c:1421
#4  0xb7e89aaa in xmlParserInputBufferGrow__internal_alias (in=0x8001d140,
len=4000, len@entry=250) at ../../xmlIO.c:3317
#5  0xb7e5af21 in xmlParserInputGrow__internal_alias (in=0x8001f198,
len=len@entry=250) at ../../parserInternals.c:320
#6  0xb7e60581 in xmlGROW (ctxt=ctxt@entry=0x8001c258) at
../../parser.c:2075
#7  0xb7e72d49 in xmlParseDocument__internal_alias (ctxt=ctxt@entry=0x8001c258)
at ../../parser.c:10672
#8  0xb7e731a0 in xmlDoRead (ctxt=0x8001c258, URL=0x0, encoding=0x0,
options=4259840, reuse=0) at ../../parser.c:15242
#9  0x80009fc8 in ?? ()
#10 0x80006887 in main ()

Upstream is working to fix this issue. This test case was found using afl.
Thanks!

--001a11c3bffc23bbaa05238d0449
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br>We found a denegation of service p=
arsing a specially crafted xml in libxml2 if xz support is enabled. It affe=
cts version 2.9.1 and probably others. Find attached a xml that never finis=
hes the parsing process:<br><br>gdb --quiet --args xmllint /tmp/test.xz<br>=
Reading symbols from xmllint...(no debugging symbols found)...done.<br>(gdb=
) run<br>Starting program: /usr/bin/xmllint /tmp/test.xz<br>^C<br>Program r=
eceived signal SIGINT, Interrupt.<br>0xb7f3e63c in xz_decomp (state=3Dstate=
@entry=3D0x8001cff0) at ../../xzlib.c:509<br>509 ../../xzlib.c: No such fil=
e or directory.<br>(gdb) bt<br>#0 =C2=A00xb7f3e63c in xz_decomp (state=3Dst=
ate@entry=3D0x8001cff0) at ../../xzlib.c:509<br>#1 =C2=A00xb7f3ea25 in xz_m=
ake (state=3D&lt;optimized out&gt;) at ../../xzlib.c:603<br>#2 =C2=A00xb7f3=
f3e7 in __libxml2_xzread (file=3Dfile@entry=3D0x8001cff0, buf=3Dbuf@entry=
=3D0x8001d190, len=3Dlen@entry=3D4000) at ../../xzlib.c:694<br>#3 =C2=A00xb=
7e87dfb in xmlXzfileRead (context=3D0x8001cff0, buffer=3D0x8001d190 &quot;&=
quot;, len=3D4000) at ../../xmlIO.c:1421<br>#4 =C2=A00xb7e89aaa in xmlParse=
rInputBufferGrow__internal_alias (in=3D0x8001d140, len=3D4000, len@entry=3D=
250) at ../../xmlIO.c:3317<br>#5 =C2=A00xb7e5af21 in xmlParserInputGrow__in=
ternal_alias (in=3D0x8001f198, len=3Dlen@entry=3D250) at ../../parserIntern=
als.c:320<br>#6 =C2=A00xb7e60581 in xmlGROW (ctxt=3Dctxt@entry=3D0x8001c258=
) at ../../parser.c:2075<br>#7 =C2=A00xb7e72d49 in xmlParseDocument__intern=
al_alias (ctxt=3Dctxt@entry=3D0x8001c258) at ../../parser.c:10672<br>#8 =C2=
=A00xb7e731a0 in xmlDoRead (ctxt=3D0x8001c258, URL=3D0x0, encoding=3D0x0, o=
ptions=3D4259840, reuse=3D0) at ../../parser.c:15242<br>#9 =C2=A00x80009fc8=
 in ?? ()<br>#10 0x80006887 in main ()<br><br></div>Upstream is working to =
fix this issue. This test case was found using afl.<br></div>Thanks!<br></d=
iv>

--001a11c3bffc23bbaa05238d0449--

--001a11c3bffc23bbb005238d044b
Content-Type: application/x-xz; name="test.xz"
Content-Disposition: attachment; filename="test.xz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ighuwp1b0

CwACAAAAAAAAQAAAAAAQEBAQEBAQEAAA//8AAA==

--001a11c3bffc23bbb005238d044b--
