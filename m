Received: (qmail 1186 invoked by uid 550); 16 Jul 2025 09:46:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15590 invoked from network); 16 Jul 2025 01:30:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=openeuler-sh.20200927.dkim.feishu.cn; t=1752629406;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=7J6cJXEfcTDi4tFdw4DA4Gs/3bbOcbvQ5IbnWAePwKU=;
 b=eazosepJbXwARLKkxWTya+NCBBbTTEAEZHJniTr+30LPGaNQn1HZ9/Rk0G+ZLjDogQgqTj
 hE4I88fHhMEvIavWYm6hY8Pk6N736VL1RlLvOsQg6FJrP/3Rg84jBD5glv2Bnc/Y3i8HKn
 y/JvLgMeabG5AS+UJi8SEPKUW/lHWhkHaYh8FGvkNkyJ7xQLyr9XcqMtJa+fr4xJjFxkBe
 P0JztsETMVtzgO2p4tHpNIz/Vio5tF36McPukzQpbA0yxi6RH7+gVlV0tMHJhrQbd3Nkyk
 9PvGQHNdJDq/ywL9vxrhZDjugxibvTX5LEZ5hmDoMoNioYOpVZSwlPVX4c+e1g==
Date: Wed, 16 Jul 2025 09:30:03 +0800
Message-Id: <c91c769394051f886c25f8bf895ec770dce36a73.162b8ce9.08a1.4e4c.b18b.2fc5a955ed5e@feishu.cn>
To: "oss-security" <oss-security@lists.openwall.com>
From: "liyajie" <liyajie@openeuler.sh>
Mime-Version: 1.0
X-Lms-Return-Path: <lba+16877009c+42cde7+lists.openwall.com+liyajie@openeuler.sh>
Content-Type: multipart/alternative;
 boundary=e31b50d020ed716777f454464aa5b8f7858e8444878477e9d7055e9719db
Subject: [oss-security] =?UTF-8?q?CVE-2025-30761=EF=BC=9AA_vulnerability_in_JDK's_Nashorn_Allows_?=
	=?UTF-8?q?for_Arbitrary_Code_Execution?=

--e31b50d020ed716777f454464aa5b8f7858e8444878477e9d7055e9719db
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hello,
=C2=A0
There is a security vulnerability in Nashorn within the JDK, which can be e=
xploited to access any Java object in a restricted Nashorn execution enviro=
nment (specifically, it refers to the use of --no-java or ClassFilter),ther=
eby=C2=A0achieving arbitrary code execution.
=C2=A0
Details:
- CVE: CVE-2025-30761
- Subsystem: JDK Nashorn
- Impact: Bypassing security restrictions in a restricted Nashorn execution=
 environment, accessing any Java object, and achieving arbitrary code execu=
tion
- Affected versions: Oracle Java SE: 8u451, 8u451-perf, 11.0.27; Oracle Gra=
alVM Enterprise Edition: 21.3.14
- Fixed in: It is recommended to upgrade to a JDK version that includes the=
 fix patch.
=C2=A0
Description:
In JDK8 - JDK14, Nashorn has always been the built-in JavaScript Engine for=
 Java.
It not only allows dynamic parsing of js=C2=A0in Java, but also allows acce=
ss to Java classes from within js.
=C2=A0
```
ScriptEngine engine0 =3D new ScriptEngineManager().getEngineByName("nashorn=
");
String cmd =3D "Java.type('java.lang.Runtime').getRuntime().exec('calc');";
engine0.eval(cmd);
```
=C2=A0
This code will execute the calc system command and bring up the calculator.
For=C2=A0enhance security, in Nashorn's documentation, there is a `--no-jav=
a` option that prohibits access to Java classes from JavaScript.
=C2=A0
```
System.setProperty("nashorn.args", "--no-java");
ScriptEngine engine0 =3D new ScriptEngineManager().getEngineByName("nashorn=
");
String cmd =3D "Java.type('java.lang.Runtime').getRuntime().exec('calc');";
engine0.eval(cmd);
```
=C2=A0
This code will throw an exception:"Java" is not defined
The researcher discovered a way to bypass the --no-java security restrictio=
n, allowing unrestricted access to Java objects and the execution of arbitr=
ary code. It is worth mentioning that this bypass way also applies to Class=
Filter, another security mechanism added to Nashorn by the JDK in JEP202.
=C2=A0
Credit:
Tianyi Cheng(chengtianyi@huawei.com)
=C2=A0
Reference:
https://nvd.nist.gov/vuln/detail/CVE-2025-30761
https://www.oracle.com/security-alerts/cpujul2025.html
=C2=A0
Best regards,
Yajie Li
=C2=A0=

--e31b50d020ed716777f454464aa5b8f7858e8444878477e9d7055e9719db
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<div id=3D"editor_version_7.45.0_OI6Ood8G" style=3D"word-break:break-word;"=
><div data-zone-id=3D"0" data-line-index=3D"0" data-line=3D"true" style=3D"=
margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" s=
tyle=3D"text-align: justify; font-size: 14px;"><span style=3D"font-size: 10=
.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"color: rgb(31,=
 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">Hello,</sp=
an></span></span></span></div></div><div data-zone-id=3D"0" data-line-index=
=3D"1" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; lin=
e-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-size: =
14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: DengX=
ian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-col=
or: rgb(255, 255, 255);"><span>&nbsp;<wbr></span></span></span></span></spa=
n></div></div><div start=3D"1" style=3D"margin: 0px 0px 0px 24px; padding-l=
eft: 0px;"><div class=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"=
true" data-list=3D"indent1" style=3D"line-height: 1.6; margin-top: 4px; mar=
gin-bottom: 4px; padding-left: 0px; font-size: 10.5pt; font-family: DengXia=
n; text-align: justify;" dir=3D"auto"><span style=3D"font-size: 10.5pt;"><s=
pan style=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);=
"><span style=3D"background-color: rgb(255, 255, 255);">There is a security=
 vulnerability in Nashorn within the JDK, which can be exploited to access =
any Java object in a restricted Nashorn execution environment (specifically=
, it refers to the use of --no-java or </span></span></span></span><span st=
yle=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span sty=
le=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 25=
5, 255);">ClassFilter),thereby</span></span></span></span><span style=3D"fo=
nt-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"col=
or: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);"=
>&nbsp;achieving arbitrary code execution.</span></span></span></span></div=
></div><div data-zone-id=3D"0" data-line-index=3D"3" data-line=3D"true" sty=
le=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div style=3D=
"text-indent: 2em; font-size: 14px;" class=3D"text-indent" dir=3D"auto"><di=
v style=3D"text-align: justify;"><span style=3D"font-size: 10.5pt;"><span s=
tyle=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><sp=
an style=3D"background-color: rgb(255, 255, 255);"><span>&nbsp;<wbr></span>=
</span></span></span></span></div></div></div><div data-zone-id=3D"0" data-=
line-index=3D"4" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom=
: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; f=
ont-size: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-fam=
ily: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"back=
ground-color: rgb(255, 255, 255);">Details:</span></span></span></span></di=
v></div><div start=3D"1" style=3D"margin: 0px 0px 0px 24px; padding-left: 0=
px;"><div class=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"true" =
data-list=3D"indent1" style=3D"line-height: 1.6; margin-top: 4px; margin-bo=
ttom: 4px; padding-left: 0px; font-size: 10.5pt; font-family: DengXian; tex=
t-align: justify;" dir=3D"auto"><span style=3D"font-size: 10.5pt;"><span st=
yle=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><spa=
n style=3D"background-color: rgb(255, 255, 255);">- CVE: CVE-2025-30761</sp=
an></span></span></span></div><div class=3D"temp-li indent1 font-size-10.5p=
t" data-li-line=3D"true" data-list=3D"indent1" style=3D"line-height: 1.6; m=
argin-top: 4px; margin-bottom: 4px; padding-left: 0px; font-size: 10.5pt; f=
ont-family: DengXian; text-align: justify;" dir=3D"auto"><span style=3D"fon=
t-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"colo=
r: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">=
- Subsystem: JDK Nashorn</span></span></span></span></div><div class=3D"tem=
p-li indent1 font-size-10.5pt" data-li-line=3D"true" data-list=3D"indent1" =
style=3D"line-height: 1.6; margin-top: 4px; margin-bottom: 4px; padding-lef=
t: 0px; font-size: 10.5pt; font-family: DengXian; text-align: justify;" dir=
=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: De=
ngXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-=
color: rgb(255, 255, 255);">- Impact: Bypassing security restrictions in a =
restricted Nashorn execution environment, accessing any Java object, and ac=
hieving arbitrary code execution</span></span></span></span></div><div clas=
s=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"true" data-list=3D"i=
ndent1" style=3D"line-height: 1.6; margin-top: 4px; margin-bottom: 4px; pad=
ding-left: 0px; font-size: 10.5pt; font-family: DengXian; text-align: justi=
fy;" dir=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=3D"font-fa=
mily: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"bac=
kground-color: rgb(255, 255, 255);">- Affected versions: Oracle Java SE: 8u=
451, 8u451-perf, 11.0.27; Oracle GraalVM Enterprise Edition: 21.3.14</span>=
</span></span></span></div><div class=3D"temp-li indent1 font-size-10.5pt" =
data-li-line=3D"true" data-list=3D"indent1" style=3D"line-height: 1.6; marg=
in-top: 4px; margin-bottom: 4px; padding-left: 0px; font-size: 10.5pt; font=
-family: DengXian; text-align: justify;" dir=3D"auto"><span style=3D"font-s=
ize: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"color: =
rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">- F=
ixed in: It is recommended to upgrade to a JDK version that includes the fi=
x patch.</span></span></span></span></div></div><div data-zone-id=3D"0" dat=
a-line-index=3D"10" data-line=3D"true" style=3D"margin-top: 4px; margin-bot=
tom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justify=
; font-size: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-=
family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"b=
ackground-color: rgb(255, 255, 255);"><span>&nbsp;<wbr></span></span></span=
></span></span></div></div><div data-zone-id=3D"0" data-line-index=3D"11" d=
ata-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-height=
: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-size: 14px;"><=
span style=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"><s=
pan style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(=
255, 255, 255);">Description:</span></span></span></span></div></div><div s=
tart=3D"1" style=3D"margin: 0px 0px 0px 24px; padding-left: 0px;"><div clas=
s=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"true" data-list=3D"i=
ndent1" style=3D"line-height: 1.6; margin-top: 4px; margin-bottom: 4px; pad=
ding-left: 0px; font-size: 10.5pt; font-family: DengXian; text-align: justi=
fy;" dir=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=3D"font-fa=
mily: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"bac=
kground-color: rgb(255, 255, 255);">In JDK8 - JDK14, Nashorn has always bee=
n the built-in JavaScript Engine for Java.</span></span></span></span></div=
><div class=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"true" data=
-list=3D"indent1" style=3D"line-height: 1.6; margin-top: 4px; margin-bottom=
: 4px; padding-left: 0px; font-size: 10.5pt; font-family: DengXian; text-al=
ign: justify;" dir=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=
=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span s=
tyle=3D"background-color: rgb(255, 255, 255);">It not only allows dynamic p=
arsing of </span></span></span></span><span style=3D"font-size: 10.5pt;"><s=
pan style=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);=
"><span style=3D"background-color: rgb(255, 255, 255);">js</span></span></s=
pan></span><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: D=
engXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background=
-color: rgb(255, 255, 255);">&nbsp;in Java, but also allows access to Java =
classes from within </span></span></span></span><span style=3D"font-size: 1=
0.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"color: rgb(31=
, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">js</span>=
</span></span></span><span style=3D"font-size: 10.5pt;"><span style=3D"font=
-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"=
background-color: rgb(255, 255, 255);">.</span></span></span></span></div><=
div class=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"true" data-l=
ist=3D"indent1" style=3D"line-height: 1.6; margin-top: 4px; margin-bottom: =
4px; padding-left: 0px; font-size: 10.5pt; font-family: DengXian; text-alig=
n: justify;" dir=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=3D=
"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span styl=
e=3D"background-color: rgb(255, 255, 255);"><span>&nbsp;<wbr></span></span>=
</span></span></span></div><div class=3D"temp-li indent1 font-size-10.5pt" =
data-li-line=3D"true" data-list=3D"indent1" style=3D"line-height: 1.6; marg=
in-top: 4px; margin-bottom: 4px; padding-left: 0px; font-size: 10.5pt; font=
-family: DengXian; text-align: justify;" dir=3D"auto"><span style=3D"font-s=
ize: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"color: =
rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">```=
</span></span></span></span></div><div class=3D"temp-li indent1 font-size-1=
0.5pt" data-li-line=3D"true" data-list=3D"indent1" style=3D"line-height: 1.=
6; margin-top: 4px; margin-bottom: 4px; padding-left: 0px; font-size: 10.5p=
t; font-family: DengXian; text-align: justify;" dir=3D"auto"><span style=3D=
"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"=
color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255=
);">ScriptEngine engine0 =3D new ScriptEngineManager().getEngineByName("nas=
horn");</span></span></span></span></div><div class=3D"temp-li indent1 font=
-size-10.5pt" data-li-line=3D"true" data-list=3D"indent1" style=3D"line-hei=
ght: 1.6; margin-top: 4px; margin-bottom: 4px; padding-left: 0px; font-size=
: 10.5pt; font-family: DengXian; text-align: justify;" dir=3D"auto"><span s=
tyle=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span st=
yle=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 2=
55, 255);">String cmd =3D "Java.type('java.lang.Runtime').getRuntime().exec=
('calc');";</span></span></span></span></div><div class=3D"temp-li indent1 =
font-size-10.5pt" data-li-line=3D"true" data-list=3D"indent1" style=3D"line=
-height: 1.6; margin-top: 4px; margin-bottom: 4px; padding-left: 0px; font-=
size: 10.5pt; font-family: DengXian; text-align: justify;" dir=3D"auto"><sp=
an style=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"><spa=
n style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(25=
5, 255, 255);">engine0.eval(cmd);</span></span></span></span></div><div cla=
ss=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"true" data-list=3D"=
indent1" style=3D"line-height: 1.6; margin-top: 4px; margin-bottom: 4px; pa=
dding-left: 0px; font-size: 10.5pt; font-family: DengXian; text-align: just=
ify;" dir=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=3D"font-f=
amily: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"ba=
ckground-color: rgb(255, 255, 255);">```</span></span></span></span></div><=
/div><div data-zone-id=3D"0" data-line-index=3D"20" data-line=3D"true" styl=
e=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"au=
to" style=3D"text-align: justify; font-size: 14px;"><span style=3D"font-siz=
e: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"color: rg=
b(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);"><span=
>&nbsp;<wbr></span></span></span></span></span></div></div><div start=3D"1"=
 style=3D"margin: 0px 0px 0px 24px; padding-left: 0px;"><div class=3D"temp-=
li indent1 font-size-10.5pt" data-li-line=3D"true" data-list=3D"indent1" st=
yle=3D"line-height: 1.6; margin-top: 4px; margin-bottom: 4px; padding-left:=
 0px; font-size: 10.5pt; font-family: DengXian; text-align: justify;" dir=
=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: De=
ngXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-=
color: rgb(255, 255, 255);">This code will execute the calc system command =
and bring up the calculator.</span></span></span></span></div><div class=3D=
"temp-li indent1 font-size-10.5pt" data-li-line=3D"true" data-list=3D"inden=
t1" style=3D"line-height: 1.6; margin-top: 4px; margin-bottom: 4px; padding=
-left: 0px; font-size: 10.5pt; font-family: DengXian; text-align: justify;"=
 dir=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family=
: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"backgro=
und-color: rgb(255, 255, 255);">For</span></span></span></span><span style=
=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=
=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255,=
 255);">&nbsp;enhance security, in Nashorn's documentation, there is a `--n=
o-java` option that prohibits access to Java classes from JavaScript.</span=
></span></span></span></div><div class=3D"temp-li indent1 font-size-10.5pt"=
 data-li-line=3D"true" data-list=3D"indent1" style=3D"line-height: 1.6; mar=
gin-top: 4px; margin-bottom: 4px; padding-left: 0px; font-size: 10.5pt; fon=
t-family: DengXian; text-align: justify;" dir=3D"auto"><span style=3D"font-=
size: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"color:=
 rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);"><s=
pan>&nbsp;<wbr></span></span></span></span></span></div><div class=3D"temp-=
li indent1 font-size-10.5pt" data-li-line=3D"true" data-list=3D"indent1" st=
yle=3D"line-height: 1.6; margin-top: 4px; margin-bottom: 4px; padding-left:=
 0px; font-size: 10.5pt; font-family: DengXian; text-align: justify;" dir=
=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: De=
ngXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-=
color: rgb(255, 255, 255);">```</span></span></span></span></div><div class=
=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"true" data-list=3D"in=
dent1" style=3D"line-height: 1.6; margin-top: 4px; margin-bottom: 4px; padd=
ing-left: 0px; font-size: 10.5pt; font-family: DengXian; text-align: justif=
y;" dir=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=3D"font-fam=
ily: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"back=
ground-color: rgb(255, 255, 255);">System.setProperty("nashorn.args", "--no=
-java");</span></span></span></span></div><div class=3D"temp-li indent1 fon=
t-size-10.5pt" data-li-line=3D"true" data-list=3D"indent1" style=3D"line-he=
ight: 1.6; margin-top: 4px; margin-bottom: 4px; padding-left: 0px; font-siz=
e: 10.5pt; font-family: DengXian; text-align: justify;" dir=3D"auto"><span =
style=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span s=
tyle=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, =
255, 255);">ScriptEngine engine0 =3D new ScriptEngineManager().getEngineByN=
ame("nashorn");</span></span></span></span></div><div class=3D"temp-li inde=
nt1 font-size-10.5pt" data-li-line=3D"true" data-list=3D"indent1" style=3D"=
line-height: 1.6; margin-top: 4px; margin-bottom: 4px; padding-left: 0px; f=
ont-size: 10.5pt; font-family: DengXian; text-align: justify;" dir=3D"auto"=
><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;">=
<span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rg=
b(255, 255, 255);">String cmd =3D "Java.type('java.lang.Runtime').getRuntim=
e().exec('calc');";</span></span></span></span></div><div class=3D"temp-li =
indent1 font-size-10.5pt" data-li-line=3D"true" data-list=3D"indent1" style=
=3D"line-height: 1.6; margin-top: 4px; margin-bottom: 4px; padding-left: 0p=
x; font-size: 10.5pt; font-family: DengXian; text-align: justify;" dir=3D"a=
uto"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXia=
n;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color=
: rgb(255, 255, 255);">engine0.eval(cmd);</span></span></span></span></div>=
<div class=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"true" data-=
list=3D"indent1" style=3D"line-height: 1.6; margin-top: 4px; margin-bottom:=
 4px; padding-left: 0px; font-size: 10.5pt; font-family: DengXian; text-ali=
gn: justify;" dir=3D"auto"><span style=3D"font-size: 10.5pt;"><span style=
=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span s=
tyle=3D"background-color: rgb(255, 255, 255);">```</span></span></span></sp=
an></div><div class=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"tr=
ue" data-list=3D"indent1" style=3D"line-height: 1.6; margin-top: 4px; margi=
n-bottom: 4px; padding-left: 0px; font-size: 10.5pt; font-family: DengXian;=
 text-align: justify;" dir=3D"auto"><span style=3D"font-size: 10.5pt;"><spa=
n style=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);">=
<span style=3D"background-color: rgb(255, 255, 255);"><span>&nbsp;<wbr></sp=
an></span></span></span></span></div><div class=3D"temp-li indent1 font-siz=
e-10.5pt" data-li-line=3D"true" data-list=3D"indent1" style=3D"line-height:=
 1.6; margin-top: 4px; margin-bottom: 4px; padding-left: 0px; font-size: 10=
.5pt; font-family: DengXian; text-align: justify;" dir=3D"auto"><span style=
=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=
=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255,=
 255);">This code will throw an exception:"Java" is not defined</span></spa=
n></span></span></div><div class=3D"temp-li indent1 font-size-10.5pt" data-=
li-line=3D"true" data-list=3D"indent1" style=3D"line-height: 1.6; margin-to=
p: 4px; margin-bottom: 4px; padding-left: 0px; font-size: 10.5pt; font-fami=
ly: DengXian; text-align: justify;" dir=3D"auto"><span style=3D"font-size: =
10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"color: rgb(3=
1, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">The rese=
archer discovered a way to bypass the --no-java security restriction, allow=
ing unrestricted access to Java objects and the execution of arbitrary code=
. It is worth mentioning that this bypass way also applies to ClassFilter, =
another security mechanism added to Nashorn by the JDK in JEP202.</span></s=
pan></span></span></div></div><div data-zone-id=3D"0" data-line-index=3D"33=
" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-hei=
ght: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font-size: 14px;=
"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"=
><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: r=
gb(255, 255, 255);"><span>&nbsp;<wbr></span></span></span></span></span></d=
iv></div><div data-zone-id=3D"0" data-line-index=3D"34" data-line=3D"true" =
style=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=
=3D"auto" style=3D"text-align: justify; font-size: 14px;"><span style=3D"fo=
nt-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"col=
or: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);"=
>Credit:</span></span></span></span></div></div><div start=3D"1" style=3D"m=
argin: 0px 0px 0px 24px; padding-left: 0px;"><div class=3D"temp-li indent1 =
font-size-10.5pt" data-li-line=3D"true" data-list=3D"indent1" style=3D"line=
-height: 1.6; margin-top: 4px; margin-bottom: 4px; padding-left: 0px; font-=
size: 10.5pt; font-family: DengXian; text-align: justify;" dir=3D"auto"><sp=
an style=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"><spa=
n style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(25=
5, 255, 255);">Tianyi Cheng(</span></span></span></span><u><span style=3D"f=
ont-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"ba=
ckground-color: rgb(255, 255, 255);"><a class=3D"not-doclink" href=3D"mailt=
o:chengtianyi@huawei.com" linkid=3D"qoodXPyxN8" target=3D"_blank" rel=3D"no=
opener noreferrer" style=3D"transition: color 0.3s ease 0s; cursor: pointer=
; color: rgb(20, 86, 240);">chengtianyi@huawei.com</a></span></span></span>=
</u><span style=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian=
;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color:=
 rgb(255, 255, 255);">)</span></span></span></span></div></div><div data-zo=
ne-id=3D"0" data-line-index=3D"36" data-line=3D"true" style=3D"margin-top: =
4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text=
-align: justify; font-size: 14px;"><span style=3D"font-size: 10.5pt;"><span=
 style=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><=
span style=3D"background-color: rgb(255, 255, 255);"><span>&nbsp;<wbr></spa=
n></span></span></span></span></div></div><div data-zone-id=3D"0" data-line=
-index=3D"37" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4=
px; line-height: 1.6;"><div dir=3D"auto" style=3D"text-align: justify; font=
-size: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"font-family=
: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"backgro=
und-color: rgb(255, 255, 255);">Reference:</span></span></span></span></div=
></div><div start=3D"1" style=3D"margin: 0px 0px 0px 24px; padding-left: 0p=
x;"><div class=3D"temp-li indent1 font-size-10.5pt" data-li-line=3D"true" d=
ata-list=3D"indent1" style=3D"line-height: 1.6; margin-top: 4px; margin-bot=
tom: 4px; padding-left: 0px; font-size: 10.5pt; font-family: DengXian; text=
-align: justify;" dir=3D"auto"><u><span style=3D"font-size: 10.5pt;"><span =
style=3D"font-family: DengXian;"><span style=3D"background-color: rgb(255, =
255, 255);"><a class=3D"not-doclink" href=3D"https://nvd.nist.gov/vuln/deta=
il/CVE-2025-30761" linkid=3D"634BeKpeEj" target=3D"_blank" rel=3D"noopener =
noreferrer" style=3D"transition: color 0.3s ease 0s; cursor: pointer; color=
: rgb(20, 86, 240);">https://nvd.nist.gov/vuln/detail/CVE-2025-30761</a></s=
pan></span></span></u></div><div class=3D"temp-li indent1 font-size-10.5pt"=
 data-li-line=3D"true" data-list=3D"indent1" style=3D"line-height: 1.6; mar=
gin-top: 4px; margin-bottom: 4px; padding-left: 0px; font-size: 10.5pt; fon=
t-family: DengXian; text-align: justify;" dir=3D"auto"><u><span style=3D"fo=
nt-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span style=3D"bac=
kground-color: rgb(255, 255, 255);"><a class=3D"not-doclink" href=3D"https:=
//www.oracle.com/security-alerts/cpujul2025.html" linkid=3D"TupHpMke6Y" tar=
get=3D"_blank" rel=3D"noopener noreferrer" style=3D"transition: color 0.3s =
ease 0s; cursor: pointer; color: rgb(20, 86, 240);">https://www.oracle.com/=
security-alerts/cpujul2025.html</a></span></span></span></u></div></div><di=
v data-zone-id=3D"0" data-line-index=3D"40" data-line=3D"true" style=3D"mar=
gin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" styl=
e=3D"text-align: justify; font-size: 14px;"><span style=3D"font-size: 10.5p=
t;"><span style=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35=
, 41);"><span style=3D"background-color: rgb(255, 255, 255);"><span>&nbsp;<=
wbr></span></span></span></span></span></div></div><div data-zone-id=3D"0" =
data-line-index=3D"41" data-line=3D"true" style=3D"margin-top: 4px; margin-=
bottom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text-align: just=
ify; font-size: 14px;"><span style=3D"font-size: 10.5pt;"><span style=3D"fo=
nt-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span style=
=3D"background-color: rgb(255, 255, 255);">Best regards,</span></span></spa=
n></span></div></div><div data-zone-id=3D"0" data-line-index=3D"42" data-li=
ne=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;=
"><div dir=3D"auto" style=3D"text-align: justify; font-size: 14px;"><span s=
tyle=3D"font-size: 10.5pt;"><span style=3D"font-family: DengXian;"><span st=
yle=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 2=
55, 255);">Yajie Li</span></span></span></span></div></div><div data-zone-i=
d=3D"0" data-line-index=3D"43" data-line=3D"true" style=3D"margin-top: 4px;=
 margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"text-ali=
gn: justify; font-size: 14px;"><span style=3D"font-size: 12pt;"><span style=
=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span s=
tyle=3D"background-color: rgb(255, 255, 255);"><span>&nbsp;<wbr></span></sp=
an></span></span></span></div></div></div>=

--e31b50d020ed716777f454464aa5b8f7858e8444878477e9d7055e9719db--
