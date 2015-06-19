X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11622" "Friday" "19" "June" "2015" "02:49:25" "+0200" "Christoph Anton Mitterer" "calestyo@scientia.net" "<1434674965.4822.39.camel@scientia.net>" "229" "[oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob" nil nil nil "6" "2015061900:49:25" "[oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob" (number mark "        calestyo@sci Jun 19  229/11622 " thread-indent "\"[oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob\"\n") "<CANTw=MPhYqnVgYghW2Z4EqOnoYKCJBXaiH+76czz294DAbDVhg@mail.gmail.com>" ("<1434424604.6233.18.camel@scientia.net>" "<CANTw=MOheytdHA7MijZ242ENxSnUJX-5qr+4iAV4McwjKydb+w@mail.gmail.com>" "<1434460506.5072.5.camel@scientia.net>" "<CANTw=MPhYqnVgYghW2Z4EqOnoYKCJBXaiH+76czz294DAbDVhg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19998 invoked by uid 550); 19 Jun 2015 00:49:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19942 invoked from network); 19 Jun 2015 00:49:39 -0000
X-Virus-Scanned: Debian amavisd-new at
	mailpolicy-02.live.igb.homer.key-systems.net
Message-ID: <1434674965.4822.39.camel@scientia.net>
In-Reply-To: <CANTw=MPhYqnVgYghW2Z4EqOnoYKCJBXaiH+76czz294DAbDVhg@mail.gmail.com>
References: <1434424604.6233.18.camel@scientia.net>
	 <CANTw=MOheytdHA7MijZ242ENxSnUJX-5qr+4iAV4McwjKydb+w@mail.gmail.com>
	 <1434460506.5072.5.camel@scientia.net>
	 <CANTw=MPhYqnVgYghW2Z4EqOnoYKCJBXaiH+76czz294DAbDVhg@mail.gmail.com>
Content-Type: multipart/signed; micalg="sha-512";
	protocol="application/x-pkcs7-signature";
	boundary="=-8h52xBoLwiqWVIbkW4wN"
X-Mailer: Evolution 3.16.3-1 
Mime-Version: 1.0
Cc: 786909@bugs.debian.org, oss-security@lists.openwall.com
Date: Fri, 19 Jun 2015 02:49:25 +0200
From: Christoph Anton Mitterer <calestyo@scientia.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Bug#786909: chromium: unconditionally downloads binary blob
To: Michael Gilbert <mgilbert@debian.org>

--=-8h52xBoLwiqWVIbkW4wN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2015-06-18 at 20:19 -0400, Michael Gilbert wrote:
> Except that the actual contents of the downloaded files in many ways
> do not actually matter.  Those files are nacl executables, which are
> sandboxed in any nacl-enabled chromium, so barring a sandbox escape
> included in the files, this is functionally the same as visiting any
> nacl website (less the fact that hotword automatically gets=20
> microphone
> permission, which itself is worth independent critique).
I never really understood why browser need to be more and more like
complete operating systems, taking control over hardware which is
simply not their belonging...
If people want to voice/video conferencing, then they should need to
start some locally installed software for just that purpose.

But maybe I'm just too old-fashioned and don't want to have everything
run on the web or in the cloud. :-(


> Additionally, the Debian packages are intentionally built with nacl
> disabled (in fact not built at all).  So, at least on Debian, even if
> the downloaded files were in fact malicious, without a nacl
> interpreter present, there is absolutely no way to trigger the
> badness.
Definitely good news...
But my primary point was more that this should simply not happen...
cause in another case, we might not have had that safety of having nacl
not even available.
As I've mentioned, we've had the same issue already with Firefox which
downloaded OpenH246 and which (AFAIR) was actually loaded.

In principle, all code which is not manually
downloaded/compiled/executed by the user should enter a Debian box
*only* via the package management system.


> Maybe now it's clear that a meaningful conversation at the time would
> have preempted the ensuing misinformation campaign.
Well it wasn't me who posted this news to several other places,...


> I simply do not follow the logic leading to this conclusion.  How
> does
> engaging in discussion lead to any specific problem being ignored
> exactly?
Well, discussing things at oss-security doesn't have any direct effect
on Debian, right?

Discussing/reporting things directly at upstream is mostly just a waste
of time, at least when it comes about "meta" security issues; just look
at the Mozilla bugtracker for issues reported by me.

And unfortunately, the same applies largely to Debian itself. You may
remember several discussions I've ignited on d-d about such higher
level security issues,... like the "downloader packages", or the far
too high validity times of Release files.


> Anyway, if some incredibly basic homework had been done, you could
> have convinced yourself of the non-issue nature of this problem,
> rather than engaging in unfounded speculation.
I think practically it's extremely time consuming to really confirm
whether such code was loaded or not, especially when one is not
familiar with the code base, which I'm not in the case of Chromium.

And even if that code was just downloaded (but not executed) I still
think it's far from ideal.
configure-options may accidentally change, as may the download code
itself - simply not having any such functionalities in the code is
probably safer than having it just disabled and/or being simply a bit
lucky as we apparently were in this case.


> That is exactly what Debian unstable is for
Phew,... realistically, many people use sid for their normal desktop
systems...


> Well, it is out there now [0,1], unfortunately with a huge amount of
> misinformation.
My apologies, if you feel that this would fall into my
responsibility... as this wasn't my intention (otherwise I'd have CCed
it to d-d).
Personally I think that you as maintainer(s) should feel the least
responsible for this,... it's rather upstream who should need to
reconsider "some things"; and if they got a bit attention now, than
this may not be the biggest harm.


As said before, my main point is the question what we can do to prevent
such cases in the future.
This time, nothing might have gotten executed,... and the code (likely)
wouldn't have been malicious.
Next time it may look different.=20


Best wishes,
Chris.=

--=-8h52xBoLwiqWVIbkW4wN
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG
9w0BBwEAAKCCEZIwggW/MIIDp6ADAgECAgMCOakwDQYJKoZIhvcNAQENBQAw
VDEUMBIGA1UEChMLQ0FjZXJ0IEluYy4xHjAcBgNVBAsTFWh0dHA6Ly93d3cu
Q0FjZXJ0Lm9yZzEcMBoGA1UEAxMTQ0FjZXJ0IENsYXNzIDMgUm9vdDAeFw0x
NDA2MTIxNjM2MThaFw0xNjA2MTExNjM2MThaMHwxITAfBgNVBAMTGENocmlz
dG9waCBBbnRvbiBNaXR0ZXJlcjEkMCIGCSqGSIb3DQEJARYVY2FsZXN0eW9A
c2NpZW50aWEubmV0MTEwLwYJKoZIhvcNAQkBFiJtYWlsQGNocmlzdG9waC5h
bnRvbi5taXR0ZXJlci5uYW1lMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
CgKCAQEA4phP/j9vT9dZT+k3ffHxvRWMOuzBnu5O3Fl4y2+WL7pLrfLiEhWz
GXhHvjSqpt4vCNSdqy43453nnu8+hMb+uEtqSIL1AHU5eLhuDNVN9S4bt9E7
nA2WKYBULCUi/xCD/GL7ToyJNwhrhzcCZ7pXSc3xVqFoC4f6weU9ExhoEZQN
RpTM0BFCOi4fRxvKFNnUYgjKhqy0Ta5H0Xx86mAp0Q4dxoD7mhI5iTF6TRkU
heELxF24JCuAf04M89Cwft6DRH1FpJ3yvgW2B5U5aFSL4ZnF4N/wyCB7Dkm1
rQ7RCAvw5btkf0VdPnU7ccDCx8HEc2nxK/lbCjrznvh3sa1CCwIDAQABo4IB
cDCCAWwwDAYDVR0TAQH/BAIwADBWBglghkgBhvhCAQ0ESRZHVG8gZ2V0IHlv
dXIgb3duIGNlcnRpZmljYXRlIGZvciBGUkVFIGhlYWQgb3ZlciB0byBodHRw
Oi8vd3d3LkNBY2VydC5vcmcwDgYDVR0PAQH/BAQDAgOoMEAGA1UdJQQ5MDcG
CCsGAQUFBwMEBggrBgEFBQcDAgYKKwYBBAGCNwoDBAYKKwYBBAGCNwoDAwYJ
YIZIAYb4QgQBMDIGCCsGAQUFBwEBBCYwJDAiBggrBgEFBQcwAYYWaHR0cDov
L29jc3AuY2FjZXJ0Lm9yZzA4BgNVHR8EMTAvMC2gK6AphidodHRwOi8vY3Js
LmNhY2VydC5vcmcvY2xhc3MzLXJldm9rZS5jcmwwRAYDVR0RBD0wO4EVY2Fs
ZXN0eW9Ac2NpZW50aWEubmV0gSJtYWlsQGNocmlzdG9waC5hbnRvbi5taXR0
ZXJlci5uYW1lMA0GCSqGSIb3DQEBDQUAA4ICAQBefctiLgGle5baspuozyA4
k7Up7SVhGHbif6pQfoFc/9Thx9GXnYpX+U64PMyWBfWwHZIy52Vg0RVkvPi1
t6miGyBfoSpC6ooR0bKWtUIogw/ymqKWlTLVR8kbLqRmRk4juMtCXG2K3yMy
gX/rjkuUSuFj2BjpkmzgCtMojbUMYbszePmhQ7DJ62YEdtKpcjN94QAsI5GW
lIAbs3KJazAcaNCRJeXCLcUMchyKHJA+NXH5az/ekBxBMBzJP2An20PP88UI
4JW18z31KiG9UVGa2uO4l4aWgVe2GnhNEdCD/o48msJEWKAt5vl2yMqr7ihm
NPocU2+/FW0xPe/vftdOTD9pgXdSGf4prdD+23q2YvpalOCzr2p8yCJZNVBP
MxAP4mL03OEktXza4wohqAmceXKfGUNwRGBaPvtIGnPrpLhCQ+2YJDg8g1UE
sk23bKyZlJWeKJyVqOBsDJmjaBsN/qKhQFnav+zQdqGhMeaSisF/53mD3gyV
Yg2JRl18apgGbg32kyLmomqa0JbhnY3Dc3FVtZfe+P+s2Cyep3pVKvFer2ll
RoGm8TwraG5Yhyx8Oq/1qETpstjbURJOVBLDCV4AjOEUj0ZnE/tEo/DKyexg
GaViNvjp+IZdFdJhYmsVjw4Q3vG7O0pfsLiYEyQjeDgjNEWDfa5/MufPywIf
xzCCBb8wggOnoAMCAQICAwI5qTANBgkqhkiG9w0BAQ0FADBUMRQwEgYDVQQK
EwtDQWNlcnQgSW5jLjEeMBwGA1UECxMVaHR0cDovL3d3dy5DQWNlcnQub3Jn
MRwwGgYDVQQDExNDQWNlcnQgQ2xhc3MgMyBSb290MB4XDTE0MDYxMjE2MzYx
OFoXDTE2MDYxMTE2MzYxOFowfDEhMB8GA1UEAxMYQ2hyaXN0b3BoIEFudG9u
IE1pdHRlcmVyMSQwIgYJKoZIhvcNAQkBFhVjYWxlc3R5b0BzY2llbnRpYS5u
ZXQxMTAvBgkqhkiG9w0BCQEWIm1haWxAY2hyaXN0b3BoLmFudG9uLm1pdHRl
cmVyLm5hbWUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDimE/+
P29P11lP6Td98fG9FYw67MGe7k7cWXjLb5Yvukut8uISFbMZeEe+NKqm3i8I
1J2rLjfjneee7z6Exv64S2pIgvUAdTl4uG4M1U31Lhu30TucDZYpgFQsJSL/
EIP8YvtOjIk3CGuHNwJnuldJzfFWoWgLh/rB5T0TGGgRlA1GlMzQEUI6Lh9H
G8oU2dRiCMqGrLRNrkfRfHzqYCnRDh3GgPuaEjmJMXpNGRSF4QvEXbgkK4B/
Tgzz0LB+3oNEfUWknfK+BbYHlTloVIvhmcXg3/DIIHsOSbWtDtEIC/Dlu2R/
RV0+dTtxwMLHwcRzafEr+VsKOvOe+HexrUILAgMBAAGjggFwMIIBbDAMBgNV
HRMBAf8EAjAAMFYGCWCGSAGG+EIBDQRJFkdUbyBnZXQgeW91ciBvd24gY2Vy
dGlmaWNhdGUgZm9yIEZSRUUgaGVhZCBvdmVyIHRvIGh0dHA6Ly93d3cuQ0Fj
ZXJ0Lm9yZzAOBgNVHQ8BAf8EBAMCA6gwQAYDVR0lBDkwNwYIKwYBBQUHAwQG
CCsGAQUFBwMCBgorBgEEAYI3CgMEBgorBgEEAYI3CgMDBglghkgBhvhCBAEw
MgYIKwYBBQUHAQEEJjAkMCIGCCsGAQUFBzABhhZodHRwOi8vb2NzcC5jYWNl
cnQub3JnMDgGA1UdHwQxMC8wLaAroCmGJ2h0dHA6Ly9jcmwuY2FjZXJ0Lm9y
Zy9jbGFzczMtcmV2b2tlLmNybDBEBgNVHREEPTA7gRVjYWxlc3R5b0BzY2ll
bnRpYS5uZXSBIm1haWxAY2hyaXN0b3BoLmFudG9uLm1pdHRlcmVyLm5hbWUw
DQYJKoZIhvcNAQENBQADggIBAF59y2IuAaV7ltqym6jPIDiTtSntJWEYduJ/
qlB+gVz/1OHH0Zedilf5Trg8zJYF9bAdkjLnZWDRFWS8+LW3qaIbIF+hKkLq
ihHRspa1QiiDD/KaopaVMtVHyRsupGZGTiO4y0JcbYrfIzKBf+uOS5RK4WPY
GOmSbOAK0yiNtQxhuzN4+aFDsMnrZgR20qlyM33hACwjkZaUgBuzcolrMBxo
0JEl5cItxQxyHIockD41cflrP96QHEEwHMk/YCfbQ8/zxQjglbXzPfUqIb1R
UZra47iXhpaBV7YaeE0R0IP+jjyawkRYoC3m+XbIyqvuKGY0+hxTb78VbTE9
7+9+105MP2mBd1IZ/imt0P7berZi+lqU4LOvanzIIlk1UE8zEA/iYvTc4SS1
fNrjCiGoCZx5cp8ZQ3BEYFo++0gac+ukuEJD7ZgkODyDVQSyTbdsrJmUlZ4o
nJWo4GwMmaNoGw3+oqFAWdq/7NB2oaEx5pKKwX/neYPeDJViDYlGXXxqmAZu
DfaTIuaiaprQluGdjcNzcVW1l974/6zYLJ6nelUq8V6vaWVGgabxPCtobliH
LHw6r/WoROmy2NtREk5UEsMJXgCM4RSPRmcT+0Sj8MrJ7GAZpWI2+On4hl0V
0mFiaxWPDhDe8bs7Sl+wuJgTJCN4OCM0RYN9rn8y58/LAh/HMIIGCDCCA/Cg
AwIBAgIBATANBgkqhkiG9w0BAQQFADB5MRAwDgYDVQQKEwdSb290IENBMR4w
HAYDVQQLExVodHRwOi8vd3d3LmNhY2VydC5vcmcxIjAgBgNVBAMTGUNBIENl
cnQgU2lnbmluZyBBdXRob3JpdHkxITAfBgkqhkiG9w0BCQEWEnN1cHBvcnRA
Y2FjZXJ0Lm9yZzAeFw0wNTEwMTQwNzM2NTVaFw0zMzAzMjgwNzM2NTVaMFQx
FDASBgNVBAoTC0NBY2VydCBJbmMuMR4wHAYDVQQLExVodHRwOi8vd3d3LkNB
Y2VydC5vcmcxHDAaBgNVBAMTE0NBY2VydCBDbGFzcyAzIFJvb3QwggIiMA0G
CSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCrSTURSHzSJn5TlM9Dqd0o10Iq
i/OHeBlYfA+e2ol94fvrcpANdKGWZKufoCSZc9riVXbHF3v1BKxGuMO+f2SN
EGwk82GcwPKQ+lHm9WkBY8MPVuJKQs/iRIwlKKjFeQl9RrmK8+nzNCkIReQc
n8uUBByBqBSzmGXEQ+xOgo0J0b2qW42S0OzekMV/CsLj6+YxWl50PpczWejD
Az1gM7/30W9HxM3uYoNSbi4ImqTZFRiRpoWSR7CuSOtttyHshRpocjWr//AQ
XcD0lKdq1TuSfkyQBX6TwSyLpI5idBVxbgtxA+qvFTia1NIFcm+M+SvrWnIl
+TlG43IbPgTDZCciECqKT1inA62+tC4T7V2qSNfVfdQqe1z6RgRQ5MwOQluM
7dvyz/yWk+DbETZUYjQ4jwxgmzuXVjit89Jbi6Bb6k6WuHzX1aCGcEDTkSm3
ojyt9Yy7zxqSiuQ0e8DYbF/pCsLDpyCaWt8sXVJcukfVm+8kKHA4IC/VfynA
skEDaJLM4JzMl0tF7zoQCqtwOpiVcK01seqFK6QcgCExqa5geoAmSAC4AcCT
Y1UikTxW56/bOiXzjzFU6iaLgVn5odFTEcV7nQP2dBHgbbEsPyyGkZlxmqZ3
izRg0RS0LKydr4wQ05/EavhvE/xzWfdmQnQeiuP43NJvmJzLR5iVQAX76QID
AQABo4G/MIG8MA8GA1UdEwEB/wQFMAMBAf8wXQYIKwYBBQUHAQEEUTBPMCMG
CCsGAQUFBzABhhdodHRwOi8vb2NzcC5DQWNlcnQub3JnLzAoBggrBgEFBQcw
AoYcaHR0cDovL3d3dy5DQWNlcnQub3JnL2NhLmNydDBKBgNVHSAEQzBBMD8G
CCsGAQQBgZBKMDMwMQYIKwYBBQUHAgEWJWh0dHA6Ly93d3cuQ0FjZXJ0Lm9y
Zy9pbmRleC5waHA/aWQ9MTAwDQYJKoZIhvcNAQEEBQADggIBAH8IiKHaGlBJ
2on7oQhy84r3HsQ6tHlbIDCxRd7CXdNlafHCXVRUPIVfuXtCkcKZ/RtRm6tG
paEQU55tiKxzbiwzpvD0nuB1wT6IRanhZkP+VlrRekF490DaSjrxC1uluxYG
5sLnk7mFTZdPsR44Q4Dvmw2M77inYACHV30eRBzLI++bPJmdr7UpHEV5FpZN
J23xHGzDwlVks7wU4vOkHx4y/CcVBc/dLq4+gmF78CEQGPZE6lM5+dzQmiDg
xrvgu1pPxJnIB721vaLbLmINQjRBvP+LivVRIqqIMADisNS8vmW61QNXeZvo
3MhN+FDtkaVSKKKs+zZYPumUK5FQhxvWXtaMzPcPEAxSTtAWYeXlCmy/F8dy
RlecmPVsYGN6b165Ti/Iubm7aoW8mA3t+T6XhDSUrgCvoeXnkm5OvfPi2RSL
XNLrAWygF6UtEOucekq9ve7O/e0iQKtwOIj1CodqwqsFYMlIBdpTwd5Ed2qz
8zw87YC8pjhKKSRf/lk7myV6VmMAZLldpGJ9VzZPrYPvH5JToI53V93lYRE9
IwCQTDz6o2CTBKOvNfYOao9PSmCnhQVsRqGP9Md246FZV/dxssRuFFxtbUFm
3xuTsdQAw+7Lzzw9IYCpX2Nl/N3gX6T0K/CFcUHUZyX7GrGXrtaZghNB0m6l
G5kngOcLqagAMYIC7TCCAukCAQEwWzBUMRQwEgYDVQQKEwtDQWNlcnQgSW5j
LjEeMBwGA1UECxMVaHR0cDovL3d3dy5DQWNlcnQub3JnMRwwGgYDVQQDExND
QWNlcnQgQ2xhc3MgMyBSb290AgMCOakwDQYJYIZIAWUDBAIDBQCgggFjMBgG
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE1MDYx
OTAwNDkyNVowTwYJKoZIhvcNAQkEMUIEQO1hNG7KOkHo1WYU9YZKU487pJ6P
8ub0wN+4YY1BgbOqWT6E+S8Ck0c3fprIlIooZqTSGyZnK0hffTtUP34bawQw
agYJKwYBBAGCNxAEMV0wWzBUMRQwEgYDVQQKEwtDQWNlcnQgSW5jLjEeMBwG
A1UECxMVaHR0cDovL3d3dy5DQWNlcnQub3JnMRwwGgYDVQQDExNDQWNlcnQg
Q2xhc3MgMyBSb290AgMCOakwbAYLKoZIhvcNAQkQAgsxXaBbMFQxFDASBgNV
BAoTC0NBY2VydCBJbmMuMR4wHAYDVQQLExVodHRwOi8vd3d3LkNBY2VydC5v
cmcxHDAaBgNVBAMTE0NBY2VydCBDbGFzcyAzIFJvb3QCAwI5qTANBgkqhkiG
9w0BAQEFAASCAQDYsnaB0TPh+nLh5No3w6T5YZxXwNfOdBMDB582abEhP429
Nj6CktYR7lyWMDfjoSk+GGh18GNiw5kVUtxKOcX9jyxereEg3tneGSR1RjoT
YZNMYhOgv+UzoWbki5JYpSVLKUae+Y3oNjWjM6Khxf4f5aV71JIIMABGlNgd
ZL2MiuTjNmyngG9aaf2cpVkeqDLs5qKEjK0BxYPMwH0OuFEfKKf2EwYgKAVZ
zaY82bLogxjVGdbKA8Lr74mw5CnOBJqUTRJCRKQMsV9UQ24bIoD3aHPAJxc3
r7eFO6ODonvshWp31OLE5+EN2F64iuo/qW9SeFngohz8I6hdwLMnSsf0AAAA
AAAA

--=-8h52xBoLwiqWVIbkW4wN--

