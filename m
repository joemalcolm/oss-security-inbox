X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11478" "Wednesday" "10" "February" "2016" "15:26:47" "+0000" "Shubham Shah" "sshah@bishopfox.com" "<4F45B0EA-41C2-4A0B-9B97-9DF10AA14E9D@bishopfox.com>" "212" "[oss-security] CVE Request: Textual IRC Client <= 5.2.7 Remote Command Execution" nil nil nil "2" "2016021015:26:47" "[oss-security] CVE Request: Textual IRC Client <= 5.2.7 Remote Command Execution" (number mark "U       sshah@bishop Feb 10  212/11478 " thread-indent "\"[oss-security] CVE Request: Textual IRC Client <= 5.2.7 Remote Command Execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21839 invoked by uid 550); 10 Feb 2016 15:48:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1455 invoked from network); 10 Feb 2016 15:27:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=STACHLIU.onmicrosoft.com; s=selector1-bishopfox-com;
 h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=8xld9pDZ1bf0grGYIDo7X7aDdvxIBr0bArXLhS0rfiU=;
 b=ppPRmXC9+SXKc5OgjpGdZ7E0qQ77ycNmeQ8StzxR9WXdqH2Q9mhwiyKf95JyA9pBa64BeHuhd/N1KIjEyM+uzComcQ0jIG+qJrQj/5sm7vuLTp8/uUayWZM2t7tzyJfJZ8Ip8T772M8HWCguf9ZbT6ufxfvw6QiYbe0sDKh2/70=
From: Shubham Shah <sshah@bishopfox.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"cve-assign@mitre.org" <cve-assign@mitre.org>
CC: Joe DeMesy <jdemesy@bishopfox.com>, Michael Morris <michael@codeux.com>
Thread-Topic: CVE Request: Textual IRC Client <= 5.2.7 Remote Command
 Execution
Thread-Index: AQHRZBd0GSnOb2IsU0eNVZJvXHJTIQ==
Date: Wed, 10 Feb 2016 15:26:47 +0000
Message-ID: <4F45B0EA-41C2-4A0B-9B97-9DF10AA14E9D@bishopfox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
authentication-results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=bishopfox.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [110.21.137.26]
x-microsoft-exchange-diagnostics: 1;DM2PR0501MB1277;5:mpPAHe+nN2tdnEin1ysvcvyvPpMRHquhHajwSH4ZAtcBvaulF1weF3FnvKqkrrdjJoU/Ide+wrVQIgbEWLc258lCO+1Iw96gXAgUnoru20pK3eKYI7S3CKEaeIsEdmsNGlPK2RD/D5YJJk/kYNUg9A==;24:YuevstBiE7zllqmaoVJdE56Dve7C9sckoNwqI6tXaLBhT5o31Y/BeTNxIv0DbADhpzJA6k+Gy3QY7VbORWK/4niw7mJAoRE7i3foMvKz8Ko=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0501MB1277;
x-ms-office365-filtering-correlation-id: 14d2f74e-5588-4260-a1d7-08d3322e971c
x-microsoft-antispam-prvs: <DM2PR0501MB12779174DA14CC19829EA683AAD70@DM2PR0501MB1277.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(102415293)(102615271)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046);SRVR:DM2PR0501MB1277;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0501MB1277;
x-forefront-prvs: 0848C1A6AA
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(252514010)(164054003)(189998001)(99286002)(106116001)(229853001)(586003)(5004730100002)(2900100001)(92566002)(3660700001)(3280700002)(4326007)(3846002)(36756003)(15975445007)(2501003)(102836003)(1096002)(40100003)(1220700001)(2906002)(19617315012)(6116002)(5002640100001)(16236675004)(66066001)(54356999)(50986999)(19580405001)(77096005)(82746002)(86362001)(19580395003)(33656002)(5008740100001)(83716003)(5001770100001)(87936001)(99936001)(11100500001)(10400500002)(5001960100002)(122556002)(104396002);DIR:OUT;SFP:1102;SCL:1;SRVR:DM2PR0501MB1277;H:CO2PR0501MB0999.namprd05.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha256; boundary="B_3538002405_725967682"
MIME-Version: 1.0
X-OriginatorOrg: bishopfox.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2016 15:26:47.2929
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59185728-a5f6-4629-bfc4-3c833d60489a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0501MB1277
Subject: [oss-security] CVE Request: Textual IRC Client <= 5.2.7 Remote Command Execution

--B_3538002405_725967682
Content-type: multipart/alternative;
	boundary="B_3538002405_1280986155"


--B_3538002405_1280986155
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable

Hi,

We would like to request a CVE for a remote command execution vulnerability=
 in the Textual IRC client <=3D 5.2.7 for OS X.=20

An attacker is able to send messages to users of the Textual IRC Client 5.2=
.7 and below in order to inject arbitrary JavaScript within Textual=E2=80=
=99s web view upon limited user interaction. Unspecified attack vectors cou=
ld allow for an attacker to achieve remote command execution on a victim=E2=
=80=99s machine, through the Textual IRC client.

The vendor has released a fix as seen in the following GitHub commit:

https://github.com/Codeux-Software/Textual/commit/422a6c8f7e750df506adaebb2=
db4bfa23f6aaa37

A patch has been released by the vendor and this security vulnerability has=
 been fixed in Textual 5.2.8 as seen in the release notes:

https://www.codeux.com/textual/help/Release-Notes%3A-Version-5.2.8.kb

The release notes will be updated to include any CVE=E2=80=99s assigned for=
 this remote command execution vulnerability.

This vulnerability was found by Shubham Shah and Joe DeMesy of Bishop Fox.

Thanks,

Shubham Shah
Senior SECURITY ANALYST

Email: sshah@bishopfox.com
Phone: +61 0412 609 761
Fax: (480) 383-6401

WWW.BISHOPFOX.COM



--B_3538002405_1280986155
Content-type: text/html;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable

<html><head></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode:=
 space; -webkit-line-break: after-white-space; color: rgb(0, 0, 0); font-si=
ze: 14px; font-family: Calibri, sans-serif;"><div><div>Hi,</div><div><br></=
div><div>We would like to request a CVE for a remote command execution vuln=
erability in the Textual IRC client &lt;=3D 5.2.7 for OS X.&nbsp;</div><div=
><br></div><div>An attacker is able to send messages to users of the Textua=
l IRC Client 5.2.7 and below in order to inject arbitrary JavaScript within=
 Textual&#8217;s web view upon limited user interaction. Unspecified attack=
 vectors could allow for an attacker to achieve remote command execution on=
 a victim&#8217;s machine, through the Textual IRC client.</div><div><br></=
div><div>The vendor has released a fix as seen in the following GitHub comm=
it:</div><div><br></div><div><a href=3D"https://github.com/Codeux-Software/=
Textual/commit/422a6c8f7e750df506adaebb2db4bfa23f6aaa37">https://github.com=
/Codeux-Software/Textual/commit/422a6c8f7e750df506adaebb2db4bfa23f6aaa37</a=
></div><div><br></div><div>A patch has been released by the vendor and this=
 security vulnerability has been fixed in Textual 5.2.8 as seen in the rele=
ase notes:</div><div><br></div><div><a href=3D"https://www.codeux.com/textu=
al/help/Release-Notes%3A-Version-5.2.8.kb">https://www.codeux.com/textual/h=
elp/Release-Notes%3A-Version-5.2.8.kb</a></div><div><br></div><div>The rele=
ase notes will be updated to include any CVE&#8217;s assigned for this remo=
te command execution vulnerability.</div><div><br></div><div>This vulnerabi=
lity was found by Shubham Shah and Joe DeMesy of Bishop Fox.</div><div><br>=
</div><div>Thanks,</div><div><br></div><div><div><div id=3D"MAC_OUTLOOK_SIG=
NATURE"><div style=3D"font-family: -webkit-standard;"><div id=3D""><p class=
=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-fam=
ily: 'Times New Roman', serif;"><span style=3D"font-family: Tahoma, sans-se=
rif; color: rgb(209, 65, 38);">Shubham Shah<br></span><b><span style=3D"fon=
t-size: 7.5pt; font-family: Arial, sans-serif; color: rgb(178, 178, 179); t=
ext-transform: uppercase;">Senior SECURITY ANALYST</span></b><o:p></o:p></p=
><p class=3D"MsoNormal" style=3D"margin: 0in 0in 8pt; font-size: 12pt; font=
-family: 'Times New Roman', serif;"><span style=3D"font-size: 9pt; font-fam=
ily: Arial, sans-serif;">Email:&nbsp;<a href=3D"mailto:sshah@bishopfox.com"=
 style=3D"color: purple;">sshah@bishopfox.com</a><br>Phone: +61 0412 609 76=
1<br>Fax: (480) 383-6401</span><o:p></o:p></p><p class=3D"MsoNormal" style=
=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roma=
n', serif;"><span style=3D"font-size: 11pt; font-family: Calibri, sans-seri=
f; color: rgb(31, 73, 125);"><b style=3D"color: purple;"><span style=3D"fon=
t-size: 7.5pt; font-family: Arial, sans-serif; color: rgb(209, 65, 38); tex=
t-transform: uppercase;"><a href=3D"http://www.bishopfox.com/" style=3D"col=
or: purple;">WWW.BISHOPFOX.COM</a></span></b></span></p></div></div></div><=
/div></div></div><div><div id=3D""><div style=3D"font-family: -webkit-stand=
ard;"><div id=3D""><p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt=
; font-size: 12pt; font-family: 'Times New Roman', serif;"><span style=3D"f=
ont-size: 11pt; font-family: Calibri, sans-serif; color: rgb(31, 73, 125);"=
><b style=3D"color: purple;"><span style=3D"font-size: 7.5pt; font-family: =
Arial, sans-serif; color: rgb(209, 65, 38); text-transform: uppercase;"></s=
pan></b></span></p></div></div></div></div></body></html>

--B_3538002405_1280986155--

--B_3538002405_725967682
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIIRnAYJKoZIhvcNAQcCoIIRjTCCEYkCAQExDzANBglghkgBZQMEAgEFADAL
BgkqhkiG9w0BBwGggg8YMIIGJzCCBQ+gAwIBAgIRAJ9BOdKo7VVFFqztJEl9
k6gwDQYJKoZIhvcNAQELBQAwgZsxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJH
cmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoT
EUNPTU9ETyBDQSBMaW1pdGVkMUEwPwYDVQQDEzhDT01PRE8gU0hBLTI1NiBD
bGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQTAeFw0x
NjAyMDIwMDAwMDBaFw0xNzAyMDEyMzU5NTlaMIIBITELMAkGA1UEBhMCVVMx
DjAMBgNVBBETBTg1MDM0MQswCQYDVQQIEwJBWjEQMA4GA1UEBxMHUGhvZW5p
eDESMBAGA1UECRMJU3VpdGUgMzAwMSIwIAYDVQQJExk0NjAwIEUuIFdhc2hp
bmd0b24gU3RyZWV0MRgwFgYDVQQKDA9TVEFDSCAmIExJVSBMTEMxNTAzBgNV
BAsMLElzc3VlZCB0aHJvdWdoIFNUQUNIICYgTElVIExMQyBFLVBLSSBNYW5h
Z2VyMR8wHQYDVQQLExZDb3Jwb3JhdGUgU2VjdXJlIEVtYWlsMRUwEwYDVQQD
EwxTaHViaGFtIFNoYWgxIjAgBgkqhkiG9w0BCQEWE3NzaGFoQGJpc2hvcGZv
eC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCwPtupOL3s
4X3pc7VoRCtdL9hwEGMaaNAD67Xdx9KW85aeAO6EABG0BAHd7E7EvwU1kUvf
96HIBMVnvZnmx+M/t5Cu05JsgPThmjgkJnGeEwkIrDUVagFR0UcSITNi/mcC
1aTW2S2UDyOtv08WH4v09IEaUVpecqDTjf4tzEC3typ8yU+3MCKJkxdCVEoJ
Tq+EjxbiK8gWyt/xCsBkV9m/bbbQ7E/qzIfXaATAzfBCeQc5J/yUcPBZxLnJ
Z4hyeJqGgEK4b06sBP9e3L8Ff5hN7EhBNYEFAwtnSmiPxGFWJvHWcxAz2qWs
FVLRmcBFZ+w1iVzYdDfQ5Fn1WQBMW82zAgMBAAGjggHbMIIB1zAfBgNVHSME
GDAWgBSSYWuC4aKgqk/sZ/HCo/e0gADB7DAdBgNVHQ4EFgQUhxib68ZLBl4Z
pYMLVh941A+IiiUwDgYDVR0PAQH/BAQDAgWgMAwGA1UdEwEB/wQCMAAwHQYD
VR0lBBYwFAYIKwYBBQUHAwQGCCsGAQUFBwMCMEYGA1UdIAQ/MD0wOwYMKwYB
BAGyMQECAQMFMCswKQYIKwYBBQUHAgEWHWh0dHBzOi8vc2VjdXJlLmNvbW9k
by5uZXQvQ1BTMF0GA1UdHwRWMFQwUqBQoE6GTGh0dHA6Ly9jcmwuY29tb2Rv
Y2EuY29tL0NPTU9ET1NIQTI1NkNsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2Vj
dXJlRW1haWxDQS5jcmwwgZAGCCsGAQUFBwEBBIGDMIGAMFgGCCsGAQUFBzAC
hkxodHRwOi8vY3J0LmNvbW9kb2NhLmNvbS9DT01PRE9TSEEyNTZDbGllbnRB
dXRoZW50aWNhdGlvbmFuZFNlY3VyZUVtYWlsQ0EuY3J0MCQGCCsGAQUFBzAB
hhhodHRwOi8vb2NzcC5jb21vZG9jYS5jb20wHgYDVR0RBBcwFYETc3NoYWhA
YmlzaG9wZm94LmNvbTANBgkqhkiG9w0BAQsFAAOCAQEAOwZwSGWJ/FaOb4kB
uSHRTegsz93EH0qpYvvAmSyer3FASK+IuJ37XSnLhM/9nEZhTdqY3N+oHaJB
syzOd+IIQlPWj3h5QWdHaL3lwipRlFIJmp25MBE8flBkLq75PPCyc+/iNNXI
zECQ00xvlL2ARbJu+o5NyFbpx6TWAQhh2e2ByQ9XLEPxVAAfG2Stls3g2pGI
AfReFgvbeJk5MUxFjhR+NVsYmlucF3amByhIWlxbYOH9/Sz9tcKtdTJpbnre
3tQ00llOv7yDdZOCrpgvuMuieaCqKwsCbBtofQU9vfBG1I0sdIiGg0WRN1x0
qtvIdvGP03XkOG52BreGJmL5wzCCBK8wggOXoAMCAQICEQDgI8sVEoNTia1h
bnpUZ2shMA0GCSqGSIb3DQEBCwUAMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQK
EwtBZGRUcnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQ
IE5ldHdvcmsxIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3Qw
HhcNMTQxMjIyMDAwMDAwWhcNMjAwNTMwMTA0ODM4WjCBmzELMAkGA1UEBhMC
R0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2Fs
Zm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQxQTA/BgNVBAMTOENP
TU9ETyBTSEEtMjU2IENsaWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJl
IEVtYWlsIENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAibEN
2npTGU5wUh28VqYGJre4SeCW51Gr8fBaE0kVo7SMG2C8elFCp3mMpCLfF2FO
kdV2IwoU00oCf7YdCYBupQQ92bq7Fv6hh6kuQ1JDFnyvMlDIpk9a6QjYz5Ml
nHuI6DBk5qT4VoD9KiQUMxeZrETlaYujRgZLwjPU6UCfBrCxrJNAubUIkzqc
KlOjENs9IGE8VQOO2U52JQIhKfqjfHF2T+7hX4Hp+1SA28N7NVK3hN4iPSww
LTF/Wb1SN7AzaS1D6/rWpfGXd2dRjNnuJ+u8pQc4doykqTj/34z1A6xJvsr3
c5k6DzKrnJU6Ez0ORjpXdGFQvsZAP8vk4p+iIQIDAQABo4IBFzCCARMwHwYD
VR0jBBgwFoAUrb2YejS0Jvf6xCZU7wO94CTLVBowHQYDVR0OBBYEFJJha4Lh
oqCqT+xn8cKj97SAAMHsMA4GA1UdDwEB/wQEAwIBhjASBgNVHRMBAf8ECDAG
AQH/AgEAMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDARBgNVHSAE
CjAIMAYGBFUdIAAwRAYDVR0fBD0wOzA5oDegNYYzaHR0cDovL2NybC51c2Vy
dHJ1c3QuY29tL0FkZFRydXN0RXh0ZXJuYWxDQVJvb3QuY3JsMDUGCCsGAQUF
BwEBBCkwJzAlBggrBgEFBQcwAYYZaHR0cDovL29jc3AudXNlcnRydXN0LmNv
bTANBgkqhkiG9w0BAQsFAAOCAQEAGypurFXBOquIxdjtzVXzqmthK8AJECOZ
D8Vmam+x9bS1d14PAmEA330F/hKzpICAAPz7HVtqcgIKQbwFusFY1SbC6tVN
hPv+gpjPWBvjImOcUvi7BTarfVil3qs7Y+Xa1XPv7OD7e+Kj//BCI5zKto1N
PuRLGAOyqC3U2LtCS5BphRDbpjc06HvgARClnMo6x59PiDRuimXQGoq7qdzK
yjbR9PzCZCk1r9axp3ER0gNDsY8+muyeMlP0dpLKhjQHuSzK5hxK2JkNwYbi
kJL7WkJqIyEQ6WXH9dW7fuqMhSACYurROgcsWcWZM/I4ieW26RZ6H3kU9koQ
Gib6fIr7mzCCBDYwggMeoAMCAQICAQEwDQYJKoZIhvcNAQEFBQAwbzELMAkG
A1UEBhMCU0UxFDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRU
cnVzdCBFeHRlcm5hbCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3Qg
RXh0ZXJuYWwgQ0EgUm9vdDAeFw0wMDA1MzAxMDQ4MzhaFw0yMDA1MzAxMDQ4
MzhaMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRUcnVzdCBBQjEmMCQG
A1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsxIjAgBgNVBAMT
GUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3QwggEiMA0GCSqGSIb3DQEBAQUA
A4IBDwAwggEKAoIBAQC39xoz5vIABC054E5b7R+8bA/Ntfojts7emxEzl6Qp
TH2Tn71KvJPtAxrjj8/lbVBa1pcplFqAsEl62y6V/bjKvzc4LR4+kUGtcFbH
8E8/6DKedMrIkFTpxl8PeJ2aQDwOrGGqXhSPnoehalDc15pOrwWzpnGUnHGz
UGAKxxOdOAeGAqjpqGkmGJCrTLBPI6s6T4TY386f4Wlvu9dC12tE5Met7m1B
X3JacQg3s3llpFmglDf3AC8NwpJy2tA4ctsUqEXEXSp9t7TWxO6szRNEt8kr
3UMAJfphuWlqWCMRt6czj1Z1WfXNKddGtworZbbTQm8Vsrh7++/pXVPVNFon
AgMBAAGjgdwwgdkwHQYDVR0OBBYEFK29mHo0tCb3+sQmVO8DveAky1QaMAsG
A1UdDwQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MIGZBgNVHSMEgZEwgY6AFK29
mHo0tCb3+sQmVO8DveAky1QaoXOkcTBvMQswCQYDVQQGEwJTRTEUMBIGA1UE
ChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFsIFRU
UCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290
ggEBMA0GCSqGSIb3DQEBBQUAA4IBAQCwm+CFJcLWI+IPlgaSnUGYnNmEeYHZ
HlsUByM2ZY+w2He7rEFsR2CDUbD5Mj3n/PYmE8eAFqW/WvyHz3h5iSGa4kwH
CoY1vPLeUcTSlrfcfk7ucP0cOesMAlEULY69FuDB30Z15ySt7PRCtIWTcBBn
up0GNUoY0yt6zFFCoXpj0ea7ocUrwja+Ew3mvWN+eXunCQ1Aq2rdj4rD9vaM
GkIFUdRF9Z+nYiFoFSBDPJnnfL0k2KmRF3OIP1YbMTgYtHEPms3IDp6OLhvh
jJiDyx8x8URMxgRzSXZgD8f4vReAay7pzEwOWpp5DyAKLtWeYyYeVZKU2IIX
WnvQvMePToYEMYICSDCCAkQCAQEwgbEwgZsxCzAJBgNVBAYTAkdCMRswGQYD
VQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAY
BgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMUEwPwYDVQQDEzhDT01PRE8gU0hB
LTI1NiBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBD
QQIRAJ9BOdKo7VVFFqztJEl9k6gwDQYJYIZIAWUDBAIBBQCgaTAvBgkqhkiG
9w0BCQQxIgQgWUfwWPM6LO4yw1Xh7/ly72FvZL0cctry0qwT5ji6b1QwGAYJ
KoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTYwMjEw
MTUyNjQ1WjANBgkqhkiG9w0BAQEFAASCAQBKFzhcm25c1dh6p0mpPGu04riI
BLJunIZkU7c8n7EqwWxhdrPsJzu2gRthmJqssv5+eokNl2TQuHTV58OPJAjl
/U1x0GeYwhMjiBM2uXVxNrLXDQUtBCUc++PmcEjYQoOz+wDmRI3FP2s4ZSDx
/nAbI12VvbG6iSE2iC3PqvDcvOUhMnCFTxBipto/lul2wN8zw5qPFKoWynjK
q2i/388zbWOl/ob2qHRxyogckYYSL3ATOLkTFt5akf8FWUh84/12yNvH2ja1
3URc4QH1RoAtXInKNfSiHicLeUU6KSf9gmLsP/X9zizlt4ZgI/CCcODktln/
/Uctxe6uO0aGTnbD

--B_3538002405_725967682--
