X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14105" "Thursday" "20" "August" "2015" "01:33:26" "-0400" "sophia" "sophia@trailofbits.com" "<03D26C4F-29A7-482C-B9AD-41CA98209129@trailofbits.com>" "253" "Re: [oss-security] CVE request - Processor side channels using out of order execution" nil nil nil "8" "2015082005:33:26" "[oss-security] CVE request - Processor side channels using out of order execution" (number mark "        sophia@trail Aug 20  253/14105 " thread-indent "\"Re: [oss-security] CVE request - Processor side channels using out of order execution\"\n") "<20150819212628.GA20648@openwall.com>" ("<9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com>" "<20150812141846.GA8647@openwall.com>" "<E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>" "<E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com>" "<CANO=Ty0hAqSf+-42msK6p8vwt4F4AswSDbmjxw5ZeNSSFDMDsg@mail.gmail.com>" "<3F44AEC5-FF76-430D-BD8E-CC0E2E6BBDC0@trailofbits.com>" "<20150819212628.GA20648@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25768 invoked by uid 550); 20 Aug 2015 05:33:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25746 invoked from network); 20 Aug 2015 05:33:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trailofbits.com; s=trailofbits;
        h=from:content-type:message-id:mime-version:subject:date:references
         :to:in-reply-to;
        bh=KiSGkjhqO+HlhFFNMHzApwJyT7/ZQuBsL5eG2YGv4kM=;
        b=PvlGT8LYK/sdEPjXlt+yMKB40iH8zA+YNgLCHxTfVv7dUbygeAf6eO+L7h4VL5i/KF
         NACv6+8LRhrfimU0Mf0yth1D1SBpBLeS1jKQEkj4rC0xZnG0+J5SqrgIxiTMPXiM2IDi
         hXHiredA7hMs4BWM4pdtnaDWPT36aY5BJcDEE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-type:message-id:mime-version
         :subject:date:references:to:in-reply-to;
        bh=KiSGkjhqO+HlhFFNMHzApwJyT7/ZQuBsL5eG2YGv4kM=;
        b=JtrgC+Tr0XW1XycnJ6fdQJNO9QDk+2RKyaaNqWHmREXHSev8iCNenKKNynerIEA+ZH
         ngABWa8b5+tLP6CLCQPvc0zEEnwOhceEhi1lbWLZmgd9LiC8k3Jil7xMzt3DgZImSoex
         9mZb2mOD9O1RkuwdK1g47yZOUU4FxC2TX6ZlskKN0eihZbCQsH1mbIyYFdyiy28XoUv3
         WlyKeHKFgvN23hZHk2kQdhqKBixLBrdzB7pBv3BAUjkpGGfVSxk/8/VPer82ENiJ6jdP
         uHpAoKKUsBZpO7Fei+VWiA6CpNBEXMRGcq5IPB8tQF/chCRrllfVmSLjTGI9F0NTaoU9
         Gu2A==
X-Gm-Message-State: ALoCoQnj2hOYz7OtBJBCeNrsOjWeejScVRhZvEA2mpCCpwVlkmzvmRKcUcT6oUZ/MfshK4HZX/0v
X-Received: by 10.55.19.136 with SMTP id 8mr2239211qkt.103.1440048811049;
        Wed, 19 Aug 2015 22:33:31 -0700 (PDT)
Content-Type: multipart/signed; boundary="Apple-Mail=_372DE34E-B6CC-4695-ACB5-25744D637E77"; protocol="application/pkcs7-signature"; micalg=sha1
Message-Id: <03D26C4F-29A7-482C-B9AD-41CA98209129@trailofbits.com>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
References: <9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com> <20150812141846.GA8647@openwall.com> <E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com> <E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com> <CANO=Ty0hAqSf+-42msK6p8vwt4F4AswSDbmjxw5ZeNSSFDMDsg@mail.gmail.com> <3F44AEC5-FF76-430D-BD8E-CC0E2E6BBDC0@trailofbits.com> <20150819212628.GA20648@openwall.com>
In-Reply-To: <20150819212628.GA20648@openwall.com>
X-Mailer: Apple Mail (2.2102)
Date: Thu, 20 Aug 2015 01:33:26 -0400
From: sophia <sophia@trailofbits.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Processor side channels using out of order execution
To: oss-security@lists.openwall.com

--Apple-Mail=_372DE34E-B6CC-4695-ACB5-25744D637E77
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8FC1B015-7D0C-4513-A7D7-9F64E27CA008"


--Apple-Mail=_8FC1B015-7D0C-4513-A7D7-9F64E27CA008
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

Thanks for the reminder, the URL to the material for the out-of-order-explo=
itation setup is below:

http://sophia.re/side_channel_material <http://sophia.re/side_channel_mater=
ial>

- Sophia

> On Aug 19, 2015, at 5:26 PM, Solar Designer <solar@openwall.com> wrote:
>=20
> Sophia, Kurt, all -
>=20
> This is an old-fashioned mailing list, not business correspondence.
> Top-posting and over-quoting are discouraged.  Also discouraged are what
> I call thanks-only postings.  It's polite to thank the person, but
> unless you have something valuable to add, those postings are not worth
> distributing to all the list subscribers.
>=20
> To make my own posting more valuable (rather than moderation-only):
>=20
>>> On Wed, Aug 19, 2015 at 2:29 PM, sophia <sophia@trailofbits.com> wrote:
>>>> Just wondering how to get more information about the process for
>>>> requesting a CVE for this vulnerability.
>=20
> Kurt provided that, but more importantly: you should be patient.  MITRE
> are often slow at assigning CVE IDs.  It's only been a week.  They often
> need several weeks, unfortunately.  (In contrast, Kurt is usually quick
> to assign CVE IDs on the distros list, but this only works for not yet
> public issues and is only acceptable if those issues are disclosed to
> the distros list primarily for the purpose of informing the distros
> rather than for acquiring a CVE ID.  Having a CVE ID is too unimportant
> to be worth the risk.)
>=20
>>>> On Aug 12, 2015, at 12:24 PM, sophia <sophia@trailofbits.com> wrote:
>>>>> The vulnerability definitely applies to hypervisors as used by popular
>>>>> commercial cloud platforms. These hypervisors try to guarantee that o=
ne
>>>>> user's processes in a VM are meant to be isolated from another VM's.
>>>>> Isolation is referenced as a feature multiple times in Xen's spec:
>>>>> http://www-archive.xenproject.org/files/Marketing/WhyXen.pdf.
>=20
> WhyXen.pdf does mention isolation, but it doesn't mention covert
> channels, leaving it ambiguous (to those of us aware of the possibility
> of covert channels) what level of isolation is actually intended.  Maybe
> they need to revise the document to explicitly exclude covert channels.
>=20
> Historically, access control didn't automatically imply lack of covert
> channels.  For example, per the Orange Book covert channels weren't even
> considered for the lower classes such as C1 and C2, where typical and
> "Trusted" multi-user systems fell.  They are only considered starting
> with B2 and B3, which rarely applied:
>=20
> https://en.wikipedia.org/wiki/Trusted_Computer_System_Evaluation_Criteria=
#Divisions_and_classes
>=20
> Once again, to avoid misunderstanding, I only use this as a historical
> reference.
>=20
>>>>> Also, I will release all of my code on my website when I get back to =
my
>>>>> server later today.
>=20
> Have you?  Please post the URL in here.
>=20
> Thank you!
>=20
> Alexander


--Apple-Mail=_8FC1B015-7D0C-4513-A7D7-9F64E27CA008
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;" class=3D""><div class=3D""=
>Hi,</div><div class=3D""><br class=3D""></div><div class=3D"">Thanks for t=
he reminder, the URL to the material for the out-of-order-exploitation setu=
p is below:</div><div class=3D""><br class=3D""></div><div class=3D""><a hr=
ef=3D"http://sophia.re/side_channel_material" class=3D"">http://sophia.re/s=
ide_channel_material</a></div><div class=3D""><br class=3D""></div><div cla=
ss=3D"">- Sophia</div><br class=3D""><div><blockquote type=3D"cite" class=
=3D""><div class=3D"">On Aug 19, 2015, at 5:26 PM, Solar Designer &lt;<a hr=
ef=3D"mailto:solar@openwall.com" class=3D"">solar@openwall.com</a>&gt; wrot=
e:</div><br class=3D"Apple-interchange-newline"><div class=3D"">Sophia, Kur=
t, all -<br class=3D""><br class=3D"">This is an old-fashioned mailing list=
, not business correspondence.<br class=3D"">Top-posting and over-quoting a=
re discouraged. &nbsp;Also discouraged are what<br class=3D"">I call thanks=
-only postings. &nbsp;It's polite to thank the person, but<br class=3D"">un=
less you have something valuable to add, those postings are not worth<br cl=
ass=3D"">distributing to all the list subscribers.<br class=3D""><br class=
=3D"">To make my own posting more valuable (rather than moderation-only):<b=
r class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><blockquot=
e type=3D"cite" class=3D"">On Wed, Aug 19, 2015 at 2:29 PM, sophia &lt;<a h=
ref=3D"mailto:sophia@trailofbits.com" class=3D"">sophia@trailofbits.com</a>=
&gt; wrote:<br class=3D""><blockquote type=3D"cite" class=3D"">Just wonderi=
ng how to get more information about the process for<br class=3D"">requesti=
ng a CVE for this vulnerability.<br class=3D""></blockquote></blockquote></=
blockquote><br class=3D"">Kurt provided that, but more importantly: you sho=
uld be patient. &nbsp;MITRE<br class=3D"">are often slow at assigning CVE I=
Ds. &nbsp;It's only been a week. &nbsp;They often<br class=3D"">need severa=
l weeks, unfortunately. &nbsp;(In contrast, Kurt is usually quick<br class=
=3D"">to assign CVE IDs on the distros list, but this only works for not ye=
t<br class=3D"">public issues and is only acceptable if those issues are di=
sclosed to<br class=3D"">the distros list primarily for the purpose of info=
rming the distros<br class=3D"">rather than for acquiring a CVE ID. &nbsp;H=
aving a CVE ID is too unimportant<br class=3D"">to be worth the risk.)<br c=
lass=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><blockquote t=
ype=3D"cite" class=3D""><blockquote type=3D"cite" class=3D"">On Aug 12, 201=
5, at 12:24 PM, sophia &lt;<a href=3D"mailto:sophia@trailofbits.com" class=
=3D"">sophia@trailofbits.com</a>&gt; wrote:<br class=3D""><blockquote type=
=3D"cite" class=3D"">The vulnerability definitely applies to hypervisors as=
 used by popular<br class=3D"">commercial cloud platforms. These hypervisor=
s try to guarantee that one<br class=3D"">user's processes in a VM are mean=
t to be isolated from another VM's.<br class=3D"">Isolation is referenced a=
s a feature multiple times in Xen's spec:<br class=3D""><a href=3D"http://w=
ww-archive.xenproject.org/files/Marketing/WhyXen.pdf" class=3D"">http://www=
-archive.xenproject.org/files/Marketing/WhyXen.pdf</a>.<br class=3D""></blo=
ckquote></blockquote></blockquote></blockquote><br class=3D"">WhyXen.pdf do=
es mention isolation, but it doesn't mention covert<br class=3D"">channels,=
 leaving it ambiguous (to those of us aware of the possibility<br class=3D"=
">of covert channels) what level of isolation is actually intended. &nbsp;M=
aybe<br class=3D"">they need to revise the document to explicitly exclude c=
overt channels.<br class=3D""><br class=3D"">Historically, access control d=
idn't automatically imply lack of covert<br class=3D"">channels. &nbsp;For =
example, per the Orange Book covert channels weren't even<br class=3D"">con=
sidered for the lower classes such as C1 and C2, where typical and<br class=
=3D"">"Trusted" multi-user systems fell. &nbsp;They are only considered sta=
rting<br class=3D"">with B2 and B3, which rarely applied:<br class=3D""><br=
 class=3D""><a href=3D"https://en.wikipedia.org/wiki/Trusted_Computer_Syste=
m_Evaluation_Criteria#Divisions_and_classes" class=3D"">https://en.wikipedi=
a.org/wiki/Trusted_Computer_System_Evaluation_Criteria#Divisions_and_classe=
s</a><br class=3D""><br class=3D"">Once again, to avoid misunderstanding, I=
 only use this as a historical<br class=3D"">reference.<br class=3D""><br c=
lass=3D""><blockquote type=3D"cite" class=3D""><blockquote type=3D"cite" cl=
ass=3D""><blockquote type=3D"cite" class=3D""><blockquote type=3D"cite" cla=
ss=3D"">Also, I will release all of my code on my website when I get back t=
o my<br class=3D"">server later today.<br class=3D""></blockquote></blockqu=
ote></blockquote></blockquote><br class=3D"">Have you? &nbsp;Please post th=
e URL in here.<br class=3D""><br class=3D"">Thank you!<br class=3D""><br cl=
ass=3D"">Alexander<br class=3D""></div></blockquote></div><br class=3D""></=
body></html>=

--Apple-Mail=_8FC1B015-7D0C-4513-A7D7-9F64E27CA008--

--Apple-Mail=_372DE34E-B6CC-4695-ACB5-25744D637E77
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
CSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTUwODIwMDUzMzI3WjAjBgkq
hkiG9w0BCQQxFgQUtzjgKTOQocrsMvODI4U1IwjnJ+owgYgGCSsGAQQBgjcQ
BDF7MHkwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZ
MBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNlcnQg
U0hBMiBBc3N1cmVkIElEIENBAhAC+esqZx1kvxfHcCVgPgDmMIGKBgsqhkiG
9w0BCRACCzF7oHkwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0
IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGln
aUNlcnQgU0hBMiBBc3N1cmVkIElEIENBAhAC+esqZx1kvxfHcCVgPgDmMA0G
CSqGSIb3DQEBAQUABIIBADJ6MD2/Y4Wfjm7Ij44zYDoTWWPMx7mL5s4t0XlN
wDLUZ78ApBANySItxzBDqEiEzgCmVzX2laTWU+AFQISozJPR/FeBlhT0Dxkf
xrIZp1N+Rrjx3FOuQaNL/8zPp2RdW9N6V8DTPtQDVGjNdr9ifAzOpajbc2dB
GHUATpTDGTq5Yp3HiDHBn/YPw8hR7gNO+mQ4FItcm55nD6ub9JiWs0y/Xj7e
/VrogmSTMtL+qddsZAFNbt1Te71R1g/30XzDuJXIfGMZ/Bzmp9RQuFv0DuMH
jD1X+fk+E5YSpzYia9vf2mXRAh9tv+EH+HstaELRDY1qfy5zPLr5OpmIMnyw
4H0AAAAAAAA=

--Apple-Mail=_372DE34E-B6CC-4695-ACB5-25744D637E77--
