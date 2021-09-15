X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["16448" "Wednesday" "15" "September" "2021" "21:21:53" "+0000" "Hausler, Micah" "mhausler@amazon.com" nil "331" "[oss-security] [kubernetes] CVE-2020-8561: Webhook redirect in kube-apiserver" nil nil nil "9" nil nil (number mark "U       mhausler@ama Sep 15  331/16448 " thread-indent "\"[oss-security] [kubernetes] CVE-2020-8561: Webhook redirect in kube-apiserver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [kubernetes] CVE-2020-8561: Webhook redirect in kube-apiserver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5217 invoked by uid 550); 16 Sep 2021 06:37:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3579 invoked from network); 15 Sep 2021 21:22:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1631740933; x=1663276933;
  h=from:to:subject:date:message-id:mime-version;
  bh=19e0FRXxFiZ1flXTrMcOL1l99Ud6CnY3OvqvPBFVhuE=;
  b=kcHdveK9Mv5QchFQBqYvQ5M9qKn96iNxA6fQf99BL/gkvsnJF/BtVZ4N
   PhiS0TpSyKVS2NwF1p/zjlDY8gxrcWIQ9GUBlD2KEg5PV6rT4vF62YK9O
   74fwO7nxo3Rncq2Ut2gsK4PDU8xekn7uPFd2+B1nASUZLlkTnoIiSnF2e
   k=;
X-Amazon-filename: smime.p7s
X-IronPort-AV: E=Sophos;i="5.85,296,1624320000"; 
   d="p7s'?scan'208,217";a="140633621"
From: "Hausler, Micah" <mhausler@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [kubernetes] CVE-2020-8561: Webhook redirect in kube-apiserver
Thread-Index: AQHXqne03xppy5zPgkyfrHKUK0292g==
Date: Wed, 15 Sep 2021 21:21:53 +0000
Message-ID: <DBFB8E2C-E74B-4C2C-AB6D-0545B692B717@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.82]
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha256; boundary="B_3714571312_2071700504"
MIME-Version: 1.0
Subject: [oss-security] [kubernetes] CVE-2020-8561: Webhook redirect in kube-apiserver

--B_3714571312_2071700504
Content-type: multipart/alternative;
	boundary="B_3714571312_1280364372"


--B_3714571312_1280364372
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable

Hello Kubernetes Community,

=20

A security issue was discovered in Kubernetes where actors that control the=
 responses of MutatingWebhookConfiguration or ValidatingWebhookConfiguratio=
n requests are able to redirect kube-apiserver requests to private networks=
 of the apiserver. If that user can view kube-apiserver logs when the log l=
evel is set to 10, they can view the redirected responses and headers in th=
e logs.

=20

This issue has been rated Medium (https://www.first.org/cvss/calculator/3.1=
#CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:C/C:L/I:N/A:N) (4.1), and assigned CVE-2020=
-8561
Am I vulnerable?
=20

You may be vulnerable if `--profiling` is enabled on the kube-apiserver and=
 actors who control a validating or mutating webhook can access the kube-ap=
iserver process logs.
Affected Versions
=20

This issue affects all known versions of kube-apiserver.=20
How do I mitigate this vulnerability?
=20

This issue can be mitigated by not allowing kube-apiserver access to sensit=
ive resources or networks, or to reduce the =E2=80=9C-v=E2=80=9D flag value=
 to less than 10 and set the =E2=80=9C--profiling=E2=80=9D flag value to =
=E2=80=9Cfalse=E2=80=9D (default value is =E2=80=9Ctrue=E2=80=9D). Setting =
the profiling flag to =E2=80=9Cfalse=E2=80=9D prevents users from dynamical=
ly modifying the kube-apiserver log level, and the flag value Webhook reque=
sts may still be redirected to private networks with a log level less than =
10, but the response body will not be logged.
Fixed Versions
=20

There is no fix for this issue at this time.
Detection
=20

Examining kube-apiserver log responses is the only known method of detectio=
n for this issue.

If you find evidence that this vulnerability has been exploited, please con=
tact security@kubernetes.io
Additional Details
=20

See the GitHub issue for more details: https://github.com/kubernetes/kubern=
etes/issues/104720
Acknowledgements
=20

This vulnerability was reported by QiQi Xu

=20

Thank You,

=20

Micah Hausler on behalf of the Kubernetes Security Response Committee

=20

=20

=20


--B_3714571312_1280364372
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
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US link=3D"#0563C1" vlink=3D"#954F72" sty=
le=3D'word-wrap:break-word'><div class=3DWordSection1><p style=3D'margin:0i=
n'><span style=3D'font-family:"Arial",sans-serif;color:black'>Hello Kuberne=
tes Community,</span><o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p><=
/p><p style=3D'margin:0in'><span style=3D'font-family:"Arial",sans-serif;co=
lor:black'>A security issue was discovered in Kubernetes where actors that =
control the responses of MutatingWebhookConfiguration or ValidatingWebhookC=
onfiguration requests are able to redirect kube-apiserver requests to priva=
te networks of the apiserver. If that user can view kube-apiserver logs whe=
n the log level is set to 10, they can view the redirected responses and he=
aders in the logs.</span><o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o=
:p></p><p style=3D'margin:0in;background:white'><span style=3D'font-family:=
"Arial",sans-serif;color:#24292E'>This issue has been rated <b>Medium</b> (=
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:C/=
C:L/I:N/A:N) (4.1), and assigned <b>CVE-2020-8561</b></span><o:p></o:p></p>=
<h3 style=3D'mso-margin-top-alt:16.0pt;margin-right:0in;margin-bottom:4.0pt=
;margin-left:0in'><span style=3D'font-size:14.0pt;font-family:"Arial",sans-=
serif;color:#434343;font-weight:normal'>Am I vulnerable?</span><o:p></o:p><=
/h3><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p style=3D'margin:0in;backgr=
ound:white'><span style=3D'font-family:"Arial",sans-serif;color:#24292E'>Yo=
u may be vulnerable if `--profiling` is enabled on the kube-apiserver and a=
ctors who control a validating or mutating webhook can access the kube-apis=
erver process logs.</span><o:p></o:p></p><h3 style=3D'mso-margin-top-alt:16=
.0pt;margin-right:0in;margin-bottom:4.0pt;margin-left:0in'><span style=3D'f=
ont-size:14.0pt;font-family:"Arial",sans-serif;color:#434343;font-weight:no=
rmal'>Affected Versions</span><o:p></o:p></h3><p class=3DMsoNormal><o:p>&nb=
sp;</o:p></p><p style=3D'margin:0in;background:white'><span style=3D'font-f=
amily:"Arial",sans-serif;color:#24292E'>This issue affects all known versio=
ns of kube-apiserver.&nbsp;</span><o:p></o:p></p><h3 style=3D'mso-margin-to=
p-alt:16.0pt;margin-right:0in;margin-bottom:4.0pt;margin-left:0in'><span st=
yle=3D'font-size:14.0pt;font-family:"Arial",sans-serif;color:#434343;font-w=
eight:normal'>How do I mitigate this vulnerability?</span><o:p></o:p></h3><=
p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p style=3D'margin:0in;background:=
white'><span style=3D'font-family:"Arial",sans-serif;color:#24292E'>This is=
sue can be mitigated by not allowing kube-apiserver access to sensitive res=
ources or networks, or to reduce the =E2=80=9C-v=E2=80=9D flag value to les=
s than 10 and set the =E2=80=9C--profiling=E2=80=9D flag value to =E2=80=9C=
false=E2=80=9D (default value is =E2=80=9Ctrue=E2=80=9D). Setting the profi=
ling flag to =E2=80=9Cfalse=E2=80=9D prevents users from dynamically modify=
ing the kube-apiserver log level, and the flag value Webhook requests may s=
till be redirected to private networks with a log level less than 10, but t=
he response body will not be logged.</span><o:p></o:p></p><h3 style=3D'mso-=
margin-top-alt:16.0pt;margin-right:0in;margin-bottom:4.0pt;margin-left:0in'=
><span style=3D'font-size:14.0pt;font-family:"Arial",sans-serif;color:#4343=
43;font-weight:normal'>Fixed Versions</span><o:p></o:p></h3><p class=3DMsoN=
ormal><o:p>&nbsp;</o:p></p><p style=3D'margin:0in;background:white'><span s=
tyle=3D'font-size:10.5pt;font-family:"Arial",sans-serif;color:#24292F'>Ther=
e is no fix for this issue at this time.</span><o:p></o:p></p><h3 style=3D'=
mso-margin-top-alt:16.0pt;margin-right:0in;margin-bottom:4.0pt;margin-left:=
0in'><span style=3D'font-size:14.0pt;font-family:"Arial",sans-serif;color:#=
434343;font-weight:normal'>Detection</span><o:p></o:p></h3><p class=3DMsoNo=
rmal><o:p>&nbsp;</o:p></p><p style=3D'margin:0in;background:white'><span st=
yle=3D'font-family:"Arial",sans-serif;color:#24292E'>Examining kube-apiserv=
er log responses is the only known method of detection for this issue.</spa=
n><o:p></o:p></p><p style=3D'margin:0in'><span style=3D'font-family:"Arial"=
,sans-serif;color:black'>If you find evidence that this vulnerability has b=
een exploited, please contact security@kubernetes.io</span><o:p></o:p></p><=
h3 style=3D'mso-margin-top-alt:16.0pt;margin-right:0in;margin-bottom:4.0pt;=
margin-left:0in'><span style=3D'font-size:14.0pt;font-family:"Arial",sans-s=
erif;color:#434343;font-weight:normal'>Additional Details</span><o:p></o:p>=
</h3><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p style=3D'margin:0in'><spa=
n style=3D'font-family:"Arial",sans-serif;color:black'>See the GitHub issue=
 for more details: </span><a href=3D"https://github.com/kubernetes/kubernet=
es/issues/104720"><span style=3D'font-family:"Arial",sans-serif;color:#1155=
CC'>https://github.com/kubernetes/kubernetes/issues/104720</span></a><o:p><=
/o:p></p><h3 style=3D'mso-margin-top-alt:16.0pt;margin-right:0in;margin-bot=
tom:4.0pt;margin-left:0in'><span style=3D'font-size:14.0pt;font-family:"Ari=
al",sans-serif;color:#434343;font-weight:normal'>Acknowledgements</span><o:=
p></o:p></h3><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p style=3D'margin:0=
in'><span style=3D'font-family:"Arial",sans-serif;color:black'>This vulnera=
bility was reported by QiQi Xu</span><o:p></o:p></p><p class=3DMsoNormal><o=
:p>&nbsp;</o:p></p><p style=3D'margin:0in'><span style=3D'font-family:"Aria=
l",sans-serif;color:black'>Thank You,</span><o:p></o:p></p><p class=3DMsoNo=
rmal><o:p>&nbsp;</o:p></p><p style=3D'margin:0in'><span style=3D'font-famil=
y:"Arial",sans-serif;color:black'>Micah Hausler on behalf of the Kubernetes=
 Security Response Committee</span><o:p></o:p></p><p class=3DMsoNormal><o:p=
>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNo=
rmal><o:p>&nbsp;</o:p></p></div></body></html>

--B_3714571312_1280364372--

--B_3714571312_2071700504
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
MC8GCSqGSIb3DQEJBDEiBCC5x2ogqL7AH6j6lSqokZsjVjBZnIhAhC6AESEN
E3aVjzAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEP
Fw0yMTA5MTUyMTIxNTJaMA0GCSqGSIb3DQEBAQUABIIBAGVuIwC+vqUAYsIH
BZdB3Ii2oTavvrDad6IR2fOyWiIzK9H1BQEUiXPW6Q5XISUQ/khF4SeM6KZt
naPawmMKj+zGimzD77eYtLkW9p7zIesZFtHD0/Z1sKPCxe+5LyDm/G38y3lm
KhqN31Z+2ASskjINvlf3Tjs1SOkdl/gpxFzaTuKV3jsV/6EQVTkmW5NNZUcb
H0shNkmjvXmPZspRkEjGb6DUYYA78UyxkrX97HzvUGaYg8l8sV1k/ZUjqkkg
0BPfZzXkftoJ26oYE3DemcDBLynJXJuh2DdnUxD85j2KnwqloB0Zr0iEn/NS
96rQfYf+mdsP09IkW8I23Oro00A=

--B_3714571312_2071700504--
