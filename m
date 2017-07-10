X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9993" "Monday" "10" "July" "2017" "11:42:53" "+0200" "Dr. Thomas Orgis" "thomas.orgis@uni-hamburg.de" "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>" "207" "Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" "^Date:" nil nil "7" "2017071009:42:53" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" (number mark "        thomas.orgis Jul 10  207/9993  " thread-indent "\"Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)\"\n") "<801547.452199401-sendEmail@localhost>" ("<801547.452199401-sendEmail@localhost>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16107 invoked by uid 550); 10 Jul 2017 09:45:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14106 invoked from network); 10 Jul 2017 09:43:22 -0000
X-Virus-Scanned: by University of Hamburg ( RRZ / mgw03.rrz.uni-hamburg.de )
X-Virus-Scanned: by University of Hamburg ( RRZ / mh03.rrz.uni-hamburg.de )
Message-ID: <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
In-Reply-To: <801547.452199401-sendEmail@localhost>
References: <801547.452199401-sendEmail@localhost>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=SHA256;
 boundary="Sig_/=FRbcmtYzVm_ltmcU+i3974";
 protocol="application/pkcs7-signature"
Date: Mon, 10 Jul 2017 11:42:53 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mpg123: global buffer overflow in III_i_stereo
 (layer3.c)
To: oss-security@lists.openwall.com

--Sig_/=FRbcmtYzVm_ltmcU+i3974
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Am Mon, 10 Jul 2017 09:13:07 +0000
schrieb "Agostino Sarubbo" <ago@gentoo.org>:

> Description:
> mpg123 is a fast console MPEG Audio Player and decoder library.
>=20
> The complete ASan output of the issue:
>=20
> # mpg123-mpg123 -t $FILE
> =3D=3D10588=3D=3DERROR: AddressSanitizer: global-buffer-overflow on addre=
ss 0x7f01025c5cbc at pc 0x7f010229bfe3 bp 0x7ffc988ac5b0 sp 0x7ffc988ac5a8
> READ of size 4 at 0x7f01025c5cbc thread T0

I would like to point out that this only crashes with the
AddressSanitizer. The normal effect is some bad values from adjacent
data being used in numerical computation. No segfault or the like, no
jumps depending on the values.

> Affected version:
> 1.25.0

1.25.1, too

> Fixed version:
> N/A

To be released, I hoped to also fix another lurking issue that in practice
is hidden by padding of a buffer for alignment. If I don't manage that
today, I guess I have to push out 1.25.2 as-is.

> Commit fix:
> N/A

It is fixed with subversion revision 4275.

	https://scm.orgis.org/view/mpg123/trunk/src/libmpg123/layer3.c?view=3Dpatc=
h&r1=3D4275&r2=3D4274&pathrev=3D4275

Can this info be updated? Agostino: You might want to jump to 4278,
too, as that fixes that other left shift of -1 complaint you had.

> CVE:
> CVE-2017-11126

Is this really worth a CVE, though? So far I was only able to see a
crash triggered by the AddressSanitizer. Never from a normal build. So
every build of mpg123 in the wild, except for extremely hardened
distros that build everything with GCC's sanitizers enabled for daily
use, is not affected. Are people running binaries in production with
the sanitizers on?

Thing about this specific kind of input: This is a fuzzed stream that
triggers a code path for MP3 with intensity stereo. These are really
hard to find and I was not able to produce a valid file (using the FhG
mp3enc demo, the only encoder that does i-stereo to my knowledge) that
also triggers this specific array access. So I cannot even say if this
bug causes bad output from valid input as I never observed the valid
input! For this fuzzed input data, the produced output data (sound)
will not be nice, but this is the case with and without the fix.

It's hard to see a security issue here, although of course there
technically is a buffer overflow. That is why I wanted to take some
time to possibly dig out a file that tells me that mpg123 is now
producing correct output. So far, the overflow is averted, but if we do
something sensible now cannot be tested in lack of valid test data that
uses 5 bits for scale factors with intensity stereo.


Alrighty then,

Thomas

PS: I will do some fuzzing myself to weed out any lurking issues of this
type. Found a fuzzer in my mailbox, from over 10 years ago, when this
was a thing before;-)

--=20
Dr. Thomas Orgis
Universit=C3=A4t Hamburg
RRZ / Basis-Infrastruktur / HPC
Schl=C3=BCterstr. 70
20146 Hamburg
Tel.: 040/42838 8826
Fax: 040/428 38 6270

--Sig_/=FRbcmtYzVm_ltmcU+i3974
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
SIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE3MDcxMDA5
NDI1M1owKAYJKoZIhvcNAQkPMRswGTALBglghkgBZQMEAQIwCgYIKoZIhvcN
AwcwLwYJKoZIhvcNAQkEMSIEIN7NPR/DzGKhgujdjCl3KxyCYxo7d37kAzHX
w6FJoRTmMA0GCSqGSIb3DQEBAQUABIIBAIp1xCNsC5qjqXVDCCxl09kZYuH5
Lr+Gfc1TVqZ3XJEeOylFRQBBCg6WswfzpsZ6mb0wKV+EJKmY1HlGIwCExBUI
LnWeyXtK9yMiYpz9wn9LfxufyOtV0cbQIEUAyg52SsBewlE0BJe0+wMRLRfC
Ga1X9+OO5z5IsY2vACA1dRueYjneuSJxcT6Esh5m7Z6TDE3WTfISMGyzVVjf
vZDoloU1PZ1psvcoHjDLEoHdq2zDzVmE+Z5TjTfz9KKLAk5tOImWkWzWIEBT
zUkeTihal+Fb0mPKf+wsg+WC2A29XxhOFQIs2EF3FGg6DaCPtA3tdaKuN3/C
weQpeCPaVnIL0I0AAAAAAAA=

--Sig_/=FRbcmtYzVm_ltmcU+i3974--
