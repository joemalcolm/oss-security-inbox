X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6417" "Thursday" "5" "December" "2019" "12:23:36" "+0100" "Renaud Allard" "renaud@allard.it" "<8a5d3cab-9c4e-10ba-afcd-d3d6fc4ec66c@allard.it>" "124" "Re: [oss-security] Authentication vulnerabilities in OpenBSD" "^Date:" nil nil "12" "2019120511:23:36" "[oss-security] Authentication vulnerabilities in OpenBSD" (number mark "        renaud@allar Dec  5  124/6417  " thread-indent "\"Re: [oss-security] Authentication vulnerabilities in OpenBSD\"\n") "<CAGUWgD_w0P2mM5Q60S3b5D5djnPsSmwTR6VTtZ1Y3Q7=UhN7Pw@mail.gmail.com>" ("<20191204204020.GB7012@localhost.localdomain>" "<CAGUWgD_w0P2mM5Q60S3b5D5djnPsSmwTR6VTtZ1Y3Q7=UhN7Pw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Authentication vulnerabilities in OpenBSD" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11532 invoked by uid 550); 5 Dec 2019 12:17:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5812 invoked from network); 5 Dec 2019 11:23:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=allard.it;
	 s=default; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
	:List-Post:List-Owner:List-Archive;
	bh=+zETxg+6g/VejA032x1hETwamsSJ0aKtAywnBoGjh7U=; b=Cm3A5/HWA+WVsAKFzDNXOUdhKQ
	2J+b+sAtMwQXzElN3tM430aAOai5uaBMWDrCLih//xNGAyT510XBAfJ2KGOyhdnpgqhfS5fAu1eAw
	CIpXrWWcdPMhfN1yNiM4ZlJ8cLzQHjmH2lbDq1Q8mC3XjhDUh6l89IIYa651VzO5gPGOmEkBZWFWI
	Pw4CbfWpwCwvCuEbG6mPSVEyBANzlzMZhtrDqZ6x+1ZeJA+9RjlK28DHfTxuG1KEp3keWWy4sSYKP
	MYsm4XXKU0niCHEqOeeh5+KoCfRTiRVrHBVhvKDAuUr7yV+njTGcexoCA2JxPSIVBb0pBjZPqeJXB
	DhXP3imw==;
References: <20191204204020.GB7012@localhost.localdomain>
 <CAGUWgD_w0P2mM5Q60S3b5D5djnPsSmwTR6VTtZ1Y3Q7=UhN7Pw@mail.gmail.com>
Message-ID: <8a5d3cab-9c4e-10ba-afcd-d3d6fc4ec66c@allard.it>
MIME-Version: 1.0
In-Reply-To: <CAGUWgD_w0P2mM5Q60S3b5D5djnPsSmwTR6VTtZ1Y3Q7=UhN7Pw@mail.gmail.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms070909090707010303010104"
X-Authenticated-Sender: renaud
User-Agent: Khazad-dum/2.0 (Black Chasm)
X-Face: $^Z!XVQTyM$1]nOh,/u;QQuatFA("&4C,ds7+'ya]6kyiS)(,f?!Ye=]vhSRLz:aeh-?wC%#E3dP/%e9uoh7n0jm1R2_'U%5?8!y{8P{2_LZ_~;DrF<dLckei*<M8`sL35G8#{w|<Mx4i".PHxG&_Ajc-'^4GlKTHtBr)D5MFKLL"):{]kPQwuGO@e$Z&-_u*.<Fw*#@.L&W:u]wtFy3[Is+gF7{Dq=yfYb}r=3^\"?+=}4BQeawjrQZN\U9u7cjsa,dvUF$v[jm6|ljo;Sh)
Date: Thu, 5 Dec 2019 12:23:36 +0100
From: Renaud Allard <renaud@allard.it>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Authentication vulnerabilities in OpenBSD
To: oss-security@lists.openwall.com

--------------ms070909090707010303010104
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 12/5/19 11:44 AM, Georgi Guninski wrote:
> On Wed, Dec 4, 2019 at 10:51 PM Qualys Security Advisory <qsa@qualys.com>=
 wrote:
>>
>>
>> Qualys Security Advisory
>>
>> Authentication vulnerabilities in OpenBSD
>>
>=20
> openbsd doesn't count these as remote holes in default install, right?
>=20
> Their front page still says:
> Only two remote holes in the default install, in a heck of a long time!
>=20

Obviously, since that vulnerability is not present remotely by default.


--------------ms070909090707010303010104
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCCC3EwggTmMIIDzqADAgECAhA+qzRTSsPcxKKa1r+NzgeYMA0G
CSqGSIb3DQEBCwUAMIGNMQswCQYDVQQGEwJJVDEQMA4GA1UECAwHQmVyZ2Ft
bzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRybzEjMCEGA1UECgwaQWN0YWxp
cyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMgQ2xpZW50
IEF1dGhlbnRpY2F0aW9uIENBIEcyMB4XDTE5MTAxNzA3MzEyNVoXDTIwMTAx
NzA3MzEyNVowGzEZMBcGA1UEAwwQcmVuYXVkQGFsbGFyZC5pdDCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBAI+qT6QJC4C8z0jgn7NnSDVnJ1ZT
Z3IsqKeeXMTO90eHSUh8eJD38i1iJ9NnYFYHVQUzCuW9UzWZjGXRPf7V3p6e
bnni5iW3HCgY4ylGZjN/LDOUIbyKfbJty3x2UUt8KkDiEQjsPYzqQCem8sz2
iAJNWgY6ZnciXCFGtSs4vqvehsmuLV0xXJGMwsrdjQst0EqUV0TTRHrD+Q9X
dK1UrM/Z3CoY10WqiQudobr4KHXqLZ+MAHZDMeLw29oIGWpStRbwe1a7VX6r
gNgIW8XarmIdtomt27c9EuAKSN4qvmx4ZpruvzzfLWh0HGsQA1YyZodo34IJ
j8BMYJ0MUz32mq0CAwEAAaOCAbEwggGtMAwGA1UdEwEB/wQCMAAwHwYDVR0j
BBgwFoAUa/KNnmjBJQQfUTRX9hZclOpNaRowfgYIKwYBBQUHAQEEcjBwMDsG
CCsGAQUFBzAChi9odHRwOi8vY2FjZXJ0LmFjdGFsaXMuaXQvY2VydHMvYWN0
YWxpcy1hdXRjbGlnMjAxBggrBgEFBQcwAYYlaHR0cDovL29jc3AwOS5hY3Rh
bGlzLml0L1ZBL0FVVEhDTC1HMjAbBgNVHREEFDASgRByZW5hdWRAYWxsYXJk
Lml0MEcGA1UdIARAMD4wPAYGK4EfARgBMDIwMAYIKwYBBQUHAgEWJGh0dHBz
Oi8vd3d3LmFjdGFsaXMuaXQvYXJlYS1kb3dubG9hZDAdBgNVHSUEFjAUBggr
BgEFBQcDAgYIKwYBBQUHAwQwSAYDVR0fBEEwPzA9oDugOYY3aHR0cDovL2Ny
bDA5LmFjdGFsaXMuaXQvUmVwb3NpdG9yeS9BVVRIQ0wtRzIvZ2V0TGFzdENS
TDAdBgNVHQ4EFgQUzpVuylSpBQ46SJuICN/3+xnCIWcwDgYDVR0PAQH/BAQD
AgWgMA0GCSqGSIb3DQEBCwUAA4IBAQCOBVPImSSrNGurB8NAkaz5yHiGb8Hx
MEtpfvz9Tnf9fb7x9nz4GwREXlLoMn10xNBQHCLIhhD5QThpTKN50Infrg7I
BLCaWfbDIIWegFD6n6lsRTAz3JqON6iZx4X4dL9jqFJxjg3+8PxrXhm+G9y6
jOSriAgcDJLwrSzgjT2zLIHkaqsjk9+6EGOsBzYKqCLLGgNNDbvmoBtAy4Ha
ew/hpJOJHI+QLx9yeyCBfT6JBxNhNCwkZhcGRV2fx+3ik9HyQzVVPu/gpOKk
WpBs5o0nSC9CC/GPDb6rY5hSL6N9R1XgetgfklhOdTctzEPLpmdboKjq8WSn
m7AfaUphc6m+MIIGgzCCBGugAwIBAgIQT94QS+2VW96LrWWHzEFe4zANBgkq
hkiG9w0BAQsFADBrMQswCQYDVQQGEwJJVDEOMAwGA1UEBwwFTWlsYW4xIzAh
BgNVBAoMGkFjdGFsaXMgUy5wLkEuLzAzMzU4NTIwOTY3MScwJQYDVQQDDB5B
Y3RhbGlzIEF1dGhlbnRpY2F0aW9uIFJvb3QgQ0EwHhcNMTkwOTIwMDcxMjA1
WhcNMzAwOTIyMTEyMjAyWjCBjTELMAkGA1UEBhMCSVQxEDAOBgNVBAgMB0Jl
cmdhbW8xGTAXBgNVBAcMEFBvbnRlIFNhbiBQaWV0cm8xIzAhBgNVBAoMGkFj
dGFsaXMgUy5wLkEuLzAzMzU4NTIwOTY3MSwwKgYDVQQDDCNBY3RhbGlzIENs
aWVudCBBdXRoZW50aWNhdGlvbiBDQSBHMjCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBALdoc3rZPNQv+9xnyj3OlHz/iRnO2hpj8xlHkCdYKNwn
RabAT6J0RA11A3ZkQiEZEw66B99ES7Ezv9IRBYmIwsr720lUptObF5L3yVzl
3nzaittXwWsq+CQoDEci1cKkWF5SiO22+Np2Epu2HFxkw5nXMnZibrqnC6hU
GsFogTDUUVRIuLlublwWYFhpqvDaCh//ucRgRW3+rTU1nBoT1XHkXrLsCtee
fjoh+o01tNTWvGi4+3OyABidGPXuoYh7UbYX1u0sG1O8rO92t5zV7/Cr/Vza
9EbySh6DrCqsY333sNxikKzFyBwebZv43t1xJyMVE/CRt7BLJOyHxd1Yq0sC
AwEAAaOCAf4wggH6MA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAUUtiI
OsifeGbtifN7OHCUyQICNtAwQQYIKwYBBQUHAQEENTAzMDEGCCsGAQUFBzAB
hiVodHRwOi8vb2NzcDA1LmFjdGFsaXMuaXQvVkEvQVVUSC1ST09UMEUGA1Ud
IAQ+MDwwOgYEVR0gADAyMDAGCCsGAQUFBwIBFiRodHRwczovL3d3dy5hY3Rh
bGlzLml0L2FyZWEtZG93bmxvYWQwJwYDVR0lBCAwHgYIKwYBBQUHAwIGCCsG
AQUFBwMEBggrBgEFBQcDCTCB4wYDVR0fBIHbMIHYMIGWoIGToIGQhoGNbGRh
cDovL2xkYXAwNS5hY3RhbGlzLml0L2NuJTNkQWN0YWxpcyUyMEF1dGhlbnRp
Y2F0aW9uJTIwUm9vdCUyMENBLG8lM2RBY3RhbGlzJTIwUy5wLkEuJTJmMDMz
NTg1MjA5NjcsYyUzZElUP2NlcnRpZmljYXRlUmV2b2NhdGlvbkxpc3Q7Ymlu
YXJ5MD2gO6A5hjdodHRwOi8vY3JsMDUuYWN0YWxpcy5pdC9SZXBvc2l0b3J5
L0FVVEgtUk9PVC9nZXRMYXN0Q1JMMB0GA1UdDgQWBBRr8o2eaMElBB9RNFf2
FlyU6k1pGjAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQELBQADggIBAGBE
uhmiq3L7DkGaRMG6FTm9na4v3ya3KW+xkhFvSZgPinqeBi5qfV+dCL/BCuO/
JMH9mgI5z57DnYiLQC3CIHnEtalcTfhGPleRgjRMuFQLAeYM5UAZiiPT+D8S
7faZ0CZ3glRLw51QTGQJZSC+bN7mgoiBG/HmGahvLWjlkjNZ6o6AmVC3HIV1
mGowamiYNEVDmen+SAdJW9uhwP+xFFZodZ0lYJQ6FHg+3pSDVx6YdM94n9e9
tlMnXKB+CY92WmPXbUOMCUjYUmTsxEu9lJEusHv+eehThrO6HiVrkHvEathH
nkhphpYmSlG2KOIwfwtqJjJ9C+EMCOcDDa1ndhUTVFMMTAZmyWLRGg0U0O9h
zwPA520ZL0Q0iZI7E6KlOmaQZQX+LORMK4V6hVW9qzPZhgjw2SYux8N8vAWA
/3d4ky+j1uVIzk0qRXJ0iD+B1uTyOjEx15fmm+mowp7ycOhNUxi4d8ycqb+Q
kPBbZtM+zCi7eWa9hOI6I2V3mZ9bFKUqonWcqfZhvy2DEZhzJLYQ0Zw5ztrR
7+fmDjuHFBG07eQcMBOUT46qL7J3ncneUooyCvpNTAlxSzE3xEc96lDd4v38
Lnl3BsuIxH9p/xb2LBGNxgR12QjFVj33wX25fyE47PUPTRt+2wBJv5oNsjat
NjS4w20CCoLfVtGgVPUrMYIEFzCCBBMCAQEwgaIwgY0xCzAJBgNVBAYTAklU
MRAwDgYDVQQIDAdCZXJnYW1vMRkwFwYDVQQHDBBQb250ZSBTYW4gUGlldHJv
MSMwIQYDVQQKDBpBY3RhbGlzIFMucC5BLi8wMzM1ODUyMDk2NzEsMCoGA1UE
AwwjQWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRpb24gQ0EgRzICED6rNFNK
w9zEoprWv43OB5gwDQYJYIZIAWUDBAIBBQCgggJFMBgGCSqGSIb3DQEJAzEL
BgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE5MTIwNTExMjMzNlowLwYJ
KoZIhvcNAQkEMSIEIP4tMALK4VkWu8O106tySag0WSpoXwJyQMAqVOb1L+vV
MGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBAjAK
BggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAwBwYF
Kw4DAgcwDQYIKoZIhvcNAwICASgwgbMGCSsGAQQBgjcQBDGBpTCBojCBjTEL
MAkGA1UEBhMCSVQxEDAOBgNVBAgMB0JlcmdhbW8xGTAXBgNVBAcMEFBvbnRl
IFNhbiBQaWV0cm8xIzAhBgNVBAoMGkFjdGFsaXMgUy5wLkEuLzAzMzU4NTIw
OTY3MSwwKgYDVQQDDCNBY3RhbGlzIENsaWVudCBBdXRoZW50aWNhdGlvbiBD
QSBHMgIQPqs0U0rD3MSimta/jc4HmDCBtQYLKoZIhvcNAQkQAgsxgaWggaIw
gY0xCzAJBgNVBAYTAklUMRAwDgYDVQQIDAdCZXJnYW1vMRkwFwYDVQQHDBBQ
b250ZSBTYW4gUGlldHJvMSMwIQYDVQQKDBpBY3RhbGlzIFMucC5BLi8wMzM1
ODUyMDk2NzEsMCoGA1UEAwwjQWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRp
b24gQ0EgRzICED6rNFNKw9zEoprWv43OB5gwDQYJKoZIhvcNAQEBBQAEggEA
GSBgZjw0vwVvMfe8lYy1ru6SbnLZpGG/Zp9dW0sugCJo44RaoVl6OntftNvG
NpaYanHYSgybA+m65Le3c19NoRoSnYB8SMFbSSNaeB8Fkz7dRLzrFXaxt51z
o6ocs014bHTrY0txhs2GXM6wKIosEKGb7SzlXL3aY2akXhnBx9EI3A0PJGkX
qbSZW+w/xI8kzNY92r+cr7VvpohIsmFskaxWw5PSrm+Fk9cbGKJ3dKv3FJIz
noAbcGgXCNQtWuNgoXe5Is/ZTKwBx05C8FQ9rSVFvdkD5TxWMGIWG+9aEFpY
+9Y1NE/s4OOGWkrB5jxIve7dVqdKWtpGkn7UWKMv5gAAAAAAAA==

--------------ms070909090707010303010104--
