X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9123" "Thursday" "20" "August" "2015" "17:27:57" "-0400" "Loren" "loren@trailofbits.com" "<D6B7941C-4F10-4FC3-81BE-C8E4DC277DD6@trailofbits.com>" "162" "[oss-security] Re: [oCERT-2015-009] VLC arbitrary pointer dereference" nil nil nil "8" "2015082021:27:57" "[oss-security] Re: [oCERT-2015-009] VLC arbitrary pointer dereference" (number mark "U       loren@trailo Aug 20  162/9123  " thread-indent "\"[oss-security] Re: [oCERT-2015-009] VLC arbitrary pointer dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18410 invoked by uid 550); 20 Aug 2015 22:05:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17682 invoked from network); 20 Aug 2015 21:28:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trailofbits.com; s=trailofbits;
        h=from:content-type:subject:message-id:date:to:mime-version;
        bh=Q+Yx47vqMTkiEMIqMLVyx8dsTt85Joo8Jvqdy78UzL8=;
        b=RVbc618swhVWwVkAd+hWEn1uJuBJKEhaaotPQrJEDBXCs+aJWFAFANof9zUTEbjPWJ
         EyvSZ6Et9Nt94HDTaMI1EZ6HdV8Ik/PwooRUsC73mZnKXqsIwsO3QxEA2fS3DdY07hzC
         l6p2Dp5OldWc+v5Mws6jm6LxcF48DWEVEWZtY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-type:subject:message-id:date:to
         :mime-version;
        bh=Q+Yx47vqMTkiEMIqMLVyx8dsTt85Joo8Jvqdy78UzL8=;
        b=HKrOUB4Kau1x/BaDxy7EDNOQRCTW9v+DZK3wTD2RFJOwjEMSgPYc1RXU7VlfZSuEpP
         8dJSqjtJKVYIgYxJczWUGa4Y2Jgl+jt7J0bkfofL2s5oVLaZ/prsRQAUdrmJYkO6PgF/
         9gmMkrLi5IHTxXaEn+CTLGCW017aVHC+rUf79ybQxjW5mIOx4AsATNbxL378TGyOWL4C
         4S07hiEnO7F6bWGHv5tHw2NAUvdNKSzZLmvJ+RDGchRudA1ez9TVIZeZADeCKXeVW0IL
         Uj3l4MTHPbcwMXHQkic3paqPW5mw2sSWWZTVcMQ1BTvFuY2WSYABMl4/gIRhpW2JAvPl
         Hx3w==
X-Gm-Message-State: ALoCoQnRDAJwFAOooJK0+itm+0SMM6c2KrxE1g9gcdrOol08Mf2cYox3nDkHbNLVSfelFiXLpklS
X-Received: by 10.55.53.193 with SMTP id c184mr9416516qka.62.1440106079506;
        Thu, 20 Aug 2015 14:27:59 -0700 (PDT)
From: Loren <loren@trailofbits.com>
Content-Type: multipart/signed; boundary="Apple-Mail=_EAC3776A-21D9-46DA-ACDE-1F0DC6195045"; protocol="application/pkcs7-signature"; micalg=sha1
Message-Id: <D6B7941C-4F10-4FC3-81BE-C8E4DC277DD6@trailofbits.com>
Date: Thu, 20 Aug 2015 17:27:57 -0400
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
X-Mailer: Apple Mail (2.2102)
Subject: [oss-security] Re: [oCERT-2015-009] VLC arbitrary pointer dereference

--Apple-Mail=_EAC3776A-21D9-46DA-ACDE-1F0DC6195045
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A4B0D7DD-3E4C-4327-A4A9-655E977A5750"


--Apple-Mail=_A4B0D7DD-3E4C-4327-A4A9-655E977A5750
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

POC for oCERT#2015-009 VLC arbitrary pointer dereference

Running VLC v2.2.1 with sample_crash causes a segmentation fault on 0xccdde=
eff, an address read in from 0x1b6e6 in the sample_crash file. After this a=
ddress is freed, vlc then attempts to free the next four bytes in the file,=
 0x1122331e.=20

This data can be changed in the sample_crash file to free two arbitrary add=
resses.=20

sample_crash : http://s000.tinyupload.com/?file_id=3D94915905821495818830 <=
http://s000.tinyupload.com/index.php?file_id=3D94915905821495818830>=20

-Loren Maggiore=

--Apple-Mail=_A4B0D7DD-3E4C-4327-A4A9-655E977A5750
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;" class=3D""><div style=3D"m=
argin: 0px; font-family: Courier; -webkit-text-stroke-color: rgb(0, 0, 0); =
-webkit-text-stroke-width: initial;" class=3D"">POC for oCERT#2015-009 VLC =
arbitrary pointer dereference</div><div style=3D"margin: 0px; font-family: =
Courier; -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width=
: initial; min-height: 14px;" class=3D""><br class=3D""></div><div style=3D=
"margin: 0px; font-family: Courier; -webkit-text-stroke-color: rgb(0, 0, 0)=
; -webkit-text-stroke-width: initial;" class=3D"">Running VLC v2.2.1 with s=
ample_crash causes a segmentation fault on 0xccddeeff, an address read in f=
rom 0x1b6e6 in the sample_crash file. After this address is freed, vlc then=
 attempts to free the next four bytes in the file, 0x1122331e.&nbsp;</div><=
div style=3D"margin: 0px; font-family: Courier; -webkit-text-stroke-color: =
rgb(0, 0, 0); -webkit-text-stroke-width: initial; min-height: 14px;" class=
=3D""><br class=3D""></div><div style=3D"margin: 0px; font-family: Courier;=
 -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width: initia=
l;" class=3D"">This data can be changed in the sample_crash file to free tw=
o arbitrary addresses.&nbsp;</div><div style=3D"margin: 0px; font-family: C=
ourier; -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-text-stroke-width:=
 initial; min-height: 14px;" class=3D""><br class=3D""></div><div style=3D"=
margin: 0px; font-family: Verdana; color: rgb(161, 215, 0); -webkit-text-st=
roke-color: rgb(161, 215, 0); -webkit-text-stroke-width: initial;" class=3D=
""><span style=3D"font-family: Courier; color: rgb(0, 0, 0); -webkit-text-s=
troke-color: rgb(0, 0, 0);" class=3D"">sample_crash : <a href=3D"http://s00=
0.tinyupload.com/index.php?file_id=3D94915905821495818830" class=3D""><span=
 style=3D"font-family: Verdana; -webkit-text-stroke-color: rgb(161, 215, 0)=
;" class=3D"">http://s000.tinyupload.com/?file_id=3D94915905821495818830</s=
pan></a></span>&nbsp;</div><div style=3D"margin: 0px; font-family: Verdana;=
 color: rgb(161, 215, 0); -webkit-text-stroke-color: rgb(161, 215, 0); -web=
kit-text-stroke-width: initial;" class=3D""><br class=3D""></div><div style=
=3D"margin: 0px; -webkit-text-stroke-color: rgb(161, 215, 0); -webkit-text-=
stroke-width: initial;" class=3D""><font face=3D"Courier" class=3D"">-Loren=
 Maggiore</font></div></body></html>=

--Apple-Mail=_A4B0D7DD-3E4C-4327-A4A9-655E977A5750--

--Apple-Mail=_EAC3776A-21D9-46DA-ACDE-1F0DC6195045
Content-Disposition: attachment;
	filename=smime.p7s
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEH
AQAAoIILxjCCBXAwggRYoAMCAQICEAqJsSU4TWoHDXi0KUyU0qAwDQYJKoZI
hvcNAQELBQAwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IElu
YzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNl
cnQgU0hBMiBBc3N1cmVkIElEIENBMB4XDTE1MDcwNjAwMDAwMFoXDTE2MDcw
NjEyMDAwMFowgZAxCzAJBgNVBAYTAlVTMREwDwYDVQQIEwhOZXcgWW9yazER
MA8GA1UEBxMITmV3IFlvcmsxHDAaBgNVBAoTE1RyYWlsIG9mIEJpdHMsIElu
Yy4xFzAVBgNVBAMTDkxvcmVuIE1hZ2dpb3JlMSQwIgYJKoZIhvcNAQkBFhVs
b3JlbkB0cmFpbG9mYml0cy5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
ggEKAoIBAQCe8u82hMFAPfsujLsDC3iXJvQsT3i7DeBy+5XTHJ4Q7Gy+U76r
q46f9wilcq0DRKaJQFYxENFi5fL0F4tOP8V67gUJeMp2qE2wT5CzxrCthZ8y
HhzdRMg8HI8w2Ypf2hzOZFgTH++WbgInbp/KkWJbv9nr8kq+WnjfcXfCKaAd
SmONWJwHiI6mwDifPUKXRN4RppQg6nPTCodRy1kREE46oh250srWUt2s3C64
Os7nG6o/pdYBYYD4K26ieyApU2EIufNSPU/eEQMMwdaNeCL7z2mwhx5J1LPp
yA91Xpa32Gyjcy8PPAtPde5g//vzTZq+qabg9elxxLvm6RvORwbJAgMBAAGj
ggHuMIIB6jAfBgNVHSMEGDAWgBTnAiOAAE/Y17yUC9k/dDlJMjyKeTAdBgNV
HQ4EFgQU9mwj2nKaOo48L+qgfqecWwFTmlEwDAYDVR0TAQH/BAIwADAgBgNV
HREEGTAXgRVsb3JlbkB0cmFpbG9mYml0cy5jb20wDgYDVR0PAQH/BAQDAgWg
MB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDBDBgNVHSAEPDA6MDgG
CmCGSAGG/WwEAQIwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cuZGlnaWNl
cnQuY29tL0NQUzCBiAYDVR0fBIGAMH4wPaA7oDmGN2h0dHA6Ly9jcmwzLmRp
Z2ljZXJ0LmNvbS9EaWdpQ2VydFNIQTJBc3N1cmVkSURDQS1nMS5jcmwwPaA7
oDmGN2h0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFNIQTJBc3N1
cmVkSURDQS1nMS5jcmwweQYIKwYBBQUHAQEEbTBrMCQGCCsGAQUFBzABhhho
dHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKGN2h0dHA6Ly9j
YWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFNIQTJBc3N1cmVkSURDQS5j
cnQwDQYJKoZIhvcNAQELBQADggEBALGO/IbTt89KwjnxkzysmkjWMgwUB0FB
sozZMEa9PcOkXGFgyJrGt4+s7NC9gmzD1al+OjEzNnJ97RFB1+zVaSliFcQX
ZEH7HEbq0VZcrfKw9s9/VOZckAFvD1dOx5YUg4QGpEhtjJzOrqg18kz+TrWu
InvRwoB4tVu6VrrwQIJwPPvm6UzNVAE8D4GSxGGr6Vz6pJzXRR7CVTrYh10m
Udvd4a5YtRqaj7oOuYiWuxYFnuo/pu5qsu7/fdeXlE31uxgeJiY7q2TRQI45
t1TZZpNtjK81v18H4XoD+9Y4ghNATTYgU+TmUbOCYsE78v4DeE7FSm/vR62i
wPUcStz076IwggZOMIIFNqADAgECAhAErnlgZmaQGrnFf6ZsW9zNMA0GCSqG
SIb3DQEBCwUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJ
bmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNVBAMTG0RpZ2lD
ZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0xMzExMDUxMjAwMDBaFw0yODEx
MDUxMjAwMDBaMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJ
bmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNVBAMTG0RpZ2lD
ZXJ0IFNIQTIgQXNzdXJlZCBJRCBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
ADCCAQoCggEBANz4ESM/arXvwCd5Gy0Fh6IQQzHfDtQVG093pCLOPoxw8L4H
jt0nKrwBHbYsCsrdaVgfQe1qBR/aY3hZHiIsK/i6fsk1O1bxH3xCfiWwIxnG
RTjXPUT5IHxgrhywWhgEvo8796nwlJqmDGNJtkEXU0AyvU/mUHpQHyVF6PGJ
r83/Xv9Q8/AXEf+9xYn1vWK52PuORQSFbZnNxUhN/SarAjZF6jbXX2riGoJB
Ctzp2fWRF47GIa04PBPmHn9mnNVN2Uba9s9Sp307JMO0wVE1xpvr1O9+5HsD
4US9egs34E/LgooNcRjkpuCJLBvzsnM8wbCSnhh9vat9xX0IoSzCn3MCAwEA
AaOCAvgwggL0MBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0PAQH/BAQDAgGG
MDQGCCsGAQUFBwEBBCgwJjAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGln
aWNlcnQuY29tMIGBBgNVHR8EejB4MDqgOKA2hjRodHRwOi8vY3JsNC5kaWdp
Y2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURSb290Q0EuY3JsMDqgOKA2hjRo
dHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURSb290
Q0EuY3JsMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDCCAbMGA1Ud
IASCAaowggGmMIIBogYKYIZIAYb9bAACBDCCAZIwKAYIKwYBBQUHAgEWHGh0
dHBzOi8vd3d3LmRpZ2ljZXJ0LmNvbS9DUFMwggFkBggrBgEFBQcCAjCCAVYe
ggFSAEEAbgB5ACAAdQBzAGUAIABvAGYAIAB0AGgAaQBzACAAQwBlAHIAdABp
AGYAaQBjAGEAdABlACAAYwBvAG4AcwB0AGkAdAB1AHQAZQBzACAAYQBjAGMA
ZQBwAHQAYQBuAGMAZQAgAG8AZgAgAHQAaABlACAARABpAGcAaQBDAGUAcgB0
ACAAQwBQAC8AQwBQAFMAIABhAG4AZAAgAHQAaABlACAAUgBlAGwAeQBpAG4A
ZwAgAFAAYQByAHQAeQAgAEEAZwByAGUAZQBtAGUAbgB0ACAAdwBoAGkAYwBo
ACAAbABpAG0AaQB0ACAAbABpAGEAYgBpAGwAaQB0AHkAIABhAG4AZAAgAGEA
cgBlACAAaQBuAGMAbwByAHAAbwByAGEAdABlAGQAIABoAGUAcgBlAGkAbgAg
AGIAeQAgAHIAZQBmAGUAcgBlAG4AYwBlAC4wHQYDVR0OBBYEFOcCI4AAT9jX
vJQL2T90OUkyPIp5MB8GA1UdIwQYMBaAFEXroq/0ksuCMS1Ri6enIZ3zbcgP
MA0GCSqGSIb3DQEBCwUAA4IBAQBO1Iknuf0dh3d+DygFkPEKL8k7Pr2TnJDG
r/qRUYcyVGvoysFxUVyZjrX64GIZmaYHmnwTJ9vlAqKEEtkV9gpEV8Q0j21z
HzrWoAE93uOC5EVrsusl/YBeHTmQvltC9s6RYOP5oFYMSBDOM2h7zZOr8GrL
T1gPuXtdGwSBnqci4ldJJ+6Skwi+aQhTAjouXcgZ9FCATgLZsF2RtJOH+ZaW
gVVAjmbtgti7KF/tTGHtBlgoGVMRRLxHICmyBGzYiVSZO3XbZ3gsHpJ4xlU9
WBIRMm69QwxNNNt7xkLb7L6rm2FMBpLjjt8hKlBXBMBgojXVJJ5mNwlJz9X4
ZbPg4m7CMYIDGTCCAxUCAQEweTBlMQswCQYDVQQGEwJVUzEVMBMGA1UEChMM
RGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMSQwIgYD
VQQDExtEaWdpQ2VydCBTSEEyIEFzc3VyZWQgSUQgQ0ECEAqJsSU4TWoHDXi0
KUyU0qAwCQYFKw4DAhoFAKCCAXUwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMTUwODIwMjEyNzU4WjAjBgkqhkiG9w0BCQQx
FgQULahS+rkXlp6O39PlNgmBBWbZ+bwwgYgGCSsGAQQBgjcQBDF7MHkwZTEL
MAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQ
d3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNlcnQgU0hBMiBBc3N1
cmVkIElEIENBAhAKibElOE1qBw14tClMlNKgMIGKBgsqhkiG9w0BCRACCzF7
oHkwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcG
A1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNlcnQgU0hB
MiBBc3N1cmVkIElEIENBAhAKibElOE1qBw14tClMlNKgMA0GCSqGSIb3DQEB
AQUABIIBADQoC3BB7Fvv+F4epFRhtTU+Qic9lzt+ijBVb+RQt0wjQP6K/jS7
DyixYnEKcjOJWVGKx2rYBUZqrmB8aujxrclT+JbDFCO9MuvCgod1detkA9U/
BF5N2HGBIae4mAUbniVrIZInWMElPWheonoIfAC2GGQRJ0SDk1HuCBRpZNx8
GW8SrdqSBqKVStKYSbHEPF1oQGUzRhgQLri5PRbGzj+kVxA+9BapzqUFqOyl
QLEd0xPtroTZBq6spwGgtrWVLATL7wT5MuWtcR1oEKP/TptSO0KPsUN0JjJI
XaOpljFo2Nyl8Y8+0Ra2A7RVga8riuR50JHz+UVvZPr3Z9nQ7n4AAAAAAAA=

--Apple-Mail=_EAC3776A-21D9-46DA-ACDE-1F0DC6195045--
