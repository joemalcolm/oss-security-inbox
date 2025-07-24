Received: (qmail 3297 invoked by uid 550); 24 Jul 2025 13:32:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9761 invoked from network); 24 Jul 2025 03:44:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=openeuler-sh.20200927.dkim.feishu.cn; t=1753328634;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=Kbc0/1Efenh0dNPgaQWe+qLvLVVXzjnGfPz4v3kbi2E=;
 b=V8T7MImIlbrtnXc75OPMWKL878Y8Hw29tkP1R8PykPG5mQytRK1df0l6PNZe+LDPtrUkLP
 +VTjR3F83UJQQIDyQpm4uuOnB2BXf8kCk92TW9Z4Errgveg9e+PPwSTfbqClmS4M9EyOKa
 /WfNBr16r06oOI9Rwy0AgG3FDfZZGs0PGpc9/+yUd9wzh41qTXKTaqVWu+3sg2dhQDVbw3
 Ewi/xeSRbWtpzz1Ci94q3Zur9+OS5hnkzpveWJMDCFGu6X+VGRqNc1QLqiKIBs4cwijGEi
 juN9P0b+jsZXc4v7VJLsYK5pZ7I/5IQQ+P29Qmc8zwfRQYAReNENKiEBUn8v3A==
X-Lms-Return-Path: <lba+16881abf8+b94521+lists.openwall.com+liyajie@openeuler.sh>
Message-Id: <c91c769394051f886c25f8bf895ec770dce36a73.7b4792d8.7fb8.4b9e.a421.8989e2199636@feishu.cn>
Cc: <oss-security@lists.openwall.com>
Mime-Version: 1.0
References: <c91c769394051f886c25f8bf895ec770dce36a73.162b8ce9.08a1.4e4c.b18b.2fc5a955ed5e@feishu.cn>
	<2aef7fe7-ba3d-4d6f-bcc4-19163beaaea2@eenterphace.org>
In-Reply-To: <2aef7fe7-ba3d-4d6f-bcc4-19163beaaea2@eenterphace.org>
Date: Thu, 24 Jul 2025 11:43:51 +0800
To: "Moritz Bechler" <mbechler@eenterphace.org>
From: "liyajie" <liyajie@openeuler.sh>
Content-Type: multipart/alternative;
 boundary=1ca03ee10df9d96329abb71702233568147708d2b0a83ba7ea3d7df65ef1
Subject: =?UTF-8?q?Re:_[oss-security]_CVE-2025-30761=EF=BC=9AA_vulnerability_in_JD?=
	=?UTF-8?q?K's_Nashorn_Allows_for_Arbitrary_Code_Execution?=

--1ca03ee10df9d96329abb71702233568147708d2b0a83ba7ea3d7df65ef1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Moritz,

I agree with you, based on my understanding, to use Nashorn safely, at leas=
t three conditions must be met:
1. Remove objects such as "Java" and "Package" from the Nashorn execution c=
ontext to prevent direct access to Java classes and methods.
2. Prohibit access to=C2=A0the=C2=A0engine property in the Nahsorn executio=
n context.
3. Prohibit Reflection.

This approach may ensure that the default execution context is secure (excl=
uding scenarios where business code binds a high-risk class/instance to the=
 execution context on its own).
Using both SecurityManager and ClassFilter should meet the above three cond=
itions, but employing SecurityManager in business environments is not an ea=
sy task, the SecurityManager has also been marked as deprecated starting fr=
om JDK 17.

Best Regards,
Yajie Li

> From: "Moritz Bechler"<mbechler@eenterphace.org>
> Date:  Mon, Jul 21, 2025, 00:26
> Subject:  Re: [oss-security] CVE-2025-30761=EF=BC=9AA vulnerability in JD=
K's Nashorn Allows for Arbitrary Code Execution
> To: <oss-security@lists.openwall.com>, "liyajie"<liyajie@openeuler.sh>
> Hi,

>=20
>=20
> interesting that they "fixed" this issue now. Way back=20

> (<https://mbechler.github.io/2019/03/02/Beware-the-Nashorn/>) reporting=20

> something similar, I was told that Nashorn "sandboxing" was not supposed=
=20

> to be secure unless you also configure a SecurityManager (which=20

> implicitly suppresses the "engine" property). Restrictions purely based=20

> on a ClassFilter have been broken ever since then.

>=20
> And the patch really does not address the fundamental issue, which is=20

> that you are able to get and configure a new engine. While the change=20

> may stop you from suppressing the inherited no-java flag, why not get=20

> direct command execution using another option instead:

>=20
> System.setProperty("nashorn.args", "--no-java");

> ScriptEngine e =3D new ScriptEngineManager().getEngineByName("nashorn");

> String cmd =3D

> "this.engine.factory.getScriptEngine(\"scripting\").eval('$EXEC(\"calc.ex=
e\")')";

> e.eval(cmd);

>=20
>=20
>=20
> So, imho, the proper advice still should be not to use Nashorn for=20

> running untrusted code.

>=20
>=20
>=20
> best regards

>=20
> Moritz
>=20=

--1ca03ee10df9d96329abb71702233568147708d2b0a83ba7ea3d7df65ef1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div id=3D"editor_version_7.45.0_WbaBkmiO" style=
=3D"word-break:break-word;"><div data-zone-id=3D"0" data-line-index=3D"0" d=
ata-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-height=
: 1.6;"><div dir=3D"auto" style=3D"font-size: 14px;"><span style=3D"font-si=
ze: 14px;"><span style=3D"font-family: DengXian;"><span style=3D"color: rgb=
(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">Hi Mor=
itz,</span></span></span></span></div></div><div data-zone-id=3D"0" data-li=
ne-index=3D"1" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: =
4px; line-height: 1.6;"><div dir=3D"auto" style=3D"font-size: 14px;"><br/><=
/div></div><div data-zone-id=3D"0" data-line-index=3D"2" data-line=3D"true"=
 style=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=
=3D"auto" style=3D"font-size: 14px;"><span style=3D"font-size: 14px;"><span=
 style=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><=
span style=3D"background-color: rgb(255, 255, 255);">I agree with you, base=
d on my understanding, to use Nashorn safely, at least three conditions mus=
t be met:</span></span></span></span></div></div><div data-zone-id=3D"0" da=
ta-line-index=3D"3" data-line=3D"true" style=3D"margin-top: 4px; margin-bot=
tom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"font-size: 14px;"><=
span style=3D"font-size: 14px;"><span style=3D"font-family: DengXian;"><spa=
n style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(25=
5, 255, 255);">1. Remove objects such as &#34;Java&#34; and &#34;Package&#3=
4; from the Nashorn execution context to prevent direct access to Java clas=
ses and methods.</span></span></span></span></div></div><div data-zone-id=
=3D"0" data-line-index=3D"4" data-line=3D"true" style=3D"margin-top: 4px; m=
argin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"font-size:=
 14px;"><span style=3D"font-size: 14px;"><span style=3D"font-family: DengXi=
an;"><span style=3D"color: rgb(31, 35, 41);"><span style=3D"background-colo=
r: rgb(255, 255, 255);">2. Prohibit access to</span></span></span></span><s=
pan style=3D"font-size: 14px;"><span style=3D"font-family: DengXian;"><span=
 style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255=
, 255, 255);">=C2=A0the</span></span></span></span><span style=3D"font-size=
: 14px;"><span style=3D"font-family: DengXian;"><span style=3D"color: rgb(3=
1, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">=C2=A0en=
gine property in the Nahsorn execution context.</span></span></span></span>=
</div></div><div data-zone-id=3D"0" data-line-index=3D"5" data-line=3D"true=
" style=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=
=3D"auto" style=3D"font-size: 14px;"><span style=3D"font-size: 14px;"><span=
 style=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><=
span style=3D"background-color: rgb(255, 255, 255);">3. Prohibit Reflection=
.</span></span></span></span></div></div><div data-zone-id=3D"0" data-line-=
index=3D"6" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px=
; line-height: 1.6;"><div dir=3D"auto" style=3D"font-size: 14px;"><br/></di=
v></div><div data-zone-id=3D"0" data-line-index=3D"7" data-line=3D"true" st=
yle=3D"margin-top: 4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"=
auto" style=3D"font-size: 14px;"><span style=3D"font-size: 14px;"><span sty=
le=3D"font-family: DengXian;"><span style=3D"color: rgb(31, 35, 41);"><span=
 style=3D"background-color: rgb(255, 255, 255);">This approach may ensure t=
hat the default execution context is secure (excluding scenarios where busi=
ness code binds a high-risk class/instance to the execution context on its =
own).</span></span></span></span></div></div><div data-zone-id=3D"0" data-l=
ine-index=3D"8" data-line=3D"true" style=3D"margin-top: 4px; margin-bottom:=
 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"font-size: 14px;"><span=
 style=3D"font-size: 14px;"><span style=3D"font-family: DengXian;"><span st=
yle=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(255, 2=
55, 255);">Using both SecurityManager and ClassFilter should meet the above=
 three conditions, but employing SecurityManager in business environments i=
s not an easy task, the SecurityManager has also been marked as deprecated =
starting from JDK 17.</span></span></span></span></div></div><div data-zone=
-id=3D"0" data-line-index=3D"9" data-line=3D"true" style=3D"margin-top: 4px=
; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"font-si=
ze: 14px;"><br/></div></div><div data-zone-id=3D"0" data-line-index=3D"10" =
data-line=3D"true" style=3D"margin-top: 4px; margin-bottom: 4px; line-heigh=
t: 1.6;"><div dir=3D"auto" style=3D"font-size: 14px;"><span style=3D"font-s=
ize: 14px;"><span style=3D"font-family: DengXian;"><span style=3D"color: rg=
b(31, 35, 41);"><span style=3D"background-color: rgb(255, 255, 255);">Best =
Regards,</span></span></span></span></div></div><div data-zone-id=3D"0" dat=
a-line-index=3D"11" data-line=3D"true" style=3D"margin-top: 4px; margin-bot=
tom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"font-size: 14px;"><=
span style=3D"font-size: 14px;"><span style=3D"font-family: DengXian;"><spa=
n style=3D"color: rgb(31, 35, 41);"><span style=3D"background-color: rgb(25=
5, 255, 255);">Yajie Li</span></span></span></span></div></div><div data-zo=
ne-id=3D"0" data-line-index=3D"12" data-line=3D"true" style=3D"margin-top: =
4px; margin-bottom: 4px; line-height: 1.6;"><div dir=3D"auto" style=3D"font=
-size: 14px;"><br/></div></div></div><div class=3D"history-quote-wrapper" i=
d=3D"lark-mail-quote-175332862"><div data-html-block=3D"quote" data-mail-ht=
ml-ignore=3D""><div style=3D"border-left: none; padding-left: 0px;" class=
=3D"adit-html-block adit-html-block--collapsed"><div><div class=3D"adit-htm=
l-block__attr history-quote-meta-wrapper history-quote-gap-tag" id=3D"lark-=
mail-meta-nUDasE33P" style=3D"padding: 12px; background: rgb(245, 246, 247)=
; color: rgb(31, 35, 41); border-radius: 4px; margin-top: 24px; margin-bott=
om: 12px;"><div id=3D"lark-mail-quote-6ae12c5ad42bb7745389adba7d51dcf4"><di=
v style=3D"word-break: break-word;"><div style=3D"" class=3D"lme-line-signa=
l"><span>From: </span> <span>&#34;Moritz Bechler&#34;&lt;<a data-mailto=3D"=
mailto:mbechler@eenterphace.org" class=3D"quote-head-meta-mailto" style=3D"=
overflow-wrap: break-word; white-space: pre-wrap; hyphens: none; word-break=
: break-word; cursor: pointer; text-decoration: none; color: inherit;" href=
=3D"mailto:mbechler@eenterphace.org">mbechler@eenterphace.org</a>&gt;</span=
></div><div style=3D"" class=3D"lme-line-signal"><span>Date: </span> Mon, J=
ul 21, 2025, 00:26</div><div style=3D"" class=3D"lme-line-signal"><span>Sub=
ject: </span> Re: [oss-security] CVE-2025-30761=EF=BC=9AA vulnerability in =
JDK&#39;s Nashorn Allows for Arbitrary Code Execution</div><div style=3D"" =
class=3D"lme-line-signal"><span>To: </span> <span>&lt;<a data-mailto=3D"mai=
lto:oss-security@lists.openwall.com" class=3D"quote-head-meta-mailto" style=
=3D"overflow-wrap: break-word; white-space: pre-wrap; hyphens: none; word-b=
reak: break-word; cursor: pointer; text-decoration: none; color: inherit;" =
href=3D"mailto:oss-security@lists.openwall.com">oss-security@lists.openwall=
.com</a>&gt;</span>, <span>&#34;liyajie&#34;&lt;<a data-mailto=3D"mailto:li=
yajie@openeuler.sh" class=3D"quote-head-meta-mailto" style=3D"overflow-wrap=
: break-word; white-space: pre-wrap; hyphens: none; word-break: break-word;=
 cursor: pointer; text-decoration: none; color: inherit;" href=3D"mailto:li=
yajie@openeuler.sh">liyajie@openeuler.sh</a>&gt;</span></div></div></div></=
div><div><div data-type=3D"plainText" class=3D"lme-line-signal">Hi,
<br/>
<br/>
<br/>interesting that they &#34;fixed&#34; this issue now. Way back=20
<br/><span>(&lt;<a href=3D"https://mbechler.github.io/2019/03/02/Beware-the=
-Nashorn/" target=3D"_blank" ref=3D"noopener noreferrer">https://mbechler.g=
ithub.io/2019/03/02/Beware-the-Nashorn/</a>&gt;) reporting=20
</span><br/>something similar, I was told that Nashorn &#34;sandboxing&#34;=
 was not supposed=20
<br/>to be secure unless you also configure a SecurityManager (which=20
<br/>implicitly suppresses the &#34;engine&#34; property). Restrictions pur=
ely based=20
<br/>on a ClassFilter have been broken ever since then.
<br/>
<br/>And the patch really does not address the fundamental issue, which is=
=20
<br/>that you are able to get and configure a new engine. While the change=
=20
<br/>may stop you from suppressing the inherited no-java flag, why not get=
=20
<br/>direct command execution using another option instead:
<br/>
<br/>System.setProperty(&#34;nashorn.args&#34;, &#34;--no-java&#34;);
<br/>ScriptEngine e =3D new ScriptEngineManager().getEngineByName(&#34;nash=
orn&#34;);
<br/>String cmd =3D
<br/>&#34;this.engine.factory.getScriptEngine(\&#34;scripting\&#34;).eval(&=
#39;$EXEC(\&#34;calc.exe\&#34;)&#39;)&#34;;
<br/>e.eval(cmd);
<br/>
<br/>
<br/>
<br/>So, imho, the proper advice still should be not to use Nashorn for=20
<br/>running untrusted code.
<br/>
<br/>
<br/>
<br/>best regards
<br/>
<br/>Moritz<br/></div></div></div></div></div></div></body></html>=

--1ca03ee10df9d96329abb71702233568147708d2b0a83ba7ea3d7df65ef1--
