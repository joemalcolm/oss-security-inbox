X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8848" "Wednesday" "10" "June" "2015" "16:29:34" "+0200" "Sebastian Wolfgang Kraemer | HSASec" "Sebastian.Kraemer@HS-Augsburg.de" "<557849CE.3050203@HS-Augsburg.de>" "175" "[oss-security] CVE Request: Arbitrary file upload in Wordpress 4.1.1" nil nil nil "6" "2015061014:29:34" "[oss-security] CVE Request: Arbitrary file upload in Wordpress 4.1.1" (number mark "U       Sebastian.Kr Jun 10  175/8848  " thread-indent "\"[oss-security] CVE Request: Arbitrary file upload in Wordpress 4.1.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3510 invoked by uid 550); 10 Jun 2015 21:21:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14282 invoked from network); 10 Jun 2015 14:29:45 -0000
X-Virus-Scanned: Debian amavisd-new at hs-augsburg.de
Message-ID: <557849CE.3050203@HS-Augsburg.de>
Date: Wed, 10 Jun 2015 16:29:34 +0200
From: Sebastian Wolfgang Kraemer | HSASec <Sebastian.Kraemer@HS-Augsburg.de>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: cve-assign@mitre.org
CC: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
 "Michael.Kapfer@hs-augsburg.de" <Michael.Kapfer@hs-augsburg.de>,
 Gordon Rohrmair <gordonthomas.rohrmair@hs-augsburg.de>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha1; boundary="------------ms040804040205010101060607"
Subject: [oss-security] CVE Request: Arbitrary file upload in Wordpress 4.1.1

--------------ms040804040205010101060607
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Greetings,

referring to your mail
(http://www.openwall.com/lists/oss-security/2015/04/28/7)

> Date: Tue, 28 Apr 2015 15:27:03 -0400 (EDT)
> From: cve-assign@...re.org
> To: carnil@...ian.org
> Cc: cve-assign@...re.org, oss-security@...ts.openwall.com
> Subject: Re: Possible CVE Request: Wordpress 4.1.2 security release


we want to request a CVE for the vulnerability discussed in your mail:

> > In WordPress 4.1 and higher, files with invalid or unsafe names could
> > be uploaded. Discovered by Michael Kapfer and Sebastian Kraemer of
> > HSASec.

The vulnerability was fixed with the update 4.1.2 and was (according to you=
r assumption) located in this call graph:
=EF=BF=BC
- /wp-admin/async-upload.php : (Index)
- - /wp-admin/includes/ajax-actions.php : wp_ajax_upload_attachment
- - - /wp-includes/functions.php : wp_check_filetype_and_ext
- - - - /wp-includes/functions.php : wp_check_filetype

The validation of filenames in "/wp-includes/functions.php : wp_check_filet=
ype" failed under certain circumstances if the user provided filename conta=
ins special chars of regular expressions.
=09
Exploiting this vulnerability enables users with any fileupload-privilege t=
o upload and execute any type of files. This results in the ability of exec=
uting arbitrary code.

=09=09=09=09

Researchers:

* Sebastian Kraemer (https://www.HSASec.de)
* Michael Kapfer (https://www.HSASec.de)=20

=09

Best regards,
 Michael Kapfer & Sebastian Kraemer=20
(https://www.HSASec.de)=20



--------------ms040804040205010101060607
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEH
AQAAoIIP6DCCBNUwggO9oAMCAQICCFBOxvU9EbRkMA0GCSqGSIb3DQEBCwUA
MHExCzAJBgNVBAYTAkRFMRwwGgYDVQQKExNEZXV0c2NoZSBUZWxla29tIEFH
MR8wHQYDVQQLExZULVRlbGVTZWMgVHJ1c3QgQ2VudGVyMSMwIQYDVQQDExpE
ZXV0c2NoZSBUZWxla29tIFJvb3QgQ0EgMjAeFw0xNDA3MjIxMjA4MjZaFw0x
OTA3MDkyMzU5MDBaMFoxCzAJBgNVBAYTAkRFMRMwEQYDVQQKEwpERk4tVmVy
ZWluMRAwDgYDVQQLEwdERk4tUEtJMSQwIgYDVQQDExtERk4tVmVyZWluIFBD
QSBHbG9iYWwgLSBHMDEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQDpm8NnhfkNrvWNVMOWUDU9YuluTO2U1wBblSJ01CDrNI/W7MAxBAuZgeKm
FNJSoCgjhIt0iQReW+DieMF4yxbLKDU5ey2QRdDtoAB6fL9KDhsAw4bpXCsx
EXsM84IkQ4wcOItqaACa7txPeKvSxhObdq3u3ibo7wGvdA/BCaL2a869080U
ME/15eOkyGKbghoDJzANAmVgTe3RCSMqljVYJ9N2xnG2kB3E7f81hn1vM7Pb
D8URwoqDoZRdQWvY0hD1TP3KUazZve+Sg7va64sWVlZDz+HVEz2mHycwzUlU
28kTNJpxdcVs6qcLmPkhnSevPqM5OUhqjK3JmfvDEvK9AgMBAAGjggGGMIIB
gjAOBgNVHQ8BAf8EBAMCAQYwHQYDVR0OBBYEFEm3xs/oPR9/6kR7Eyn38Qpw
Pt5kMB8GA1UdIwQYMBaAFDHDeRu69VPXF+CJei0XbAqzK50zMBIGA1UdEwEB
/wQIMAYBAf8CAQIwYgYDVR0gBFswWTARBg8rBgEEAYGtIYIsAQEEAgIwEQYP
KwYBBAGBrSGCLAEBBAMAMBEGDysGAQQBga0hgiwBAQQDATAPBg0rBgEEAYGt
IYIsAQEEMA0GCysGAQQBga0hgiweMD4GA1UdHwQ3MDUwM6AxoC+GLWh0dHA6
Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvRFRfUk9PVF9DQV8yLmNybDB4Bggr
BgEFBQcBAQRsMGowLAYIKwYBBQUHMAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxl
c2VjLmRlL29jc3ByMDoGCCsGAQUFBzAChi5odHRwOi8vcGtpMDMzNi50ZWxl
c2VjLmRlL2NydC9EVF9ST09UX0NBXzIuY2VyMA0GCSqGSIb3DQEBCwUAA4IB
AQBjICj9nCGGcr45Rlk5MiW8qQGbDczKfUGchm0KbiyzE1l1sTOSG2EnFv/D
stU1gvuEKgFJvWa7Zi+ywgZdbj9u4wFaW8pDY1yVtuExpx/VB19N5mWCTjL5
w3x6S81NXHTuIfJ1AuxSPtLJatOQI25JZzW+f01WpOzML8+3oZeocj7JvEDW
WqQIPda8gsO3tzKOsSyOam23NQIZz/U5RFhjpyQAELC7/E6vbi84u6VXST/Y
blBvLJeW3B1GmmWJz67M8uXZn1OzPqEvkqnYC8aEHwTG6x7on321e6UC8STF
JGMRNMxakyAqeYg6JUKQqWU7fIbTEhUjKfws2sw5W1QXMIIFZDCCBEygAwIB
AgIHF5Bg+UNu4DANBgkqhkiG9w0BAQsFADBaMQswCQYDVQQGEwJERTETMBEG
A1UEChMKREZOLVZlcmVpbjEQMA4GA1UECxMHREZOLVBLSTEkMCIGA1UEAxMb
REZOLVZlcmVpbiBQQ0EgR2xvYmFsIC0gRzAxMB4XDTE0MDUxMjE1MDYxN1oX
DTE5MDcwOTIzNTkwMFowgYgxCzAJBgNVBAYTAkRFMSAwHgYDVQQKExdGYWNo
aG9jaHNjaHVsZSBBdWdzYnVyZzEWMBQGA1UECxMNUmVjaGVuemVudHJ1bTEd
MBsGA1UEAxMURkggQXVnc2J1cmcgQ0EgLSBHMDIxIDAeBgkqhkiG9w0BCQEW
EWNhQGZoLWF1Z3NidXJnLmRlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
CgKCAQEAkq9QGU/FLHb/yS/l5t4d26+K60FlBpBOqc3rT3BFetsfh6xSk/3G
BrWzo4GOvOcIpXYoNXu9Za8Y+JUMlExMhAuKG3rIPtnES9tREncDFoC6V4Pu
ArFmv6T9TLUrWDov6vx9LnfG3RD0vrSPJ0muo/PMUrlZ6ldSok8OfLvgcuqg
FYY02drh59TMjqWFQ//pkmGQPaFYwnt2E5DPF/m2u8H8NHf77u7f0xG2tJfQ
nOQFTazeIWVykxhUnuP08JE2EMgnifxY6sJ5tmq6IiaJFbipIuaWo0c5yHuR
oynZrkiTxrcY0cjjSePT5wjaSZixpGsDP2mwdLOXznvgsG20WwIDAQABo4IB
/jCCAfowEgYDVR0TAQH/BAgwBgEB/wIBATAOBgNVHQ8BAf8EBAMCAQYwEQYD
VR0gBAowCDAGBgRVHSAAMB0GA1UdDgQWBBTVcBfj3sGX9Ag+6ToRs+iI8ZBH
5DAfBgNVHSMEGDAWgBRJt8bP6D0ff+pEexMp9/EKcD7eZDAcBgNVHREEFTAT
gRFjYUBmaC1hdWdzYnVyZy5kZTCBiAYDVR0fBIGAMH4wPaA7oDmGN2h0dHA6
Ly9jZHAxLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtY2EvcHViL2NybC9jYWNy
bC5jcmwwPaA7oDmGN2h0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJv
b3QtY2EvcHViL2NybC9jYWNybC5jcmwwgdcGCCsGAQUFBwEBBIHKMIHHMDMG
CCsGAQUFBzABhidodHRwOi8vb2NzcC5wY2EuZGZuLmRlL09DU1AtU2VydmVy
L09DU1AwRwYIKwYBBQUHMAKGO2h0dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZ2xv
YmFsLXJvb3QtY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0MEcGCCsGAQUFBzAC
hjtodHRwOi8vY2RwMi5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWNhL3B1Yi9j
YWNlcnQvY2FjZXJ0LmNydDANBgkqhkiG9w0BAQsFAAOCAQEAptjTJ7XD5Aiw
AYqtvwbbBd1NJ2zh/Usst1D8xXHrc06Xgat0arfrsjnqtjN4k8fD26O1O3CU
Uz/Vgi+LerGsD+T6L6/KgTTm1TE2Qxtj4TUO8eopN4fZ/MjBk31TXG4aFInb
N4ciWGjgg7IG7q9I5ALLB/2a9sRIGDxf3lwwACa/YyVeejNcQFUlwx69ZDiP
ME4LQbEA6iCZXXXWpgDgjS050MfL+Y9I2CL4zmB8+ZOtW8GaRcnhMWo+eRaD
/dmYXZUoi7zq3Pm2+z5zxziMfMYmQ5THkW2VKVbKHJOjRf4coMRpE9ppUB0b
I7MXyZqiY4pPmUDIy66QRkYudbTM/jCCBaMwggSLoAMCAQICBxZNOg9gTK4w
DQYJKoZIhvcNAQEFBQAwgYgxCzAJBgNVBAYTAkRFMSAwHgYDVQQKExdGYWNo
aG9jaHNjaHVsZSBBdWdzYnVyZzEWMBQGA1UECxMNUmVjaGVuemVudHJ1bTEd
MBsGA1UEAxMURkggQXVnc2J1cmcgQ0EgLSBHMDIxIDAeBgkqhkiG9w0BCQEW
EWNhQGZoLWF1Z3NidXJnLmRlMB4XDTEzMDkwOTEyMTgwN1oXDTE2MDkwODEy
MTgwN1owgYQxCzAJBgNVBAYTAkRFMTswOQYDVQQKEzJIb2Noc2NodWxlIGZ1
ZXIgYW5nZXdhbmR0ZSBXaXNzZW5zY2hhZnRlbiBBdWdzYnVyZzETMBEGA1UE
CxMKSW5mb3JtYXRpazEjMCEGA1UEAxMaU2ViYXN0aWFuIFdvbGZnYW5nIEty
YWVtZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQD3Wm6mycm7
N3SvVVb+oExwUPbvqE+u1jDZDP4Ww901HINnPCD4zJlwPhtAoPZYERFwmv9C
qeKbI4k37+nyqMaKoctErenz4M7g1lxEAjIUOcAULql+sJYKe2qWkE/ghtIv
vjrZNmLWQyd+2PrGTYbamFWYGpq9CD9sj5r8aZ/7gfpVgBY1TQCY3nF1Iix3
XRvhlD3Vf5/ZLbq87EMBYu+n4XAaTW6iroCfzSQE1HepRnUEDChLQqpnCb2/
vgJ9osqYYvbOxiyZlZNy/Z3r4wVatE9ibKsT7sfVK++ODEXw28N4jYtsug46
ez9I5K3JJ50pqE8tNNgPvpg4RReYfZ79AgMBAAGjggISMIICDjAvBgNVHSAE
KDAmMBEGDysGAQQBga0hgiwBAQQDADARBg8rBgEEAYGtIYIsAgEEAwAwCQYD
VR0TBAIwADALBgNVHQ8EBAMCBeAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsG
AQUFBwMEMB0GA1UdDgQWBBSbBAX/LbJGXpLpkGNzBn+7h+uy2DAfBgNVHSME
GDAWgBTVcBfj3sGX9Ag+6ToRs+iI8ZBH5DArBgNVHREEJDAigSBTZWJhc3Rp
YW4uS3JhZW1lckBocy1hdWdzYnVyZy5kZTCBjQYDVR0fBIGFMIGCMD+gPaA7
hjlodHRwOi8vY2RwMS5wY2EuZGZuLmRlL2ZoLWF1Z3NidXJnLWNhL3B1Yi9j
cmwvZ19jYWNybC5jcmwwP6A9oDuGOWh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUv
ZmgtYXVnc2J1cmctY2EvcHViL2NybC9nX2NhY3JsLmNybDCBpgYIKwYBBQUH
AQEEgZkwgZYwSQYIKwYBBQUHMAKGPWh0dHA6Ly9jZHAxLnBjYS5kZm4uZGUv
ZmgtYXVnc2J1cmctY2EvcHViL2NhY2VydC9nX2NhY2VydC5jcnQwSQYIKwYB
BQUHMAKGPWh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZmgtYXVnc2J1cmctY2Ev
cHViL2NhY2VydC9nX2NhY2VydC5jcnQwDQYJKoZIhvcNAQEFBQADggEBAGJb
pOVdo6BD+IRVD2vUmEwhxpxIKhz5UrR+tdZNy6TIJ2EDt2gB8ohTjDnR2dyQ
voXEZLvdEPmhXo+ca2y3h2sD+c9KT1xwQJuP/faRKfsKi6upxevrNmZtWSwC
KOdQRfWQFoCNab4oNFXwcDvvvd+2TLiPHidQw9OUblhWJp+rSVKgfcDwXNSA
IJRT2hc0FxLUUs74k3IjVldZSkCB0TzuYbqv8fF5jHzaPEWjP0cCut+M/s7G
LkV8Phe5mmHAEuHIjiAV+IQP4NHoB8vKmYp2F17hBPf0T4KqEhXi61yqXbTg
7EBXVzm/p4aneBCPwyhwRtTU9ncd/zTcnjynAU8xggPdMIID2QIBATCBlDCB
iDELMAkGA1UEBhMCREUxIDAeBgNVBAoTF0ZhY2hob2Noc2NodWxlIEF1Z3Ni
dXJnMRYwFAYDVQQLEw1SZWNoZW56ZW50cnVtMR0wGwYDVQQDExRGSCBBdWdz
YnVyZyBDQSAtIEcwMjEgMB4GCSqGSIb3DQEJARYRY2FAZmgtYXVnc2J1cmcu
ZGUCBxZNOg9gTK4wCQYFKw4DAhoFAKCCAh0wGAYJKoZIhvcNAQkDMQsGCSqG
SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTUwNjEwMTQyOTM0WjAjBgkqhkiG
9w0BCQQxFgQU5xxbfGWpU8M2sWD4/PwiCXhU2k0wbAYJKoZIhvcNAQkPMV8w
XTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqG
SIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0D
AgIBKDCBpQYJKwYBBAGCNxAEMYGXMIGUMIGIMQswCQYDVQQGEwJERTEgMB4G
A1UEChMXRmFjaGhvY2hzY2h1bGUgQXVnc2J1cmcxFjAUBgNVBAsTDVJlY2hl
bnplbnRydW0xHTAbBgNVBAMTFEZIIEF1Z3NidXJnIENBIC0gRzAyMSAwHgYJ
KoZIhvcNAQkBFhFjYUBmaC1hdWdzYnVyZy5kZQIHFk06D2BMrjCBpwYLKoZI
hvcNAQkQAgsxgZeggZQwgYgxCzAJBgNVBAYTAkRFMSAwHgYDVQQKExdGYWNo
aG9jaHNjaHVsZSBBdWdzYnVyZzEWMBQGA1UECxMNUmVjaGVuemVudHJ1bTEd
MBsGA1UEAxMURkggQXVnc2J1cmcgQ0EgLSBHMDIxIDAeBgkqhkiG9w0BCQEW
EWNhQGZoLWF1Z3NidXJnLmRlAgcWTToPYEyuMA0GCSqGSIb3DQEBAQUABIIB
AAmmZzuH7nuQfZJoK+o4l7NmgQ9GSdHWehaM1LAl06vNa39QQ+2Whjd0F60d
Xsb8+YB8P5hPxtRNx4QaJTrybLSnjeLLWeC7QmCWhh5gDivVRAetDFqxJcYJ
bT0dZzpztrHC8+Jz7LZWAG7wTqM0X/pKq/jy/cEaoih8B6SerJxKsMrTsaEX
CuP3h3gULJJc7y0/T49ji2JEuCyqejeJoqDi+VL5nKRWfxIvr1j2alO2dFqj
gH58Age5ZZKaskQhIaHQA3uyv8fRITQqThzQSD7pNKY+Py+MJT9ftVytVmMT
cZs5LA8/bCr00JvBsFauw1sLOxMlWWitrmb1YjeOJakAAAAAAAA=

--------------ms040804040205010101060607--
