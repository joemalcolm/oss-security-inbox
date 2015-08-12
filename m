X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10126" "Tuesday" "11" "August" "2015" "21:35:26" "-0400" "sophia" "sophia@trailofbits.com" "<9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com>" "193" "[oss-security] CVE request - Processor side channels using out of order execution" nil nil nil "8" "2015081201:35:26" "[oss-security] CVE request - Processor side channels using out of order execution" (number mark "        sophia@trail Aug 11  193/10126 " thread-indent "\"[oss-security] CVE request - Processor side channels using out of order execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3469 invoked by uid 550); 12 Aug 2015 09:23:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24353 invoked from network); 12 Aug 2015 01:35:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trailofbits.com; s=trailofbits;
        h=from:content-type:subject:message-id:date:to:mime-version;
        bh=ZREx8VaB9uB5/VqvpRFe4f51rP3aOmkKgyYFZVr0qJQ=;
        b=dZJabIYeeUPJN0FojLAxCsS2unnQqAlErP880YTlmAnm/M/7fUYaSMf/GX+1m9I1ud
         JMxO9m+akFbImclO/nwUVzeEIWY67mjxb1gI/WLGPNV+h5v7bIU1B4G6vwcp2zZCjuMG
         YSSRNtryB422s/NXFcK3Ozs/wxJkNr5UQHzvk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-type:subject:message-id:date:to
         :mime-version;
        bh=ZREx8VaB9uB5/VqvpRFe4f51rP3aOmkKgyYFZVr0qJQ=;
        b=eP45uo7ZDcVgZHCBt0lJp0p/bu6M9GmIX4fbM7KO5vCQ//jrKnxa95nYAA28zRs5z4
         xWteswcX+PAAX/aAEsuWoa91tYNkfJALqTlNjJW/xyjpqMeIAagyVFE1qsY9wVWEwzwC
         8VtUGvWKzLumh/T1K+16ql1H6gGFs2xzedYGoJbWfRWqB5Wl0iSIpBmozuqcpm22iAJN
         5zY8hFL7LOYpcsvVW5pvMwYGzFg8gmu78mrQW4JM0jZiouuRZ3vL6nUE8yasZTInjlwv
         NTZ0G46X1dqXVpVkg7eN5LoxciCz38yXa+Fi0hQmcK6RDG5ulDfEsnYohleqIxifvD7z
         cspA==
X-Gm-Message-State: ALoCoQm2xqM6ASCdNGLzcUdzmt5xZ/pZIACDlOx8VHVdFpu7M/xJ0cqmUeUEtApT12hSuCyOey3I
X-Received: by 10.140.43.100 with SMTP id d91mr45602782qga.31.1439343329468;
        Tue, 11 Aug 2015 18:35:29 -0700 (PDT)
Content-Type: multipart/signed; boundary="Apple-Mail=_E40000DA-8FDD-44FF-A394-C30C077902CC"; protocol="application/pkcs7-signature"; micalg=sha1
Message-Id: <9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
X-Mailer: Apple Mail (2.2102)
Date: Tue, 11 Aug 2015 21:35:26 -0400
From: sophia <sophia@trailofbits.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - Processor side channels using out of order execution
To: oss-security@lists.openwall.com

--Apple-Mail=_E40000DA-8FDD-44FF-A394-C30C077902CC
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3DEF0288-470C-4E3C-AC87-9367AE73F3A4"


--Apple-Mail=_3DEF0288-470C-4E3C-AC87-9367AE73F3A4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

I would like to request a CVE for a processor side channels using out of or=
der execution.=20

Past discussion of this includes: http://www.openwall.com/lists/oss-securit=
y/2015/08/11/16 <http://www.openwall.com/lists/oss-security/2015/08/11/16>

Details of attack:
https://blog.trailofbits.com/2015/07/21/hardware-side-channels-in-the-cloud=
/ <https://blog.trailofbits.com/2015/07/21/hardware-side-channels-in-the-cl=
oud/>
http://sophia.re/RECON/

Conferences presented at:
RECON Montreal 2015 - https://recon.cx/2015/schedule/events/29.html <https:=
//recon.cx/2015/schedule/events/29.html>
Blackhat 2015 - https://www.blackhat.com/us-15/briefings.html#exploiting-ou=
t-of-order-execution-for-covert-cross-vm-communication <https://www.blackha=
t.com/us-15/briefings.html#exploiting-out-of-order-execution-for-covert-cro=
ss-vm-communication>

Previously requested: no
Type: Side Channel Vulnerability

Affected versions: up till current processor architecture=20

Brief Description:=20
Simultaneous multi-threading on current processors allows for one process t=
o exploit out-of-order execution optimizations to leak information from co-=
executed processes. Conversely, this same setup allows for one process to f=
orce an increase or a decrease in out-of-order-execution optimizations in t=
he other process, thereby effecting its computed values and control flow.


- Sophia D'Antoine=

--Apple-Mail=_3DEF0288-470C-4E3C-AC87-9367AE73F3A4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webk=
it-line-break: after-white-space;" class=3D""><pre style=3D"widows: 1; marg=
in: 0em;" class=3D"">Hi,

I would like to request a CVE for a processor side channels using out of or=
der execution.&nbsp;</pre><pre style=3D"widows: 1; margin: 0em;" class=3D""=
><br class=3D""></pre><pre style=3D"widows: 1; margin: 0em;" class=3D"">Pas=
t discussion of this includes: <a href=3D"http://www.openwall.com/lists/oss=
-security/2015/08/11/16" class=3D"">http://www.openwall.com/lists/oss-secur=
ity/2015/08/11/16</a>

Details of attack:</pre><pre style=3D"widows: 1; margin: 0em;" class=3D""><=
span style=3D"white-space: pre-wrap;" class=3D""><a href=3D"https://blog.tr=
ailofbits.com/2015/07/21/hardware-side-channels-in-the-cloud/" class=3D"">h=
ttps://blog.trailofbits.com/2015/07/21/hardware-side-channels-in-the-cloud/=
</a></span></pre><pre style=3D"widows: 1; margin: 0em;" class=3D""></pre><p=
re style=3D"widows: 1; margin: 0em;" class=3D""><div class=3D""><font color=
=3D"#4787ff" class=3D""><span style=3D"white-space: pre-wrap;" class=3D""><=
a href=3D"http://sophia.re/RECON/" class=3D"">http://sophia.re/RECON/</a></=
span></font></div><pre style=3D"widows: 1; margin: 0em;" class=3D""><br cla=
ss=3D""></pre>Conferences presented at:</pre><pre style=3D"widows: 1; margi=
n: 0em;" class=3D"">RECON Montreal 2015 - <a href=3D"https://recon.cx/2015/=
schedule/events/29.html" class=3D"">https://recon.cx/2015/schedule/events/2=
9.html</a></pre><pre style=3D"widows: 1; margin: 0em;" class=3D"">Blackhat =
2015 - <a href=3D"https://www.blackhat.com/us-15/briefings.html#exploiting-=
out-of-order-execution-for-covert-cross-vm-communication" class=3D"">https:=
//www.blackhat.com/us-15/briefings.html#exploiting-out-of-order-execution-f=
or-covert-cross-vm-communication</a></pre><pre style=3D"widows: 1; margin: =
0em;" class=3D"">
Previously requested: no
Type: Side Channel Vulnerability</pre><pre style=3D"widows: 1; margin: 0em;=
" class=3D"">
Affected versions: up till current processor architecture&nbsp;</pre><pre s=
tyle=3D"widows: 1; margin: 0em;" class=3D"">
Brief Description:&nbsp;</pre><pre style=3D"widows: 1; margin: 0em;" class=
=3D"">Simultaneous multi-threading on current processors allows for one pro=
cess to exploit out-of-order execution optimizations to leak information fr=
om co-executed processes. Conversely, this same setup allows for one proces=
s to force an increase or a decrease in out-of-order-execution optimization=
s in the other process, thereby effecting its computed values and control f=
low.</pre><pre style=3D"widows: 1; margin: 0em;" class=3D""><br class=3D"">=
</pre><pre style=3D"widows: 1; margin: 0em;" class=3D"">
- Sophia D'Antoine</pre></body></html>=

--Apple-Mail=_3DEF0288-470C-4E3C-AC87-9367AE73F3A4--

--Apple-Mail=_E40000DA-8FDD-44FF-A394-C30C077902CC
Content-Disposition: attachment;
	filename=smime.p7s
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEH
AQAAoIILojCCBUwwggQ0oAMCAQICEAL56ypnHWS/F8dwJWA+AOYwDQYJKoZI
hvcNAQELBQAwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IElu
YzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNl
cnQgU0hBMiBBc3N1cmVkIElEIENBMB4XDTE1MDYxMzAwMDAwMFoXDTE3MDYx
MzEyMDAwMFowbDELMAkGA1UEBhMCVVMxETAPBgNVBAgTCE5ldyBZb3JrMREw
DwYDVQQHEwhOZXcgWW9yazEcMBoGA1UEChMTVHJhaWwgb2YgQml0cywgSW5j
LjEZMBcGA1UEAxMQU29waGlhIEQnQW50b2luZTCCASIwDQYJKoZIhvcNAQEB
BQADggEPADCCAQoCggEBALibdvJKpV9e9XplNqi/LA6My7jHmWibia0A3yGr
W5Ww2Xf4sBib2xDoHdNgKoN4QIL5UD/us+dUgBKYrafkar/gO89ziiLE0L/c
BJjGAQcHX7J9fyYlqls3dRT7yoQQMjx7k9M/CnSSg5yoWH6R1CQtK/G6jE4u
yM3DeMUkmV8F+iGjNiwul871RAgPBM/Xkr6VIjUO4bgwpn5giB8FFqYkc9mb
rwdV5wg684QitrIze1bu3U3I2G+GBWDzpxnA3vW4HkOxCABK/l6EehavCp2B
OJO1kZ/vyPVqSlnkRDSWdeYrnm9tZeXol7ddza+uUW3T/Se8Z5taoscwJX7a
qKECAwEAAaOCAe8wggHrMB8GA1UdIwQYMBaAFOcCI4AAT9jXvJQL2T90OUky
PIp5MB0GA1UdDgQWBBStwjnVHFMKXJyNRJ+tW6turV/02TAMBgNVHRMBAf8E
AjAAMCEGA1UdEQQaMBiBFnNvcGhpYUB0cmFpbG9mYml0cy5jb20wDgYDVR0P
AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDBDBgNV
HSAEPDA6MDgGCmCGSAGG/WwEAQIwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93
d3cuZGlnaWNlcnQuY29tL0NQUzCBiAYDVR0fBIGAMH4wPaA7oDmGN2h0dHA6
Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFNIQTJBc3N1cmVkSURDQS1n
MS5jcmwwPaA7oDmGN2h0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9EaWdpQ2Vy
dFNIQTJBc3N1cmVkSURDQS1nMS5jcmwweQYIKwYBBQUHAQEEbTBrMCQGCCsG
AQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKG
N2h0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFNIQTJBc3N1
cmVkSURDQS5jcnQwDQYJKoZIhvcNAQELBQADggEBAJrBIpXWeP/1/76Bo/Q7
D2UILcypj2tJZnJTECIntAI0R7IolN2ulULRSJ9Ko6Zvh70QJclS6KRci9bc
aMe4FMx3G/bdvFjpQkaJ6+uxbTrXHLe51jBzM1YmpTgrAj3lP3LRAPuB52K7
rvc+BOYCqP4MqhJafNS+rPobxf196KpQtgr6+L05L+keEXQOea+nCTTMyMgS
OisKA7Kf4KebrfW925XK9zyD9PAvSrfqYsOaHgGdVwrUuN+mZAXqVZrGAnD/
N5M/NJICD8DDA1qqzLtLQjkaTVV1z8IyuXJqIbdlmYKuDyW8ZDNmHsNKKJhu
zo8pKsNBoZI/ZGCBf77YFMQwggZOMIIFNqADAgECAhAErnlgZmaQGrnFf6Zs
W9zNMA0GCSqGSIb3DQEBCwUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxE
aWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNV
BAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0xMzExMDUxMjAw
MDBaFw0yODExMDUxMjAwMDBaMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxE
aWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNV
BAMTG0RpZ2lDZXJ0IFNIQTIgQXNzdXJlZCBJRCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBANz4ESM/arXvwCd5Gy0Fh6IQQzHfDtQVG093
pCLOPoxw8L4Hjt0nKrwBHbYsCsrdaVgfQe1qBR/aY3hZHiIsK/i6fsk1O1bx
H3xCfiWwIxnGRTjXPUT5IHxgrhywWhgEvo8796nwlJqmDGNJtkEXU0AyvU/m
UHpQHyVF6PGJr83/Xv9Q8/AXEf+9xYn1vWK52PuORQSFbZnNxUhN/SarAjZF
6jbXX2riGoJBCtzp2fWRF47GIa04PBPmHn9mnNVN2Uba9s9Sp307JMO0wVE1
xpvr1O9+5HsD4US9egs34E/LgooNcRjkpuCJLBvzsnM8wbCSnhh9vat9xX0I
oSzCn3MCAwEAAaOCAvgwggL0MBIGA1UdEwEB/wQIMAYBAf8CAQAwDgYDVR0P
AQH/BAQDAgGGMDQGCCsGAQUFBwEBBCgwJjAkBggrBgEFBQcwAYYYaHR0cDov
L29jc3AuZGlnaWNlcnQuY29tMIGBBgNVHR8EejB4MDqgOKA2hjRodHRwOi8v
Y3JsNC5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURSb290Q0EuY3Js
MDqgOKA2hjRodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1
cmVkSURSb290Q0EuY3JsMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcD
BDCCAbMGA1UdIASCAaowggGmMIIBogYKYIZIAYb9bAACBDCCAZIwKAYIKwYB
BQUHAgEWHGh0dHBzOi8vd3d3LmRpZ2ljZXJ0LmNvbS9DUFMwggFkBggrBgEF
BQcCAjCCAVYeggFSAEEAbgB5ACAAdQBzAGUAIABvAGYAIAB0AGgAaQBzACAA
QwBlAHIAdABpAGYAaQBjAGEAdABlACAAYwBvAG4AcwB0AGkAdAB1AHQAZQBz
ACAAYQBjAGMAZQBwAHQAYQBuAGMAZQAgAG8AZgAgAHQAaABlACAARABpAGcA
aQBDAGUAcgB0ACAAQwBQAC8AQwBQAFMAIABhAG4AZAAgAHQAaABlACAAUgBl
AGwAeQBpAG4AZwAgAFAAYQByAHQAeQAgAEEAZwByAGUAZQBtAGUAbgB0ACAA
dwBoAGkAYwBoACAAbABpAG0AaQB0ACAAbABpAGEAYgBpAGwAaQB0AHkAIABh
AG4AZAAgAGEAcgBlACAAaQBuAGMAbwByAHAAbwByAGEAdABlAGQAIABoAGUA
cgBlAGkAbgAgAGIAeQAgAHIAZQBmAGUAcgBlAG4AYwBlAC4wHQYDVR0OBBYE
FOcCI4AAT9jXvJQL2T90OUkyPIp5MB8GA1UdIwQYMBaAFEXroq/0ksuCMS1R
i6enIZ3zbcgPMA0GCSqGSIb3DQEBCwUAA4IBAQBO1Iknuf0dh3d+DygFkPEK
L8k7Pr2TnJDGr/qRUYcyVGvoysFxUVyZjrX64GIZmaYHmnwTJ9vlAqKEEtkV
9gpEV8Q0j21zHzrWoAE93uOC5EVrsusl/YBeHTmQvltC9s6RYOP5oFYMSBDO
M2h7zZOr8GrLT1gPuXtdGwSBnqci4ldJJ+6Skwi+aQhTAjouXcgZ9FCATgLZ
sF2RtJOH+ZaWgVVAjmbtgti7KF/tTGHtBlgoGVMRRLxHICmyBGzYiVSZO3Xb
Z3gsHpJ4xlU9WBIRMm69QwxNNNt7xkLb7L6rm2FMBpLjjt8hKlBXBMBgojXV
JJ5mNwlJz9X4ZbPg4m7CMYIDGTCCAxUCAQEweTBlMQswCQYDVQQGEwJVUzEV
MBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQu
Y29tMSQwIgYDVQQDExtEaWdpQ2VydCBTSEEyIEFzc3VyZWQgSUQgQ0ECEAL5
6ypnHWS/F8dwJWA+AOYwCQYFKw4DAhoFAKCCAXUwGAYJKoZIhvcNAQkDMQsG
CSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTUwODEyMDEzNTI3WjAjBgkq
hkiG9w0BCQQxFgQUnX2f6zzIDLVkdkN/Cr3vEnVg0RkwgYgGCSsGAQQBgjcQ
BDF7MHkwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZ
MBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNlcnQg
U0hBMiBBc3N1cmVkIElEIENBAhAC+esqZx1kvxfHcCVgPgDmMIGKBgsqhkiG
9w0BCRACCzF7oHkwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0
IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGln
aUNlcnQgU0hBMiBBc3N1cmVkIElEIENBAhAC+esqZx1kvxfHcCVgPgDmMA0G
CSqGSIb3DQEBAQUABIIBAHlhd6jrPyCuScnRUs3ftVD2AWNnHgL8igk8Mvs/
q1F2e2VjLM4hrVpFF8P4VvubT1/k0PZb4LPx/mWvV8nLrIEEmyBvLt/izYDT
hw0r4GjcYRZkG74CLxJwrAQ3deT1eUbs2e5cjbO0GKBogIQAl2JOrJfIGL7H
J4X0i+d9rtKm4NGVcGLBrBhV3huhDCT8qWQTftIVaNPjHQt98qihfnXGx3oU
0aleBJOTgCBvOHGpud8NQwMPlXihbpd5hdgk88yjGXtuJNMk9Gzhcz4PsPJS
QXrgoThP9b9i+Y045opDQugkKPTJYZdbBCnc2dYQwGiyD4+/bqkpAe3rjByZ
sasAAAAAAAA=

--Apple-Mail=_E40000DA-8FDD-44FF-A394-C30C077902CC--
