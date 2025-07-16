Received: (qmail 18337 invoked by uid 550); 16 Jul 2025 11:37:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29738 invoked from network); 16 Jul 2025 09:55:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=openeuler-sh.20200927.dkim.feishu.cn; t=1752659694;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=tX9nfx8j8M7jh0hK/IA3elZSf/WhCf3LbtrtF8TzWeA=;
 b=BkC9vWFX0HjcH8ggNRuEAY2yk/+msQqJYl52yQvMFy/NTvOYX21t7n06X5uc/r55N3fjhH
 40t3DUb87QRs0nWukUc9bi1gweat5WvwgofW9SEm9E3RUxE0MRLWJzmzX3tYT2XOmwgpQw
 qJnH7RETv4V3nobQEfk1c1PaH/luAQeLHe4icsWxu5eJZSfJK7/4zcWW0z3GlQ15KwlCaJ
 aNxxIP8mILLb3DOkt4/d46pCw0XR3/SHbNei6G3lC70MqiU6N74JG8lKMGRuGxCQGHySyn
 nbgiMG+/cHyNfuH+VUtpGZzFUDk7zd5sT+SyW2Chyhx0qn4smR03p8yCiQTXjw==
Mime-Version: 1.0
X-Lms-Return-Path: <lba+1687776ec+9b9e58+lists.openwall.com+liyajie@openeuler.sh>
Content-Type: multipart/alternative;
 boundary=c4724f22580883f1ebe410631c141518ed6a5e458521337e359c9c4f5e73
Date: Wed, 16 Jul 2025 17:54:52 +0800
Message-Id: <c91c769394051f886c25f8bf895ec770dce36a73.d68b9007.7fb3.49f2.bf3c.83708d353203@feishu.cn>
To: "oss-security" <oss-security@lists.openwall.com>
From: "liyajie" <liyajie@openeuler.sh>
Subject: [oss-security] =?UTF-8?q?CVE-2025-23267=EF=BC=9AA_vulnerability_in__NVIDIA_Container_Too?=
	=?UTF-8?q?lkit_can_lead_to_container_escape.?=

--c4724f22580883f1ebe410631c141518ed6a5e458521337e359c9c4f5e73
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hello,
=C2=A0
NVIDIA Container Toolkit for all platforms contains a vulnerability in the =
update-ldcache hook, where an attacker could cause a link following by usin=
g a specially crafted container image. A successful exploit of this vulnera=
bility might lead to container escape..
=C2=A0
Details:
- CVE: CVE-2025-23267
- Sevirity: 8.5(CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:N/I:L/A:H)
- Impact: A successful exploit of this vulnerability might lead to containe=
r escape.
- Affected versions:=C2=A0 All versions up to and including 1.17.7 (CDI mod=
e only for versions prior to 1.17.5)
- Fixed in: 1.17.8.
=C2=A0
Description:
The vulnerability is related to the update-ldcache command invoking the hos=
t=E2=80=99s ldconfig binary with the -r parameter to chroot into the contai=
ner=E2=80=99s root filesystem. However, because no sandboxing is provided f=
or the ldconfig command, an attacker could exploit the absence of isolation=
 by leveraging the procfs to perform path traversal beyond the intended con=
tainerized environment.
When the ldconfig command writes to files such as /etc/ld.so.cache<http://l=
d.so.cache/>, /var/cache/ldconfig/aux-cache, etc., if the relevant paths ar=
e symbolic links, it can overwrite the corresponding files on the host or w=
rite to any arbitrary location on the host.
The file ld.so.cache<http://ld.so.cache/>=C2=A0is a critical cache file use=
d by the Linux dynamic linker to accelerate the search process for shared l=
ibraries (.so files). When a program starts and requires dynamic linking of=
 shared libraries, the dynamic linker (ld.so)<http://ld.so)/>=C2=A0directly=
 reads the ld.so.cache<http://ld.so.cache/>=C2=A0instead of traversing all =
directories in real-time. If attackers compromise the ld.so.cache<http://ld=
.so.cache/>, they could potentially redirect legitimate library paths to ma=
licious shared libraries controlled by them, leading to container escape.
=C2=A0
Credit:
Lei Wang & Min Yao (Nebula Security Lab, Huawei Cloud)
=C2=A0
Reference:
https://nvidia.custhelp.com/app/answers/detail/a_id/5659
=C2=A0
=C2=A0
Best regards,
Yajie Li


--c4724f22580883f1ebe410631c141518ed6a5e458521337e359c9c4f5e73
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<div id=3D"editor_version_7.45.0_yRIVtg8F" style=3D"word-break:break-word;"=
><div data-zone-id=3D"0" data-line-index=3D"0" data-line=3D"true" style=3D"=
margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" s=
tyle=3D"text-align: justify; font-size: 14px;"><span style=3D"font-size: 10=
.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"colo=
r: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">=
Hello,</span></span></span></span></div></div><div data-zone-id=3D"0" data-=
line-index=3D"1" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom=
: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; f=
ont-size: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-fam=
ily: =E7=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span sty=
le=3D"background-color: rgb(255, 255, 255);"><span>&nbsp;<wbr></span></span=
></span></span></span></div></div><div data-zone-id=3D"0" data-line-index=
=3D"2" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; lin=
e-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-size: =
14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: =E7=
=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"ba=
ckground-color: rgb(255, 255, 255);">NVIDIA Container Toolkit for all platf=
orms contains a vulnerability in the update-ldcache hook, where an attacker=
 could cause a link following by using a specially crafted container image.=
 A successful exploit of this vulnerability might lead to container escape.=
.</span></span></span></span></div></div><div data-zone-id=3D"0" data-line-=
index=3D"3" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px=
; line-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-s=
ize: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: =
=E7=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D=
"background-color: rgb(255, 255, 255);"><span>&nbsp;<wbr></span></span></sp=
an></span></span></div></div><div data-zone-id=3D"0" data-line-index=3D"4" =
data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-heigh=
t: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-size: 14px;">=
<span style=3D"font-size: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=
=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-=
color: rgb(255, 255, 255);">Details:</span></span></span></span></div></div=
><div data-zone-id=3D"0" data-line-index=3D"5" data-line=3D"true" style=3D"=
margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" s=
tyle=3D"text-align: justify; font-size: 14px;"><span style=3D"font-size: 10=
.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"colo=
r: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">=
- CVE: CVE-2025-23267</span></span></span></span></div></div><div data-zone=
-id=3D"0" data-line-index=3D"6" data-line=3D"true" style=3D"margin-top: 4px=
; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text-al=
ign: justify; font-size: 14px;"><span style=3D"font-size: 10.5pt;"><span st=
yle=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, =
41);"><span style=3D"background-color: rgb(255, 255, 255);">- </span></span=
></span></span><span style=3D"font-size: 10.5pt;"><span style=3D"font-famil=
y: =E7=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span style=
=3D"background-color: rgb(255, 255, 255);">Sevirity</span></span></span></s=
pan><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: =E7=AD=
=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"backg=
round-color: rgb(255, 255, 255);">: 8.5(CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:=
N/I:L/A:H)</span></span></span></span></div></div><div data-zone-id=3D"0" d=
ata-line-index=3D"7" data-line=3D"true" style=3D"margin-top: 4px; margin-bo=
ttom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justif=
y; font-size: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font=
-family: =E7=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span=
 style=3D"background-color: rgb(255, 255, 255);">- Impact: A successful exp=
loit of this vulnerability might lead to container escape.</span></span></s=
pan></span></div></div><div data-zone-id=3D"0" data-line-index=3D"8" data-l=
ine=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6=
;"><div dir=3D"auto" style=3D"text-align: justify; font-size: 14px;"><span =
style=3D"font-size: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF=
;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color:=
 rgb(255, 255, 255);">- Affected versions:&nbsp; All versions up to and inc=
luding 1.17.7 (CDI mode only for versions prior to 1.17.5)</span></span></s=
pan></span></div></div><div data-zone-id=3D"0" data-line-index=3D"9" data-l=
ine=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6=
;"><div dir=3D"auto" style=3D"text-align: justify; font-size: 14px;"><span =
style=3D"font-size: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF=
;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color:=
 rgb(255, 255, 255);">- Fixed in: 1.17.8.</span></span></span></span></div>=
</div><div data-zone-id=3D"0" data-line-index=3D"10" data-line=3D"true" sty=
le=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"a=
uto" style=3D"text-align: justify; font-size: 14px;"><span style=3D"font-si=
ze: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=
=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255,=
 255);"><span>&nbsp;<wbr></span></span></span></span></span></div></div><di=
v data-zone-id=3D"0" data-line-index=3D"11" data-line=3D"true" style=3D"mar=
gin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" styl=
e=3D"text-align: justify; font-size: 14px;"><span style=3D"font-size: 10.5p=
t;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"color: =
rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">Des=
cription:</span></span></span></span></div></div><div data-zone-id=3D"0" da=
ta-line-index=3D"12" data-line=3D"true" style=3D"margin-top: 4px; margin-bo=
ttom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justif=
y; font-size: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font=
-family: =E7=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span=
 style=3D"background-color: rgb(255, 255, 255);">The vulnerability is relat=
ed to the update-ldcache command invoking the host=E2=80=99s ldconfig binar=
y with the -r parameter to chroot into the container=E2=80=99s root filesys=
tem. However, because no sandboxing is provided for the ldconfig command, a=
n attacker could exploit the absence of isolation by leveraging the procfs =
to perform path traversal beyond the intended containerized environment.</s=
pan></span></span></span></div></div><div data-zone-id=3D"0" data-line-inde=
x=3D"13" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; l=
ine-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-size=
: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: =E7=
=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"ba=
ckground-color: rgb(255, 255, 255);">When the ldconfig command writes to fi=
les such as /etc/</span></span></span></span><u><span style=3D"font-size: 1=
0.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"bac=
kground-color: rgb(255, 255, 255);"><a class=3D"not-doclink" href=3D"http:/=
/ld.so.cache/" linkid=3D"vUIh3nyLbH" target=3D"_blank" rel=3D"noopener nore=
ferrer" style=3D"transition: color 0.3s ease 0s; cursor: pointer; color: rg=
b(20, 86, 240);">ld.so.cache</a></span></span></span></u><span style=3D"fon=
t-size: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span sty=
le=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 25=
5, 255);">, /var/cache/ldconfig/aux-cache, etc., if the relevant paths are =
symbolic links, it can overwrite the corresponding files on the host or wri=
te to any arbitrary location on the host.</span></span></span></span></div>=
</div><div data-zone-id=3D"0" data-line-index=3D"14" data-line=3D"true" sty=
le=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"a=
uto" style=3D"text-align: justify; font-size: 14px;"><span style=3D"font-si=
ze: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=
=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255,=
 255);">The file </span></span></span></span><u><span style=3D"font-size: 1=
0.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"bac=
kground-color: rgb(255, 255, 255);"><a class=3D"not-doclink" href=3D"http:/=
/ld.so.cache/" linkid=3D"MqMwaI6raD" target=3D"_blank" rel=3D"noopener nore=
ferrer" style=3D"transition: color 0.3s ease 0s; cursor: pointer; color: rg=
b(20, 86, 240);">ld.so.cache</a></span></span></span></u><span style=3D"fon=
t-size: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span sty=
le=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 25=
5, 255);">&nbsp;is a critical cache file used by the Linux dynamic linker t=
o accelerate the search process for shared libraries (.so files). When a pr=
ogram starts and requires dynamic linking of shared libraries, the dynamic =
linker (</span></span></span></span><u><span style=3D"font-size: 10.5pt;"><=
span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"background-c=
olor: rgb(255, 255, 255);"><a class=3D"not-doclink" href=3D"http://ld.so)/"=
 linkid=3D"K1HJMnPJr1" target=3D"_blank" rel=3D"noopener noreferrer" style=
=3D"transition: color 0.3s ease 0s; cursor: pointer; color: rgb(20, 86, 240=
);">ld.so)</a></span></span></span></u><span style=3D"font-size: 10.5pt;"><=
span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"color: rgb(3=
1, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">&nbsp;di=
rectly reads the </span></span></span></span><u><span style=3D"font-size: 1=
0.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"bac=
kground-color: rgb(255, 255, 255);"><a class=3D"not-doclink" href=3D"http:/=
/ld.so.cache/" linkid=3D"7sSpqwJHWf" target=3D"_blank" rel=3D"noopener nore=
ferrer" style=3D"transition: color 0.3s ease 0s; cursor: pointer; color: rg=
b(20, 86, 240);">ld.so.cache</a></span></span></span></u><span style=3D"fon=
t-size: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span sty=
le=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 25=
5, 255);">&nbsp;instead of traversing all directories in real-time. If atta=
ckers compromise the </span></span></span></span><u><span style=3D"font-siz=
e: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D=
"background-color: rgb(255, 255, 255);"><a class=3D"not-doclink" href=3D"ht=
tp://ld.so.cache/" linkid=3D"08iSG4NFb5" target=3D"_blank" rel=3D"noopener =
noreferrer" style=3D"transition: color 0.3s ease 0s; cursor: pointer; color=
: rgb(20, 86, 240);">ld.so.cache</a></span></span></span></u><span style=3D=
"font-size: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span=
 style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255=
, 255, 255);">, they could potentially redirect legitimate library paths to=
 malicious shared libraries controlled by them, leading to container escape=
.</span></span></span></span></div></div><div data-zone-id=3D"0" data-line-=
index=3D"15" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4p=
x; line-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-=
size: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family:=
 =E7=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span style=
=3D"background-color: rgb(255, 255, 255);"><span>&nbsp;<wbr></span></span><=
/span></span></span></div></div><div data-zone-id=3D"0" data-line-index=3D"=
16" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-h=
eight: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-size: 14p=
x;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: =E7=AD=
=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"backg=
round-color: rgb(255, 255, 255);">Credit:</span></span></span></span></div>=
</div><div data-zone-id=3D"0" data-line-index=3D"17" data-line=3D"true" sty=
le=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"a=
uto" style=3D"text-align: justify; font-size: 14px;"><span style=3D"font-si=
ze: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=
=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255,=
 255);">Lei Wang &amp; Min Yao (Nebula Security Lab, Huawei Cloud)</span></=
span></span></span></div></div><div data-zone-id=3D"0" data-line-index=3D"1=
8" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-he=
ight: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-size: 14px=
;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: =E7=AD=89=
=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"backgrou=
nd-color: rgb(255, 255, 255);"><span>&nbsp;<wbr></span></span></span></span=
></span></div></div><div data-zone-id=3D"0" data-line-index=3D"19" data-lin=
e=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"=
><div dir=3D"auto" style=3D"text-align: justify; font-size: 14px;"><span st=
yle=3D"font-size: 10.5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"=
><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: r=
gb(255, 255, 255);">Reference:</span></span></span></span></div></div><div =
data-zone-id=3D"0" data-line-index=3D"20" data-line=3D"true" style=3D"margi=
n-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" style=
=3D"text-align: justify; font-size: 14px;"><u><span style=3D"font-size: 10.=
5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"backg=
round-color: rgb(255, 255, 255);"><a class=3D"not-doclink" href=3D"https://=
nvidia.custhelp.com/app/answers/detail/a_id/5659" linkid=3D"qRysEASkAw" tar=
get=3D"_blank" rel=3D"noopener noreferrer" style=3D"transition: color 0.3s =
ease 0s; cursor: pointer; color: rgb(20, 86, 240);">https://nvidia.custhelp=
.com/app/answers/detail/a_id/5659</a></span></span></span></u></div></div><=
div data-zone-id=3D"0" data-line-index=3D"21" data-line=3D"true" style=3D"m=
argin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" st=
yle=3D"text-align: justify; font-size: 14px;"><span style=3D"font-size: 10.=
5pt;"><span style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"color=
: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);"><=
span>&nbsp;<wbr></span></span></span></span></span></div></div><div data-zo=
ne-id=3D"0" data-line-index=3D"22" data-line=3D"true" style=3D"margin-top: =
4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text=
-align: justify; font-size: 14px;"><span style=3D"font-size: 10.5pt;"><span=
 style=3D"font-family: =E7=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 3=
5, 41);"><span style=3D"background-color: rgb(255, 255, 255);"><span>&nbsp;=
<wbr></span></span></span></span></span></div></div><div data-zone-id=3D"0"=
 data-line-index=3D"23" data-line=3D"true" style=3D"margin-top: 4px; margin=
-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text-align: jus=
tify; font-size: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"f=
ont-family: =E7=AD=89=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><s=
pan style=3D"background-color: rgb(255, 255, 255);">Best regards,</span></s=
pan></span></span></div></div><div data-zone-id=3D"0" data-line-index=3D"24=
" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-hei=
ght: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-size: 14px;=
"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: =E7=AD=89=
=E7=BA=BF;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"backgrou=
nd-color: rgb(255, 255, 255);">Yajie Li</span></span></span></span></div></=
div><div data-zone-id=3D"0" data-line-index=3D"25" data-line=3D"true" style=
=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"aut=
o" style=3D"font-size: 14px;"><br></div></div></div>=

--c4724f22580883f1ebe410631c141518ed6a5e458521337e359c9c4f5e73--
