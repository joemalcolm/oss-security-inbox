X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8996" "Tuesday" "11" "July" "2017" "15:50:08" "+0200" "Dr. Thomas Orgis" "thomas.orgis@uni-hamburg.de" "<20170711155008.18573f85@cortex.rrz.uni-hamburg.de>" "181" "Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" "^Cc:" nil nil "7" "2017071113:50:08" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" (number mark "        thomas.orgis Jul 11  181/8996  " thread-indent "\"Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)\"\n") "<62d1bbfa-25f2-427c-e5ca-8edadc525800@thiem.email>" ("<801547.452199401-sendEmail@localhost>" "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>" "<CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>" "<308352c2-f020-aa8b-0ea7-f4cc7b14ada2@redhat.com>" "<20170711100202.27a42e9b@sturbolzen>" "<62d1bbfa-25f2-427c-e5ca-8edadc525800@thiem.email>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5182 invoked by uid 550); 11 Jul 2017 13:56:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32448 invoked from network); 11 Jul 2017 13:50:36 -0000
X-Virus-Scanned: by University of Hamburg ( RRZ / mgw01.rrz.uni-hamburg.de )
X-Virus-Scanned: by University of Hamburg ( RRZ / mh03.rrz.uni-hamburg.de )
Message-ID: <20170711155008.18573f85@cortex.rrz.uni-hamburg.de>
In-Reply-To: <62d1bbfa-25f2-427c-e5ca-8edadc525800@thiem.email>
References: <801547.452199401-sendEmail@localhost>
	<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
	<CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>
	<308352c2-f020-aa8b-0ea7-f4cc7b14ada2@redhat.com>
	<20170711100202.27a42e9b@sturbolzen>
	<62d1bbfa-25f2-427c-e5ca-8edadc525800@thiem.email>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=SHA256;
 boundary="Sig_/m=u40aqb3BCQuAICcYVPbjV";
 protocol="application/pkcs7-signature"
Cc: oss-security@lists.openwall.com
Date: Tue, 11 Jul 2017 15:50:08 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mpg123: global buffer overflow in III_i_stereo
 (layer3.c)
To: Jonas Thiem <jonas@thiem.email>

--Sig_/m=u40aqb3BCQuAICcYVPbjV
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Am Tue, 11 Jul 2017 14:59:09 +0200
schrieb Jonas Thiem <jonas@thiem.email>:

> On 11.07.2017 10:02, Dr. Thomas Orgis wrote:
> > My program accesses memory that belongs
> > to my program =E2=80=A6 unless the compiler inserts forbidden zones in =
there.=20=20
>=20
> So why do you know for sure that no program would store private keys or
> other sensitive data there? Or is this only static data by the mp3
> library itself?

I am speaking of memory allocated for static variables inside the
library we are talking about. This is in a source file of the lib:

static real pow1_1[2][16],pow2_1[2][16],pow1_2[2][16],pow2_2[2][16];=20

struct bandInfoStruct
{
        unsigned short longIdx[23];
        unsigned char longDiff[22];
        unsigned short shortIdx[14];
        unsigned char shortDiff[13];
};

static const struct bandInfoStruct bandInfo[9] =3D {{
{0,4,8,12,16,20,24,30,36,44,52,62,74, 90,110,134,162,196,238,288,342,418,57=
6},
{4,4,4,4,4,4,6,6,8, 8,10,12,16,20,24,28,34,42,50,54, 76,158},
{0,4*3,8*3,12*3,16*3,22*3,30*3,40*3,52*3,66*3, 84*3,106*3,136*3,192*3},
{4,4,4,4,6,8,10,12,14,18,22,30,56}


The bug is that accesses to the pow arrays, at worst pow_2_2, can happen
with 31 in the last index instead of 15. You squarely land up to 128
bytes (for real=3D=3Dfloat) into the bandInfo array. Not sure if one could
trigger a floating point exception with the values of bandInfo (I see
only floating point representatiosn of zero in there with a qick test)
=E2=80=A6 but I do not see disclosure of any secrets.

Anyhow, we're generating lots of noise over an issue that of course is
fixed now with the released mpg123-1.25.2. Regardless on how serious
you think it is, the upgrade is of course encouraged. Moving on to new
bugs =E2=80=A6


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

--Sig_/m=u40aqb3BCQuAICcYVPbjV
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
SIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE3MDcxMTEz
NTAwOFowKAYJKoZIhvcNAQkPMRswGTALBglghkgBZQMEAQIwCgYIKoZIhvcN
AwcwLwYJKoZIhvcNAQkEMSIEIDBzsoVyqaxveQYMbY+oX/QW66DUR/8Sbin4
552xz1KQMA0GCSqGSIb3DQEBAQUABIIBAEncaFK/cZ82dXZVW13ZslIib0Vj
Re2B6SH5LzyEv5H3pgAg2jz74kn8zAipy2ptqGu7PYc5BltNkIXivmPJuKTN
KjUwAGcQk52Ijh/yQDI/HfohRDLUuQ4VeGAcMP/wWZZfYG2y5Pa5lEhCfy+o
NmRq03ArvA8gWXZQgDWB2Er3950HPzk/eQeyqJ6thhHEa9UnijysPLehLPWN
eZuvufSLJzwkkH1dwndgkcNxOStkOAqH83qh/wkirqoordgR0durg+ZHfEWu
2+osWPNBUjCoBXVo6nflKbBCnzRZbkt7UOhpJnMt+n4P2EcKvDI0BbZqJvWs
seko61YHgBjrWe4AAAAAAAA=

--Sig_/m=u40aqb3BCQuAICcYVPbjV--
