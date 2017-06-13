X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8352" "Tuesday" "13" "June" "2017" "12:32:10" "+0000" "Fiedler Roman" "Roman.Fiedler@ait.ac.at" "<2ECE9D9EEF1F524185270138AE23265955AB0414@S0MSMAIL112.arc.local>" "156" "Re: [oss-security] Vixie/ISC Cron group crontab to root escalation" "^Date:" nil nil "6" "2017061312:32:10" "[oss-security] Vixie/ISC Cron group crontab to root escalation" (number mark "        Roman.Fiedle Jun 13  156/8352  " thread-indent "\"Re: [oss-security] Vixie/ISC Cron group crontab to root escalation\"\n") "<20170613112638.axsgfjy5ntrzylb3@jwilk.net>" ("<2ECE9D9EEF1F524185270138AE23265955AB00AF@S0MSMAIL112.arc.local>" "<20170613112638.axsgfjy5ntrzylb3@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3469 invoked by uid 550); 13 Jun 2017 14:25:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1850 invoked from network); 13 Jun 2017 12:32:23 -0000
Thread-Topic: [oss-security] Vixie/ISC Cron group crontab to root escalation
Thread-Index: AQHS5Df4Gq0vG1HiKUmofplEgRmF9KIit0ng
Message-ID: <2ECE9D9EEF1F524185270138AE23265955AB0414@S0MSMAIL112.arc.local>
References: <2ECE9D9EEF1F524185270138AE23265955AB00AF@S0MSMAIL112.arc.local>
 <20170613112638.axsgfjy5ntrzylb3@jwilk.net>
In-Reply-To: <20170613112638.axsgfjy5ntrzylb3@jwilk.net>
Accept-Language: en-US, de-AT
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.249.121]
Content-Type: multipart/signed; micalg=2.16.840.1.101.3.4.2.1;
	protocol="application/x-pkcs7-signature";
	boundary="----=_NextPart_000_00AD_01D2E451.D6FE7550"
MIME-Version: 1.0
Date: Tue, 13 Jun 2017 12:32:10 +0000
From: Fiedler Roman <Roman.Fiedler@ait.ac.at>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Vixie/ISC Cron group crontab to root escalation
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------=_NextPart_000_00AD_01D2E451.D6FE7550
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: 7bit

> From: Jakub Wilk [mailto:jwilk@jwilk.net]
>
> * Fiedler Roman <Roman.Fiedler@ait.ac.at>, 2017-06-13, 07:45:
> >>>Thanks, perhaps a comment in the code can't hurt...
> >>>Or even O_NODEV which does not exist, or O_PATH (linux only)..
> >>
> >>As there is a O_DIRECTORY it would be more orthogonal to have
> O_REGULAR (open
> >>only a regular file). But that becomes more and more icky as we're
> running
> >>out of 32 bits of O_*)
> >
> >Why not stop that at all and have an O_POLICY,
>
> With help of O_PATH, you can implement almost any sanity check in
> userspace.
> No need to reinvent this particular wheel.

Well, partially: what O_PATH can do, you could also do before O_PATH using 
repeated single-level open(NO_FOLLOW)/fstat-checks. So you had to do all the 
verification by yourself. fts [1] does that the same in a secure manner. But 
often implementation was too complex using syscalls or not easy to do using 
the library, so not many programmers did it. The resulting programs were more 
prone to be vulnerable.

With O_PATH/fts und own fstat calls, you can also do all the things mentioned 
above, but again, I fear, not many will use them, there for convenience 
syscalls/libraries should help out.

So decision could be a) do nothing, b) blow up libc or c) blow up syscall 
interface. Specific libraries or programming best practices might not be easy 
enough to be applied.

LG Roman

[1] https://www.freebsd.org/cgi/man.cgi?query=fts&sektion=3

------=_NextPart_000_00AD_01D2E451.D6FE7550
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
DxcNMTcwNjEzMTIzMjA5WjAvBgkqhkiG9w0BCQQxIgQgbHOMWy5ioYrzqKZc
H+bHepdAilmCqiNGaGkpACB8c90wgZMGCSqGSIb3DQEJDzGBhTCBgjALBglg
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
698wDQYJKoZIhvcNAQEBBQAEggIAFcXqMBDzQmtGaEdenUnbdtaQKQ3LOVba
vx+IqH4i5hy4N6KuWUoTBHdCDyShBS+3Y6v4uPAun8QHrAh0y8TyeBjTacef
VgKB967+7H3vZu9j1CASjUmxCAVZ7E7iLretGgGV78HbKGz1WDB8RsHS+ueI
L721mJxfQhdl9jZ1fv4igkM3dLmpWtj00/XMUakeujoWWAvBBYwXS2SJWXMG
Ilk11cPfWO6XAspwAbZsceCzWNuZPcRpI7Mj5RPE7vcma6sIwFqTK9PJD69c
iAqna5y4pEaU76yuZh6Zpe9u5+lREx+9d+JDjyzjG5BvS/EwLZCbxcnQfPy8
dmFSKWiasLg/c8dbfCZQIcfzRS3lq1tHmbkcfA1KpcADRCPnMwRO1Pvc/wx2
Nk1Gnx7wZ3yqE666GBKpz9LAsucvYIQmfpOdEzn3y+zJxVGTozrmbB2bfyPH
VjMKYXCO2b88egV2JR9qtlSLKbRZZ0vqjsyDNPliQwtyVdboFFoBKYugDiYz
KyjpiMzTQ9psA3t7+qgDySMj0QeL7nImPS0YGnURLMIt4PBBt1XGgFW9GJce
Zb/Jyy59U/tqW8zC0C53d4KoM04clPeDe7uAyHD2CL2Th8hmY2PV8nivUvYk
efMk0sglgUfm9HK4UXIOigmE61PAwr3l9ytx7vPZM9HLB5cOitkAAAAAAAA=

------=_NextPart_000_00AD_01D2E451.D6FE7550--
