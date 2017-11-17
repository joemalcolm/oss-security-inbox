X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6376" "Friday" "17" "November" "2017" "15:32:28" "-0600" "John Lightsey" "jd@cpanel.net" "<80402134-edf5-1d75-43b0-cfa5f0f6747b@cpanel.net>" "126" "Re: [oss-security] phusion passenger CVE-2017-1000384" nil nil nil "11" "2017111721:32:28" "[oss-security] phusion passenger CVE-2017-1000384" (number mark "U       jd@cpanel.ne Nov 17  126/6376  " thread-indent "\"Re: [oss-security] phusion passenger CVE-2017-1000384\"\n") "<20171117211922.ljzilxin2rkvpqnf@jwilk.net>" ("<CANO=Ty13_HbxhMT8BnqYVfU6=g4GP+oJnyCv11ucUG_q8Kbqqg@mail.gmail.com>" "<ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>" "<20171117211922.ljzilxin2rkvpqnf@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13397 invoked by uid 550); 17 Nov 2017 21:33:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12119 invoked from network); 17 Nov 2017 21:32:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cpanel.net;
	 s=default; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
	:List-Post:List-Owner:List-Archive;
	bh=wQbg8DjGpRA0YVqNlZ0RNi0iIwxqO79D5fhQniya5eA=; b=25uW8w7++F/FMCQqTCPbi7zep4
	YOCJKygSHspS4xzCltKwl1jruNARdyJpM6jzCg3g3qoT0LTZNrq6Qv61ocA985AZ86UurlBm6UlPF
	bH2tJeIeJvyzaFFkIo4eaopmwrV6Hp2wdHZ99xVEcQhg7a3QZeSkJa3yUBUqK6yKBp1zUmdhcdIvB
	EDXUtmQecKlxaRaftUeUnvreUfuFWe0fBprLEHOjOb2LUkFQqidq8fcn5D6BSpx2pQRVPzd6i1Eq0
	udFPwri/gLxiIPen+fWyYXFKtcdaZzNSXqhsx+i5O4tpa4ij4rYCspxWW77U/hyAYtJl/YksOmUjU
	v+qFZyKA==;
To: oss-security@lists.openwall.com
References: <CANO=Ty13_HbxhMT8BnqYVfU6=g4GP+oJnyCv11ucUG_q8Kbqqg@mail.gmail.com>
 <ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>
 <20171117211922.ljzilxin2rkvpqnf@jwilk.net>
From: John Lightsey <jd@cpanel.net>
Message-ID: <80402134-edf5-1d75-43b0-cfa5f0f6747b@cpanel.net>
Date: Fri, 17 Nov 2017 15:32:28 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171117211922.ljzilxin2rkvpqnf@jwilk.net>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms080601020800000706010502"
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mx1.cpanel.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cpanel.net
X-Get-Message-Sender-Via: mx1.cpanel.net: authenticated_id: jd@cpanel.net
X-Authenticated-Sender: mx1.cpanel.net: jd@cpanel.net
Subject: Re: [oss-security] phusion passenger CVE-2017-1000384

--------------ms080601020800000706010502
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 11/17/17 3:19 PM, Jakub Wilk wrote:
> * John Lightsey <jd@cpanel.net>, 2017-11-17, 14:58:
>> https://github.com/phusion/passenger/commit/4043718264095cde6623c2cbe8c6=
44541036d7bf
>>
>=20
> This adds:
>=20
> =C2=A0 #ifdef false
> =C2=A0 ...
> =C2=A0 #endif
>=20
> But false _is_ a defined macro in this file, so this doesn't disable the
> code inside. I guess they meant to write:
>=20
> =C2=A0 #if false
> =C2=A0 ...
> =C2=A0 #endif
>=20

True enough. The removal of the call to inferApplicationInfo() is the
key part of the change.


--------------ms080601020800000706010502
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCCCxQwggUmMIIEDqADAgECAhEAqTAyL0LpEIN+oiDXy1hGPTAN
BgkqhkiG9w0BAQsFADCBlzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0
ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09N
T0RPIENBIExpbWl0ZWQxPTA7BgNVBAMTNENPTU9ETyBSU0EgQ2xpZW50IEF1
dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0EwHhcNMTcwNzIxMDAw
MDAwWhcNMTgwNzIxMjM1OTU5WjAeMRwwGgYJKoZIhvcNAQkBFg1qZEBjcGFu
ZWwubmV0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvFp8WBpl
oFUwNrW5DShRdYMMm+ci1mCnw0Z6g1Kf8mileGyFpxeyJMV1dciYeJiIssmH
6cGG3wdlixHdLV8Z1MRJwzBwxcy+g9Zqm5MSAT/SXc2pVQxyeqvukisQNYVC
BC3JKXtjDut+vCx/nSatpZr7vSzFVqupFlEdFsFISTXPLsqO58bC9bPlV7oL
DyamMAnlUYIb6fa9A++2k83flaZO8Q+4nuHapMV9ipKTt22BK8EaU8p0kgw7
NPAlJgKIPMmcLYhfR03/TKHAe/ssKTHZLy3M1DXSlvV8J7lPt4W4aB3/RL4I
TWlFWze0X3j5qm7Nd+ZlgdkmpO+JaEw58QIDAQABo4IB4zCCAd8wHwYDVR0j
BBgwFoAUgq9sjPjF/pZhfOgfPStxSF7Ei8AwHQYDVR0OBBYEFMIJ0PPsUSw9
KHdodZZltoHylbCRMA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAAMCAG
A1UdJQQZMBcGCCsGAQUFBwMEBgsrBgEEAbIxAQMFAjARBglghkgBhvhCAQEE
BAMCBSAwRgYDVR0gBD8wPTA7BgwrBgEEAbIxAQIBAQEwKzApBggrBgEFBQcC
ARYdaHR0cHM6Ly9zZWN1cmUuY29tb2RvLm5ldC9DUFMwWgYDVR0fBFMwUTBP
oE2gS4ZJaHR0cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RPUlNBQ2xpZW50
QXV0aGVudGljYXRpb25hbmRTZWN1cmVFbWFpbENBLmNybDCBiwYIKwYBBQUH
AQEEfzB9MFUGCCsGAQUFBzAChklodHRwOi8vY3J0LmNvbW9kb2NhLmNvbS9D
T01PRE9SU0FDbGllbnRBdXRoZW50aWNhdGlvbmFuZFNlY3VyZUVtYWlsQ0Eu
Y3J0MCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5jb21vZG9jYS5jb20wGAYD
VR0RBBEwD4ENamRAY3BhbmVsLm5ldDANBgkqhkiG9w0BAQsFAAOCAQEAC4dz
UdAaUx5o06F8sQdm47T+QiQqPTnlA0/dqIJy8h4Za98ngp2GbGR4WDuDtNmi
CbnEXCa6r7bzk5y6pb3emMsbXbOVL/BCP6z1UXJxBMJ4kYTL5Po9PbNLlLn7
y+tBn3tj0/tWdXsDGyws0WWWXo/HUFtpcRapR3/3DrcP8g1JjVmACruAk39Q
uvNHrmVEk5dXa9inm7lFEP5GI08nlUCEQ/OEg6dBSvD5c0UpnYud1x+tPYkv
27d4WF4X+tkuCcUXJqVTGl9abDlizOckj+zzW+04Ne+1QWyzahbCnhmT+8Cw
4MuKbiLzwhKGUC8zdTVEA5u/SMjPD1LHXR9luzCCBeYwggPOoAMCAQICEGqb
4Tg7/ytrnwHV2binUlYwDQYJKoZIhvcNAQEMBQAwgYUxCzAJBgNVBAYTAkdC
MRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZv
cmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMSswKQYDVQQDEyJDT01P
RE8gUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTEzMDExMDAwMDAw
MFoXDTI4MDEwOTIzNTk1OVowgZcxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJH
cmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoT
EUNPTU9ETyBDQSBMaW1pdGVkMT0wOwYDVQQDEzRDT01PRE8gUlNBIENsaWVu
dCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvrOeV6wodnVAFsc4A5jTxhh2IVDz
JXkLTLWg0X06WD6cpzEup/Y0dtmEatrQPTRI5Or1u6zf+bGBSyD9aH95dDSm
eny1nxdlYCeXIoymMv6pQHJGNcIDpFDIMypVpVSRsivlJTRENf+RKwrB6vcf
WlP8dSsE3Rfywq09N0ZfxcBa39V0wsGtkGWC+eQKiz4pBZYKjrc5NOpG9qrx
pZxyb4o4yNNwTqzaaPpGRqXB7IMjtf7tTmU2jqPMLxFNe1VXj9XB1rHvbRik
w8lBoNoSWY66nJN/VCJv5ym6Q0mdCbDKCMPybTjoNCQuelc0IAaO4nLUXk0B
OSxSxt8kCvsUtQIDAQABo4IBPDCCATgwHwYDVR0jBBgwFoAUu69+Aj36pvE8
hI6t7jiY7NkyMtQwHQYDVR0OBBYEFIKvbIz4xf6WYXzoHz0rcUhexIvAMA4G
A1UdDwEB/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMBEGA1UdIAQKMAgw
BgYEVR0gADBMBgNVHR8ERTBDMEGgP6A9hjtodHRwOi8vY3JsLmNvbW9kb2Nh
LmNvbS9DT01PRE9SU0FDZXJ0aWZpY2F0aW9uQXV0aG9yaXR5LmNybDBxBggr
BgEFBQcBAQRlMGMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9jcnQuY29tb2RvY2Eu
Y29tL0NPTU9ET1JTQUFkZFRydXN0Q0EuY3J0MCQGCCsGAQUFBzABhhhodHRw
Oi8vb2NzcC5jb21vZG9jYS5jb20wDQYJKoZIhvcNAQEMBQADggIBAHhcsoEo
NE887l9Wzp+XVuyPomsX9vP2SQgG1NgvNc3fQP7TcePo7EIMERoh42awGGsm
a65u/ITse2hKZHzT0CBxhuhb6txM1n/y78e/4ZOs0j8CGpfb+SJA3GaBQ+39
4k+z3ZByWPQedXLL1OdK8aRINTsjk/H5Ns77zwbjOKkDamxlpZ4TKSDMKVmU
/PUWNMKSTvtlenlxBhh7ETrN543j/Q6qqgCWgWuMAXijnRglp9fyadqGOncj
ZjaaSOGTTFB+E2pvOUtY+hPebuPtTbq7vODqzCM6ryEhNhzf+enm0zlpXK7q
332nXttNtjv7VFNYG+I31gnMrwfHM5tdhYF/8v5UY5g2xANPECTQdu9vWPoq
NSGDt87b3gXb1AiGGaI06vzgkejL580ul+9hz9D0S0U4jkhJiA7EuTecP/CF
tR72uYRBcunwwH3fciPjviDDAI9SnC/2aPY8ydehzuZutLbZdRJ5PDEJM/1t
yZR2niOYihZ+FCbtf3D9mB12D4ln9icgc7CwaxpNSCPt8i/GqK2HsOgkL3VY
nwtx7cJUmpvVdZ4ognzgXtgtdk3ShrtOS1iAN2ZBXFiRmjVzmehoMof06r1x
ub+85hFQzVxZx5/bRaTKTlL8YXLI8nAbR9HWdFqzcOoB/hxfEyIQpx9/s81r
gzdEZOofSlZHynoSMYIEODCCBDQCAQEwga0wgZcxCzAJBgNVBAYTAkdCMRsw
GQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQx
GjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMT0wOwYDVQQDEzRDT01PRE8g
UlNBIENsaWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENB
AhEAqTAyL0LpEIN+oiDXy1hGPTANBglghkgBZQMEAgEFAKCCAlswGAYJKoZI
hvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTcxMTE3MjEz
MjI4WjAvBgkqhkiG9w0BCQQxIgQgfoOz2YmKLa3ckLzZBx42yjesKpjVz2bw
M4rRALioyPgwbAYJKoZIhvcNAQkPMV8wXTALBglghkgBZQMEASowCwYJYIZI
AWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0D
AgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDCBvgYJKwYBBAGCNxAEMYGw
MIGtMIGXMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVz
dGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0EgTGlt
aXRlZDE9MDsGA1UEAxM0Q09NT0RPIFJTQSBDbGllbnQgQXV0aGVudGljYXRp
b24gYW5kIFNlY3VyZSBFbWFpbCBDQQIRAKkwMi9C6RCDfqIg18tYRj0wgcAG
CyqGSIb3DQEJEAILMYGwoIGtMIGXMQswCQYDVQQGEwJHQjEbMBkGA1UECBMS
R3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQK
ExFDT01PRE8gQ0EgTGltaXRlZDE9MDsGA1UEAxM0Q09NT0RPIFJTQSBDbGll
bnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIRAKkwMi9C
6RCDfqIg18tYRj0wDQYJKoZIhvcNAQEBBQAEggEAmKXQWGWrqzX2Zk5PsTqE
RsP/SlkbCf+mnRJPelz8OpcTFh5INHOVgxt2YE5GuY0iA4NXgamH1QkQmFFt
9THGzHtNo0JVsTHye6gdDBgCVbHMGfscp1HwACSYlbxKDuR0fX+Um9oE/4nM
SKG5Rfnj6zAqflnI7hWiBO9ukb4XRfbzJfNZeCDEWeyzmY/2QFaRMm7A3zFf
mPBmYv0V60ofra60h6bp7JEPTQVsaRREznduVtHjuVHzDnQ1PGUV6Msu06AD
aB3vcyuy2WhAUCXNzhmufGZF4U+j8ScyczQm9e67eGYxOABU101BlgbaO2iP
tyjOqkA2PumNoseOqjwKRQAAAAAAAA==

--------------ms080601020800000706010502--
