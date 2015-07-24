X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7725" "Friday" "24" "July" "2015" "14:15:46" "+0200" "Martino Dell'Ambrogio" "tillo@tillo.ch" "<55B22C72.4020706@tillo.ch>" "153" "Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072412:15:46" "[oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        tillo@tillo. Jul 24  153/7725  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<871tfxdgzw.fsf@lysator.liu.se>" ("<20150723170954.GA17931@localhost.localdomain>" "<87h9oud89s.fsf@lysator.liu.se>" "<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>" "<871tfxdgzw.fsf@lysator.liu.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15890 invoked by uid 550); 24 Jul 2015 12:16:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15872 invoked from network); 24 Jul 2015 12:16:00 -0000
Message-ID: <55B22C72.4020706@tillo.ch>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
References: <20150723170954.GA17931@localhost.localdomain>	<87h9oud89s.fsf@lysator.liu.se>	<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com> <871tfxdgzw.fsf@lysator.liu.se>
In-Reply-To: <871tfxdgzw.fsf@lysator.liu.se>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha1; boundary="------------ms030807030609030107050502"
X-Assp-Version: 2.4.5(15162) on assp.leg.tillo.ch
X-Assp-ID: assp.leg.tillo.ch m1-40148-02217
X-Assp-Session: 7FE7B5C82F30 (mail 1)
X-Assp-Client-SSL: yes
X-Assp-Server-TLS: yes
Date: Fri, 24 Jul 2015 14:15:46 +0200
From: Martino Dell'Ambrogio <tillo@tillo.ch>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper
 - CVE-2015-3246 libuser
To: oss-security@lists.openwall.com

--------------ms030807030609030107050502
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/24/2015 11:47 AM, Leif Nixon wrote:
> [...]
>
> As I see it, there are two reasons for releasing working exploits
> without warning;
>
> 1) Forcing the hand of a non-responsive vendor,
>
> 2) Stroking a weak ego by showing off. (Or for marketing, but that comes
>    to the same thing.)
>
> Except for case 1, releasing a working exploit *does not help anybody*
> except the kiddies. If there are other reasons, I'd like to be told
> about them.
>
> If Qualys had released a slightly less detailed advisory, or even just
> left off the actual exploit, and given users a day or two to patch their
> systems before going full disclosure, the risk to innocent bystanders
> would have been much reduced.
>

Actually, releasing a working exploit helps our customers more often
than not.
In professional pentesting, proof of exploitation is essential.
Most often than not, a real attacker will invest time and resources into
a working exploit, the customer will not feel the need to invest into it
just for simulation.

Moreover, as soon as systems can be patched, they should be.
Of course a few hours delay is not realistic, but I want to be sure that
everyone understands how much "releasing a working exploit *does not
help anybody*" is false.

I urge researchers to continue to release their exploits into the public
domain.
Do it "responsibly", maybe get help in order to do it correctly, but do
it, because it's beneficial more than harmful to any potential target.

--=20
Martino Dell'Ambrogio
Security Auditor
Web: http://www.tillo.ch/
Email: tillo@tillo.ch



--------------ms030807030609030107050502
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEH
AQAAoIIMbzCCBjMwggUboAMCAQICAwvLTzANBgkqhkiG9w0BAQUFADCBjDEL
MAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsT
IlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMT
L1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50
IENBMB4XDTE0MTEwNDIyMTM1MloXDTE1MTEwNTEzMjI0OVowUzEZMBcGA1UE
DRMQUjFBMThPZVNFZE9qY1QzazEXMBUGA1UEAwwOdGlsbG9AdGlsbG8uY2gx
HTAbBgkqhkiG9w0BCQEWDnRpbGxvQHRpbGxvLmNoMIIBIjANBgkqhkiG9w0B
AQEFAAOCAQ8AMIIBCgKCAQEAwavxpU4/3yVbwngBDmm5Z5rVx+7QgYuX9qDE
EGFPtnqC507dkSqYat+d8pFjeRU1Bv9I22E1xspm4+pfvyvc6XZz7phqHLE7
Reb+1CPr9frnPtd28p1HxfOyrLompctj87CQUiqgIkR/k0Qjjkei9SVSZQrP
PteysckuxGyx6O0x/ILufq2fLBREtFLTwLUj8Nra0+q0CjWqK1U/CQrakhLZ
KfR+ooePr7HZ1akMxToBOenPgaq/uvEAPUmGetp8FpEg1HBpBvxcyzArC1Kt
OW+1jjtCS8zHdxFX0iwLQusH1i9HURWeXjwggvKTWASvrFqihWDsqPB5v1Oh
WTBbWwIDAQABo4IC1DCCAtAwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYD
VR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMB0GA1UdDgQWBBTXiNoA33sj
s+oH0GX75OntEdw73zAfBgNVHSMEGDAWgBRTcu2SnODaywFcfH6WNU7y1LhR
gjAZBgNVHREEEjAQgQ50aWxsb0B0aWxsby5jaDCCAUwGA1UdIASCAUMwggE/
MIIBOwYLKwYBBAGBtTcBAgMwggEqMC4GCCsGAQUFBwIBFiJodHRwOi8vd3d3
LnN0YXJ0c3NsLmNvbS9wb2xpY3kucGRmMIH3BggrBgEFBQcCAjCB6jAnFiBT
dGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTADAgEBGoG+VGhpcyBj
ZXJ0aWZpY2F0ZSB3YXMgaXNzdWVkIGFjY29yZGluZyB0byB0aGUgQ2xhc3Mg
MSBWYWxpZGF0aW9uIHJlcXVpcmVtZW50cyBvZiB0aGUgU3RhcnRDb20gQ0Eg
cG9saWN5LCByZWxpYW5jZSBvbmx5IGZvciB0aGUgaW50ZW5kZWQgcHVycG9z
ZSBpbiBjb21wbGlhbmNlIG9mIHRoZSByZWx5aW5nIHBhcnR5IG9ibGlnYXRp
b25zLjA2BgNVHR8ELzAtMCugKaAnhiVodHRwOi8vY3JsLnN0YXJ0c3NsLmNv
bS9jcnR1MS1jcmwuY3JsMIGOBggrBgEFBQcBAQSBgTB/MDkGCCsGAQUFBzAB
hi1odHRwOi8vb2NzcC5zdGFydHNzbC5jb20vc3ViL2NsYXNzMS9jbGllbnQv
Y2EwQgYIKwYBBQUHMAKGNmh0dHA6Ly9haWEuc3RhcnRzc2wuY29tL2NlcnRz
L3N1Yi5jbGFzczEuY2xpZW50LmNhLmNydDAjBgNVHRIEHDAahhhodHRwOi8v
d3d3LnN0YXJ0c3NsLmNvbS8wDQYJKoZIhvcNAQEFBQADggEBAKXkFCUU59xd
KmbzrDxbFRmP4oPgG1Up8xe+mwPCjarg3GQwhvCYp20R4pEPDrgDIEn9EnW4
ZlG8RYVV2V33wI+ulWseW5L73Dp3AfbGDKg4rBqCgCxQGFH0wTP9XLI7M3Sa
vjFKB0O8+5gJw8VJwSoMK6p/nVCT6UMo78AWpEpki/UIsmSmU1zVL0546XK4
0SvcBjny9fUFN03xA3jmLSuO9pl6QcH9Dy1m9R60+UrfmyzwJKpFTJNU+gJU
f9i5tHvqBFQUGQhXobc4NOg42HbB4teanegM8Rbbo4unQ2aUJx6PP+iGzsNy
EZRkup+yaT9L9QuwV1epFVYsnyMX6egwggY0MIIEHKADAgECAgEeMA0GCSqG
SIb3DQEBBQUAMH0xCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBM
dGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWdu
aW5nMSkwJwYDVQQDEyBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0
eTAeFw0wNzEwMjQyMTAxNTVaFw0xNzEwMjQyMTAxNTVaMIGMMQswCQYDVQQG
EwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJl
IERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRD
b20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0EwggEi
MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDHCYPMzi3YGrEppC4Tq5a+
ijKDjKaIQZZVR63UbxIP6uq/I0fhCu+cQhoUfE6ERKKnu8zPf1Jwuk0tsvVC
k6U9b+0UjM0dLep3ZdE1gblK/1FwYT5Pipsu2yOMluLqwvsuz9/9f1+1PKHG
/FaR/wpbfuIqu54qzHDYeqiUfsYzoVflR80DAC7hmJ+SmZnNTWyUGHJbBpA8
Q89lGxahNvuryGaC/o2/ceD2uYDX9U8Eg5DpIpGQdcbQeGarV04WgAUjjXX5
r/2dabmtxWMZwhZna//jdiSyrrSMTGKkDiXm6/3/4ebfeZuCYKzN2P8O2F/X
e2AC/Y7zeEsnR7FOp+uXAgMBAAGjggGtMIIBqTAPBgNVHRMBAf8EBTADAQH/
MA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUU3Ltkpzg2ssBXHx+ljVO8tS4
UYIwHwYDVR0jBBgwFoAUTgvvGqRAW6UXaYcwyjRoQ9BBrvIwZgYIKwYBBQUH
AQEEWjBYMCcGCCsGAQUFBzABhhtodHRwOi8vb2NzcC5zdGFydHNzbC5jb20v
Y2EwLQYIKwYBBQUHMAKGIWh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3Nmc2Nh
LmNydDBbBgNVHR8EVDBSMCegJaAjhiFodHRwOi8vd3d3LnN0YXJ0c3NsLmNv
bS9zZnNjYS5jcmwwJ6AloCOGIWh0dHA6Ly9jcmwuc3RhcnRzc2wuY29tL3Nm
c2NhLmNybDCBgAYDVR0gBHkwdzB1BgsrBgEEAYG1NwECATBmMC4GCCsGAQUF
BwIBFiJodHRwOi8vd3d3LnN0YXJ0c3NsLmNvbS9wb2xpY3kucGRmMDQGCCsG
AQUFBwIBFihodHRwOi8vd3d3LnN0YXJ0c3NsLmNvbS9pbnRlcm1lZGlhdGUu
cGRmMA0GCSqGSIb3DQEBBQUAA4ICAQAKgwh9eKssBly4Y4xerhy5I3dNoXHY
fYa8PlVLL/qtXnkFgdtY1o95CfegFJTwqBBmf8pyTUnFsukDFUI22zF5bVHz
uJ+GxhnSqN2sD1qetbYwBYK2iyYA5Pg7Er1A+hKMIzEzcduRkIMmCeUTyMyi
kfbUFvIBivtvkR8ZFAk22BZy+pJfAoedO61HTz4qSfQoCRcLN5A0t4DkuVhT
MXIzuQ8CnykhExD6x4e6ebIbrjZLb7L+ocR0y4YjCl/Pd4MXU91y0vTipgr/
O75CDUHDRHCCKBVmz/Rzkc/b970MEeHt5LC3NiWTgBSvrLEuVzBKM586YoRD
9Dy3OHQgWI270g+5MYA8GfgI/EPT5G7xPbCDz+zjdH89PeR3U4So4lSXur6H
6vp+m9TQXPF3a0LwZrp8MQ+Z77U1uL7TelWO5lApsbAonrqASfTpaprFVkL4
nyGH+NHST2ZJPWIBk81i6Vw0ny0qZW2Niy/QvVNKbb43A43ny076khXO7cNb
BIRdJ/6qQNq9Bqb5C0Q5nEsFcj75oxQRqlKf6TcvGbjxkJh8BYtv9ePsXklA
xtm8J7GCUBthHSQgepbkOexhJ0wP8imUkyiPHQ0GvEnd83129fZjoEhdGwXV
27ioRKbj/cIq7JRXun0NbeY+UdMYu9jGfIpDLtUUGSgsg2zMGs5R4jGCA90w
ggPZAgEBMIGUMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20g
THRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2ln
bmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVy
bWVkaWF0ZSBDbGllbnQgQ0ECAwvLTzAJBgUrDgMCGgUAoIICHTAYBgkqhkiG
9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNTA3MjQxMjE1
NDZaMCMGCSqGSIb3DQEJBDEWBBTnJj6E9n4tZKtFFjl9j183FwTJizBsBgkq
hkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZI
hvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIH
MA0GCCqGSIb3DQMCAgEoMIGlBgkrBgEEAYI3EAQxgZcwgZQwgYwxCzAJBgNV
BAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1
cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFy
dENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQQID
C8tPMIGnBgsqhkiG9w0BCRACCzGBl6CBlDCBjDELMAkGA1UEBhMCSUwxFjAU
BgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFs
IENlcnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNz
IDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50IENBAgMLy08wDQYJKoZI
hvcNAQEBBQAEggEARgOiQ07BLzqbHZAVh7IDd0/R+DaeYEqNFFliSeJtyH3d
8Bq+1M8g8CmT3tuD6RpOPKXGkgNaGTnBNBocNJbWmAIjsK9gvTWAIAzJn56V
pWOXEGkbU9RPccJBNAKxDTWnukIgzuYXr68FpessAHKFA2rvoAZH89beKMS6
elG4l6KqbUN6l5NZhW+2mKKu930EA4kXzqrebx0wXs9ByWlsNsYdRvA4kwHl
RR2/knlwkG4yqDyHi1dsVZxL+7EEHZlxpHu8rMLxkS3KlkQVqFlf+6uoCrBE
QAN8BVtnt/IVarK/m+SprJc/fcW8q0YHCDqnTQ8KU1iR41rYbvmgYdF7tgAA
AAAAAA==

--------------ms030807030609030107050502--
