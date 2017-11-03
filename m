X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9663" "Friday" "3" "November" "2017" "11:07:14" "+0000" "Fiedler Roman" "Roman.Fiedler@ait.ac.at" "<2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>" "182" "[oss-security] Security risk of server side text editing in general and vim.tiny specifically" "^Date:" nil nil "11" "2017110311:07:14" "[oss-security] Security risk of server side text editing in general and vim.tiny specifically" (number mark "        Roman.Fiedle Nov  3  182/9663  " thread-indent "\"[oss-security] Security risk of server side text editing in general and vim.tiny specifically\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9686 invoked by uid 550); 3 Nov 2017 11:31:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13369 invoked from network); 3 Nov 2017 11:07:27 -0000
Thread-Topic: Security risk of server side text editing in general and
 vim.tiny specifically
Thread-Index: AdNUkOKUbUqTfoP3SaOI50kWgowr+A==
Message-ID: <2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>
Accept-Language: en-US, de-AT
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.249.121]
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0008_01D3549C.45C6E390"
MIME-Version: 1.0
Date: Fri, 3 Nov 2017 11:07:14 +0000
From: Fiedler Roman <Roman.Fiedler@ait.ac.at>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Security risk of server side text editing in general and vim.tiny
 specifically
To: oss-security <oss-security@lists.openwall.com>

------=_NextPart_000_0008_01D3549C.45C6E390
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear OSS-Security List,

Due to the recent discussion on vim swap file use, I expected also attracti=
on of of evil-minded to the topic of text editing security and thus an incr=
ease in attack probability on server side text editing in general. Therefor=
e I wanted to review our software qualification criteria for text editing o=
n servers, where vim/vim.tiny is used and probably update the SOPs and guid=
elines.

As .swp security problems also arise from unclear software behaviour expect=
ations, I looked at the behaviour of vim.tiny to verify it works according =
to specification (man pages as reference). As it seems, the tool is not sui=
ted for editing of files not owned by the same user, which is not mentioned=
 in the man pages. Maybe that indicates, that the software design process d=
id not include that specific security requirement or implementation was ins=
ufficient. Therefore I would assume, that numerous bugs of similar kind mig=
ht be found, but there is no time (funding) to do in depth checks.

I would be interested in consensus, if editing of non-root files by root us=
er is bad practice in general (thus, e.g. should be mentioned in SECURITY s=
ection of man pages of various common server side test editing tools to rai=
se awareness, but no CVEs) or if you think, that this is software misbehavi=
our.

Input from "Solar Designer <solar at openwall x com>" to that topic:

"This discussion does not belong on the distros list.  Please bring it to
oss-security ASAP, including the PoC (or optionally delay it by at most
a week, but I see no reason for that as nothing will change in that week
anyway), and people will hopefully reply for real in there.

There's no embargoed issue here that I can see and no proposed unembargo
date either (a requirement for any initial posting to distros), I don't
see how anything will change within distros' list maximum embargo time
of 14 days, and it is indeed "bad practice in general" to access files
as root in user-writable directories, which is not at all limited to
text editors."


Best regards,
Roman Fiedler

PS: POC for vim.tiny on Ubuntu Xenial to overwrite arbitrary files as user =
root when editing file in directory owned by other user is available on req=
uest, disclosure after one week or if list discussion indicates other timin=
g.

ROMAN FIEDLER
Scientist
Information Management
Center for Digital Safety & Security

AIT Austrian Institute of Technology GmbH
Reininghausstra=C3=9Fe 13/1 | 8020 Graz | Austria
T +43 50550-2957 | M +43 664 8561599 | F +43 50550-2950
roman.fiedler@ait.ac.at | https://www.ait.ac.at

View my researcher profile: https://www.ait.ac.at/profile/detail/Fiedler-Ro=
man/

FN: 115980 i HG Wien | UID: ATU14703506
www.ait.ac.at/Email-Disclaimer

------=_NextPart_000_0008_01D3549C.45C6E390
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCCDL0wggX9MIID5aADAgECAgkAkvp1Fx1x2IMwDQYJKoZIhvcN
AQELBQAwgawxCzAJBgNVBAYTAkFUMQ8wDQYDVQQIDAZWaWVubmExDzANBgNV
BAcMBlZpZW5uYTEyMDAGA1UECgwpQUlUIEF1c3RyaWFuIEluc3RpdHV0ZSBv
ZiBUZWNobm9sb2d5IEdtYkgxLTArBgNVBAsMJENlbnRlciBmb3IgRGlnaXRh
bCBTYWZldHkgJiBTZWN1cml0eTEYMBYGA1UEAwwPQUlUIERTUyByb290IENB
MB4XDTE3MDMwOTE1MTI1NloXDTI3MDMxMDE1MTI1NlowgawxCzAJBgNVBAYT
AkFUMQ8wDQYDVQQIDAZWaWVubmExDzANBgNVBAcMBlZpZW5uYTEyMDAGA1UE
CgwpQUlUIEF1c3RyaWFuIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5IEdtYkgx
LTArBgNVBAsMJENlbnRlciBmb3IgRGlnaXRhbCBTYWZldHkgJiBTZWN1cml0
eTEYMBYGA1UEAwwPQUlUIERTUyByb290IENBMIICIjANBgkqhkiG9w0BAQEF
AAOCAg8AMIICCgKCAgEAxGoc+0dcZdumBz9T9+kB4HCojrjmR6k8jkDwW9jn
X0tLqBuwlfWf7oTBfHRH0phPhShdTs0WRVqEGScWgnf2F8iS85aytRHRnW9r
jeJH8xOxqFsugZbmOWGhw8kM9iw6GMyPKhfKh0Z6wUS8zAu3ZMj8QA2SZzkx
iazZA8AjmfOjhkUStD5rYxEQueFSq5zgIN6sdQnTLbiLlRlSklGIgViBen8N
fy9maZnXnyQSeqv+AJvusw4tq/qPA9fwXSf/4Fo+YgzbcoRpkpZ3GA3eArb6
38l4uqLZekynVpzPO6fltw1nV0WNj02gw+NckHuHGBMTFWLzGtMx4TSvzXRd
Ry4bApphNyefO8digyBC1Wzl2mL/w97tpTLMo9RHa1DMRd4CBV2YbdRkHAhR
dsuAId2CXgFBS26OJjnccfgviqBlAKyDKR30D6DImvjFOS88IQ8uyP6Aedl+
eQd5+4rCrf4Aclk+idD46d7QkxPJvyCIhLzjeWQU+O1GWEwiy1aKkA9WLF7K
s88pJ2y7esHciEidwemSrS2ffaToa/K4VqBkmn3ppHjmj6D2gSdQstEhChPK
xToF/LCQBQc6o0vpH4eUFkHM/aKxBu9sKwZDMIMumNPyox2l/ewa526uuS5O
joPg83YDnxxDQ1XWrx4yIo+j1FtqROV4sEVFSgJZjV8CAwEAAaMgMB4wDwYD
VR0TAQH/BAUwAwEB/zALBgNVHQ8EBAMCAQYwDQYJKoZIhvcNAQELBQADggIB
AHNwDZs17W6Lg4Cxvax++h2WeTLGlnX+l1iybi5cG65rcwDrRdqPv/T7FUzy
H7c2hLLFuyGZuCXrhrPkmknVYPNOt0SQtbZuf6mSC7HVgdcEwgBRVldfY7qy
3KLMX6H2zZJF3eWWEWvctHGn1O9BD1I4vvSMD2FwSmy3hQq94/c/Wl2Tj6+Z
eONFKS4vT2wNIFesBXDJRmKLermIenV7EkiBO5qxnN5Q25+W3WEkrbuiPO5s
1KSQ1QxL88f+R9MJl8AJEXA2gzOBxKqMabJ/+NGUTt0yy7PJX0QucJ/ESwic
VQBjMKmfJxRuPkqYRpd9BQ7mp2jNzqmMiXZsdfH7NZ7UKkNevNkA13fV7k3M
D1oeZhe5MeVObzyB+hO7sb8fiNV5QSR1c3/uyAt3OEs7s1JD7vL8dmHULh5C
sVHvdr8V7Zjm4wta+7DaLBtz0mhgb9OagLZy5vS6GSKqiuf996epsTAgBFpj
JMOYYOEOlOzvnF11irl+7YMcHdOaHk+lccqwEe1oDNIjysM9aj8Uu2S9aEf6
NACA5UB4DG27yptRsXMQwOu10/lQ1Ju5H6Ed4Od5+HoTFJvVfxuelHvggce9
En1vQ9JTIm10MV1HwdkxQObweGZH4mt/HJkHKPm/X3hJCztmpOugQ50lMitC
BOk095ufDatc6TWbeie9/nFoMIIGuDCCBKCgAwIBAgIhAPyFSUbhuCR1JHvV
d3fEehZlFVSMVIrD5sezDgn+++vfMA0GCSqGSIb3DQEBCwUAMIGsMQswCQYD
VQQGEwJBVDEPMA0GA1UECAwGVmllbm5hMQ8wDQYDVQQHDAZWaWVubmExMjAw
BgNVBAoMKUFJVCBBdXN0cmlhbiBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neSBH
bWJIMS0wKwYDVQQLDCRDZW50ZXIgZm9yIERpZ2l0YWwgU2FmZXR5ICYgU2Vj
dXJpdHkxGDAWBgNVBAMMD0FJVCBEU1Mgcm9vdCBDQTAeFw0xNzA2MDgwODU2
MDJaFw0yMDA2MDgwODU2MDJaMIHSMQswCQYDVQQGEwJBVDEPMA0GA1UECAwG
Vmllbm5hMQ8wDQYDVQQHDAZWaWVubmExMjAwBgNVBAoMKUFJVCBBdXN0cmlh
biBJbnN0aXR1dGUgb2YgVGVjaG5vbG9neSBHbWJIMS0wKwYDVQQLDCRDZW50
ZXIgZm9yIERpZ2l0YWwgU2FmZXR5ICYgU2VjdXJpdHkxFjAUBgNVBAMMDVJv
bWFuIEZpZWRsZXIxJjAkBgkqhkiG9w0BCQEWF3JvbWFuLmZpZWRsZXJAYWl0
LmFjLmF0MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA2vuUrQTa
CeYHx0XlnnFZbwNJIAYGtwcX+WNnTOVQpRk9aAImyomxvowzTyfXZVhNjqHw
sBKN4+Xa7LA0GimyRN6v2eBelrrtJ7ziX+nvGVPlUy/EXgzY/knBX+DD2SCm
rdMao4U+M3+zk0UhZLn0LnuKKxE9rL78E+8dszLTWh3W9jMYuD3Gx91vFxC5
JfU8Bv7+4CZ/aMpG1j6ebRdyZhNb5H8O5RERPLszKNcEvc9pAeKxjMI/77kn
BT92EDxVULD9HLaD/HLWsPP2H6/ELoe/RJ8Yxh2TSICKJGUk95Ryo9qWP+9X
3zVfiVuwd00O2RX5Z4R9cVFawFRmrxC7yzHoJaHc6rpcw8ca7H9DBC5l4N4B
wW/JJpdVaIlOKa0HkMZmxZ4rAuQakuvKj7w/6UR+dnoP4Ao5p5uozOfCY8OM
8OOoh/tnI90Ubil1+niquspba1GiEPDuOzDmLb0le2LzOKf1PSckne2crUtD
L1PS9lcbFjiiZN93qYPJoqp7QY9tSxF6wyiW9FY14s+TifpEWLjECMn4d4gA
z+LWo+xG1suBelvPdSCusUFDWRGctewfi8rgOKR3Lb6HSE/1jppsMfNm1xbH
aCv/y4XvrokA7OY+XdupTvf5SDQVDmilPocTlihqi4czUC7gKsRrP8Rgf3cx
/xMGQAfoCgwpTY8CAwEAAaOBnDCBmTAMBgNVHRMBAf8EAjAAMA4GA1UdDwEB
/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwIgYDVR0R
BBswGYEXcm9tYW4uZmllZGxlckBhaXQuYWMuYXQwNgYDVR0fBC8wLTAroCmg
J4YlaHR0cDovL2Rzcy5haXQuYWMuYXQvQWl0RHNzUm9vdENhLmNybDANBgkq
hkiG9w0BAQsFAAOCAgEAlmfH6IKcvELSCvkJN73s+fBUvZsreH+VM4nv6mwO
G2otjCOimXdoJPIKAdQJMG02miEhSxcnhaCzM7D2NQcI5+Uj4kEsTNXaZ3PT
p8pClVuVhvUX3xWTRaXypBu7+EYReGXDLrzQHAUS59T1vPTjGWz/uyzZV0T0
l/h2Nu48JAgUZWqegXtS6A2L0dkyHpLg9v1DWynzSHe/TaiMvLcGhRFX25bv
QKqmQpOSDJvyDjUzIEBl7ta+pFSCcFvOeJXl9Pyx9Jz1LrKlyHb20gq6BXxR
dRl1l3h4H+Dxcm+dSh3tgMGxn649Jrr7aESqTgAWgv1JNfTXu0X1TB2ApD3d
gzvpb6S+VMpzTUPG347m0kMzQ1VsZXbnXMceAd5PGEeCw8mfBY1SCscK87cC
e4MARvGhKLsbOOn8gti2/iTEyDGTSvKRP1IStFzJdXRApz+tZu9K9vaWx/53
jV+yhtZCGIXr1XkFp/RYsWap8Ml2q06h0Tgr1fardKPTrVXPs2THDVVN9eV9
uUJHkqAxnHp8hg5zPVcc6p+Q1ZzxUyG2b4Q1FJ9jSk0upeIIDkv39mUh/q5x
j35Oe+i3B0Juw3nA3dE7TH6T+XtD8v216UF0XzEiWwtnQxyxd+GQbO+fIzr1
eyN1QUAY+d2CrAmlfr5zRBstbxx2nqx9xEXlE995gSYxggXPMIIFywIBATCB
0jCBrDELMAkGA1UEBhMCQVQxDzANBgNVBAgMBlZpZW5uYTEPMA0GA1UEBwwG
Vmllbm5hMTIwMAYDVQQKDClBSVQgQXVzdHJpYW4gSW5zdGl0dXRlIG9mIFRl
Y2hub2xvZ3kgR21iSDEtMCsGA1UECwwkQ2VudGVyIGZvciBEaWdpdGFsIFNh
ZmV0eSAmIFNlY3VyaXR5MRgwFgYDVQQDDA9BSVQgRFNTIHJvb3QgQ0ECIQD8
hUlG4bgkdSR71Xd3xHoWZRVUjFSKw+bHsw4J/vvr3zANBglghkgBZQMEAgEF
AKCCAs0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUx
DxcNMTcxMTAzMTEwNzA4WjAvBgkqhkiG9w0BCQQxIgQgfibg4qirmD2eNPk/
Qnj4Fhqyl2s/I2wc8c8UTLItjvAwgZMGCSqGSIb3DQEJDzGBhTCBgjALBglg
hkgBZQMEASowCwYJYIZIAWUDBAEWMAoGCCqGSIb3DQMHMAsGCWCGSAFlAwQB
AjAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAwCwYJYIZIAWUDBAIB
MAsGCWCGSAFlAwQCAzALBglghkgBZQMEAgIwBwYFKw4DAhowgeMGCSsGAQQB
gjcQBDGB1TCB0jCBrDELMAkGA1UEBhMCQVQxDzANBgNVBAgMBlZpZW5uYTEP
MA0GA1UEBwwGVmllbm5hMTIwMAYDVQQKDClBSVQgQXVzdHJpYW4gSW5zdGl0
dXRlIG9mIFRlY2hub2xvZ3kgR21iSDEtMCsGA1UECwwkQ2VudGVyIGZvciBE
aWdpdGFsIFNhZmV0eSAmIFNlY3VyaXR5MRgwFgYDVQQDDA9BSVQgRFNTIHJv
b3QgQ0ECIQD8hUlG4bgkdSR71Xd3xHoWZRVUjFSKw+bHsw4J/vvr3zCB5QYL
KoZIhvcNAQkQAgsxgdWggdIwgawxCzAJBgNVBAYTAkFUMQ8wDQYDVQQIDAZW
aWVubmExDzANBgNVBAcMBlZpZW5uYTEyMDAGA1UECgwpQUlUIEF1c3RyaWFu
IEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5IEdtYkgxLTArBgNVBAsMJENlbnRl
ciBmb3IgRGlnaXRhbCBTYWZldHkgJiBTZWN1cml0eTEYMBYGA1UEAwwPQUlU
IERTUyByb290IENBAiEA/IVJRuG4JHUke9V3d8R6FmUVVIxUisPmx7MOCf77
698wDQYJKoZIhvcNAQEBBQAEggIAmkS/FzYzbWlb/CqmfffRaOGbydOcWe4y
khpapaK/pjEoCeb0O6pzwvuoDmc+qZLVYNR2R1uZ6Io9PwTBbhrIAWIP72tR
NqG199Cjd2UJ/0OrEB+mCg5ddUeGv5BUSCZCPVMGfkmZkHfhCdluE07ecdLx
TvVcezFB4uJWHsY4g8ab8H70U8dwc0DRi6fs7uAaOB8lOLDpv26tKqTaw25D
5BERqdJ/INhnzklO3sRVY+tggN5v3CWqe3yXMKgPE5PzN0K4RngmHZPW8W29
4E23ST3h5x5NySDS/dNOfksIzys32ywIKqsq8RUAsLkCYb1oFDoUXtye4CMf
ufT8TlMKcy7d+VlPu1k7jSN/j+bIS+bgIGKBvpvFVxfQOTLYfvNT+YJF9Ddq
DoCyqLQj8AEEwz1wJFGHxYdbFQZ/svu+vi7s/88y+E8+cl4WyFw7yL+VGUEo
9uFPo6vK5ApFo+tFIAapvQIiZRQhnLtwYccNMHDGihZTNP74XYjNwQNJECeQ
0BFp25Vo+TtntzdHb+R8pvNLzxCfXLWw4guaYKywZMPj+w7Qk3sbupGsCw+K
aiX2JQk2DYEYtXtMInWv6nD38W1rPt3YvLaEedp/g6KB7jVa+zVNhVWpJiX5
/MfGizWKjGwJ2JYrb07SfPyderdf5El6KtIIRUKhpscYXmlD8+oAAAAAAAA=

------=_NextPart_000_0008_01D3549C.45C6E390--
