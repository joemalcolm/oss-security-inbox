X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10241" "Tuesday" "11" "July" "2017" "10:02:02" "+0200" "Dr. Thomas Orgis" "thomas.orgis@uni-hamburg.de" "<20170711100202.27a42e9b@sturbolzen>" "194" "Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" "^Date:" nil nil "7" "2017071108:02:02" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" (number mark "        thomas.orgis Jul 11  194/10241 " thread-indent "\"Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)\"\n") "<308352c2-f020-aa8b-0ea7-f4cc7b14ada2@redhat.com>" ("<801547.452199401-sendEmail@localhost>" "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>" "<CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>" "<308352c2-f020-aa8b-0ea7-f4cc7b14ada2@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16295 invoked by uid 550); 11 Jul 2017 10:59:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15681 invoked from network); 11 Jul 2017 08:03:10 -0000
Message-ID: <20170711100202.27a42e9b@sturbolzen>
In-Reply-To: <308352c2-f020-aa8b-0ea7-f4cc7b14ada2@redhat.com>
References: <801547.452199401-sendEmail@localhost>
	<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
	<CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>
	<308352c2-f020-aa8b-0ea7-f4cc7b14ada2@redhat.com>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=SHA256;
 boundary="Sig_/GjOHMf./H0mZE3itlT._OFT";
 protocol="application/pkcs7-signature"
Date: Tue, 11 Jul 2017 10:02:02 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mpg123: global buffer overflow in III_i_stereo
 (layer3.c)
To: oss-security@lists.openwall.com

--Sig_/GjOHMf./H0mZE3itlT._OFT
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks to all for the clarifications.

Am Mon, 10 Jul 2017 20:24:01 -0600
schrieb Kurt Seifried <kseifried@redhat.com>:=20

> On 2017-07-10 8:04 PM, Michal Zalewski wrote:
> >> It's hard to see a security issue here=20=20
> > I'm not sure this applies here, but the use of uninitialized memory
> > can be an issue when, say, a website calls your code to convert
> > user-controlled audio (e.g., to optimize it for streaming).

Yeah, in this case it is read access spilling over to adjacent static
variables in the code. They are either contstant at compile-time or
initialised to the same values on each run.

> Heartbleed was "only" 64k (that's actually a pretty huge amount for
> sensitive data).

Here, it's 128 bytes of an adjacent table instead of the intended one
(planned for a 4-bit index, got a 5-bit one). It's bad audio being
produced, but from input that very likely was bad to begin with (still
no valid input data at hand that triggers this).

I would like the CVE description to mention that this is only Denial of
Service with something like the AddressSanitizer, as it is guaranteed
to be memory belonging to the respective process, just up to 128 bytes
off the mark. Not even heap buffers involved. Of course this was not
clear when reporting, but it's really just those 128 bytes inside
static variables in the code. My program accesses memory that belongs
to my program =E2=80=A6 unless the compiler inserts forbidden zones in ther=
e.

I am not bothered enough to dispute the CVE. In the end it's a bug and
it had to be fixed. But I won't mention the CVE in the commit message
as it's already done and you don't change history with subversion. You
will have to make do with the entry in the NEWS file on release;-)


Alrighty then,

Thomas

--=20
Dr. Thomas Orgis
Universit=C3=A4t Hamburg
RRZ / Basisinfrastruktur / HPC
Schl=C3=BCterstr. 70
20146 Hamburg
Tel.: 040/42838 8826
Fax: 040/428 38 6270

--Sig_/GjOHMf./H0mZE3itlT._OFT
Content-Type: application/pkcs7-signature; name=smime.p7s
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=smime.p7s

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCCFEUwggOfMIICh6ADAgECAgEmMA0GCSqGSIb3DQEBBQUAMHEx
CzAJBgNVBAYTAkRFMRwwGgYDVQQKExNEZXV0c2NoZSBUZWxla29tIEFHMR8w
HQYDVQQLExZULVRlbGVTZWMgVHJ1c3QgQ2VudGVyMSMwIQYDVQQDExpEZXV0
c2NoZSBUZWxla29tIFJvb3QgQ0EgMjAeFw05OTA3MDkxMjExMDBaFw0xOTA3
MDkyMzU5MDBaMHExCzAJBgNVBAYTAkRFMRwwGgYDVQQKExNEZXV0c2NoZSBU
ZWxla29tIEFHMR8wHQYDVQQLExZULVRlbGVTZWMgVHJ1c3QgQ2VudGVyMSMw
IQYDVQQDExpEZXV0c2NoZSBUZWxla29tIFJvb3QgQ0EgMjCCASIwDQYJKoZI
hvcNAQEBBQADggEPADCCAQoCggEBAKsLozXgiykUsRSFrzwQ5DlvNV1Krt3q
YY2VSfRvZKMaYGakqUAihNnUpeV4kw5oAa25TVw6ztO4qEJA38+juoJZapIb
rBya2ggrJSf5aSNH8eDrLHqb9RMC0H40fMKePABZq/XaDPUyPCusUNrWw96D
lMqoDJkyDghIVltq+9rhWFgBSV9yQTwVBgGOXa2quJO0zZ7rp+hqLVI02zrv
XHVR2tvzMfnucZgyxFQVRAz5m1Xtrd8YCKCjhopJ7lMFjxlM1d5YeZvSahxC
q8XVp89oD5bk4WGYdmHIkXzWPgDikVCH4Z0K5q2X0h3GOn3LvNoDNNWOWwH1
age3FrZuSn8CAwEAAaNCMEAwHQYDVR0OBBYEFDHDeRu69VPXF+CJei0XbAqz
K50zMA8GA1UdEwQIMAYBAf8CAQUwDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3
DQEBBQUAA4IBAQCUZFmtOWTnKesT/lrDixNXyAQk8HR3wGDjZ/vpiaaDv5aC
fG7Uwz3vnoBuuym0mHqxO1TrORdHfhqOC/wfMVkxBLLOF/Msx2I2VeIi2IlV
tJhIqmT61hw22ER4WlojOleX9XowT66fakxLK46gA+M+4KnU0nvSs6jicjyt
nv+AWeSbRbT2O7DNORmYMuXqIWGQ5DEhjjSx9y81SoUQ2ueKNyG+WWPg8oWI
MVPUVBSFcHn0LgZ3J3UvH7iK+f7Futg25IPs52W3v2Na80avgZQ31EGM1iPW
Hs/1aBtEY6Jauqc1WaHlcAWbDiNXmZQKbbo5YyiGkvMYhNj70c8FVmRXMIIE
1TCCA72gAwIBAgIIUE7G9T0RtGQwDQYJKoZIhvcNAQELBQAwcTELMAkGA1UE
BhMCREUxHDAaBgNVBAoTE0RldXRzY2hlIFRlbGVrb20gQUcxHzAdBgNVBAsT
FlQtVGVsZVNlYyBUcnVzdCBDZW50ZXIxIzAhBgNVBAMTGkRldXRzY2hlIFRl
bGVrb20gUm9vdCBDQSAyMB4XDTE0MDcyMjEyMDgyNloXDTE5MDcwOTIzNTkw
MFowWjELMAkGA1UEBhMCREUxEzARBgNVBAoTCkRGTi1WZXJlaW4xEDAOBgNV
BAsTB0RGTi1QS0kxJDAiBgNVBAMTG0RGTi1WZXJlaW4gUENBIEdsb2JhbCAt
IEcwMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOmbw2eF+Q2u
9Y1Uw5ZQNT1i6W5M7ZTXAFuVInTUIOs0j9bswDEEC5mB4qYU0lKgKCOEi3SJ
BF5b4OJ4wXjLFssoNTl7LZBF0O2gAHp8v0oOGwDDhulcKzERewzzgiRDjBw4
i2poAJru3E94q9LGE5t2re7eJujvAa90D8EJovZrzr3TzRQwT/Xl46TIYpuC
GgMnMA0CZWBN7dEJIyqWNVgn03bGcbaQHcTt/zWGfW8zs9sPxRHCioOhlF1B
a9jSEPVM/cpRrNm975KDu9rrixZWVkPP4dUTPaYfJzDNSVTbyRM0mnF1xWzq
pwuY+SGdJ68+ozk5SGqMrcmZ+8MS8r0CAwEAAaOCAYYwggGCMA4GA1UdDwEB
/wQEAwIBBjAdBgNVHQ4EFgQUSbfGz+g9H3/qRHsTKffxCnA+3mQwHwYDVR0j
BBgwFoAUMcN5G7r1U9cX4Il6LRdsCrMrnTMwEgYDVR0TAQH/BAgwBgEB/wIB
AjBiBgNVHSAEWzBZMBEGDysGAQQBga0hgiwBAQQCAjARBg8rBgEEAYGtIYIs
AQEEAwAwEQYPKwYBBAGBrSGCLAEBBAMBMA8GDSsGAQQBga0hgiwBAQQwDQYL
KwYBBAGBrSGCLB4wPgYDVR0fBDcwNTAzoDGgL4YtaHR0cDovL3BraTAzMzYu
dGVsZXNlYy5kZS9ybC9EVF9ST09UX0NBXzIuY3JsMHgGCCsGAQUFBwEBBGww
ajAsBggrBgEFBQcwAYYgaHR0cDovL29jc3AwMzM2LnRlbGVzZWMuZGUvb2Nz
cHIwOgYIKwYBBQUHMAKGLmh0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvY3J0
L0RUX1JPT1RfQ0FfMi5jZXIwDQYJKoZIhvcNAQELBQADggEBAGMgKP2cIYZy
vjlGWTkyJbypAZsNzMp9QZyGbQpuLLMTWXWxM5IbYScW/8Oy1TWC+4QqAUm9
ZrtmL7LCBl1uP27jAVpbykNjXJW24TGnH9UHX03mZYJOMvnDfHpLzU1cdO4h
8nUC7FI+0slq05AjbklnNb5/TVak7Mwvz7ehl6hyPsm8QNZapAg91ryCw7e3
Mo6xLI5qbbc1AhnP9TlEWGOnJAAQsLv8Tq9uLzi7pVdJP9huUG8sl5bcHUaa
ZYnPrszy5dmfU7M+oS+SqdgLxoQfBMbrHuiffbV7pQLxJMUkYxE0zFqTICp5
iDolQpCpZTt8htMSFSMp/CzazDlbVBcwggWQMIIEeKADAgECAgcXpCSMct4w
MA0GCSqGSIb3DQEBCwUAMFoxCzAJBgNVBAYTAkRFMRMwEQYDVQQKEwpERk4t
VmVyZWluMRAwDgYDVQQLEwdERk4tUEtJMSQwIgYDVQQDExtERk4tVmVyZWlu
IFBDQSBHbG9iYWwgLSBHMDEwHhcNMTQwNTI3MTQ1MzQ4WhcNMTkwNzA5MjM1
OTAwWjCBsDELMAkGA1UEBhMCREUxEDAOBgNVBAgTB0hhbWJ1cmcxEDAOBgNV
BAcTB0hhbWJ1cmcxHTAbBgNVBAoTFFVuaXZlcnNpdGFldCBIYW1idXJnMSEw
HwYDVQQLExhSZWdpb25hbGVzIFJlY2hlbnplbnRydW0xFTATBgNVBAMTDFVI
SCBDQSAtIEcwMjEkMCIGCSqGSIb3DQEJARYVdWhoLWNhQHVuaS1oYW1idXJn
LmRlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvXCaoC/APEqI
H+7uxI2zNqhHTd0uCRO3B3uy7gW1hOHNP6wcY8QoWASlDZUs5pceDLpa5E7S
I6pj2PrV+CP9ryRocT+BJLFvqzJo5v/Mc9TWpwpOEOxIQ/W7Yhh4LBGXNEkO
IllgrFf80Yabb5Tb2rOuyA8+33clN5adZ2ZjIDtcuZYkMTDIQbWdz8S0AWqV
rzmebenDmoL43wJolQAuFYlk0D8MuZ+wb8Laq2eTRIl/gW0QvmpJ9g3qUlhN
g8WmTULV9fydsgDoamRjPNyms6pRN8nC9KOQCoSYzre0ef+W4IIB1VcYyOqh
se2OjSfzDSSWjvK/x9zqpS0VSxzS7wIDAQABo4ICAjCCAf4wEgYDVR0TAQH/
BAgwBgEB/wIBATAOBgNVHQ8BAf8EBAMCAQYwEQYDVR0gBAowCDAGBgRVHSAA
MB0GA1UdDgQWBBQmoGoBqP/8Euv3FInjxTA20S45sjAfBgNVHSMEGDAWgBRJ
t8bP6D0ff+pEexMp9/EKcD7eZDAgBgNVHREEGTAXgRV1aGgtY2FAdW5pLWhh
bWJ1cmcuZGUwgYgGA1UdHwSBgDB+MD2gO6A5hjdodHRwOi8vY2RwMS5wY2Eu
ZGZuLmRlL2dsb2JhbC1yb290LWNhL3B1Yi9jcmwvY2FjcmwuY3JsMD2gO6A5
hjdodHRwOi8vY2RwMi5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWNhL3B1Yi9j
cmwvY2FjcmwuY3JsMIHXBggrBgEFBQcBAQSByjCBxzAzBggrBgEFBQcwAYYn
aHR0cDovL29jc3AucGNhLmRmbi5kZS9PQ1NQLVNlcnZlci9PQ1NQMEcGCCsG
AQUFBzAChjtodHRwOi8vY2RwMS5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWNh
L3B1Yi9jYWNlcnQvY2FjZXJ0LmNydDBHBggrBgEFBQcwAoY7aHR0cDovL2Nk
cDIucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1jYS9wdWIvY2FjZXJ0L2NhY2Vy
dC5jcnQwDQYJKoZIhvcNAQELBQADggEBAETwPbbrl7ufoE/ePRc51AwuHfKF
+58so5L2T/Yh7kSkWZMwVO892TDF6XjyCUjA7TbRSNpDUwLFjk2RbvyuaJVN
kxIfnAVssOstZFOG/M9Y03ACtK2aZaTHQUJAZHiitUMYjehqr1MlTx4DPxCc
Gi6JaapGj30qN2p9LfW/awFAcv53tTEkP+jv2zKO1jb7dowFoykck3ZbwdDW
VE6/BMWAaB8evATZiO7dVoSR2HlMdIFdEMZUD2xsli9iEKCuMeyw4Ou9JOeu
KRZZc36tSAmb6v1AMqGp38CG3keZhLglUMBhAT1u4PQPRZyk+5FvGwmogKzu
pWaQHS/jvyxhYQMwggYxMIIFGaADAgECAgwdVh1S0TpMboYzhQwwDQYJKoZI
hvcNAQELBQAwgbAxCzAJBgNVBAYTAkRFMRAwDgYDVQQIEwdIYW1idXJnMRAw
DgYDVQQHEwdIYW1idXJnMR0wGwYDVQQKExRVbml2ZXJzaXRhZXQgSGFtYnVy
ZzEhMB8GA1UECxMYUmVnaW9uYWxlcyBSZWNoZW56ZW50cnVtMRUwEwYDVQQD
EwxVSEggQ0EgLSBHMDIxJDAiBgkqhkiG9w0BCQEWFXVoaC1jYUB1bmktaGFt
YnVyZy5kZTAeFw0xNzA2MDYxMjI3NDZaFw0xOTA3MDkyMzU5MDBaMIGhMQsw
CQYDVQQGEwJERTEQMA4GA1UECAwHSGFtYnVyZzEQMA4GA1UEBwwHSGFtYnVy
ZzEdMBsGA1UECgwUVW5pdmVyc2l0YWV0IEhhbWJ1cmcxDDAKBgNVBAsMA1JS
WjEcMBoGA1UECwwTQmFzaXMtSW5mcmFzdHJ1a3R1cjEMMAoGA1UECwwDSFBD
MRUwEwYDVQQDDAxUaG9tYXMgT3JnaXMwggEiMA0GCSqGSIb3DQEBAQUAA4IB
DwAwggEKAoIBAQCkJ34EIDoZWX8r6zQOHymTOrdcVaEG0FMfF/qX3nIlVCXk
5sGaEem64n9ZS2bb10NfQPFoNcAV5HUGbjwN1MZnb1cyzZfBDJgBWDQjc+bC
++Me6ZEeKx6yf1YlUS7ZmG4oU/bzQOU4s+f1JE4djMe0g7aSXpOlcVb0sY3E
O/Zr2E3cuwu7f+9XZc0cC47gbL2WrAAokVX7H6eQ6p7YOSjav52JJhJE5iX5
0DNbUEtlahBv0bMp58GsFA7irIC5v6ILIeDbOC07lxXdS2Ffozk56k3RECx4
NFrgaptpg7z/KRKlmWycCUBkzDt4JYS2uGzBiwI5BLymhU2pUaCUxzcVAgMB
AAGjggJWMIICUjBABgNVHSAEOTA3MBEGDysGAQQBga0hgiwBAQQDBTARBg8r
BgEEAYGtIYIsAgEEAwEwDwYNKwYBBAGBrSGCLAEBBDAJBgNVHRMEAjAAMA4G
A1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQw
HQYDVR0OBBYEFFyYaDcuInnsByjc5MBr35fReS1gMB8GA1UdIwQYMBaAFCag
agGo//wS6/cUiePFMDbRLjmyMCYGA1UdEQQfMB2BG3Rob21hcy5vcmdpc0B1
bmktaGFtYnVyZy5kZTCBjQYDVR0fBIGFMIGCMD+gPaA7hjlodHRwOi8vY2Rw
MS5wY2EuZGZuLmRlL3VuaS1oYW1idXJnLWNhL3B1Yi9jcmwvZ19jYWNybC5j
cmwwP6A9oDuGOWh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvdW5pLWhhbWJ1cmct
Y2EvcHViL2NybC9nX2NhY3JsLmNybDCB2wYIKwYBBQUHAQEEgc4wgcswMwYI
KwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1TZXJ2ZXIv
T0NTUDBJBggrBgEFBQcwAoY9aHR0cDovL2NkcDEucGNhLmRmbi5kZS91bmkt
aGFtYnVyZy1jYS9wdWIvY2FjZXJ0L2dfY2FjZXJ0LmNydDBJBggrBgEFBQcw
AoY9aHR0cDovL2NkcDIucGNhLmRmbi5kZS91bmktaGFtYnVyZy1jYS9wdWIv
Y2FjZXJ0L2dfY2FjZXJ0LmNydDANBgkqhkiG9w0BAQsFAAOCAQEAEvcv/ly6
MoTXLcgZ5KOGICgzMlpT0jnyhBcoC7e6EGvTEJvVCWnmzs3hmbhT5ddaYwf7
49pAXO6ErrriiI6DQy9d09W9BSuURaFoPGD66xM6+odCa1H0DNq9fLGDAEab
DisVUTOppU9voTJGjerMDCGGzC3mSuz0F6rSloN6CgoNbxsRd2xWZYWIaKyf
5Ug3AG5jbreOY+D6l1ZK6w/s8SM7MIXa6GTrxPHkeCqrKozgpbFczTs/KD61
C+Ud4wSdxOo+l7guyRLAixW5N4HJmzEt3kvrnu/kMQ9dFPLdOV8dGF6IxBYi
vPxhAmC4JKaNRm9UTiQiBrCwBauSl6xQjTGCAoMwggJ/AgEBMIHBMIGwMQsw
CQYDVQQGEwJERTEQMA4GA1UECBMHSGFtYnVyZzEQMA4GA1UEBxMHSGFtYnVy
ZzEdMBsGA1UEChMUVW5pdmVyc2l0YWV0IEhhbWJ1cmcxITAfBgNVBAsTGFJl
Z2lvbmFsZXMgUmVjaGVuemVudHJ1bTEVMBMGA1UEAxMMVUhIIENBIC0gRzAy
MSQwIgYJKoZIhvcNAQkBFhV1aGgtY2FAdW5pLWhhbWJ1cmcuZGUCDB1WHVLR
OkxuhjOFDDANBglghkgBZQMEAgEFAKCBkzAYBgkqhkiG9w0BCQMxCwYJKoZI
hvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNzA3MTEwODAyMDJaMCgGCSqGSIb3
DQEJDzEbMBkwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMC8GCSqGSIb3DQEJ
BDEiBCDlUNDhkhfSQ0duzRjejIdirrWoZqm/WPE2NZ8DaYyZmTANBgkqhkiG
9w0BAQEFAASCAQAvvAABpzyf0CwfSx8Jz8Uj/1dIU3uNwiLJHqzmj9+7Aoy4
eIqlnBy5pV3P4053uPLw/1GDmA8VURIwY5Nsq5NO3E9hZ7mlWlqyiWbqyuhg
bTDttTNOZVi4Mmfik/foFqU4mM9FLVA5DZcR8So0ePdlWDCwOgjpZwvXFkXH
XMYVtaDxv5Yn2gFZhMaGDK8R/v2MWleh4/qFKJ2IzlgiTQGuZLmFwl3xpMJJ
lCuN58f9LlMRqCekF0JVCw57F8p+JcebWC3xj4r6kzjNXliY8Hq6KYNX/Zu/
cUROP00ffNec6ylWGyNRTOrudCULFczApQtZEaoY3yyHmfjFQ4sxieZKAAAA
AAAA

--Sig_/GjOHMf./H0mZE3itlT._OFT--
