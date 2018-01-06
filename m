X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6920" "Saturday" "6" "January" "2018" "12:25:09" "-0600" "John Lightsey" "jd@cpanel.net" "<62b1e14f-807a-f193-6a18-34b68232f34d@cpanel.net>" "132" "Re: [oss-security] Path traversal flaws in awstats 7.6 and earlier." nil nil nil "1" "2018010618:25:09" "[oss-security] Path traversal flaws in awstats 7.6 and earlier." (number mark "U       jd@cpanel.ne Jan  6  132/6920  " thread-indent "\"Re: [oss-security] Path traversal flaws in awstats 7.6 and earlier.\"\n") "<20180106103333.598967ca@pc1>" ("<f17ddf39-6ace-8086-de6d-eef34945cf9f@cpanel.net>" "<20180106103333.598967ca@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15709 invoked by uid 550); 6 Jan 2018 18:40:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23856 invoked from network); 6 Jan 2018 18:25:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cpanel.net;
	 s=default; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
	:List-Post:List-Owner:List-Archive;
	bh=n59g/ktgEhWuigbiuG2Hf7VIFHf25wIaMAipzXiSufM=; b=BkI31TsSwgufSKyEirgZwiaSCr
	DtHxRxMLoykTIkujcBxCwo9tLSAvwfc9LA2JKvJ5kE1Z0Dy9bQmvG6IFB4LDdhY+6d7vQN21DsCA3
	EKz3TqgI+ir5FYSZJ9eZo1S8E6mT+zEFHlNFGdq3QrltgNllHkiEySTf6bGVjI6bSX/9pya738W0V
	WwhwRH+VJiEtDGp+oyeb9KJASYAbCUwMMM6R/VyvqN7ngKtv6xp1rhygfKsH5wFIVZb5ZzuN2hEn9
	dPQU14pMte8KcEmKFHkeqJi1LneUO4tJqQilN5PqWt3hsyTV8M3GTW4vloadJU9mC/5P6y4O3pkE8
	Q54ABXRw==;
To: oss-security@lists.openwall.com, =?UTF-8?Q?Hanno_B=c3=b6ck?=
 <hanno@hboeck.de>
References: <f17ddf39-6ace-8086-de6d-eef34945cf9f@cpanel.net>
 <20180106103333.598967ca@pc1>
From: John Lightsey <jd@cpanel.net>
Message-ID: <62b1e14f-807a-f193-6a18-34b68232f34d@cpanel.net>
Date: Sat, 6 Jan 2018 12:25:09 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20180106103333.598967ca@pc1>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms040808010002040803060004"
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mx1.cpanel.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cpanel.net
X-Get-Message-Sender-Via: mx1.cpanel.net: authenticated_id: jd@cpanel.net
X-Authenticated-Sender: mx1.cpanel.net: jd@cpanel.net
Subject: Re: [oss-security] Path traversal flaws in awstats 7.6 and earlier.

--------------ms040808010002040803060004
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 1/6/18 3:33 AM, Hanno B=C3=B6ck wrote:
> On Wed, 27 Dec 2017 09:21:41 -0600
> John Lightsey <jd@cpanel.net> wrote:
>=20
>> The cPanel Security Team discovered two path traversal flaws in
>> awstats that could be leveraged for unauthenticated remote code
>> execution.
>=20
> On
> https://awstats.sourceforge.io/#DOWNLOAD
> the latest version is still 7.6
> On the github repo you linked the latest version is 7.5.
>=20
> Are you in contact with the developers? It's not exactly ideal that
> there's a publicly known remote code execution and there is no new
> release containing the fix.
>=20

I'd agree with you there. Whenever we report security issues to upstream
developers, we have no control over the process they use to resolve the
issue.

In this case, the upstream author committed a partial fix to a public
repo soon after we reported the problem. In my view, whenever an
upstream author does this, you just consider the issue to be public
whether or not official releases or announcements have been made.

I'll pass your feedback along to the upstream author though.


--------------ms040808010002040803060004
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
hvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTgwMTA2MTgy
NTA5WjAvBgkqhkiG9w0BCQQxIgQguEMKmbUTo1qvuB+N7ro9WDDAmf86c4zZ
+T+zmBdxvkwwbAYJKoZIhvcNAQkPMV8wXTALBglghkgBZQMEASowCwYJYIZI
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
6RCDfqIg18tYRj0wDQYJKoZIhvcNAQEBBQAEggEANBIZcYljjifm58NOz+Td
nFJW18t4DCJMLmybxbfn4BZdDbUCPoOhxdi2BJGLlsX0w31MRedIodb4OIIM
bAI8bBukp7mtJTNWnZ6n8Z93KPc1BL2N8/TvuBINMFvj9b4FGeIOb+T+05CR
rmC6MIBcBIVHqzqg7TiW9tohsQCDrk0Q4Db9KWm7gHsgT775XHba0UibnkmX
QuwQrOVwNbTaYS1B6CXViYiqeYGzdn8BpWbGZ8WbziwoJaCOkONK+fVOkpWh
lGwJGSkn4zgF/mj4X8GEd3g2980RAElxPW+WsNFpBqO8ylkI75NuPfZIa0J0
znmQJ7Ocstl5zSzJP3igtQAAAAAAAA==

--------------ms040808010002040803060004--
