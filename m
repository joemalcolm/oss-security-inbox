X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8884" "Thursday" "19" "May" "2016" "16:27:09" "-0500" "John Lightsey" "jd@cpanel.net" "<3b0ab9e5-d160-c5fe-a554-a5ac61eede34@cpanel.net>" "217" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016051921:27:09" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        jd@cpanel.ne May 19  217/8884  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<20160519190037.GA6411@perpetual.pseudorandom.co.uk>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>" "<CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>" "<20160519190037.GA6411@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27728 invoked by uid 550); 19 May 2016 21:27:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27710 invoked from network); 19 May 2016 21:27:22 -0000
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com>
 <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>
 <CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>
 <20160519190037.GA6411@perpetual.pseudorandom.co.uk>
Message-ID: <3b0ab9e5-d160-c5fe-a554-a5ac61eede34@cpanel.net>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:45.0)
 Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <20160519190037.GA6411@perpetual.pseudorandom.co.uk>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms050806060604080507050501"
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mx1.cpanel.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cpanel.net
X-Get-Message-Sender-Via: mx1.cpanel.net: authenticated_id: jd@cpanel.net
X-Authenticated-Sender: mx1.cpanel.net: jd@cpanel.net
Date: Thu, 19 May 2016 16:27:09 -0500
From: John Lightsey <jd@cpanel.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

--------------ms050806060604080507050501
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 5/19/16 2:00 PM, Simon McVittie wrote:
> Bob, if you would like distributions to pick up GraphicsMagick security
> fixes in a timely way, it would probably be really useful to do an
> upstream release - distributions are typically a lot more confident about
> backporting large changes to their stable branches without regressions
> if they've been able to get some testing on the same changes in their
> unstable branches first.

I spent quite a bit of time looking at the ImageMagick, GraphicsMagick,
RedHat and Debian changes trying to piece together a proper list of
flaws to fix through backporting and policy file changes.

I also spent some time looking at the remaining delegates trying to
figure out which will have near-identical flaws to the issues that have
already been fixed.

This is the list I'm working off of. For RedHat and Debian, I only
checked the ImageMagick updates.

CVE-2016=963714 - RCE via shell characters in delegate invocation.
ImageMagick: Fixed
GraphicsMagick: Not vulnerable
RedHat: Fixed
Debian: Fixed

CVE-2016-3718 - SSRF via HTTP and FTP coders
ImageMagick: Not fixed
GraphicsMagick: Not fixed
RedHat: Fixed
Debian: Fixed

CVE-2016-3715 - File deletion via EPHEMERAL coder
ImageMagick: Fixed
GraphicsMagick: Fixed
RedHat: Fixed
Debian: Fixed

CVE-2016-3716 - File move via MSL coder
ImageMagick: Fixed
GraphicsMagick: Fixed
RedHat: Fixed
Debian: Fixed

CVE-2016-3717 - File read via LABEL coder
ImageMagick: Not fixed?
GraphicsMagick: Not fixed?
RedHat: Fixed
Debian: Fixed

No CVE assigned - Heap overflow in PICT parser
ImageMagick: Fixed
GraphicsMagick: ??
RedHat: Not fixed
Debian: Not fixed
Reference: http://www.openwall.com/lists/oss-security/2016/05/11/3

No CVE assigned - Out of bounds read in the PSD parser
ImageMagick: Fixed
GraphicsMagick: ??
RedHat: Not fixed
Debian: Not fixed
Reference: http://www.openwall.com/lists/oss-security/2016/05/11/3

No CVE assigned - RCE via gnuplot delegate
ImageMagick: Fixed
GraphicsMagick: Fixed
RedHat: Not fixed
Debian: Fixed
Reference: http://www.openwall.com/lists/oss-security/2016/05/09/1

No CVE assigned - File read via man delegate
ImageMagick: Fixed
GraphicsMagick: Fixed
RedHat: Not fixed
Debian: Not fixed
Reference:
https://sourceforge.net/p/graphicsmagick/mailman/message/35072963/

The core problems brought up in CVE-2016-3718 and CVE-2016-3717 haven't
been fully addressed anywhere.

It's trivial to generate SSRF payloads for the formats processed through
html2ps and soffice. I'd also expect that SSRF is normal behavior for
uniconvertor, and RCE is normal behavior for blender and povray, but I
haven't verified.

If those are all counted separately...

No CVE assigned - SSRF via html2ps delegates
ImageMagick: Not fixed
GraphicsMagick: Not fixed
RedHat: Not fixed
Debian: Not fixed

No CVE assigned - SSRF via soffice delegates
ImageMagick: Not fixed
GraphicsMagick: Not vulnerable
RedHat: Not fixed
Debian: Not fixed

No CVE assigned - (assumed) SSRF via uniconvertor delegates
ImageMagick: Not fixed
GraphicsMagick: Not vulnerable
RedHat: Not fixed
Debian: Not fixed

No CVE assigned - (assumed) RCE via blender delegate
ImageMagick: Not fixed
GraphicsMagick: Not vulnerable
RedHat: Not fixed
Debian: Not fixed

No CVE assigned - (assumed) RCE via povray delegate
ImageMagick: Fixed
GraphicsMagick: Fixed
RedHat: Not fixed
Debian: Not fixed

Are there other formats that are unsafe and should be removed using the
policy configuration files?


--------------ms050806060604080507050501
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCCCegwggSvMIIDl6ADAgECAhEA4CPLFRKDU4mtYW56VGdrITAN
BgkqhkiG9w0BAQsFADBvMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1
c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3Jr
MSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290MB4XDTE0MTIy
MjAwMDAwMFoXDTIwMDUzMDEwNDgzOFowgZsxCzAJBgNVBAYTAkdCMRswGQYD
VQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAY
BgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMUEwPwYDVQQDEzhDT01PRE8gU0hB
LTI1NiBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBD
QTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAImxDdp6UxlOcFId
vFamBia3uEngludRq/HwWhNJFaO0jBtgvHpRQqd5jKQi3xdhTpHVdiMKFNNK
An+2HQmAbqUEPdm6uxb+oYepLkNSQxZ8rzJQyKZPWukI2M+TJZx7iOgwZOak
+FaA/SokFDMXmaxE5WmLo0YGS8Iz1OlAnwawsayTQLm1CJM6nCpToxDbPSBh
PFUDjtlOdiUCISn6o3xxdk/u4V+B6ftUgNvDezVSt4TeIj0sMC0xf1m9Ujew
M2ktQ+v61qXxl3dnUYzZ7ifrvKUHOHaMpKk4/9+M9QOsSb7K93OZOg8yq5yV
OhM9DkY6V3RhUL7GQD/L5OKfoiECAwEAAaOCARcwggETMB8GA1UdIwQYMBaA
FK29mHo0tCb3+sQmVO8DveAky1QaMB0GA1UdDgQWBBSSYWuC4aKgqk/sZ/HC
o/e0gADB7DAOBgNVHQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIBADAd
BgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwEQYDVR0gBAowCDAGBgRV
HSAAMEQGA1UdHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNv
bS9BZGRUcnVzdEV4dGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcw
JQYIKwYBBQUHMAGGGWh0dHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZI
hvcNAQELBQADggEBABsqbqxVwTqriMXY7c1V86prYSvACRAjmQ/FZmpvsfW0
tXdeDwJhAN99Bf4Ss6SAgAD8+x1banICCkG8BbrBWNUmwurVTYT7/oKYz1gb
4yJjnFL4uwU2q31Ypd6rO2Pl2tVz7+zg+3vio//wQiOcyraNTT7kSxgDsqgt
1Ni7QkuQaYUQ26Y3NOh74AEQpZzKOsefT4g0bopl0BqKu6ncyso20fT8wmQp
Na/WsadxEdIDQ7GPPprsnjJT9HaSyoY0B7ksyuYcStiZDcGG4pCS+1pCaiMh
EOllx/XVu37qjIUgAmLq0ToHLFnFmTPyOInltukWeh95FPZKEBom+nyK+5sw
ggUxMIIEGaADAgECAhBnxMr3OL97SHFAJnheFyDoMA0GCSqGSIb3DQEBCwUA
MIGbMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVy
MRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0EgTGltaXRl
ZDFBMD8GA1UEAxM4Q09NT0RPIFNIQS0yNTYgQ2xpZW50IEF1dGhlbnRpY2F0
aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0EwHhcNMTUwNzEzMDAwMDAwWhcNMTYw
NzEyMjM1OTU5WjAeMRwwGgYJKoZIhvcNAQkBFg1qZEBjcGFuZWwubmV0MIIB
IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzZJFkHNB/qhHToYB0n2Y
D0mqo5dcUwEM93Xf4KuerHnfyJUSNcFTdQ0zm91ArRe0WA3AAtefwEkPtAjP
ATl/nLoqbevgGbnRy42LrTyZmuCzrOKmG46uSQ5j5sDaX6CXNknsUh++btwU
khALX9VNNGmYmO0hPe8cXduJlsjcT/392uoiHDOKzyBzAR8RxoC6IWfF8uax
IbMjMTKsSBNZ6JQbLylGOmdMwrkLuU68CWiBlNDrLtTYDWR/6Uha3SF0d/Uw
mmLFO1RIrpLgI9YgWViRnS5BS43wEsFZaIN1blwLq6Vhe6yx1oDBMEI6sQxQ
6GjPl68xGU0LAaLuFm8fpwIDAQABo4IB6zCCAecwHwYDVR0jBBgwFoAUkmFr
guGioKpP7GfxwqP3tIAAwewwHQYDVR0OBBYEFEDUpjYGOF/fpXyCR4sL4ghg
q8UWMA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAAMCAGA1UdJQQZMBcG
CCsGAQUFBwMEBgsrBgEEAbIxAQMFAjARBglghkgBhvhCAQEEBAMCBSAwRgYD
VR0gBD8wPTA7BgwrBgEEAbIxAQIBAQEwKzApBggrBgEFBQcCARYdaHR0cHM6
Ly9zZWN1cmUuY29tb2RvLm5ldC9DUFMwXQYDVR0fBFYwVDBSoFCgToZMaHR0
cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RPU0hBMjU2Q2xpZW50QXV0aGVu
dGljYXRpb25hbmRTZWN1cmVFbWFpbENBLmNybDCBkAYIKwYBBQUHAQEEgYMw
gYAwWAYIKwYBBQUHMAKGTGh0dHA6Ly9jcnQuY29tb2RvY2EuY29tL0NPTU9E
T1NIQTI1NkNsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2VjdXJlRW1haWxDQS5j
cnQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmNvbW9kb2NhLmNvbTAYBgNV
HREEETAPgQ1qZEBjcGFuZWwubmV0MA0GCSqGSIb3DQEBCwUAA4IBAQAz89xo
fvUjnW8+5TGYwypZaCYh4KnaUYdeybQK+EG2lugAtkXES6LdCdZLYyPiu9jS
2aGBJtBuuV+Y5HKzU1SUCrwb0BUZHbsFZ5XZ7u02SYsITWpS8MdlZHNCySkt
euIFJtApFR9ThW26bQg2LKyyCGuICTIanXhvG+e0TxWQG17SgrkCBlMhLRCY
gKlmyNBon9itf1MgtKr03FHTU6aw1KWEGDUrd6UFEwJ9mX4k5JXaFudqeB7a
76wvHxFTWTmJk2Sc7JLRzBaFEzjsIiudurWvyfrCmSq5U9JRHPbZP/JnYQSF
8yNmIsO8Sgd1+t+7crbC6e+DKKncZWiHwPInMYIEQTCCBD0CAQEwgbAwgZsx
CzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAO
BgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMUEw
PwYDVQQDEzhDT01PRE8gU0hBLTI1NiBDbGllbnQgQXV0aGVudGljYXRpb24g
YW5kIFNlY3VyZSBFbWFpbCBDQQIQZ8TK9zi/e0hxQCZ4Xhcg6DANBglghkgB
ZQMEAgEFAKCCAmEwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG
9w0BCQUxDxcNMTYwNTE5MjEyNzA5WjAvBgkqhkiG9w0BCQQxIgQgC77bS8Dh
itrevM99aQyg/ae7S6HH91FXimkIgnASTBwwbAYJKoZIhvcNAQkPMV8wXTAL
BglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3
DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIB
KDCBwQYJKwYBBAGCNxAEMYGzMIGwMIGbMQswCQYDVQQGEwJHQjEbMBkGA1UE
CBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYD
VQQKExFDT01PRE8gQ0EgTGltaXRlZDFBMD8GA1UEAxM4Q09NT0RPIFNIQS0y
NTYgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0EC
EGfEyvc4v3tIcUAmeF4XIOgwgcMGCyqGSIb3DQEJEAILMYGzoIGwMIGbMQsw
CQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYD
VQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0EgTGltaXRlZDFBMD8G
A1UEAxM4Q09NT0RPIFNIQS0yNTYgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFu
ZCBTZWN1cmUgRW1haWwgQ0ECEGfEyvc4v3tIcUAmeF4XIOgwDQYJKoZIhvcN
AQEBBQAEggEAqUFEdOLTz0EzobQcAuiftisjAjJBxwDPVxDe5/fgyRQ1Svey
FMF/J4LCv8PB4YWLu+tUC4yfq7HLWktpodJodNfHmfYHL0yLZuNKCoM/FHzx
u855PTHzlhH1CZCxc2pkvOFOgw9x6n2e3thqiJbgYizvZxsCUzBxjVDzeS8H
9r98p275MTybx8VNgaFrZC7WWr8xin4nbejBwwZDIBs/O/4iGfxn7vxQaE+9
bM0G/CRIvPrV+GcyAf2lMK7C0K7by8256zcRFX0Um/2YNDiFKo2xbwpqGC6d
fkeRi77f37GvJD3Mlj/H+1+ZVtgechtknZGXMqAT2ICvChDjNU9CGQAAAAAA
AA==

--------------ms050806060604080507050501--
