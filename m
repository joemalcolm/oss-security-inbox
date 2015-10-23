X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5767" "Friday" "23" "October" "2015" "23:01:55" "+0200" "Ricardo" "ricardo@bitchbrothers.com" "<42EBFF7E-09FE-4998-9805-A2812EFC83F9@bitchbrothers.com>" "118" "[oss-security] CVE request - Icinga 1.13.3 and older are vulnerable to XSS" nil nil nil "10" "2015102321:01:55" "[oss-security] CVE request - Icinga 1.13.3 and older are vulnerable to XSS" (number mark "        ricardo@bitc Oct 23  118/5767  " thread-indent "\"[oss-security] CVE request - Icinga 1.13.3 and older are vulnerable to XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11356 invoked by uid 550); 23 Oct 2015 21:02:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11338 invoked from network); 23 Oct 2015 21:02:08 -0000
DKIM-Filter: OpenDKIM Filter v2.9.0 webmail.bitchbrothers.com 641EC2BEC44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bitchbrothers.com;
	s=AD3D8244-1828-11E4-A25D-036D16187EB6; t=1445634116;
	bh=5xYB8O8/o7EC9+OH12A2p6tfaceJBcVtgOklTJezb6U=;
	h=From:Content-Type:Subject:Message-Id:Date:To:Mime-Version;
	b=CWlIVXmqbuIPvqmR/eg5433sdbGddVXdPZRPv6NImnBP+f9A8Etybcyr5sMwLi4He
	 2QtP7oPKU10fZ3jhNyZw3LW+vcs81z9xhP0ZFHBAY+X3hH3AYKgL0MtVB11cnwfWqR
	 cyDko80tnR3VaLe8MBL2U7v1D3eJUN+naB0zlX1Q=
X-Virus-Scanned: amavisd-new at webmail.bitchbrothers.com
Content-Type: multipart/signed; boundary="Apple-Mail=_6B886292-7CF8-4163-9B94-CD7D88F1047A"; protocol="application/pkcs7-signature"; micalg=sha1
Message-Id: <42EBFF7E-09FE-4998-9805-A2812EFC83F9@bitchbrothers.com>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Date: Fri, 23 Oct 2015 23:01:55 +0200
From: Ricardo <ricardo@bitchbrothers.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - Icinga 1.13.3 and older are vulnerable to XSS
To: oss-security@lists.openwall.com

--Apple-Mail=_6B886292-7CF8-4163-9B94-CD7D88F1047A
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_30010786-EED6-42E8-8E39-F6B01EC32538"


--Apple-Mail=_30010786-EED6-42E8-8E39-F6B01EC32538
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

there is is a XSS vulnerability in Icinga Classic-UI 1.13.3.

This got originally introduced with this issue https://dev.icinga.org/issue=
s/593 and version 1.3.

Example: http://classic.demo.icinga.org/icinga/cgi-bin/status.cgi?host=3Dal=
l&'onmouseover=3D'prompt(25435);'bad=3D'

More infos can be found in this issue: https://dev.icinga.org/issues/10453

Can we get a CVE assigned to track this?

Thanks to T-Systems Germany for finding it. Thanks.

Cheers
Ricardo

--Apple-Mail=_30010786-EED6-42E8-8E39-F6B01EC32538
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;">Hi,<div><br></div><div>the=
re is is a XSS vulnerability in Icinga Classic-UI 1.13.3.</div><div><br></d=
iv><div>This got originally introduced with this issue&nbsp;<a href=3D"http=
s://dev.icinga.org/issues/593">https://dev.icinga.org/issues/593</a>&nbsp;a=
nd version 1.3.</div><div><br></div><div>Example:&nbsp;<a href=3D"http://cl=
assic.demo.icinga.org/icinga/cgi-bin/status.cgi?host=3Dall&amp;'onmouseover=
=3D'prompt(25435);'bad=3D'">http://classic.demo.icinga.org/icinga/cgi-bin/s=
tatus.cgi?host=3Dall&amp;'onmouseover=3D'prompt(25435);'bad=3D'</a></div><d=
iv><br></div><div>More infos can be found in this issue: <a href=3D"https:/=
/dev.icinga.org/issues/10453">https://dev.icinga.org/issues/10453</a></div>=
<div><br></div><div>Can we get a CVE assigned to track this?</div><div><br>=
</div><div>Thanks to T-Systems Germany for finding it. Thanks.<br><br>Cheer=
s<br>Ricardo<br></div></body></html>=

--Apple-Mail=_30010786-EED6-42E8-8E39-F6B01EC32538--

--Apple-Mail=_6B886292-7CF8-4163-9B94-CD7D88F1047A
Content-Disposition: attachment;
	filename=smime.p7s
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEH
AQAAoIIGPTCCBjkwggUhoAMCAQICAw1oDzANBgkqhkiG9w0BAQsFADCBjDEL
MAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsT
IlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMT
L1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50
IENBMB4XDTE1MDMyMDE0NDQ0N1oXDTE2MDMyMDA0MjYyOFowTjEiMCAGA1UE
AwwZcmljYXJkb0BiaXRjaGJyb3RoZXJzLmNvbTEoMCYGCSqGSIb3DQEJARYZ
cmljYXJkb0BiaXRjaGJyb3RoZXJzLmNvbTCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAMDqoF5gNldiepU0QivLdQ8BmRZ2vOsWvjp7gfT32mV1
wMuIuM8jMnqgbr+rlTpauJJb/9p6hLgU9trDC8QriVPcuG8j/VF59VGf8rmf
E2Z2YoJsVOnS9JT7hC3iRT03jVCjZw6Pe0XmXUpGm0lWO0UL0QDHd2oZ9L+5
N6OmhVc15ZkOGcD0SVS9KsDRA09RLgxoN0Wxsr8bUdrLML6jWWomca85OLQI
01CzJXeb5+X3P3EwgpMbwUMwt8dpsmbxcH5p5wK2sWZnd+M6l8LcPvV81kBd
vsOEEZY8tDeGpZC+ACXUtNSl+VQ7tzp4Cie5oljvu+verMfFRt6nAybKU2EC
AwEAAaOCAt8wggLbMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdJQQW
MBQGCCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQU7siWzmJz+RbHxjI3
InhDKa3dgQEwHwYDVR0jBBgwFoAUU3Ltkpzg2ssBXHx+ljVO8tS4UYIwJAYD
VR0RBB0wG4EZcmljYXJkb0BiaXRjaGJyb3RoZXJzLmNvbTCCAUwGA1UdIASC
AUMwggE/MIIBOwYLKwYBBAGBtTcBAgMwggEqMC4GCCsGAQUFBwIBFiJodHRw
Oi8vd3d3LnN0YXJ0c3NsLmNvbS9wb2xpY3kucGRmMIH3BggrBgEFBQcCAjCB
6jAnFiBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTADAgEBGoG+
VGhpcyBjZXJ0aWZpY2F0ZSB3YXMgaXNzdWVkIGFjY29yZGluZyB0byB0aGUg
Q2xhc3MgMSBWYWxpZGF0aW9uIHJlcXVpcmVtZW50cyBvZiB0aGUgU3RhcnRD
b20gQ0EgcG9saWN5LCByZWxpYW5jZSBvbmx5IGZvciB0aGUgaW50ZW5kZWQg
cHVycG9zZSBpbiBjb21wbGlhbmNlIG9mIHRoZSByZWx5aW5nIHBhcnR5IG9i
bGlnYXRpb25zLjA2BgNVHR8ELzAtMCugKaAnhiVodHRwOi8vY3JsLnN0YXJ0
c3NsLmNvbS9jcnR1MS1jcmwuY3JsMIGOBggrBgEFBQcBAQSBgTB/MDkGCCsG
AQUFBzABhi1odHRwOi8vb2NzcC5zdGFydHNzbC5jb20vc3ViL2NsYXNzMS9j
bGllbnQvY2EwQgYIKwYBBQUHMAKGNmh0dHA6Ly9haWEuc3RhcnRzc2wuY29t
L2NlcnRzL3N1Yi5jbGFzczEuY2xpZW50LmNhLmNydDAjBgNVHRIEHDAahhho
dHRwOi8vd3d3LnN0YXJ0c3NsLmNvbS8wDQYJKoZIhvcNAQELBQADggEBAIcw
hxcwJTEA1gEXgqbJZLJmcyy3e0abcZ3j+qp7xmojbO4ZdIB4+TGj4zdXQ9/9
xgjHc6fdIur7jLy0niFGSHkKYUpSMo1xJFv2Ao6Vij7V9Ut7FQuYshEFsCsN
j9uWl7HG+T9feHS3+PYB50qlRdEHocodm7yvHCrlVmNR2Mn/kqoykxta1gtf
E5BqscbxnnOp+anHKvAitx3nLvdR76krkoj1P9GHQ1X2hIEK9qcnElSGgMXU
NA2Nb892/3BoT21sZuidJ8ISed2jcBqb9ssIpBzB90Ix0Ho3cfvG1/JCELJz
Nz3fBGESZnAaOb6oLoEg7142vujcqfhJKjR6u4YxggNvMIIDawIBATCBlDCB
jDELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNV
BAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxODA2BgNV
BAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xp
ZW50IENBAgMNaA8wCQYFKw4DAhoFAKCCAa8wGAYJKoZIhvcNAQkDMQsGCSqG
SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTUxMDIzMjEwMTU1WjAjBgkqhkiG
9w0BCQQxFgQUbOYXdz0x52r5uUHzVNK+WLnXsTswgaUGCSsGAQQBgjcQBDGB
lzCBlDCBjDELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4x
KzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcx
ODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlh
dGUgQ2xpZW50IENBAgMNaA8wgacGCyqGSIb3DQEJEAILMYGXoIGUMIGMMQsw
CQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMi
U2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMv
U3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQg
Q0ECAw1oDzANBgkqhkiG9w0BAQEFAASCAQA86grXjhoXDtPi3MtYoG6SaU7T
bz8m2ESRD6/eg1AhPJldOE/VOmXZGSjHRgFioKbumWsEsEooixTQIRQ9lwEk
0Ewfqd4Nk+2rDL46h6AfjG41aaQVT1em8IAITKjhNLvN8BymFRGGYZujW3UP
uIkKYMgLhO/GxnNIxSwJiL8GWdSN5Pg0dQ6LweGN8h4R9hqTdP7SQVY4qY+/
8lawGBsv1khyxXd7lvdmi91fsvk5W2fazGxIxcNfzmxc3InxY/yja8Ds29+D
8RADg9MKm18Hwsjvyp2I7FlPmSF/I4GT/C6esp1Yvm9lBqE3PLsS/OO1W6Er
690kg5juwx0rJmOLAAAAAAAA

--Apple-Mail=_6B886292-7CF8-4163-9B94-CD7D88F1047A--
