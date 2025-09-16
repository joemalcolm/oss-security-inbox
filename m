Received: (qmail 3907 invoked by uid 550); 16 Sep 2025 16:09:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13598 invoked from network); 16 Sep 2025 16:01:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758038483; x=1758643283; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gzutxhKc8rES5sppaqL/XptNtEQYd+AqY4xLsArj+64=;
        b=j2yDGlnBRManwHoQdFp0vS4Hm4GVNvW8Bs07WPMsmx/zg6mOUAuwL/Xvp7IBHjppMT
         1y1ItTwnznd9J2uHGyaK+qUgsTfnKuKQlOSt+T0hle4VbBUFVb9VXnR/RiEd6fyou76g
         ALkh8iKm4+ONdKxlfNm+KLqc9gUN0SlluIq8+E1f3azF6wwQtrGVxHv971GzCR9UBhD2
         LkCDGL7vEgXptDAtZZfz3GLW8XqwmuNVyDqfU3/zcGXA4PN+gY8qrVd7Fz8VBVYstnyc
         8cDdbz5SYsWhazWp9Tp/qydE5RCSUASw59AL3AC4H4hOx/3Yk5gAkhrO3kkng3Ms2v9F
         WMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758038483; x=1758643283;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gzutxhKc8rES5sppaqL/XptNtEQYd+AqY4xLsArj+64=;
        b=RQkOUV3qeBwFSMzIQ2LmPmrV65289ItvMMFKsUd0p2ibA6WuEqTAkID2rzKb7Ri1IR
         b5NKBv4E3lltWs9OjygJPGkGvpPP9mhbE3WV4EAYaapvHPHCQLRfK++AKADyxHDebMfc
         gEe/qlzmMJeMeTJ0g/FpxPaDcfobNwjOoYGJoVKhKcqiFRl1r9VAKpPxRENBImtMfQt3
         xFG1G43DRT+w1QncHI4l9eF7QytRrP2dm+Cwg4nQZdaK0Yg1dTOvdcLy7QQ1Cfqm9XGR
         2Il2d7XfubM06YMjnU7T05VkLj7oEgE5Lei7U0jCEcLvUbF8B5zR92+jJstfELxjPrP8
         WylA==
X-Gm-Message-State: AOJu0YzNkEojFrxzTrfXZa7YpWUH0FnUNnz/nOIpOvYlcEZ0a0IYBZJZ
	lwvCnK3IxC2fK5CXUYcA0MNKow1+XKfrQt2ezdtbloq042X3qim7Afn0efy2LOOsdktfpznp2XP
	zRpLfa2FPxYBHDwDBLYS4qE+VBQK/uDfPxBicmH0=
X-Gm-Gg: ASbGncuZie/lqfwNoM2p3e7KiNjPsu0GJiizDgqqKaxRPmOxamXxE7zaudViHx1iZmX
	zS3UNaUa8mQWgL6LamkQ2sx1KHSuXTcNAnavRonVHHlLPhmRquzmw2h/bTJKtHXdwRC5AKODgsu
	LXr+iw+sjVJBOYmmbiecmLqokT/mPU47zh4ngLTlgyNbrInSfGKX3hmoR7Mx5YDP40a5QGpMXNF
	/QaSv052hkDN/DQkw==
X-Google-Smtp-Source: AGHT+IGMNHU7FkB/YOsXLkYmI3ZYTQNOMQfFEZvykCaZPuN9aJX5WosWdFAFTlIjkMPjrM2H0z9U+YQWhYC0CJZuk1c=
X-Received: by 2002:a17:902:fc4f:b0:264:5f1a:1e46 with SMTP id
 d9443c01a7336-2645f1a2097mr115565795ad.26.1758038482707; Tue, 16 Sep 2025
 09:01:22 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Tue, 16 Sep 2025 09:00:00 -0700
X-Gm-Features: AS18NWBp7UEixiz5BuifNIN6BBzIDWLTjuJuoDOnAAqGdE2J168hbDSqTMBb91I
Message-ID: <CAL7+V1ywnohQgfQWBVeoYexqnO2S72dJhaWaX3s88qsYrpxjyw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000436cfa063eed3be3"
Subject: [oss-security] [kubernetes] CVE-2025-9708: Kubernetes C# Client: improper
 certificate validation in custom CA mode may lead to man-in-the-middle attacks

--000000000000436cfa063eed3be3
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A vulnerability exists in the Kubernetes C# client where the certificate
validation logic accepts properly constructed certificates from any
Certificate Authority (CA) without properly verifying the trust chain. This
flaw allows a malicious actor to present a forged certificate and
potentially intercept or manipulate communication with the Kubernetes API
server, leading to possible man-in-the-middle attacks and API impersonation.

This issue has been rated Med (6.8)
CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:N
<https://www.first.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:N>,
and assigned CVE-2025-9708.

Am I vulnerable?

You are vulnerable if:

- You use the Kubernetes C# client to connect to a Kubernetes API server
over TLS/HTTPS  with custom CA certificates in your kubeconfig file and
your connection occurs over an untrusted network.

Affected Versions

   -

   All versions of the Kubernetes C# client prior to the next release
   <=17.0.13

How do I mitigate this vulnerability?

This issue can be mitigated by:


   -

   Deploy the patch version of the Kubernetes C# client as soon as possible.
   -

   Moving the CA certificates into the system trust store instead of
   specifying them in the kubeconfig file. Note: This approach may introduce
   new risks, as all processes on the system will begin to trust certificates
   signed by that CA. If you must use an affected version, you can disable
   custom CA and add the CA to the machine's trusted root.

Fixed Versions

   -

   Kubernetes C# client >= v17.0.14

Detection

To determine if your applications are affected:

   -

   Review your usage of the Kubernetes C# client and inspect certificate
   validation logic.
   -

   Review your kubeconfig files and determine if you use a custom CA
   certificate (the certificate-authority field in the clusters section).
   -

   Review client logs for unexpected or untrusted certificate connections.


If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/134063

Acknowledgements

This vulnerability was reported by @elliott-beach

The issue was fixed and coordinated by:

Boshi Lian @tg123

Brendan Burns @brendandburns

Rita Zhang @ritazh

Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

--000000000000436cfa063eed3be3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br clear=3D"all"></div><div><span id=3D"gmail-docs-i=
nternal-guid-c07288a1-7fff-dbfa-6d91-a13afeb41715"><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size=
:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transp=
arent;font-variant-numeric:normal;font-variant-east-asian:normal;font-varia=
nt-alternates:normal;vertical-align:baseline">Hello Kubernetes Community,</=
span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin=
-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;col=
or:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font=
-variant-east-asian:normal;font-variant-alternates:normal;vertical-align:ba=
seline">A vulnerability exists in the Kubernetes C# client where the certif=
icate validation logic accepts properly constructed certificates from any C=
ertificate Authority (CA) without properly verifying the trust chain. This =
flaw allows a malicious actor to present a forged certificate and potential=
ly intercept or manipulate communication with the Kubernetes API server, le=
ading to possible man-in-the-middle attacks and API impersonation.</span></=
p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom=
:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(=
0,0,0);background-color:transparent;font-variant-numeric:normal;font-varian=
t-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline"=
>This issue has been rated </span><span style=3D"font-size:11pt;font-family=
:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-weight=
:700;font-variant-numeric:normal;font-variant-east-asian:normal;font-varian=
t-alternates:normal;vertical-align:baseline">Med (6.8)</span><span style=3D=
"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-co=
lor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;=
font-variant-alternates:normal;vertical-align:baseline"> </span><a href=3D"=
https://www.first.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/=
C:H/I:H/A:N" style=3D"text-decoration-line:none"><span style=3D"font-size:1=
1pt;font-family:Arial,sans-serif;background-color:transparent;font-variant-=
numeric:normal;font-variant-east-asian:normal;font-variant-alternates:norma=
l;text-decoration-line:underline;vertical-align:baseline">CVSS:3.1/AV:N/AC:=
H/PR:N/UI:R/S:U/C:H/I:H/A:N</span></a><span style=3D"font-size:11pt;font-fa=
mily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-va=
riant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates=
:normal;vertical-align:baseline">, and assigned </span><span style=3D"font-=
size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tr=
ansparent;font-weight:700;font-variant-numeric:normal;font-variant-east-asi=
an:normal;font-variant-alternates:normal;vertical-align:baseline">CVE-2025-=
9708</span><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color=
:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-v=
ariant-east-asian:normal;font-variant-alternates:normal;vertical-align:base=
line">.</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-=
serif;color:rgb(36,41,47);background-color:transparent;font-weight:700;font=
-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alterna=
tes:normal;vertical-align:baseline">Am I vulnerable?</span></p><br><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(36,41,47);ba=
ckground-color:transparent;font-variant-numeric:normal;font-variant-east-as=
ian:normal;font-variant-alternates:normal;vertical-align:baseline">You are =
vulnerable if:</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sa=
ns-serif;color:rgb(36,41,47);background-color:transparent;font-variant-nume=
ric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ve=
rtical-align:baseline">- You use the Kubernetes C# client to connect to a K=
ubernetes API server over TLS/HTTPS=C2=A0 with custom CA certificates in yo=
ur kubeconfig file and your connection occurs over an untrusted network.</s=
pan></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;colo=
r:rgb(36,41,47);background-color:transparent;font-weight:700;font-variant-n=
umeric:normal;font-variant-east-asian:normal;font-variant-alternates:normal=
;vertical-align:baseline">Affected Versions</span></p><ul style=3D"margin-t=
op:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:disc;fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:=
transparent;font-variant-numeric:normal;font-variant-east-asian:normal;font=
-variant-alternates:normal;vertical-align:baseline;white-space:pre"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:11pt;margin-bottom:11pt" role=
=3D"presentation"><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-a=
lternates:normal;vertical-align:baseline">All versions of the Kubernetes C#=
 client prior to the next release &lt;=3D17.0.13</span></p></li></ul><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(36,41,47);ba=
ckground-color:transparent;font-weight:700;font-variant-numeric:normal;font=
-variant-east-asian:normal;font-variant-alternates:normal;vertical-align:ba=
seline">How do I mitigate this vulnerability?</span></p><br><p dir=3D"ltr" =
style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"=
font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-col=
or:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;f=
ont-variant-alternates:normal;vertical-align:baseline">This issue can be mi=
tigated by:</span></p><br><ul style=3D"margin-top:0px;margin-bottom:0px"><l=
i dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;font-family:Aria=
l,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-num=
eric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;v=
ertical-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=
=3D"font-size:11pt;background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline">Deploy the patch version of the Kubernetes C# client as soon a=
s possible.</span></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;fo=
nt-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color=
:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fon=
t-variant-alternates:normal;vertical-align:baseline;white-space:pre"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=
=3D"presentation"><span style=3D"font-size:11pt;background-color:transparen=
t;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-a=
lternates:normal;vertical-align:baseline">Moving the CA certificates into t=
he system trust store instead of specifying them in the kubeconfig file. No=
te: This approach may introduce new risks, as all processes on the system w=
ill begin to trust certificates signed by that CA. If you must use an affec=
ted version, you can disable custom CA and add the CA to the machine&#39;s =
trusted root.</span></p></li></ul><p dir=3D"ltr" style=3D"line-height:1.44;=
margin-top:18pt;margin-bottom:12pt"><span style=3D"font-size:11pt;font-fami=
ly:Arial,sans-serif;color:rgb(36,41,47);background-color:transparent;font-w=
eight:700;font-variant-numeric:normal;font-variant-east-asian:normal;font-v=
ariant-alternates:normal;vertical-align:baseline">Fixed Versions</span></p>=
<ul style=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"lis=
t-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0=
,0);background-color:transparent;font-variant-numeric:normal;font-variant-e=
ast-asian:normal;font-variant-alternates:normal;vertical-align:baseline;whi=
te-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:11pt;marg=
in-bottom:11pt" role=3D"presentation"><span style=3D"font-size:11pt;backgro=
und-color:transparent;font-variant-numeric:normal;font-variant-east-asian:n=
ormal;font-variant-alternates:normal;vertical-align:baseline">Kubernetes C#=
 client &gt;=3D v17.0.14</span></p></li></ul><p dir=3D"ltr" style=3D"line-h=
eight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;=
font-family:Arial,sans-serif;color:rgb(36,41,47);background-color:transpare=
nt;font-weight:700;font-variant-numeric:normal;font-variant-east-asian:norm=
al;font-variant-alternates:normal;vertical-align:baseline">Detection</span>=
</p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0=
pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,=
0,0);background-color:transparent;font-variant-numeric:normal;font-variant-=
east-asian:normal;font-variant-alternates:normal;vertical-align:baseline"><=
span class=3D"gmail-Apple-tab-span" style=3D"text-wrap-mode: nowrap;">	</sp=
an></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;co=
lor:rgb(36,41,47);background-color:transparent;font-variant-numeric:normal;=
font-variant-east-asian:normal;font-variant-alternates:normal;vertical-alig=
n:baseline">To determine if your applications are affected:</span></p><ul s=
tyle=3D"margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-sty=
le-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:rgb(36,41,47=
);background-color:transparent;font-variant-numeric:normal;font-variant-eas=
t-asian:normal;font-variant-alternates:normal;vertical-align:baseline;white=
-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt" role=3D"presentation"><span style=3D"font-size:11pt;background-=
color:transparent;font-variant-numeric:normal;font-variant-east-asian:norma=
l;font-variant-alternates:normal;vertical-align:baseline">Review your usage=
 of the Kubernetes C# client and inspect certificate validation logic.</spa=
n></p></li><li dir=3D"ltr" style=3D"list-style-type:disc;font-size:11pt;fon=
t-family:Arial,sans-serif;color:rgb(36,41,47);background-color:transparent;=
font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alt=
ernates:normal;vertical-align:baseline;white-space:pre"><p dir=3D"ltr" styl=
e=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt" role=3D"presentatio=
n"><span style=3D"font-size:11pt;background-color:transparent;font-variant-=
numeric:normal;font-variant-east-asian:normal;font-variant-alternates:norma=
l;vertical-align:baseline">Review your kubeconfig files and determine if yo=
u use a custom CA certificate (the </span><span style=3D"font-size:11pt;fon=
t-family:&quot;Roboto Mono&quot;,monospace;color:rgb(24,128,56);background-=
color:transparent;font-variant-numeric:normal;font-variant-east-asian:norma=
l;font-variant-alternates:normal;vertical-align:baseline">certificate-autho=
rity</span><span style=3D"font-size:11pt;background-color:transparent;font-=
variant-numeric:normal;font-variant-east-asian:normal;font-variant-alternat=
es:normal;vertical-align:baseline"> field in the </span><span style=3D"font=
-size:11pt;font-family:&quot;Roboto Mono&quot;,monospace;color:rgb(24,128,5=
6);background-color:transparent;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;font-variant-alternates:normal;vertical-align:baseline">clu=
sters</span><span style=3D"font-size:11pt;background-color:transparent;font=
-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alterna=
tes:normal;vertical-align:baseline"> section).</span></p></li><li dir=3D"lt=
r" style=3D"list-style-type:disc;font-size:11pt;font-family:Arial,sans-seri=
f;color:rgb(36,41,47);background-color:transparent;font-variant-numeric:nor=
mal;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-=
align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt" role=3D"presentation"><span style=3D"font-s=
ize:11pt;background-color:transparent;font-variant-numeric:normal;font-vari=
ant-east-asian:normal;font-variant-alternates:normal;vertical-align:baselin=
e">Review client logs for unexpected or untrusted certificate connections.<=
/span></p></li></ul><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top=
:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,san=
s-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:=
normal;font-variant-east-asian:normal;font-variant-alternates:normal;vertic=
al-align:baseline">If you find evidence that this vulnerability has been ex=
ploited, please contact </span><a href=3D"mailto:security@kubernetes.io" st=
yle=3D"text-decoration-line:none"><span style=3D"font-size:11pt;font-family=
:Arial,sans-serif;background-color:transparent;font-variant-numeric:normal;=
font-variant-east-asian:normal;font-variant-alternates:normal;text-decorati=
on-line:underline;vertical-align:baseline">security@kubernetes.io</span></a=
></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:r=
gb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-var=
iant-east-asian:normal;font-variant-alternates:normal;vertical-align:baseli=
ne">Thank You,</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Aria=
l,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-num=
eric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;v=
ertical-align:baseline">Rita Zhang on behalf of the Kubernetes Security Res=
ponse Committee</span></p><p dir=3D"ltr" style=3D"line-height:1.44;margin-t=
op:18pt;margin-bottom:12pt"><span style=3D"font-size:11pt;font-family:Arial=
,sans-serif;color:rgb(36,41,47);background-color:transparent;font-weight:70=
0;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-a=
lternates:normal;vertical-align:baseline">Additional Details</span></p><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><spa=
n style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(36,41,47);=
background-color:transparent;font-variant-numeric:normal;font-variant-east-=
asian:normal;font-variant-alternates:normal;vertical-align:baseline">See th=
e GitHub issue for more details: </span><a href=3D"https://github.com/kuber=
netes/kubernetes/issues/134063" style=3D"text-decoration-line:none"><span s=
tyle=3D"font-size:11pt;font-family:Arial,sans-serif;background-color:transp=
arent;font-variant-numeric:normal;font-variant-east-asian:normal;font-varia=
nt-alternates:normal;text-decoration-line:underline;vertical-align:baseline=
">https://github.com/kubernetes/kubernetes/issues/134063</span></a><span st=
yle=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(36,41,47);back=
ground-color:transparent;font-variant-numeric:normal;font-variant-east-asia=
n:normal;font-variant-alternates:normal;vertical-align:baseline">=C2=A0</sp=
an></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-b=
ottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color=
:rgb(0,0,0);background-color:transparent;font-weight:700;font-variant-numer=
ic:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ver=
tical-align:baseline">Acknowledgements</span></p><br><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tr=
ansparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-v=
ariant-alternates:normal;vertical-align:baseline">This vulnerability was re=
ported by @elliott-beach</span></p><br><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-f=
amily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-v=
ariant-numeric:normal;font-variant-east-asian:normal;font-variant-alternate=
s:normal;vertical-align:baseline">The issue was fixed and coordinated by:=
=C2=A0</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-s=
erif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:nor=
mal;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-=
align:baseline">Boshi Lian @tg123</span></p><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;f=
ont-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alte=
rnates:normal;vertical-align:baseline">Brendan Burns @brendandburns</span><=
/p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0p=
t"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0=
,0);background-color:transparent;font-variant-numeric:normal;font-variant-e=
ast-asian:normal;font-variant-alternates:normal;vertical-align:baseline">Ri=
ta Zhang @ritazh</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;mar=
gin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Ar=
ial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-n=
umeric:normal;font-variant-east-asian:normal;font-variant-alternates:normal=
;vertical-align:baseline">Thank You,</span></p><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11p=
t;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparen=
t;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-a=
lternates:normal;vertical-align:baseline">Rita Zhang on behalf of the Kuber=
netes Security Response Committee</span></p></span></div><div dir=3D"ltr" c=
lass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr=
"><div><br></div></div></div></div>

--000000000000436cfa063eed3be3--
