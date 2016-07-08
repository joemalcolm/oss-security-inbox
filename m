X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10641" "Friday" "8" "July" "2016" "14:19:02" "+0200" "Jens Erat" "jens.erat@uni-konstanz.de" "<f1a94b45-2ea5-8943-b676-c07456992798@uni-konstanz.de>" "210" "[oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)" nil nil nil "7" "2016070812:19:02" "[oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)" (number mark "U       jens.erat@un Jul  8  210/10641 " thread-indent "\"[oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)\"\n") "<20160615024015.E24396C0201@smtpvmsrv1.mitre.org>" ("<20160615024015.E24396C0201@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8070 invoked by uid 550); 8 Jul 2016 12:19:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8048 invoked from network); 8 Jul 2016 12:19:14 -0000
From: Jens Erat <jens.erat@uni-konstanz.de>
To: cve-assign@mitre.org
References: <20160615024015.E24396C0201@smtpvmsrv1.mitre.org>
Cc: oss-security@lists.openwall.com
Message-ID: <f1a94b45-2ea5-8943-b676-c07456992798@uni-konstanz.de>
Date: Fri, 8 Jul 2016 14:19:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <20160615024015.E24396C0201@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms080700090609080100020004"
Subject: [oss-security] Re: CVE request: several SOGo issues (DOS, XSS, information leakage)

--------------ms080700090609080100020004
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: quoted-printable

Thank you for your reply.

Am 15.06.2016 um 04:40 schrieb cve-assign@mitre.org:
> We have a few questions about this. First, several of the
> https://sogo.nu/bugs URLs provide an "Access Denied" response and we
> were wondering whether that was intentional. MITRE has no role in
> determining the list charter, but
> http://oss-security.openwall.org/wiki/mailing-lists/oss-security says
> "List Content Guidelines ... Any security issues that you post to
> oss-security should be either already public or to be made public by
> your posting."
>
> When required, CVE IDs can be assigned based on commits in conjunction
> with non-public bug reports; this potentially addresses all of the
> cases except for SOGo #3670, which is apparently not yet public at
> all.

I had inverse publishing the issues, apart from #3670 as the fix was releas=
ed just recently.


> Also, your message didn't mention whether you are making the CVE
> request on behalf of the Inverse team, or whether you are noting
> issues that are security-related from your own perspective.

I'm not requesting on behalf of the Inverse team ("from by own perspective"=
). Inverse already confirmed the issues (and fixed most of them), but SOGo =
has a history of missing CVEs even for nasty issues.

=20
> Going through the list of public issues:
>=20
> SOGo #3510 - is the ultimate case of the entire issue summarized by
> "copies the attachment (into memcached?) and then eliminates the copy
> in the sogod. The memcached copy stays forever/until the SOGo service
> is restarted"? Or is there a second implementation error? It seems
> that part of the issue, but not all of it, is a feature request (SOGo
> #3135) suggesting that SOGo should have size limits because
> configuring limits at the level of the web server and SMTP server
> disrupts the user experience.

The issues was resolved by limiting the upload size, which _also_ was a fea=
ture request (but now got important due to the possible DOS attack). Furthe=
r investigation showed that not memcached was the issue but temporary files=
 kept around, but the rest of the argument stayed the same.


> SOGo #3695 is listed twice but the second one has 3696 in the URL. We
> are guessing that the second "SOGo #3695" is just a "SOGo #3696" typo.
> More importantly, are there two distinct code problems? Or is it a
> single code problem that is reachable with different attack vectors?

These have been two different issues within related code, that have been re=
solved together:

1. Not all private information removed for the public free/busy view
2. It was possible to join appointments based on the UID of the public free=
/busy view from different users, to know who has appointments with whom


> SOGo #3718 has two identical
> "Issue: https://sogo.nu/bugs/view.php?id=3D3718" lines. Was one of them
> supposed to be a different URL?

I duplicated the line by accident.


> SOGo #2598 - we are able to assign CVE-2014 IDs. Does "SOGo #2598:
> Script injection in calendar title ... Reporter: Jens Erat" mean that
> your own discovery was only about the calendar title, and that
> additional attack vectors ("contacts module" and "CSS dialogs") were
> follow-on discoveries by the Inverse team?

The (now public) issue log says I realized the issue also exists with conta=
cts, and the CSS stuff was not an additional attack vector, but a regressio=
n fix.


--=20
Jens Erat
Universit=E4t Konstanz
Kommunikations-, Infomations-, Medienzentrum (KIM)
Abteilung Basisdienste
D-78457 Konstanz
Mail: jens.erat@uni-konstanz.de=20



--------------ms080700090609080100020004
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCCD3AwggTVMIIDvaADAgECAghQTsb1PRG0ZDANBgkqhkiG9w0B
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
AvEkxSRjETTMWpMgKnmIOiVCkKllO3yG0xIVIyn8LNrMOVtUFzCCBUIwggQq
oAMCAQICBxeQYOCzPaowDQYJKoZIhvcNAQELBQAwWjELMAkGA1UEBhMCREUx
EzARBgNVBAoTCkRGTi1WZXJlaW4xEDAOBgNVBAsTB0RGTi1QS0kxJDAiBgNV
BAMTG0RGTi1WZXJlaW4gUENBIEdsb2JhbCAtIEcwMTAeFw0xNDA1MTIxNTA1
NTJaFw0xOTA3MDkyMzU5MDBaMGYxCzAJBgNVBAYTAkRFMRUwEwYDVQQKEwxV
bmktS29uc3RhbnoxHTAbBgNVBAMTFFVuaS1Lb25zdGFueiBDQS1TMDAxMSEw
HwYJKoZIhvcNAQkBFhJjYUB1bmkta29uc3RhbnouZGUwggEiMA0GCSqGSIb3
DQEBAQUAA4IBDwAwggEKAoIBAQCv07T95IkjXCFklVv9IjNJyK271LN0qNFz
hLUFscans64sLOUveaaw0xgQAN4N95WE6KxHUTVmCwM9FzXQVsVQMhP+blWH
KkjmjUDSeK3PLDC0A3pbSr6gr5JLsCjvgqPYL/kCmyN90AA3Oms32JLYUUTn
MxrRdFsj2FxxI1vwm3HGCW2WGMQMc3vOQ2WQ1cf9gSp2+Gz1n6If3zyoBEre
ZWEVHXy80I+NTc7MpM0eWi+PNvYNdOpRqvyPqrwpcnoDE0evYRS90ZTv/JOp
jSlSZp/hHMPoUK9FjccgAo6Aobukcd7u9vxWm3z2uLTwFMSKM6rA6TdB58bX
mimK7N8rAgMBAAGjggH/MIIB+zASBgNVHRMBAf8ECDAGAQH/AgEBMA4GA1Ud
DwEB/wQEAwIBBjARBgNVHSAECjAIMAYGBFUdIAAwHQYDVR0OBBYEFNlidIoX
i1wWImK8Jw7j7xqcnLVDMB8GA1UdIwQYMBaAFEm3xs/oPR9/6kR7Eyn38Qpw
Pt5kMB0GA1UdEQQWMBSBEmNhQHVuaS1rb25zdGFuei5kZTCBiAYDVR0fBIGA
MH4wPaA7oDmGN2h0dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3Qt
Y2EvcHViL2NybC9jYWNybC5jcmwwPaA7oDmGN2h0dHA6Ly9jZHAyLnBjYS5k
Zm4uZGUvZ2xvYmFsLXJvb3QtY2EvcHViL2NybC9jYWNybC5jcmwwgdcGCCsG
AQUFBwEBBIHKMIHHMDMGCCsGAQUFBzABhidodHRwOi8vb2NzcC5wY2EuZGZu
LmRlL09DU1AtU2VydmVyL09DU1AwRwYIKwYBBQUHMAKGO2h0dHA6Ly9jZHAx
LnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtY2EvcHViL2NhY2VydC9jYWNlcnQu
Y3J0MEcGCCsGAQUFBzAChjtodHRwOi8vY2RwMi5wY2EuZGZuLmRlL2dsb2Jh
bC1yb290LWNhL3B1Yi9jYWNlcnQvY2FjZXJ0LmNydDANBgkqhkiG9w0BAQsF
AAOCAQEAy2kzMLxthpOp0TwgEkVWvTS9/BhN9kuYW9qiHVywP5UkEDu5ULEI
SE1X9Bvl9ZUBwZ1iWBchsSAzzal+rcgE7vYNG7QczeXzn2WcuZRbujkt5wB/
QRH1I6f0IafonMkTKvPBiprdOvSjjJ3yfSXrcBDMJCKRSMKqfDtqYvTyUITu
AnrnKC2VtiTHuw8jibY+ZjMKbmSqxjBBVJoRs6FcnlR/WO7dBIkIhNzZAr6c
dzBxV1Kx9Gb+BrN9/xBsKbuPiCFrmi6py5k3jpdSpfUpeXmd9TmuzRmibFsw
9LwaLJtPx3Ewcge/FOl/yixMk/oanYI+EMr4bCQQwUJkfntCcjCCBU0wggQ1
oAMCAQICBxaq/yqyv58wDQYJKoZIhvcNAQEFBQAwZjELMAkGA1UEBhMCREUx
FTATBgNVBAoTDFVuaS1Lb25zdGFuejEdMBsGA1UEAxMUVW5pLUtvbnN0YW56
IENBLVMwMDExITAfBgkqhkiG9w0BCQEWEmNhQHVuaS1rb25zdGFuei5kZTAe
Fw0xMzExMTkxNTE5NTRaFw0xNjExMTgxNTE5NTRaMEExCzAJBgNVBAYTAkRF
MR4wHAYDVQQKExVVbml2ZXJzaXRhZXQgS29uc3RhbnoxEjAQBgNVBAMTCUpl
bnMgRXJhdDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMvPX3s/
tc27zRbljTAohvX49xce3yJ59rbmOStWhwl42znDiZoDKl3WjqPpaC7SoDRi
EJEIS1YctNs9WDnoOAWiPoaAARTWFoQkXJ8UHaVFfbXEPUjmPEvl2LZFX7bo
R/j5rWHPYufjDtyuc8kz6NUeQZ2ezGjEZU2nX/uKP6OP+RuA/ehEmp9OBt5g
Y9OowMq91aBmodXlxb6avCTgA6sNM5KE79XlN5EqDyuyUw+44q1Y/h5Fe4gt
WmeUpZm8ureFYddWENlaSnGma/C9Zt3GwFBc1VSD7pLZtJ8fuVxx3yMzRE4s
7zpznSFw+vm0K7ODwttPLdrQiVtENCP+IM8CAwEAAaOCAiMwggIfMC8GA1Ud
IAQoMCYwEQYPKwYBBAGBrSGCLAEBBAMAMBEGDysGAQQBga0hgiwCAQQDADAJ
BgNVHRMEAjAAMAsGA1UdDwQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDAgYI
KwYBBQUHAwQwHQYDVR0OBBYEFFzb74vKQDPWY+QTnM5o8033eTS0MB8GA1Ud
IwQYMBaAFNlidIoXi1wWImK8Jw7j7xqcnLVDMCQGA1UdEQQdMBuBGWplbnMu
ZXJhdEB1bmkta29uc3RhbnouZGUwgZkGA1UdHwSBkTCBjjBFoEOgQYY/aHR0
cDovL2NkcDEucGNhLmRmbi5kZS91bmkta29uc3Rhbnotc2VydmVyLWNhL3B1
Yi9jcmwvY2FjcmwuY3JsMEWgQ6BBhj9odHRwOi8vY2RwMi5wY2EuZGZuLmRl
L3VuaS1rb25zdGFuei1zZXJ2ZXItY2EvcHViL2NybC9jYWNybC5jcmwwgbIG
CCsGAQUFBwEBBIGlMIGiME8GCCsGAQUFBzAChkNodHRwOi8vY2RwMS5wY2Eu
ZGZuLmRlL3VuaS1rb25zdGFuei1zZXJ2ZXItY2EvcHViL2NhY2VydC9jYWNl
cnQuY3J0ME8GCCsGAQUFBzAChkNodHRwOi8vY2RwMi5wY2EuZGZuLmRlL3Vu
aS1rb25zdGFuei1zZXJ2ZXItY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0MA0G
CSqGSIb3DQEBBQUAA4IBAQBiiaeXvSLlmrGyJozSxMB7albl8MLPrQwfhuv6
uUxNlwn0tggiMkXFHrYhSuUOyIMdCk+gju/8HZJN3oJDmHs/P2p8jSoX0V+e
vAa9mVEKAM0dyip7Derny0EnxnGiO53Vqm0Y2Lt7JX5lPpH7rQuu7axHxDPv
FjqyAa0h0B5/AnZNt3YSUqyLi4Gi+QVCE2kFEMQ0nSZ1Q1ePcgr9ioeieeAT
E3GLNRdGW4mb5rN2Y9zW3VOwCQI8ocna6v7ixMP1AMZCjtd3DdbaJsjZ6YHN
l4PhXDbrDFKxHnEhGZe7xCnSLzHcdxMsFJV5ogwsbNAJD3/62EZpGC1VyJx8
Zsn2MYIDfzCCA3sCAQEwcTBmMQswCQYDVQQGEwJERTEVMBMGA1UEChMMVW5p
LUtvbnN0YW56MR0wGwYDVQQDExRVbmktS29uc3RhbnogQ0EtUzAwMTEhMB8G
CSqGSIb3DQEJARYSY2FAdW5pLWtvbnN0YW56LmRlAgcWqv8qsr+fMA0GCWCG
SAFlAwQCAQUAoIIB3zAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
SIb3DQEJBTEPFw0xNjA3MDgxMjE5MDJaMC8GCSqGSIb3DQEJBDEiBCAbDEre
QKcdKiY4i/u4uDNq9EHA+lkx//dUcMS1Q8SNHDBsBgkqhkiG9w0BCQ8xXzBd
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZI
hvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMC
AgEoMIGABgkrBgEEAYI3EAQxczBxMGYxCzAJBgNVBAYTAkRFMRUwEwYDVQQK
EwxVbmktS29uc3RhbnoxHTAbBgNVBAMTFFVuaS1Lb25zdGFueiBDQS1TMDAx
MSEwHwYJKoZIhvcNAQkBFhJjYUB1bmkta29uc3RhbnouZGUCBxaq/yqyv58w
gYIGCyqGSIb3DQEJEAILMXOgcTBmMQswCQYDVQQGEwJERTEVMBMGA1UEChMM
VW5pLUtvbnN0YW56MR0wGwYDVQQDExRVbmktS29uc3RhbnogQ0EtUzAwMTEh
MB8GCSqGSIb3DQEJARYSY2FAdW5pLWtvbnN0YW56LmRlAgcWqv8qsr+fMA0G
CSqGSIb3DQEBAQUABIIBAL9SgP5Gm0dTD4Hvuby7If7heSd1zsOnPYG7Idja
sUfHl55FogucaN7mYPHppl8PEPYA3NFq/GSw9Yp5BBisCSohMKYELVse3JWR
tC3l1mC5ZRh7ELaqE4czgLCiqKupqiPcRgiLkHsOgwIR+G2h8Y9n1RSZTX+7
AOChG1yx/U5+uwX5/Yp+iBSgZ/fFcODOf0JVCu/3xxiYiqTKgiFVfAfD99RO
b0xHHtaF4wCgsADdEdjng0oscOA90DrWAria4NpQ/f0BKeVgXTLjUqYx5rTA
Zn4AGOTpqglfqu94aNEjXoirzpMlGXUzhHt7Bf+X1HZJfzudPibjJKFV8ray
zhMAAAAAAAA=

--------------ms080700090609080100020004--
