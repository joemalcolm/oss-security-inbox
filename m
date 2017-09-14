X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8129" "Thursday" "14" "September" "2017" "11:51:42" "+0200" "Dr. Thomas Orgis" "thomas.orgis@uni-hamburg.de" "<20170914115142.1d481ea0@cortex.rrz.uni-hamburg.de>" "157" "Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)" nil nil nil "9" "2017091409:51:42" "[oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)" (number mark "U       thomas.orgis Sep 14  157/8129  " thread-indent "\"Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)\"\n") "<4196795.4HvRXNqvRy@wanheda>" ("<427445.19640425-sendEmail@localhost>" "<20170914072445.bq2r6vtcnxietd4j@perpetual.pseudorandom.co.uk>" "<4196795.4HvRXNqvRy@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29714 invoked by uid 550); 14 Sep 2017 10:46:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26352 invoked from network); 14 Sep 2017 09:52:47 -0000
X-Virus-Scanned: by University of Hamburg ( RRZ / mgw03.rrz.uni-hamburg.de )
X-Virus-Scanned: by University of Hamburg ( RRZ / mh01.rrz.uni-hamburg.de )
Date: Thu, 14 Sep 2017 11:51:42 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
To: oss-security@lists.openwall.com
Message-ID: <20170914115142.1d481ea0@cortex.rrz.uni-hamburg.de>
In-Reply-To: <4196795.4HvRXNqvRy@wanheda>
References: <427445.19640425-sendEmail@localhost>
	<20170914072445.bq2r6vtcnxietd4j@perpetual.pseudorandom.co.uk>
	<4196795.4HvRXNqvRy@wanheda>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=SHA256;
 boundary="Sig_/b=g5Dby/CF1O_sHvMQFIHVp";
 protocol="application/pkcs7-signature"
Subject: Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer
 (mpglibDBL/interface.c)

--Sig_/b=g5Dby/CF1O_sHvMQFIHVp
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Am Thu, 14 Sep 2017 09:51:36 +0200
schrieb Agostino Sarubbo <ago@gentoo.org>:

> Anwyay I agree with you that is time to drop the packages.

I disagree. I am considering cleaning up mp3gain and omitting nearly
all of the vulnerabilities by removing the decoder fork. Reason: rgain
does not do what mp3gain did. Mp3gain can directly modify the MPEG
frames so that the gain is changed also for decoders that do not
support the added metadata (it additionally stores metadata to be able
to revert the changes).

While I am not regularily using this myself, I do think that it's a
nifty hack that should not disappear. Maybe it can re-enter distros if
it does not rely on an outdated internal decoder =E2=80=A6=20

This is becoming a bit off-topic =E2=80=A6 but I just wanted to note that t=
he
bug reports do serve a purpose in alerting me to that other copy of
mpg123 code in the wild.


Alrighty then,

Thomas

--=20
Dr. Thomas Orgis
Universit=C3=A4t Hamburg
RRZ / Basis-Infrastruktur / HPC
Schl=C3=BCterstr. 70
20146 Hamburg
Tel.: 040/42838 8826
Fax: 040/428 38 6270

--Sig_/b=g5Dby/CF1O_sHvMQFIHVp
Content-Type: application/pkcs7-signature; name=smime.p7s
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=smime.p7s

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCCEKIwggTVMIIDvaADAgECAghQTsb1PRG0ZDANBgkqhkiG9w0B
AQsFADBxMQswCQYDVQQGEwJERTEcMBoGA1UEChMTRGV1dHNjaGUgVGVsZWtv
bSBBRzEfMB0GA1UECxMWVC1UZWxlU2VjIFRydXN0IENlbnRlcjEjMCEGA1UE
AxMaRGV1dHNjaGUgVGVsZWtvbSBSb290IENBIDIwHhcNMTQwNzIyMTIwODI2
WhcNMTkwNzA5MjM1OTAwWjBaMQswCQYDVQQGEwJERTETMBEGA1UEChMKREZO
LVZlcmVpbjEQMA4GA1UECxMHREZOLVBLSTEkMCIGA1UEAxMbREZOLVZlcmVp
biBQQ0EgR2xvYmFsIC0gRzAxMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
CgKCAQEA6ZvDZ4X5Da71jVTDllA1PWLpbkztlNcAW5UidNQg6zSP1uzAMQQL
mYHiphTSUqAoI4SLdIkEXlvg4njBeMsWyyg1OXstkEXQ7aAAeny/Sg4bAMOG
6VwrMRF7DPOCJEOMHDiLamgAmu7cT3ir0sYTm3at7t4m6O8Br3QPwQmi9mvO
vdPNFDBP9eXjpMhim4IaAycwDQJlYE3t0QkjKpY1WCfTdsZxtpAdxO3/NYZ9
bzOz2w/FEcKKg6GUXUFr2NIQ9Uz9ylGs2b3vkoO72uuLFlZWQ8/h1RM9ph8n
MM1JVNvJEzSacXXFbOqnC5j5IZ0nrz6jOTlIaoytyZn7wxLyvQIDAQABo4IB
hjCCAYIwDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBRJt8bP6D0ff+pEexMp
9/EKcD7eZDAfBgNVHSMEGDAWgBQxw3kbuvVT1xfgiXotF2wKsyudMzASBgNV
HRMBAf8ECDAGAQH/AgECMGIGA1UdIARbMFkwEQYPKwYBBAGBrSGCLAEBBAIC
MBEGDysGAQQBga0hgiwBAQQDADARBg8rBgEEAYGtIYIsAQEEAwEwDwYNKwYB
BAGBrSGCLAEBBDANBgsrBgEEAYGtIYIsHjA+BgNVHR8ENzA1MDOgMaAvhi1o
dHRwOi8vcGtpMDMzNi50ZWxlc2VjLmRlL3JsL0RUX1JPT1RfQ0FfMi5jcmww
eAYIKwYBBQUHAQEEbDBqMCwGCCsGAQUFBzABhiBodHRwOi8vb2NzcDAzMzYu
dGVsZXNlYy5kZS9vY3NwcjA6BggrBgEFBQcwAoYuaHR0cDovL3BraTAzMzYu
dGVsZXNlYy5kZS9jcnQvRFRfUk9PVF9DQV8yLmNlcjANBgkqhkiG9w0BAQsF
AAOCAQEAYyAo/ZwhhnK+OUZZOTIlvKkBmw3Myn1BnIZtCm4ssxNZdbEzkhth
Jxb/w7LVNYL7hCoBSb1mu2YvssIGXW4/buMBWlvKQ2NclbbhMacf1QdfTeZl
gk4y+cN8ekvNTVx07iHydQLsUj7SyWrTkCNuSWc1vn9NVqTszC/Pt6GXqHI+
ybxA1lqkCD3WvILDt7cyjrEsjmpttzUCGc/1OURYY6ckABCwu/xOr24vOLul
V0k/2G5QbyyXltwdRpplic+uzPLl2Z9Tsz6hL5Kp2AvGhB8Exuse6J99tXul
AvEkxSRjETTMWpMgKnmIOiVCkKllO3yG0xIVIyn8LNrMOVtUFzCCBZAwggR4
oAMCAQICBxekJIxy3jAwDQYJKoZIhvcNAQELBQAwWjELMAkGA1UEBhMCREUx
EzARBgNVBAoTCkRGTi1WZXJlaW4xEDAOBgNVBAsTB0RGTi1QS0kxJDAiBgNV
BAMTG0RGTi1WZXJlaW4gUENBIEdsb2JhbCAtIEcwMTAeFw0xNDA1MjcxNDUz
NDhaFw0xOTA3MDkyMzU5MDBaMIGwMQswCQYDVQQGEwJERTEQMA4GA1UECBMH
SGFtYnVyZzEQMA4GA1UEBxMHSGFtYnVyZzEdMBsGA1UEChMUVW5pdmVyc2l0
YWV0IEhhbWJ1cmcxITAfBgNVBAsTGFJlZ2lvbmFsZXMgUmVjaGVuemVudHJ1
bTEVMBMGA1UEAxMMVUhIIENBIC0gRzAyMSQwIgYJKoZIhvcNAQkBFhV1aGgt
Y2FAdW5pLWhhbWJ1cmcuZGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
AoIBAQC9cJqgL8A8Sogf7u7EjbM2qEdN3S4JE7cHe7LuBbWE4c0/rBxjxChY
BKUNlSzmlx4MulrkTtIjqmPY+tX4I/2vJGhxP4EksW+rMmjm/8xz1NanCk4Q
7EhD9btiGHgsEZc0SQ4iWWCsV/zRhptvlNvas67IDz7fdyU3lp1nZmMgO1y5
liQxMMhBtZ3PxLQBapWvOZ5t6cOagvjfAmiVAC4ViWTQPwy5n7BvwtqrZ5NE
iX+BbRC+akn2DepSWE2DxaZNQtX1/J2yAOhqZGM83KazqlE3ycL0o5AKhJjO
t7R5/5bgggHVVxjI6qGx7Y6NJ/MNJJaO8r/H3OqlLRVLHNLvAgMBAAGjggIC
MIIB/jASBgNVHRMBAf8ECDAGAQH/AgEBMA4GA1UdDwEB/wQEAwIBBjARBgNV
HSAECjAIMAYGBFUdIAAwHQYDVR0OBBYEFCagagGo//wS6/cUiePFMDbRLjmy
MB8GA1UdIwQYMBaAFEm3xs/oPR9/6kR7Eyn38QpwPt5kMCAGA1UdEQQZMBeB
FXVoaC1jYUB1bmktaGFtYnVyZy5kZTCBiAYDVR0fBIGAMH4wPaA7oDmGN2h0
dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtY2EvcHViL2NybC9j
YWNybC5jcmwwPaA7oDmGN2h0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZ2xvYmFs
LXJvb3QtY2EvcHViL2NybC9jYWNybC5jcmwwgdcGCCsGAQUFBwEBBIHKMIHH
MDMGCCsGAQUFBzABhidodHRwOi8vb2NzcC5wY2EuZGZuLmRlL09DU1AtU2Vy
dmVyL09DU1AwRwYIKwYBBQUHMAKGO2h0dHA6Ly9jZHAxLnBjYS5kZm4uZGUv
Z2xvYmFsLXJvb3QtY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0MEcGCCsGAQUF
BzAChjtodHRwOi8vY2RwMi5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWNhL3B1
Yi9jYWNlcnQvY2FjZXJ0LmNydDANBgkqhkiG9w0BAQsFAAOCAQEARPA9tuuX
u5+gT949FznUDC4d8oX7nyyjkvZP9iHuRKRZkzBU7z3ZMMXpePIJSMDtNtFI
2kNTAsWOTZFu/K5olU2TEh+cBWyw6y1kU4b8z1jTcAK0rZplpMdBQkBkeKK1
QxiN6GqvUyVPHgM/EJwaLolpqkaPfSo3an0t9b9rAUBy/ne1MSQ/6O/bMo7W
Nvt2jAWjKRyTdlvB0NZUTr8ExYBoHx68BNmI7t1WhJHYeUx0gV0QxlQPbGyW
L2IQoK4x7LDg670k564pFllzfq1ICZvq/UAyoanfwIbeR5mEuCVQwGEBPW7g
9A9FnKT7kW8bCaiArO6lZpAdL+O/LGFhAzCCBjEwggUZoAMCAQICDB1WHVLR
OkxuhjOFDDANBgkqhkiG9w0BAQsFADCBsDELMAkGA1UEBhMCREUxEDAOBgNV
BAgTB0hhbWJ1cmcxEDAOBgNVBAcTB0hhbWJ1cmcxHTAbBgNVBAoTFFVuaXZl
cnNpdGFldCBIYW1idXJnMSEwHwYDVQQLExhSZWdpb25hbGVzIFJlY2hlbnpl
bnRydW0xFTATBgNVBAMTDFVISCBDQSAtIEcwMjEkMCIGCSqGSIb3DQEJARYV
dWhoLWNhQHVuaS1oYW1idXJnLmRlMB4XDTE3MDYwNjEyMjc0NloXDTE5MDcw
OTIzNTkwMFowgaExCzAJBgNVBAYTAkRFMRAwDgYDVQQIDAdIYW1idXJnMRAw
DgYDVQQHDAdIYW1idXJnMR0wGwYDVQQKDBRVbml2ZXJzaXRhZXQgSGFtYnVy
ZzEMMAoGA1UECwwDUlJaMRwwGgYDVQQLDBNCYXNpcy1JbmZyYXN0cnVrdHVy
MQwwCgYDVQQLDANIUEMxFTATBgNVBAMMDFRob21hcyBPcmdpczCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBAKQnfgQgOhlZfyvrNA4fKZM6t1xV
oQbQUx8X+pfeciVUJeTmwZoR6brif1lLZtvXQ19A8Wg1wBXkdQZuPA3Uxmdv
VzLNl8EMmAFYNCNz5sL74x7pkR4rHrJ/ViVRLtmYbihT9vNA5Tiz5/UkTh2M
x7SDtpJek6VxVvSxjcQ79mvYTdy7C7t/71dlzRwLjuBsvZasACiRVfsfp5Dq
ntg5KNq/nYkmEkTmJfnQM1tQS2VqEG/RsynnwawUDuKsgLm/ogsh4Ns4LTuX
Fd1LYV+jOTnqTdEQLHg0WuBqm2mDvP8pEqWZbJwJQGTMO3glhLa4bMGLAjkE
vKaFTalRoJTHNxUCAwEAAaOCAlYwggJSMEAGA1UdIAQ5MDcwEQYPKwYBBAGB
rSGCLAEBBAMFMBEGDysGAQQBga0hgiwCAQQDATAPBg0rBgEEAYGtIYIsAQEE
MAkGA1UdEwQCMAAwDgYDVR0PAQH/BAQDAgXgMB0GA1UdJQQWMBQGCCsGAQUF
BwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUXJhoNy4ieewHKNzkwGvfl9F5LWAw
HwYDVR0jBBgwFoAUJqBqAaj//BLr9xSJ48UwNtEuObIwJgYDVR0RBB8wHYEb
dGhvbWFzLm9yZ2lzQHVuaS1oYW1idXJnLmRlMIGNBgNVHR8EgYUwgYIwP6A9
oDuGOWh0dHA6Ly9jZHAxLnBjYS5kZm4uZGUvdW5pLWhhbWJ1cmctY2EvcHVi
L2NybC9nX2NhY3JsLmNybDA/oD2gO4Y5aHR0cDovL2NkcDIucGNhLmRmbi5k
ZS91bmktaGFtYnVyZy1jYS9wdWIvY3JsL2dfY2FjcmwuY3JsMIHbBggrBgEF
BQcBAQSBzjCByzAzBggrBgEFBQcwAYYnaHR0cDovL29jc3AucGNhLmRmbi5k
ZS9PQ1NQLVNlcnZlci9PQ1NQMEkGCCsGAQUFBzAChj1odHRwOi8vY2RwMS5w
Y2EuZGZuLmRlL3VuaS1oYW1idXJnLWNhL3B1Yi9jYWNlcnQvZ19jYWNlcnQu
Y3J0MEkGCCsGAQUFBzAChj1odHRwOi8vY2RwMi5wY2EuZGZuLmRlL3VuaS1o
YW1idXJnLWNhL3B1Yi9jYWNlcnQvZ19jYWNlcnQuY3J0MA0GCSqGSIb3DQEB
CwUAA4IBAQAS9y/+XLoyhNctyBnko4YgKDMyWlPSOfKEFygLt7oQa9MQm9UJ
aebOzeGZuFPl11pjB/vj2kBc7oSuuuKIjoNDL13T1b0FK5RFoWg8YPrrEzr6
h0JrUfQM2r18sYMARpsOKxVRM6mlT2+hMkaN6swMIYbMLeZK7PQXqtKWg3oK
Cg1vGxF3bFZlhYhorJ/lSDcAbmNut45j4PqXVkrrD+zxIzswhdroZOvE8eR4
KqsqjOClsVzNOz8oPrUL5R3jBJ3E6j6XuC7JEsCLFbk3gcmbMS3eS+ue7+Qx
D10U8t05Xx0YXojEFiK8/GECYLgkpo1Gb1ROJCIGsLAFq5KXrFCNMYICgzCC
An8CAQEwgcEwgbAxCzAJBgNVBAYTAkRFMRAwDgYDVQQIEwdIYW1idXJnMRAw
DgYDVQQHEwdIYW1idXJnMR0wGwYDVQQKExRVbml2ZXJzaXRhZXQgSGFtYnVy
ZzEhMB8GA1UECxMYUmVnaW9uYWxlcyBSZWNoZW56ZW50cnVtMRUwEwYDVQQD
EwxVSEggQ0EgLSBHMDIxJDAiBgkqhkiG9w0BCQEWFXVoaC1jYUB1bmktaGFt
YnVyZy5kZQIMHVYdUtE6TG6GM4UMMA0GCWCGSAFlAwQCAQUAoIGTMBgGCSqG
SIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE3MDkxNDA5
NTE0M1owKAYJKoZIhvcNAQkPMRswGTALBglghkgBZQMEAQIwCgYIKoZIhvcN
AwcwLwYJKoZIhvcNAQkEMSIEICh8VOzE+sx6tTPGzJqfIVeGBKUU0k4xpBhL
VoncCu7zMA0GCSqGSIb3DQEBAQUABIIBADaegxqqdd/F/ElBmk1aoKRwcKWA
u+QJOQ1qzvmejNmxJ0tnf+Onky1mevFGbaa4Saw3aenlMvpM/lGMQHghZfCg
kbr2D1rfzabzUK6i+GUB4/8YsHyvKV8rzawQ5g0BP7FjbBwIfHJ/sHoBnvvP
lNGHRYU3JhbapENWplbmvhe3GUaOwOl1LjL9toWHvx7MxaITBEIrI/ka1rPP
2ggYM/ng1EKRfpyGa+2v5l/lPatf957rAGk9RDtV2AH3LwLI9uvKj2GgKD4g
DM/foUtBX+YLEQagZ4vZaFJvBcPhlGNbspd8vXDHnTHBh3BQT3yDiYzRKMa1
kEoCNS3gVhRSAewAAAAAAAA=

--Sig_/b=g5Dby/CF1O_sHvMQFIHVp--
