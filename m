Received: (qmail 14327 invoked by uid 550); 22 Jul 2025 12:44:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13885 invoked from network); 21 Jul 2025 23:32:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753140745; x=1753745545; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W010RM+aYb0RAJ0vSuO69WPvTwBS0WePO+t1QRPSHsY=;
        b=POWIep2dKa3iMKrllv2B5K6ZFbkDT2K5RWaMWZXk6Wnq+xSqjXy6JTbRGzBz7wPYhA
         0eQ+Ak9145B1WeoKGBsTjpQwyvagekSD0ZfF742FsU3gnl4DOuyKnxvYvGzs9OwefYj1
         xN2TEpomoeu58vefMVeXNgNK7XormqOIjaQZ8pIUpYxYDfnoP6iM+ebEQgg8YGD/tB8z
         4WQmUG/PQgCLdxBRcQBlYiCDyPW8gEwmEeQvO1RrE907poxkNfHxJ9LOnEo3eEgLIODf
         zYHPGEiY79BaOwKm+8rQcvoAiJGz4K1BK3nLkpLCD22tpXdYIjbdbq0XiVGuiWKr+jrI
         D5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753140745; x=1753745545;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W010RM+aYb0RAJ0vSuO69WPvTwBS0WePO+t1QRPSHsY=;
        b=dqoaUKa3cYY5s5demCG1GFkIB9ubgcP9a5h56Adfsu2zNoZEoAs2XM6MRVxPJVy6t6
         MX9OhoUTmHXofYHgrhRQyfMp1jk8MOCIoUEV+13RzLuEBhoadQovxzlQ+46ynmprZr35
         9Na8ob7dnRTbQ0tDxq1eD4zJlDowRmQiesX+as8kMmNMDf0T2uOxPuIMaoV307YN5aHn
         vagaDMuDk+X3PT3byQt9UvyGYIckp2gk8vN2SziyK0+66b9+3W6gRdYMEUt4VzB7k4mk
         F37djjzRnz7gVN31BGaioHC0GIJVGGA+ZPNRIXN0OE876HvwbQ6DCZV+VUQbwBFDs1ar
         MNnA==
X-Gm-Message-State: AOJu0YwUCKXtuwng/OlC6HI/UkDJP09fODbAdVOeQA7FuH6ac39uxcfN
	j6a0J2x4OPhI/0oYu7jh+0f81ja8m4P7m74E3Qigl7eDysbIjrMto/o/VmWUUx/p8ueuVepYUuy
	ikHHnT13PbHDHXb6/o1peRlIrlupVPEocXq3sWXA=
X-Gm-Gg: ASbGncvp5ATT+CkeI3q95uLr1sBq1yM/lpxW+qtcX99D+gv9q6P5RBpRwUQq8+GFqyG
	Kgwe7jOWMKaqeFODXU3tHSe+sQhsh7caIc4+2RKl0Bave83dTUxlVwJ+m3PgitKFJnD6nIOCvdh
	467PRmEn0pSi+er7z3h7KNORCbuFciLL1QnG1Eg/kyJN2y36gKMRENkxbBhi7evAqEBScF78Hqg
	jjYLTA=
X-Google-Smtp-Source: AGHT+IEzpC/1L5uIXk2VNVpwyGphAhJbXyyE3W9lSxouOu/UmC8wJVPVx7BkXh++Vw0WVpVUQ28LvmK+BXfgcTZYbmE=
X-Received: by 2002:a17:902:e802:b0:237:e3a0:9d63 with SMTP id
 d9443c01a7336-23e2576c517mr298434495ad.43.1753140744755; Mon, 21 Jul 2025
 16:32:24 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Mon, 21 Jul 2025 16:32:12 -0700
X-Gm-Features: Ac12FXw1HgHUjNkScR5rV9GWatDBXaFK1x49la-KpRSW5ENdPiSy7563IbpXXUI
Message-ID: <CAL7+V1y-7ujPrPMQ+Ed0WQVVdcTb-p+Nv5c4hrGYF0W=Y-f4zQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000551d67063a78e368"
Subject: [oss-security] [kubernetes] CVE-2025-7342: VM images built with Kubernetes Image
 Builder Nutanix or OVA providers use default credentials for Windows images
 if user did not override

--000000000000551d67063a78e368
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where an unauthorized user
may be able to ssh/RDP/WINRM to a Windows node VM which uses a VM image
built with the Kubernetes Image Builder project (
https://github.com/kubernetes-sigs/image-builder).

For Windows images built with Nutanix, OVA, this issue has been rated High

(
https://www.first.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/=
C:H/I:H/A:H
)(8.1)

Am I vulnerable?

Clusters using virtual machine images built with Kubernetes Image Builder (
https://github.com/kubernetes-sigs/image-builder) version v0.1.44 or
earlier are affected.

CVE-2025-7342: VMs using Windows images built with Nutanix, OVA were
confirmed vulnerable.

VMs using images built with all other providers are not affected.

Affected Versions

Kubernetes Image Builder versions <=3D v0.1.44

To determine the version of Image Builder you are using, use one of the
following methods:

* For git clones of the image builder repository:
    cd <local path to image builder repo>

    make version

* For installations using a tarball download:
    cd <local path to install location>

    grep -o v0\\.[0-9.]* RELEASE.md | head -1

* For a container image release:

    docker run --rm <image pull spec> version
  or
    podman run --rm <image pull spec> version

  or look at the image tag specified, in the case of an official image such
as
registry.k8s.io/scl-image-builder/cluster-node-image-builder-amd64:v0.1.44

How do I mitigate this vulnerability?

Rebuild any affected images using a fixed version of Image Builder.
Re-deploy the fixed images to any affected VMs or use image-builder v0.1.41
(February 2025) or later, and set the `admin_password` JSON variable.

Prior to upgrading, this vulnerability can be mitigated by changing the
password of the Administrator account on affected VMs:

`net user Administrator <new-password>`



Fixed Versions

Kubernetes Image Builder versions >=3D v0.1.45

Detection

`Get-LocalUser -Name Administrator | Select-Object
Name,Enabled,SID,Lastlogon | Format-List`

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Additional Details

See the GitHub issues for more details:

https://github.com/kubernetes/kubernetes/issues/133115

Acknowledgements

This vulnerability was reported by Abdel Adim Oisfi, Davide Silvetti,
Nicol=C3=B2 Daprel=C3=A0, Paolo Cavagli=C3=A0, Pietro Tirenna from Shielder.

The issue was fixed and coordinated by Matt Boersma of the Image Builder
project.

Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

--000000000000551d67063a78e368
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-=
serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:no=
rmal;font-variant-east-asian:normal;font-variant-alternates:normal;vertical=
-align:baseline">Hello Kubernetes Community,</span></p><br><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"f=
ont-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;vertical-align:baseline">A security issue was =
discovered in Kubernetes where an unauthorized user may be able to ssh/RDP/=
WINRM to a Windows node VM which uses a VM image built with the Kubernetes =
Image Builder project (</span><a href=3D"https://github.com/kubernetes-sigs=
/image-builder" style=3D"text-decoration-line:none"><span style=3D"font-siz=
e:11pt;font-family:Arial,sans-serif;background-color:transparent;font-varia=
nt-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:no=
rmal;text-decoration-line:underline;vertical-align:baseline">https://github=
.com/kubernetes-sigs/image-builder</span></a><span style=3D"font-size:11pt;=
font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;=
font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alt=
ernates:normal;vertical-align:baseline">).</span></p><br><p dir=3D"ltr" sty=
le=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:=
transparent;font-variant-numeric:normal;font-variant-east-asian:normal;font=
-variant-alternates:normal;vertical-align:baseline">For Windows images buil=
t with Nutanix, OVA, this issue has been rated High</span></p><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background=
-color:transparent;font-variant-numeric:normal;font-variant-east-asian:norm=
al;font-variant-alternates:normal;vertical-align:baseline">(</span><a href=
=3D"https://www.first.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:H/PR:N/UI:N/=
S:U/C:H/I:H/A:H" style=3D"text-decoration-line:none"><span style=3D"font-si=
ze:11pt;font-family:Arial,sans-serif;background-color:transparent;font-vari=
ant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:n=
ormal;text-decoration-line:underline;vertical-align:baseline">https://www.f=
irst.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H</=
span></a><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:r=
gb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-var=
iant-east-asian:normal;font-variant-alternates:normal;vertical-align:baseli=
ne">)(8.1)</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sa=
ns-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric=
:normal;font-variant-east-asian:normal;font-variant-alternates:normal;verti=
cal-align:baseline">Am I vulnerable?</span></p><br><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size=
:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transp=
arent;font-variant-numeric:normal;font-variant-east-asian:normal;font-varia=
nt-alternates:normal;vertical-align:baseline">Clusters using virtual machin=
e images built with Kubernetes Image Builder (<a href=3D"https://github.com=
/kubernetes-sigs/image-builder">https://github.com/kubernetes-sigs/image-bu=
ilder</a>) version v0.1.44 or earlier are affected.</span></p><br><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span sty=
le=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgrou=
nd-color:transparent;font-variant-numeric:normal;font-variant-east-asian:no=
rmal;font-variant-alternates:normal;vertical-align:baseline">CVE-2025-7342:=
 VMs using Windows images built with Nutanix, OVA were confirmed vulnerable=
.</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;=
color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;f=
ont-variant-east-asian:normal;font-variant-alternates:normal;vertical-align=
:baseline">VMs using images built with all other providers are not affected=
.</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;=
color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;f=
ont-variant-east-asian:normal;font-variant-alternates:normal;vertical-align=
:baseline">Affected Versions</span></p><p dir=3D"ltr" style=3D"line-height:=
1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-f=
amily:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-v=
ariant-numeric:normal;font-variant-east-asian:normal;font-variant-alternate=
s:normal;vertical-align:baseline">Kubernetes Image Builder versions &lt;=3D=
 v0.1.44</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:=
0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans=
-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:n=
ormal;font-variant-east-asian:normal;font-variant-alternates:normal;vertica=
l-align:baseline">To determine the version of Image Builder you are using, =
use one of the following methods:</span></p><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;f=
ont-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alte=
rnates:normal;vertical-align:baseline">* For git clones of the image builde=
r repository:</span><span style=3D"font-size:11pt;font-family:Arial,sans-se=
rif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:norm=
al;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-a=
lign:baseline"><br></span><span style=3D"font-size:11pt;font-family:Arial,s=
ans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeri=
c:normal;font-variant-east-asian:normal;font-variant-alternates:normal;vert=
ical-align:baseline">=C2=A0 =C2=A0 cd &lt;local path to image builder repo&=
gt;</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;co=
lor:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-variant-alternates:normal;vertical-align:b=
aseline">=C2=A0=C2=A0=C2=A0=C2=A0make version</span></p><p dir=3D"ltr" styl=
e=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font=
-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:t=
ransparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-=
variant-alternates:normal;vertical-align:baseline">* For installations usin=
g a tarball download:</span><span style=3D"font-size:11pt;font-family:Arial=
,sans-serif;color:rgb(0,0,0);background-color:transparent;font-variant-nume=
ric:normal;font-variant-east-asian:normal;font-variant-alternates:normal;ve=
rtical-align:baseline"><br></span><span style=3D"font-size:11pt;font-family=
:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:nor=
mal;vertical-align:baseline">=C2=A0 =C2=A0 cd &lt;local path to install loc=
ation&gt;</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt=
;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-se=
rif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:norm=
al;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-a=
lign:baseline">=C2=A0=C2=A0=C2=A0=C2=A0grep -o v0\\.[0-9.]* RELEASE.md | he=
ad -1</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;=
color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;f=
ont-variant-east-asian:normal;font-variant-alternates:normal;vertical-align=
:baseline">* For a container image release:</span></p><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tr=
ansparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-v=
ariant-alternates:normal;vertical-align:baseline">=C2=A0=C2=A0=C2=A0=C2=A0d=
ocker run --rm &lt;image pull spec&gt; version</span><span style=3D"font-si=
ze:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:tran=
sparent;font-variant-numeric:normal;font-variant-east-asian:normal;font-var=
iant-alternates:normal;vertical-align:baseline"><br></span><span style=3D"f=
ont-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;vertical-align:baseline">=C2=A0 or</span><span=
 style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);back=
ground-color:transparent;font-variant-numeric:normal;font-variant-east-asia=
n:normal;font-variant-alternates:normal;vertical-align:baseline"><br></span=
><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0=
);background-color:transparent;font-variant-numeric:normal;font-variant-eas=
t-asian:normal;font-variant-alternates:normal;vertical-align:baseline">=C2=
=A0 =C2=A0 podman run --rm &lt;image pull spec&gt; version</span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backg=
round-color:transparent;font-variant-numeric:normal;font-variant-east-asian=
:normal;font-variant-alternates:normal;vertical-align:baseline">=C2=A0=C2=
=A0or look at the image tag specified, in the case of an official image suc=
h as <a href=3D"http://registry.k8s.io/scl-image-builder/cluster-node-image=
-builder-amd64:v0.1.44">registry.k8s.io/scl-image-builder/cluster-node-imag=
e-builder-amd64:v0.1.44</a></span></p><br><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;fon=
t-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;fon=
t-variant-numeric:normal;font-variant-east-asian:normal;font-variant-altern=
ates:normal;vertical-align:baseline">How do I mitigate this vulnerability?<=
/span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:=
rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-va=
riant-east-asian:normal;font-variant-alternates:normal;vertical-align:basel=
ine">Rebuild any affected images using a fixed version of Image Builder. Re=
-deploy the fixed images to any affected VMs or use image-builder v0.1.41 (=
February 2025) or later, and set the `admin_password` JSON variable.</span>=
</p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rg=
b(0,0,0);background-color:transparent;font-variant-numeric:normal;font-vari=
ant-east-asian:normal;font-variant-alternates:normal;vertical-align:baselin=
e">Prior to upgrading, this vulnerability can be mitigated by changing the =
password of the Administrator account on affected VMs:</span></p><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span styl=
e=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgroun=
d-color:transparent;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-variant-alternates:normal;vertical-align:baseline">`net user Admin=
istrator &lt;new-password&gt;`</span></p><p dir=3D"ltr" style=3D"line-heigh=
t:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font=
-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font=
-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alterna=
tes:normal;vertical-align:baseline">=C2=A0</span></p><br><p dir=3D"ltr" sty=
le=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:=
transparent;font-variant-numeric:normal;font-variant-east-asian:normal;font=
-variant-alternates:normal;vertical-align:baseline">Fixed Versions</span></=
p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom=
:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(=
0,0,0);background-color:transparent;font-variant-numeric:normal;font-varian=
t-east-asian:normal;font-variant-alternates:normal;vertical-align:baseline"=
>Kubernetes Image Builder versions &gt;=3D v0.1.45</span></p><br><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span styl=
e=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);backgroun=
d-color:transparent;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-variant-alternates:normal;vertical-align:baseline">Detection</span=
></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:r=
gb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-var=
iant-east-asian:normal;font-variant-alternates:normal;vertical-align:baseli=
ne">`Get-LocalUser -Name Administrator | Select-Object Name,Enabled,SID,Las=
tlogon | Format-List`</span></p><br><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-fami=
ly:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-vari=
ant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:n=
ormal;vertical-align:baseline">If you find evidence that this vulnerability=
 has been exploited, please contact <a href=3D"mailto:security@kubernetes.i=
o">security@kubernetes.io</a></span></p><br><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;f=
ont-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alte=
rnates:normal;vertical-align:baseline">Additional Details</span></p><br><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><sp=
an style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);ba=
ckground-color:transparent;font-variant-numeric:normal;font-variant-east-as=
ian:normal;font-variant-alternates:normal;vertical-align:baseline">See the =
GitHub issues for more details:=C2=A0</span></p><p dir=3D"ltr" style=3D"lin=
e-height:1.38;margin-top:0pt;margin-bottom:0pt"><a href=3D"https://github.c=
om/kubernetes/kubernetes/issues/133115" style=3D"text-decoration-line:none"=
><span style=3D"font-size:11pt;font-family:Arial,sans-serif;background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;text-decoration-line:underline;vertical-align:=
baseline">https://github.com/kubernetes/kubernetes/issues/133115</span></a>=
<span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0)=
;background-color:transparent;font-variant-numeric:normal;font-variant-east=
-asian:normal;font-variant-alternates:normal;vertical-align:baseline">=C2=
=A0</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-seri=
f;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal=
;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-ali=
gn:baseline">Acknowledgements</span></p><br><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;f=
ont-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alte=
rnates:normal;vertical-align:baseline">This vulnerability was reported by A=
bdel Adim Oisfi, Davide Silvetti, Nicol=C3=B2 Daprel=C3=A0, Paolo Cavagli=
=C3=A0, Pietro Tirenna from </span><span style=3D"font-size:10.5pt;font-fam=
ily:Roboto,sans-serif;color:rgb(0,0,0);background-color:transparent;font-va=
riant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates=
:normal;vertical-align:baseline">Shielder</span><span style=3D"font-size:11=
pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transpare=
nt;font-variant-numeric:normal;font-variant-east-asian:normal;font-variant-=
alternates:normal;vertical-align:baseline">.</span></p><br><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"f=
ont-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;fo=
nt-variant-alternates:normal;vertical-align:baseline">The issue was fixed a=
nd coordinated by Matt Boersma of the Image Builder project.</span></p><br>=
<p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt">=
<span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0)=
;background-color:transparent;font-variant-numeric:normal;font-variant-east=
-asian:normal;font-variant-alternates:normal;vertical-align:baseline">Thank=
 You,</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt=
;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-se=
rif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:norm=
al;font-variant-east-asian:normal;font-variant-alternates:normal;vertical-a=
lign:baseline">Rita Zhang on behalf of the Kubernetes Security Response Com=
mittee</span></p><br class=3D"gmail-Apple-interchange-newline"></div></div>

--000000000000551d67063a78e368--
