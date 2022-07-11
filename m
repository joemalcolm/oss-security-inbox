Received: (qmail 5705 invoked by uid 550); 11 Jul 2022 16:44:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5199 invoked from network); 11 Jul 2022 16:42:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1657557762; x=1689093762;
  h=from:to:subject:date:message-id:mime-version;
  bh=Zqh1SX2C9cViQCi5Tmibv9xsdLquby8aHqlPFmTJolw=;
  b=FpIpnI/p1Bm9yRFgx1FAFQzYrniIYkc3IwryPkJQdR+V3iiwsYx4kDdO
   wBr68cDwoZULjEEFYemNbMaoI9O9b6dAygJPIThCLWtGShrPi+DqP+Oz9
   isxpGfeNKbW6B4hOhmy1f8jDvRLZABgCKjC0IoUsPsVu6uP17FipjSVg7
   Y=;
X-Amazon-filename: smime.p7s
X-IronPort-AV: E=Sophos;i="5.92,263,1650931200"; 
   d="p7s'?scan'208,217";a="106970539"
From: "Hausler, Micah" <mhausler@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [kubernetes] CVE-2022-2385: aws-iam-authenticator AccessKeyID
 validation bypass
Thread-Index: AQHYlUUrlFUvW5d4FEaWcjLPvHb7cg==
Date: Mon, 11 Jul 2022 16:42:12 +0000
Message-ID: <C5315523-3149-4845-9560-36D35AD65D2B@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.162.65]
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha256; boundary="B_3740388132_507625864"
MIME-Version: 1.0
Subject: [oss-security] [kubernetes] CVE-2022-2385: aws-iam-authenticator AccessKeyID
 validation bypass

--B_3740388132_507625864
Content-type: multipart/alternative;
	boundary="B_3740388132_2961336378"


--B_3740388132_2961336378
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit

Hello Kubernetes Community,

 

A security issue was discovered in aws-iam-authenticator where an allow-listed IAM identity may be able to modify their username and escalate privileges. 

This issue has been rated high (https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N), and assigned CVE-2022-2385
Am I vulnerable?
Users are only affected if they use the AccessKeyID template parameter to construct a username and provide different levels of access based on the username.
Affected Versions
v0.5.2 - v0.5.8
How do I mitigate this vulnerability?
Upgrading to v0.5.9 mitigates this vulnerability.

Prior to upgrading, this vulnerability can be mitigated by not using the {{AccessKeyID}} template value to construct usernames.
Fixed Versions
aws-iam-authenticator v0.5.9
Detection
This issue affected the logged identity, and is not discernible from valid requests.
Additional Details
See the GitHub issue for more details: https://github.com/kubernetes-sigs/aws-iam-authenticator/issues/472
Acknowledgements
This vulnerability was reported by Gafnit Amiga from Lightspin

 

 

Micah Hausler

Principal Engineer

Amazon Web Services

 


--B_3740388132_2961336378
Content-type: text/html;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
h3
	{mso-style-priority:9;
	mso-style-link:"Heading 3 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:13.5pt;
	font-family:"Calibri",sans-serif;
	font-weight:bold;}
h4
	{mso-style-priority:9;
	mso-style-link:"Heading 4 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;
	font-weight:bold;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.Heading3Char
	{mso-style-name:"Heading 3 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 3";
	font-family:"Calibri",sans-serif;
	font-weight:bold;}
span.Heading4Char
	{mso-style-name:"Heading 4 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 4";
	font-family:"Calibri",sans-serif;
	font-weight:bold;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:434054195;
	mso-list-template-ids:-80285870;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:666515927;
	mso-list-template-ids:1909201828;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style></head><body lang=3DEN-US link=3D"#0563C1" vlink=3D"#954F72" sty=
le=3D'word-wrap:break-word'><div class=3DWordSection1><p style=3D'margin:0i=
n;background:white'><span style=3D'font-size:12.0pt;font-family:"Arial",san=
s-serif;color:#24292F'>Hello Kubernetes Community,</span><span style=3D'col=
or:black'><o:p></o:p></span></p><p style=3D'margin:0in;background:white;car=
et-color: rgb(0, 0, 0);font-variant-caps: normal;orphans: auto;text-align:s=
tart;widows: auto;-webkit-text-size-adjust: auto;-webkit-text-stroke-width:=
 0px;word-spacing:0px'><span style=3D'color:black'>&nbsp;<o:p></o:p></span>=
</p><p style=3D'margin:0in;background:white;caret-color: rgb(0, 0, 0);font-=
variant-caps: normal;orphans: auto;text-align:start;widows: auto;-webkit-te=
xt-size-adjust: auto;-webkit-text-stroke-width: 0px;word-spacing:0px'><span=
 style=3D'font-size:12.0pt;font-family:"Arial",sans-serif;color:#24292F'>A =
security issue was discovered in aws-iam-authenticator where an allow-liste=
d IAM identity may be able to modify their username and escalate privileges=
.&nbsp;</span><span style=3D'color:black'><o:p></o:p></span></p><p style=3D=
'margin-bottom:12.0pt;background:white;caret-color: rgb(0, 0, 0);font-varia=
nt-caps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text-si=
ze-adjust: auto;-webkit-text-stroke-width: 0px;word-spacing:0px'><span styl=
e=3D'font-size:12.0pt;font-family:"Arial",sans-serif;color:#24292F'>This is=
sue has been rated</span><span class=3Dapple-converted-space><span style=3D=
'font-size:12.0pt;font-family:"Arial",sans-serif;color:#24292F'>&nbsp;</spa=
n></span><b><span style=3D'font-size:12.0pt;font-family:"Arial",sans-serif;=
color:#24292F'>high</span></b><span class=3Dapple-converted-space><span sty=
le=3D'font-size:12.0pt;font-family:"Arial",sans-serif;color:#24292F'>&nbsp;=
</span></span><span style=3D'font-size:12.0pt;font-family:"Arial",sans-seri=
f;color:#24292F'>(</span><span style=3D'color:black'><a href=3D"https://www=
.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N=
" title=3D"https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:=
L/UI:N/S:U/C:H/I:H/A:N"><span style=3D'font-size:12.0pt;font-family:"Arial"=
,sans-serif;color:#1155CC'>https://www.first.org/cvss/calculator/3.1#CVSS:3=
.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N</span></a></span><span style=3D'font=
-size:12.0pt;font-family:"Arial",sans-serif;color:#24292F'>), and assigned =
CVE-2022-2385</span><span style=3D'color:black'><o:p></o:p></span></p><h3 s=
tyle=3D'margin-bottom:12.0pt;background:white;caret-color: rgb(0, 0, 0);fon=
t-variant-caps: normal;orphans: auto;text-align:start;widows: auto;-webkit-=
text-size-adjust: auto;-webkit-text-stroke-width: 0px;word-spacing:0px'><sp=
an style=3D'font-size:16.5pt;font-family:"Arial",sans-serif;color:#24292F'>=
Am I vulnerable?</span><span style=3D'color:black'><o:p></o:p></span></h3><=
p style=3D'margin-bottom:12.0pt;background:white;caret-color: rgb(0, 0, 0);=
font-variant-caps: normal;orphans: auto;text-align:start;widows: auto;-webk=
it-text-size-adjust: auto;-webkit-text-stroke-width: 0px;word-spacing:0px'>=
<span style=3D'font-family:"Arial",sans-serif;color:black'>Users are only a=
ffected if they use the AccessKeyID template parameter to construct a usern=
ame and provide different levels of access based on the username.</span><sp=
an style=3D'color:black'><o:p></o:p></span></p><h4 style=3D'margin-bottom:1=
2.0pt;background:white;caret-color: rgb(0, 0, 0);font-variant-caps: normal;=
orphans: auto;text-align:start;widows: auto;-webkit-text-size-adjust: auto;=
-webkit-text-stroke-width: 0px;word-spacing:0px'><span style=3D'font-size:1=
3.5pt;font-family:"Arial",sans-serif;color:#24292F'>Affected Versions</span=
><span style=3D'font-size:13.5pt;color:black'><o:p></o:p></span></h4><ul st=
yle=3D'margin-top:0in;caret-color: rgb(0, 0, 0);font-variant-caps: normal;o=
rphans: auto;text-align:start;widows: auto;-webkit-text-size-adjust: auto;-=
webkit-text-stroke-width: 0px;padding-inline-start: 48px;word-spacing:0px' =
type=3Ddisc><li class=3DMsoNormal style=3D'color:#24292F;margin-bottom:12.0=
pt;mso-list:l1 level1 lfo1;background:white;vertical-align:baseline'><span =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'>v0.5.2 - v0.5.8</=
span><o:p></o:p></li></ul><h3 style=3D'margin-bottom:12.0pt;background:whit=
e;caret-color: rgb(0, 0, 0);font-variant-caps: normal;orphans: auto;text-al=
ign:start;widows: auto;-webkit-text-size-adjust: auto;-webkit-text-stroke-w=
idth: 0px;word-spacing:0px'><span style=3D'font-size:16.5pt;font-family:"Ar=
ial",sans-serif;color:#24292F'>How do I mitigate this vulnerability?</span>=
<span style=3D'color:black'><o:p></o:p></span></h3><p style=3D'margin:0in;b=
ackground:white;caret-color: rgb(0, 0, 0);font-variant-caps: normal;orphans=
: auto;text-align:start;widows: auto;-webkit-text-size-adjust: auto;-webkit=
-text-stroke-width: 0px;word-spacing:0px'><span style=3D'font-size:12.0pt;f=
ont-family:"Arial",sans-serif;color:#24292F'>Upgrading to v0.5.9 mitigates =
this vulnerability.</span><span style=3D'color:black'><o:p></o:p></span></p=
><p style=3D'margin-bottom:12.0pt;background:white;caret-color: rgb(0, 0, 0=
);font-variant-caps: normal;orphans: auto;text-align:start;widows: auto;-we=
bkit-text-size-adjust: auto;-webkit-text-stroke-width: 0px;word-spacing:0px=
'><span style=3D'font-size:12.0pt;font-family:"Arial",sans-serif;color:#242=
92F'>Prior to upgrading, this vulnerability can be mitigated by not using t=
he {{AccessKeyID}} template value to construct usernames.</span><span style=
=3D'color:black'><o:p></o:p></span></p><h4 style=3D'margin-bottom:12.0pt;ba=
ckground:white;caret-color: rgb(0, 0, 0);font-variant-caps: normal;orphans:=
 auto;text-align:start;widows: auto;-webkit-text-size-adjust: auto;-webkit-=
text-stroke-width: 0px;word-spacing:0px'><span style=3D'font-size:13.5pt;fo=
nt-family:"Arial",sans-serif;color:#24292F'>Fixed Versions</span><span styl=
e=3D'font-size:13.5pt;color:black'><o:p></o:p></span></h4><ul style=3D'marg=
in-top:0in;caret-color: rgb(0, 0, 0);font-variant-caps: normal;orphans: aut=
o;text-align:start;widows: auto;-webkit-text-size-adjust: auto;-webkit-text=
-stroke-width: 0px;padding-inline-start: 48px;word-spacing:0px' type=3Ddisc=
><li class=3DMsoNormal style=3D'color:#24292F;margin-bottom:12.0pt;mso-list=
:l0 level1 lfo2;background:white;vertical-align:baseline'><span style=3D'fo=
nt-size:12.0pt;font-family:"Arial",sans-serif'>aws-iam-authenticator v0.5.9=
</span><o:p></o:p></li></ul><h3 style=3D'margin-bottom:12.0pt;background:wh=
ite;caret-color: rgb(0, 0, 0);font-variant-caps: normal;orphans: auto;text-=
align:start;widows: auto;-webkit-text-size-adjust: auto;-webkit-text-stroke=
-width: 0px;word-spacing:0px'><span style=3D'font-size:16.5pt;font-family:"=
Arial",sans-serif;color:#24292F'>Detection</span><span style=3D'color:black=
'><o:p></o:p></span></h3><p style=3D'margin-bottom:12.0pt;background:white;=
caret-color: rgb(0, 0, 0);font-variant-caps: normal;orphans: auto;text-alig=
n:start;widows: auto;-webkit-text-size-adjust: auto;-webkit-text-stroke-wid=
th: 0px;word-spacing:0px'><span style=3D'font-size:12.0pt;font-family:"Aria=
l",sans-serif;color:#24292F'>This issue affected the logged identity, and i=
s not discernible from valid requests.</span><span style=3D'color:black'><o=
:p></o:p></span></p><h4 style=3D'margin-bottom:12.0pt;background:white;care=
t-color: rgb(0, 0, 0);font-variant-caps: normal;orphans: auto;text-align:st=
art;widows: auto;-webkit-text-size-adjust: auto;-webkit-text-stroke-width: =
0px;word-spacing:0px'><span style=3D'font-size:13.5pt;font-family:"Arial",s=
ans-serif;color:#24292F'>Additional Details</span><span style=3D'font-size:=
13.5pt;color:black'><o:p></o:p></span></h4><p style=3D'margin-bottom:12.0pt=
;background:white;caret-color: rgb(0, 0, 0);font-variant-caps: normal;orpha=
ns: auto;text-align:start;widows: auto;-webkit-text-size-adjust: auto;-webk=
it-text-stroke-width: 0px;word-spacing:0px'><span style=3D'font-size:12.0pt=
;font-family:"Arial",sans-serif;color:#24292F'>See the GitHub issue for mor=
e details:</span><span class=3Dapple-converted-space><span style=3D'font-si=
ze:12.0pt;font-family:"Arial",sans-serif;color:#24292F'>&nbsp;</span></span=
><span style=3D'color:black'><a href=3D"https://github.com/kubernetes-sigs/=
aws-iam-authenticator/issues/472" title=3D"https://github.com/kubernetes-si=
gs/aws-iam-authenticator/issues/472"><span style=3D'font-size:12.0pt;font-f=
amily:"Arial",sans-serif;color:#1155CC'>https://github.com/kubernetes-sigs/=
aws-iam-authenticator/issues/472</span></a><o:p></o:p></span></p><h4 style=
=3D'margin-bottom:12.0pt;background:white;caret-color: rgb(0, 0, 0);font-va=
riant-caps: normal;orphans: auto;text-align:start;widows: auto;-webkit-text=
-size-adjust: auto;-webkit-text-stroke-width: 0px;word-spacing:0px'><span s=
tyle=3D'font-size:13.5pt;font-family:"Arial",sans-serif;color:#24292F'>Ackn=
owledgements</span><span style=3D'font-size:13.5pt;color:black'><o:p></o:p>=
</span></h4><p style=3D'margin-bottom:12.0pt;background:white;caret-color: =
rgb(0, 0, 0);font-variant-caps: normal;orphans: auto;text-align:start;widow=
s: auto;-webkit-text-size-adjust: auto;-webkit-text-stroke-width: 0px;word-=
spacing:0px'><span style=3D'font-size:12.0pt;font-family:"Arial",sans-serif=
;color:#24292F'>This vulnerability was reported by Gafnit Amiga from Lights=
pin</span><span style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoN=
ormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><=
div><p class=3DMsoNormal><span style=3D'color:black'>Micah Hausler</span><s=
pan style=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'color:black'>Principal Engineer</span><span sty=
le=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p><p class=3DMsoNor=
mal><span style=3D'color:black'>Amazon Web Services</span><span style=3D'fo=
nt-size:12.0pt;color:black'><o:p></o:p></span></p></div></div><p class=3DMs=
oNormal><o:p>&nbsp;</o:p></p></div></body></html>

--B_3740388132_2961336378--

--B_3740388132_507625864
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIISWAYJKoZIhvcNAQcCoIISSTCCEkUCAQExDzANBglghkgBZQMEAgEFADAL
BgkqhkiG9w0BBwGgghALMIIGYjCCBEqgAwIBAgITGwHvwdthb8S34+F4IwAA
Ae/B2zANBgkqhkiG9w0BAQsFADBkMRMwEQYKCZImiZPyLGQBGRYDY29tMRYw
FAYKCZImiZPyLGQBGRYGYW1hem9uMRMwEQYKCZImiZPyLGQBGRYDYW50MSAw
HgYDVQQDExdBbWF6b24uY29tIENJQSBDQSBHNCAwMjAeFw0yMjAyMjUyMzM5
NTlaFw0yMzAyMjUyMzM5NTlaMIG9MRMwEQYKCZImiZPyLGQBGRYDY29tMRYw
FAYKCZImiZPyLGQBGRYGYW1hem9uMRMwEQYKCZImiZPyLGQBGRYDYW50MQww
CgYDVQQLEwNPUkcxFjAUBgNVBAsTDU5vcnRoIEFtZXJpY2ExDDAKBgNVBAsT
A1NFQTEOMAwGA1UECxMFVXNlcnMxETAPBgNVBAMTCG1oYXVzbGVyMSIwIAYJ
KoZIhvcNAQkBFhNtaGF1c2xlckBhbWF6b24uY29tMIIBIjANBgkqhkiG9w0B
AQEFAAOCAQ8AMIIBCgKCAQEAvK0H+AkLvT35D7hdWg8ONH7N4bFF8yHZiifJ
DPM2xM5Oe8SoDLhkcYohKh2DITYyO9+CSAQjZ0eO/f0gbZ6JxydAxNKTryrn
ZzDOazwUnYjWNRgwEU3beYWft+kJZTS8ojwZm49qTvafsUmMKNLDkahu6Sdl
gf0FqarDpk/8eJn08N9lTkosvr2/lAmWlJIyYf+8Ngka+0kAhsNcxOK78ieS
6UxcAikv9zDEEmYlUJEa2BrGT97AW/Qkg3Co9Yd7dkKCrq3Z3DKz2OcZyFLR
gLJ2mV/NYvMLSfl/ie8t0W4f+uQ0YEEC36QeK7dn3YuTo2ifSMSRtwBq0JmS
Brr8kwIDAQABo4IBsTCCAa0wCwYDVR0PBAQDAgXgMB0GA1UdDgQWBBSXoah7
xxVvk0UEcCjUIw+QZb+RDzAfBgNVHSMEGDAWgBQm8xRLROfbqc/jdrnj6g8a
OzHtMDBOBgNVHR8ERzBFMEOgQaA/hj1odHRwOi8vcGtpLmFtYXpvbi5jb20v
Y3JsL0FtYXpvbi5jb20lMjBDSUElMjBDQSUyMEc0JTIwMDIuY3JsMFkGCCsG
AQUFBwEBBE0wSzBJBggrBgEFBQcwAoY9aHR0cDovL3BraS5hbWF6b24uY29t
L2NydC9BbWF6b24uY29tJTIwQ0lBJTIwQ0ElMjBHNCUyMDAyLmNydDA8Bgkr
BgEEAYI3FQcELzAtBiUrBgEEAYI3FQiExZFBhbuaKILBkS+E0KhXxpsjCIem
6yKHifsaAgFkAgELMBMGA1UdJQQMMAoGCCsGAQUFBwMEMBsGCSsGAQQBgjcV
CgQOMAwwCgYIKwYBBQUHAwQwQwYDVR0RBDwwOqAjBgorBgEEAYI3FAIDoBUM
E21oYXVzbGVyQGFtYXpvbi5jb22BE21oYXVzbGVyQGFtYXpvbi5jb20wDQYJ
KoZIhvcNAQELBQADggIBAEKBKfIgz01AdsdF6lPU2YFqh2OKV3gvIVetb2Gr
tkUf1X723hdUEaU3KAnkK9A2garDrce5DukpYRLrK3ab4vXiE1UKgBPCZ/Mt
D+dqaJI/D428AP041nnS027ccBFsVmL2hdRSH0Rkt2Yeyvp6ojYypHrE3NWE
W8ca8MFOy39h/x8BmUAgiBgUSEC6exNmVkvGE8y47UnL0+lthlkq08gmJxVC
TuRXC+XoMMPbuXQVhi7bHUrJdqH1P8Xw2/bjfH+AtIjQHB4i8MfvJIrfyhHI
eiwyHYbJT3dn9/wedryek7hM/StR0JEa4Xgq365TAkM/eih8addCeeTdGkUX
D1BRm8fEg8lwGu8bnXF+DRe01QekI19Lou96g8v4V8G582YbcraaJJdCYq/D
9fidZpURYsvVNNg1PJq7k0okZDy9ExQTelTvaCYdMQl0pOdDkkSX3Jg48q8h
SJ95Xw92DR4oWwCbuVh3DwO6h2Syz1i1UL6vbBRAEVA6WOIp0RijfCTjSJMo
xUKrem4OMfkyWBCH33jH0q9o28WiNXYNhrwjf+Z4dE8C8euo2WWnW1jGaSg1
kyejlycJD9yCHtkcVXagxpm7IDaztHwd7hTjOo0FgXaoEaz56Ij1yKs/HVV2
pJMFBulKNXki6ytOquGPRD1i8w3jyHQNZOF1WZK5kOBsMIIFjjCCBHagAwIB
AgIKYQmWOQAAAAAAJDANBgkqhkiG9w0BAQsFADA5MTcwNQYDVQQDEy5BbWF6
b24uY29tIEludGVybmFsIFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5MB4X
DTE4MTAyOTIwMDkxMloXDTIzMTAyOTIwMTkxMlowZDETMBEGCgmSJomT8ixk
ARkWA2NvbTEWMBQGCgmSJomT8ixkARkWBmFtYXpvbjETMBEGCgmSJomT8ixk
ARkWA2FudDEgMB4GA1UEAxMXQW1hem9uLmNvbSBDSUEgQ0EgRzQgMDIwggIi
MA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC8vRJ2JtXdFsvIh2GhdDgW
5HloH+V+O6G6x1gpfmDhYDez+N7XlAafJBTyfpOkQOkqr/8X4XpXUJWDa+OD
nB5uSku4mMNPNwxvq8T88EzVEFYttGlWZWyHe+H9mbxL6gv7WRybsCqBdfBS
lkF9MrhI+9SHJR/BUhJ01i+B2uSgOue1WbAIsmvs1GQfWGSNXF3g+ihUohIX
TUTA38kWEXc41kE/VTkSnQqmrjOgNPYfJI8r+7z911bNInQro0DwDyzN6s9A
n8PGsvSd5s9C85Hk40pyLwaYb5SlhdHAnqXFE3HLrg+Oo2veoNymhNqUyZVa
kn0Ws/q12wiFy4A2V19Whci/yTee1RLMXNsuvbd6QFGG1SlLVMZnTaKp/z7S
HZ9ebAZX1Co4/j9R2rifgK0mFU5mDVcVbcAbwOqSj9KkzRg/ALxMkJnvcLQT
okNx1PmWIS1QBUc7EUWv1r6gic9W0QSDUFL4qSs778LJYVuoLCcLOqB8AvWP
GijMytZfCFf0yZyY6QLfD3JTgzCVpo8FLB3DYjJiD15NAyIE+C68PVNGurhg
R//RMUzDbaqTOTTAtvFsWbs761IsHzRV2jILUzt4g5XfO1UAVyRz1ebXAC3i
A0JAF2uDGHDtSiwajUJqlkFhuY/Iw9YyAPgLiJ5UEKTWGgreeY/9V2df5dOJ
qQIDAQABo4IBazCCAWcwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFCbz
FEtE59upz+N2uePqDxo7Me0wMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBB
MAsGA1UdDwQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMB8GA1UdIwQYMBaA
FH+NsU5MopgK3Isnv2IFaTwlErPCMGUGA1UdHwReMFwwWqBYoFaGVGh0dHA6
Ly9wa2kuYW1hem9uLmNvbS9jcmwvQW1hem9uLmNvbSUyMEludGVybmFsJTIw
Um9vdCUyMENlcnRpZmljYXRlJTIwQXV0aG9yaXR5LmNybDBwBggrBgEFBQcB
AQRkMGIwYAYIKwYBBQUHMAKGVGh0dHA6Ly9wa2kuYW1hem9uLmNvbS9jcnQv
QW1hem9uLmNvbSUyMEludGVybmFsJTIwUm9vdCUyMENlcnRpZmljYXRlJTIw
QXV0aG9yaXR5LmNydDANBgkqhkiG9w0BAQsFAAOCAQEA1htiN/2WWTvZgtaX
lcewPcZ5tdWl2nGUG+B2cAgiImrujhzri2HVlkHaUCOLABUDb1JaJX2RarK1
itIveRQc7Fs3iNHKHVimvj7xL5pmlOWDRxmCMCFZV3k1qjmb8drvA25HBGpp
N3PJuz0eQENxSNb8UsswjPsMSY15REULNehprhbq4c3B0vjpEN8m2DGumpPn
mznigR4L33AOtkoiJisysaKIu28yA49hbLPAMdwEZ6g+31VlEXgDwfDFPUD7
4WU+rb6jmLpXYff/3Jhb3kmavA1RHjXZulSk7jefFfTcWo9fm3uyxn0rp9T/
ohbOIMMcUk58sRCCIEwzRaursjCCBA8wggL3oAMCAQICEFeHFPCN4dmrSiV6
5deu/iEwDQYJKoZIhvcNAQEFBQAwOTE3MDUGA1UEAxMuQW1hem9uLmNvbSBJ
bnRlcm5hbCBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw0wNzA4MzAx
ODAyMjVaFw0yNzA4MzAxODEwNTlaMDkxNzA1BgNVBAMTLkFtYXpvbi5jb20g
SW50ZXJuYWwgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDugYdGnDajFgUbfr6ek3APnSiy6nHU
WUEbvxKPFc4eiWaWcGBge4JTiamxVmZu3yFh86klFGYBxixwJ32zoD56NfWl
ubhv2feMQFxxKKOiK3dZSIDLbGqCMvILDW/hYHLGL6/rFDFPYbSbs7mJLxFB
mWdyCFvfpDFEMDcPVOFNw4EEQL7TgmPn5loWvtgkSAue5EIgpEcKwy86ylpv
zq/Oj/GEWqD8sXAUnhWLgSm6r1jsAKlk1tmaKsaWBjMC4fiSg8Zq1JI/CQ+F
ckZ5nHkiCBztzWEYp1m7uBQBBcZ/+l2qdz93u/7fDxmyICIE4enGr5xTWSv9
MDNwQQd9YLh9AgMBAAGjggERMIIBDTALBgNVHQ8EBAMCAYYwDwYDVR0TAQH/
BAUwAwEB/zAdBgNVHQ4EFgQUf42xTkyimArciye/YgVpPCUSs8IwEAYJKwYB
BAGCNxUBBAMCAQAwgbsGA1UdIASBszCBsDCBrQYMKwYBBAGla4FIAQEBMIGc
MHIGCCsGAQUFBwICMGYeZABBAG0AYQB6AG8AbgAuAGMAbwBtACAASQBuAHQA
ZQByAG4AYQBsACAAQwBlAHIAdABpAGYAaQBjAGEAdABlACAAUAByAGEAYwB0
AGkAYwBlACAAUwB0AGEAdABlAG0AZQBuAHQwJgYIKwYBBQUHAgEWGmh0dHA6
Ly9wa2kuYW1hem9uLmNvbS9jcHMvMA0GCSqGSIb3DQEBBQUAA4IBAQB0AW6e
PZaQ83mcE9Etduc1aSp4nvLUoJ2NAI1v4UDB3A0iBggNo9XfEsfin/tJoXkW
uHxtB5ucZNAW3ZletXQfW3DAbWVr5kAZTv4h/u/9OqAVZCOuxYMUZqfwJiPy
bm4xj9dnll6F9mF7Ur5I7D+PX+MmuJNsEza3MqcJaxcefrI50XTn9uCMgxo6
/x56LqWD46AxrYBe4YjF8FQ9VBRz4S1cS0KI7mA40i5dyOc2nmnET6e+iIQP
GHzQiTuereCRhGybLkKi3yChe4Uw6KqQ4qSVVAYf1nJjrDYk3RUHHF95JcWC
HyTh4safTHcTETNWx8F9MWWlF96gZ4B8/ORlMYICETCCAg0CAQEwezBkMRMw
EQYKCZImiZPyLGQBGRYDY29tMRYwFAYKCZImiZPyLGQBGRYGYW1hem9uMRMw
EQYKCZImiZPyLGQBGRYDYW50MSAwHgYDVQQDExdBbWF6b24uY29tIENJQSBD
QSBHNCAwMgITGwHvwdthb8S34+F4IwAAAe/B2zANBglghkgBZQMEAgEFAKBp
MC8GCSqGSIb3DQEJBDEiBCA3lwqVVPlqb/Dcw+ZMRbTgf80SW9xy/9vViIth
nRgR6TAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEP
Fw0yMjA3MTExNjQyMTJaMA0GCSqGSIb3DQEBAQUABIIBADE4a21mv6k1tol/
LsbaRqWRgKzqMX68TcZbqO5dR6jaCriWJJYtV+gHXzLzHIOfqWhxDZTxfNKi
itlcJIIy1GWF3Vciw6Cd7lRVLV3W9eLmd5m75iD9xh1TBt0OqyEI5zGxvcpA
EDS2KmUB62rY7bBwb0ZmqXPatO1py9B7MVcfXI7ucQB2ZE4wCbyjuTzw5kev
l7iHe+LuaS9GE07LGjGxLf6BuN+mq/92/SJh0HLhvp4gfq8WS85I/MqVL0C/
zbsdXNkZcb/SahIdnellivFOz9mCNapHW1wGK8PZgC8NnJZuqMRJKddVmGtp
zYaxCVgC0o5c9DWpNfZxW1Bl0xg=

--B_3740388132_507625864--
