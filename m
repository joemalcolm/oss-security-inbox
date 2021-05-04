X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["18063" "Tuesday" "4" "May" "2021" "16:51:09" "+0000" "Hausler, Micah" "mhausler@amazon.com" nil "414" "[oss-security] [kubernetes] CVE-2020-8562: Bypass of Kubernetes API Server proxy TOCTOU" nil nil nil "5" nil nil (number mark "U       mhausler@ama May  4  414/18063 " thread-indent "\"[oss-security] [kubernetes] CVE-2020-8562: Bypass of Kubernetes API Server proxy TOCTOU\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [kubernetes] CVE-2020-8562: Bypass of Kubernetes API Server proxy TOCTOU" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30577 invoked by uid 550); 4 May 2021 18:06:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30409 invoked from network); 4 May 2021 16:51:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1620147083; x=1651683083;
  h=from:to:subject:date:message-id:mime-version;
  bh=4e9bWunMgc3aG1KVH5sFJpS+w9qkUn82jYx9eTB8Jlk=;
  b=lGq4IS8FBqNtc9y2/knX3JbhE2fXp2Jg1p0rYI4G11oSghpuWRNQRhou
   IwqjnDSvM7pLEHrn9XLU7pbzlup258mXhLLcC0HBYTkUv8JZ5ihp03mAf
   Yqn+NU7U2B+f7BGxi3lU7o7M3RuZe+oYzMlr3YY5PwVfRhrl1JxwLQQx9
   4=;
X-Amazon-filename: smime.p7s
X-IronPort-AV: E=Sophos;i="5.82,272,1613433600"; 
   d="p7s'?scan'208,217";a="111542599"
From: "Hausler, Micah" <mhausler@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [kubernetes] CVE-2020-8562: Bypass of Kubernetes API Server
 proxy TOCTOU
Thread-Index: AQHXQQWvGOApjs6P10+RmP9CEIoudA==
Date: Tue, 4 May 2021 16:51:09 +0000
Message-ID: <38C135A5-0FAA-4848-A3B5-712E85E3330C@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.162.200]
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha256; boundary="B_3702977469_2080423850"
MIME-Version: 1.0
Subject: [oss-security] [kubernetes] CVE-2020-8562: Bypass of Kubernetes API Server proxy
 TOCTOU

--B_3702977469_2080423850
Content-type: multipart/alternative;
	boundary="B_3702977468_428885286"


--B_3702977468_428885286
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable

Hello Kubernetes Community,

=20

A security issue was discovered in Kubernetes where an authorized user may =
be able to access private networks on the Kubernetes control plane componen=
ts. Kubernetes clusters are only affected if an untrusted user can create o=
r modify Node objects and proxy to them, or an untrusted user can create or=
 modify StorageClass objects and access KubeControllerManager logs.=20

=20

This issue has been rated Low (CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:L/I:N/A:N=
) and assigned CVE-2020-8562.

=20

As mitigations to a report from 2019 and CVE-2020-8555, Kubernetes attempts=
 to prevent proxied connections from accessing link-local or localhost netw=
orks when making user-driven connections to Services, Pods, Nodes, or Stora=
geClass service providers. As part of this mitigation Kubernetes does a DNS=
 name resolution check and validates that response IPs are not in the link-=
local (169.254.0.0/16) or localhost (127.0.0.0/8) range. Kubernetes then pe=
rforms a second DNS resolution without validation for the actual connection=
. If a non-standard DNS server returns different non-cached responses, a us=
er may be able to bypass the proxy IP restriction and access private networ=
ks on the control plane.

=20

Am I vulnerable?

=20

Kubernetes clusters are only affected if an untrusted user can create or mo=
dify Node objects and proxy to them, or an untrusted user can create or mod=
ify StorageClass objects and access KubeControllerManager logs.

=20

Affected Versions:

=20
Kubernetes <=3D v1.21.0
Kubernetes <=3D v1.20.6
Kubernetes <=3D v1.19.10
Kubernetes <=3D v1.18.18
=20

How do I mitigate this vulnerability?

=20

If this issue affects your clusters=E2=80=99 control planes, you can use dn=
smasq for name resolution and configure the min-cache-ttl and neg-ttl param=
eters to a low non-zero value to enforce cached replies for proxied connect=
ions

=20

Detection

=20

This issue is not known to be directly detectable, but proxied calls will a=
ppear in the Kubernetes API Audit log. Kubernetes will respond with =E2=80=
=9Caddress not allowed=E2=80=9D when the validation successfully prevents a=
 connection.

=20

Additional Details

 See the GitHub issue for more details: https://github.com/kubernetes/kuber=
netes/issues/101493

=20

Acknowledgements

This vulnerability was reported by Javier Provecho (Telefonica).

=20

Thank you,

Micah Hausler on behalf of the Kubernetes Product Security Committee

=20

=20


--B_3702977468_428885286
Content-type: text/html;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dutf-8"><meta name=3DGenerator content=3D"Microsoft=
 Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
	{mso-list-id:767502834;
	mso-list-template-ids:-653516162;}
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
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3D"#0563C1=
" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div class=3DWordSection=
1><p class=3DMsoNormal><span style=3D'font-size:10.5pt;color:#24292E'>Hello=
 Kubernetes Community,</span><span style=3D'font-size:10.5pt'><o:p></o:p></=
span></p><p class=3DMsoNormal><span style=3D'color:black'><o:p>&nbsp;</o:p>=
</span></p><p class=3DMsoNormal><span style=3D'color:black'>A security issu=
e was discovered in Kubernetes where an authorized user may be able to acce=
ss private networks on the Kubernetes control plane components. Kubernetes =
clusters are only affected if an untrusted user can create or modify Node o=
bjects and proxy to them, or an untrusted user can create or modify Storage=
Class objects and access KubeControllerManager logs. </span><o:p></o:p></p>=
<p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p style=3D'margin:0in'><span sty=
le=3D'color:black'>This issue has been rated <b>Low</b> (</span><a href=3D"=
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/=
C:L/I:N/A:N"><span style=3D'color:#1155CC'>CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U=
/C:L/I:N/A:N</span></a><span style=3D'color:black'>) and assigned <b>CVE-20=
20-8562</b>.</span><o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p=
><p class=3DMsoNormal>As mitigations to a <a href=3D"https://groups.google.=
com/g/kubernetes-security-announce/c/tyd-MVR-tY4">report from 2019</a> and =
<a href=3D"https://github.com/kubernetes/kubernetes/issues/91542">CVE-2020-=
8555</a>, Kubernetes attempts to prevent proxied connections from accessing=
 link-local or localhost networks when making user-driven connections to Se=
rvices, Pods, Nodes, or StorageClass service providers. As part of this mit=
igation Kubernetes does a DNS name resolution check and validates that resp=
onse IPs are not in the link-local (169.254.0.0/16) or localhost (127.0.0.0=
/8) range. Kubernetes then performs a second DNS resolution without validat=
ion for the actual connection. If a non-standard DNS server returns differe=
nt non-cached responses, a user may be able to bypass the proxy IP restrict=
ion and access private networks on the control plane.<o:p></o:p></p><p clas=
s=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><b>Am I vulnerable?=
<o:p></o:p></b></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMso=
Normal><span style=3D'color:black'>Kubernetes clusters are only affected if=
 an untrusted user can create or modify Node objects and proxy to them, or =
an untrusted user can create or modify StorageClass objects and access Kube=
ControllerManager logs.</span><o:p></o:p></p><p class=3DMsoNormal><o:p>&nbs=
p;</o:p></p><p class=3DMsoNormal><b>Affected Versions:<o:p></o:p></b></p><p=
 class=3DMsoNormal><b><o:p>&nbsp;</o:p></b></p><ul style=3D'margin-top:0in'=
 type=3Ddisc><li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'>Kubern=
etes &lt;=3D v1.21.0<o:p></o:p></li><li class=3DMsoNormal style=3D'mso-list=
:l0 level1 lfo1'>Kubernetes &lt;=3D v1.20.6<o:p></o:p></li><li class=3DMsoN=
ormal style=3D'mso-list:l0 level1 lfo1'>Kubernetes &lt;=3D v1.19.10<o:p></o=
:p></li><li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'>Kubernetes =
&lt;=3D v1.18.18<o:p></o:p></li></ul><p class=3DMsoNormal><o:p>&nbsp;</o:p>=
</p><p class=3DMsoNormal><b>How do I mitigate this vulnerability?<o:p></o:p=
></b></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>If =
this issue affects your clusters=E2=80=99 control planes, you can use <a hr=
ef=3D"https://thekelleys.org.uk/dnsmasq/doc.html">dnsmasq</a> for name reso=
lution and configure the min-cache-ttl and neg-ttl parameters to a low non-=
zero value to enforce cached replies for proxied connections<o:p></o:p></p>=
<p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><b>Detection=
<o:p></o:p></b></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMso=
Normal>This issue is not known to be directly detectable, but proxied calls=
 will appear in the Kubernetes API Audit log. Kubernetes will respond with =
=E2=80=9C<a href=3D"https://github.com/kubernetes/kubernetes/blob/9b7b96650=
8001b2821232c01d06c611ec5a5159e/pkg/proxy/util/utils.go#L50">address not al=
lowed</a>=E2=80=9D when the validation successfully prevents a connection.<=
o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNorma=
l><b>Additional Details<o:p></o:p></b></p><p class=3DMsoNormal> See the Git=
Hub issue for more details: <a href=3D"https://github.com/kubernetes/kubern=
etes/issues/101493">https://github.com/kubernetes/kubernetes/issues/101493<=
/a><o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoN=
ormal><b>Acknowledgements<o:p></o:p></b></p><p class=3DMsoNormal>This vulne=
rability was reported by Javier Provecho (Telefonica).<o:p></o:p></p><p cla=
ss=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thank you,<o:p></o=
:p></p><p class=3DMsoNormal><span style=3D'color:black'>Micah Hausler on be=
half of the Kubernetes Product Security Committee<o:p></o:p></span></p><p c=
lass=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p=
></p></div></body></html>

--B_3702977468_428885286--

--B_3702977469_2080423850
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIISWAYJKoZIhvcNAQcCoIISSTCCEkUCAQExDzANBglghkgBZQMEAgEFADAL
BgkqhkiG9w0BBwGgghALMIIGYjCCBEqgAwIBAgITaAD/HzVNuN8tATKk2QAA
AP8fNTANBgkqhkiG9w0BAQsFADBkMRMwEQYKCZImiZPyLGQBGRYDY29tMRYw
FAYKCZImiZPyLGQBGRYGYW1hem9uMRMwEQYKCZImiZPyLGQBGRYDYW50MSAw
HgYDVQQDExdBbWF6b24uY29tIENJQSBDQSBHNCAwMTAeFw0yMTAyMjEyMzEz
MzdaFw0yMjAyMjEyMzEzMzdaMIG9MRMwEQYKCZImiZPyLGQBGRYDY29tMRYw
FAYKCZImiZPyLGQBGRYGYW1hem9uMRMwEQYKCZImiZPyLGQBGRYDYW50MQww
CgYDVQQLEwNPUkcxFjAUBgNVBAsTDU5vcnRoIEFtZXJpY2ExDDAKBgNVBAsT
A1NFQTEOMAwGA1UECxMFVXNlcnMxETAPBgNVBAMTCG1oYXVzbGVyMSIwIAYJ
KoZIhvcNAQkBFhNtaGF1c2xlckBhbWF6b24uY29tMIIBIjANBgkqhkiG9w0B
AQEFAAOCAQ8AMIIBCgKCAQEAl9Xb2p0nxuxPhvCJh5ULkxZSW6Xb9N0tfU81
NMAlazQsk/pGI7lQusLo6AZR3BKJzp2hxmP2i3q2rTw2ZSzuVcyXdENx89+U
Z91+sYqAkqY1jHPcxBigrUYhh0O0CJBR/w/dJ8Y0/7oqjXeT3UVQYaYww9Ld
EUAv8rJh+oz+DHGYNPmBThqAxjJSlSfFWWSb0c+jLCJIvTqODxrl8vfyUUNZ
bz4MKDEgdvAhvxWmIpDP5KZJ0LpC04ySJyP7lq3ro/+Ql4MdBZYwOfWf/bHN
Ium4cywCz6h3u5WgWCvH8WhNUw2uPqQimZQelEZJvf1Qi5ol0Z+0IUmejfI2
sYJgpQIDAQABo4IBsTCCAa0wCwYDVR0PBAQDAgXgMB0GA1UdDgQWBBTeMcpP
9u1dqE3C3P4Pplv+mfscujAfBgNVHSMEGDAWgBTgKeZuqlHWWvWnZkv2hvQ1
56sPqzBOBgNVHR8ERzBFMEOgQaA/hj1odHRwOi8vcGtpLmFtYXpvbi5jb20v
Y3JsL0FtYXpvbi5jb20lMjBDSUElMjBDQSUyMEc0JTIwMDEuY3JsMFkGCCsG
AQUFBwEBBE0wSzBJBggrBgEFBQcwAoY9aHR0cDovL3BraS5hbWF6b24uY29t
L2NydC9BbWF6b24uY29tJTIwQ0lBJTIwQ0ElMjBHNCUyMDAxLmNydDA8Bgkr
BgEEAYI3FQcELzAtBiUrBgEEAYI3FQiExZFBhbuaKILBkS+E0KhXxpsjCIem
6yKHifsaAgFkAgELMBMGA1UdJQQMMAoGCCsGAQUFBwMEMBsGCSsGAQQBgjcV
CgQOMAwwCgYIKwYBBQUHAwQwQwYDVR0RBDwwOqAjBgorBgEEAYI3FAIDoBUM
E21oYXVzbGVyQGFtYXpvbi5jb22BE21oYXVzbGVyQGFtYXpvbi5jb20wDQYJ
KoZIhvcNAQELBQADggIBAIXr4+rp3CAXxkeajLhz4O5XEiJdDCrNJi0W84iP
R7LTpVpm0ZVuqPiMLzO/o+vx2ctoi/MdXePmUssMY6RJVfsunbqf4AyCPfoz
/uisqcBGWBdb95b/Rz5Rk/jw+ifE2tdJkClP9vnFYSX6HELmoerYKHNuQ2SC
rjSH5pKp3jbCX+f/KJ6OH7/RR0x2GkUA4qyfiKHYd6SfzTROHlwbo/paoQYe
UR/97z+7nHdOU3BgM9RSVsZfKVpmbMr5gNIVgCQ8sqqDoSHmSfO/ocv+ZnMp
3Xi44t/9B7yHezbGTopJyaShZ7QLC9TEhy7r4XLJlNWprXGEE1LMxVscIYNP
H5+Cq+OLAPg7++JB5POFTKXRtkjJFUqVqhMBsnTDG8csE6ppeSzJGZ49fbIO
mUnL9DDHioGJ0hsCh609/OESFJubvKVsJUkNDhTfhzTssPwJ44pKax8eKl8z
WO58hhG2PGzlLd6jakPVuJ96RDpqvBnOQSlU7hKS/6tBub4YxgpYiURvhEld
jZB64nxXTZX15SMIcfVo4b99S4RMsmnEyy0wuJJlTURetGTOTk0OlkCN2xok
7RPMSJGEyMwKxqDeYX/aiIMaiwGIwRvQaLtWYBev1ndPxKs0fqcrmqcyzU9r
C6KlRT07OCFiobKa7pfFS/K0no7byJoqmD2B93OW3hJmMIIFjjCCBHagAwIB
AgIKYRwhegAAAAAAJjANBgkqhkiG9w0BAQsFADA5MTcwNQYDVQQDEy5BbWF6
b24uY29tIEludGVybmFsIFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5MB4X
DTE4MTEwNjIzMzExOFoXDTIzMTEwNjIzNDExOFowZDETMBEGCgmSJomT8ixk
ARkWA2NvbTEWMBQGCgmSJomT8ixkARkWBmFtYXpvbjETMBEGCgmSJomT8ixk
ARkWA2FudDEgMB4GA1UEAxMXQW1hem9uLmNvbSBDSUEgQ0EgRzQgMDEwggIi
MA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDBNKNhXeYZRggQpGc194zG
plBxDWOWYsMY7jc4EkhplrCkkPWqcfCuJh0SLJpcbZwin70hnu3DXwmt6N5n
Zu7cYd1h40YL/p6zULMebqn0p9AwUMK+8qV514J79VjioN/GE7h5G8ZkyjUj
mqeBtTczJUifwAJ72n6bwSFLLZS28Nar4blskiGdX6ZaB+N3nNp4DN+RzCqf
Fc15Ta9iVIj50ChknahX8Ia4Hjw3azNKWJl1JGTsZIETr9N/m6ta1LMjuAMp
JCqwCx8Ndbkml+cjyul6T5MMHNMBYCeABm7P0HWcSoinZbK7qNJOTZDfP6NW
Fm/6VgSr/U/WqMJKZrN9Gb3KEr3kVBDMG07Al7YM6nwzLG60P3oPodOUW5MS
U+zpN3FavqWsopJ5uBBk26YFpn1+8CJnuwwT4VjQtRF6SQk04fNpowHxOtgr
VlIr7Wuf4bD3eMU6A8mbSZyp9SBHxR1n8GLO8o3/IQhC75AawgBTm04X+K9e
QdoaLdk5rNxxMHJ+y15fwZpab5WfpBNN71Qi/fWO/hoimZ1ytSMHSMmAnf4Q
/jQC7GLXTIRikjR4f+KLSPrWu17h4Cqv2ehbHlOS8tJG866cViWlm9pcJNfz
1QOpgoPn1fT6UpoVh40YsigC/qJktW3HmyCWOzXU0u7H61BpgxJBZS7AMvBS
qQIDAQABo4IBazCCAWcwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFOAp
5m6qUdZa9admS/aG9DXnqw+rMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBB
MAsGA1UdDwQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMB8GA1UdIwQYMBaA
FH+NsU5MopgK3Isnv2IFaTwlErPCMGUGA1UdHwReMFwwWqBYoFaGVGh0dHA6
Ly9wa2kuYW1hem9uLmNvbS9jcmwvQW1hem9uLmNvbSUyMEludGVybmFsJTIw
Um9vdCUyMENlcnRpZmljYXRlJTIwQXV0aG9yaXR5LmNybDBwBggrBgEFBQcB
AQRkMGIwYAYIKwYBBQUHMAKGVGh0dHA6Ly9wa2kuYW1hem9uLmNvbS9jcnQv
QW1hem9uLmNvbSUyMEludGVybmFsJTIwUm9vdCUyMENlcnRpZmljYXRlJTIw
QXV0aG9yaXR5LmNydDANBgkqhkiG9w0BAQsFAAOCAQEAFY6kjPmVGLYIPhHl
DX+fHshBGUEoGXAPbtNLg+WV7vvpu5dT3vgNsAFb9tjfa1j46D0ZppFMtxpM
6GHGP89yqB4r/6+R3dMgkwd5uinR22ExYISRwS4Aw8f6KwS4xK1SMnVGNWj2
PhYrUyLRqPmRK/FviIgbCR55tPEZrDtsvaVWGMlfpLFa3WIozj8Zkd7Q0Wn7
H3+SRWwcSnf88bIbGyllr2Hr6QzC2tJlaD2VxcZdPqFxRkA7as3XRQ2u/Gna
vSdbs/oTh5UO7mEMNASHfyl2pAgpGyLDy2ab8F5FjihnNCxHaKP9AXVrkm6n
cqsYAHdGipZ3WqWrIosMV6m+VjCCBA8wggL3oAMCAQICEFeHFPCN4dmrSiV6
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
QSBHNCAwMQITaAD/HzVNuN8tATKk2QAAAP8fNTANBglghkgBZQMEAgEFAKBp
MC8GCSqGSIb3DQEJBDEiBCDHYV+4doI692/x1Rh+iCkPpGXk/neh0XzcD83x
i3/LLDAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEP
Fw0yMTA1MDQxNjUxMDhaMA0GCSqGSIb3DQEBAQUABIIBADPYPFazfvalSazm
m5UIsGUTN1d57NLA24MYzGjflUFKXOMWsWV6YH1Og92R9Ax2M+Zc1UIt6NN0
p4FV6jv4ueo0GgX6WU5uEsHoB5ILobfEFbWLelEaUlSX195TXGW02iMUAvSL
NuhoumXjebtW8faaRajhz6hvFf4B4FMbDrr4bhYghCHly3S5H04N6TxNemd4
1Doc+5+qW+rDrgKQCTQEA6QJ6TM7f1SIR6+2PcI+FJkLD8iDDzmV6FPbPn3F
zZn/QN+CMhzYCU5sOWbBxkcRiu1SGtvyEebodfDNLLt7d2rNGOOh5EfmsIGD
i0T6iiKCygcCHZ18VdALfNqfrPw=

--B_3702977469_2080423850--
