X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8955" "Friday" "6" "September" "2019" "20:50:37" "+0200" "Sebastian Nielsen" "sebastian@sebbe.eu" nil "165" nil "^Date:" nil nil "9" nil nil (number mark "        sebastian@se Sep  6  165/8955  " thread-indent "\"[oss-security] =?UTF-8?B?U3Y6?= =?UTF-8?B?W2V4aW1d?= =?UTF-8?B?Q1ZFLTIwMTktMTU4NDY6?= =?UTF-8?B?RXhpbQ==?= =?UTF-8?B?LQ==?= =?UTF-8?B?bG9jYWw=?= =?UTF-8?B?b3I=?= =?UTF-8?B?cmVtb3Rl?= =?UTF-8?B?YXR0YWNrZXI=?= =?UTF-8?B?Y2Fu?= =?UTF-8?B?ZXhlY3V0ZQ==?= =?UTF-8?B?cHJvZ3JhbXM=?= =?UTF-8?B?d2l0aA==?= =?UTF-8?B?cm9vdA==?= =?UTF-8?B?cHJpdmlsZWdlcw==?=\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] =?UTF-8?B?U3Y6?= =?UTF-8?B?W2V4aW1d?= =?UTF-8?B?Q1ZFLTIwMTktMTU4NDY6?= =?UTF-8?B?RXhpbQ==?= =?UTF-8?B?LQ==?= =?UTF-8?B?bG9jYWw=?= =?UTF-8?B?b3I=?= =?UTF-8?B?cmVtb3Rl?= =?UTF-8?B?YXR0YWNrZXI=?= =?UTF-8?B?Y2Fu?= =?UTF-8?B?ZXhlY3V0ZQ==?= =?UTF-8?B?cHJvZ3JhbXM=?= =?UTF-8?B?d2l0aA==?= =?UTF-8?B?cm9vdA==?= =?UTF-8?B?cHJpdmlsZWdlcw==?=" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11819 invoked by uid 550); 6 Sep 2019 19:10:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17929 invoked from network); 6 Sep 2019 18:50:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sebbe.eu;
	 s=root; h=Date:To:From:cc; bh=fOtCZQbd5gzRazB9n5iEF+O/OQ+9PnULe5PYJ+Yjhl8=;
	 b=F0V1B+qsxaHp0N5MAcHiyvcQDyWb9/oCSfovtuTRfixUOuD9ha+OXu/VBQtin0PVzk3oH8+CTl
	PX52eQgcEVoaR0Dkg8LuCwCfXYBata7+/zD/Gf8z86OEM9IWPwi3Le4WQFClGATx0h5cQcAJFVbDr
	HDQI8o3uLrsBJLU/3yrY=;
Message-ID: <005d01d564e3$cbf48090$63dd81b0$@sebbe.eu>
In-Reply-To: <20190906111406.GB3837@jumper.schlittermann.de>
References: <20190904092248.GQ3837@jumper.schlittermann.de> <20190906102039.GZ3837@jumper.schlittermann.de> <20190906104430.GA3837@jumper.schlittermann.de> <20190906111406.GB3837@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; 
	boundary="----=_Part_89_966708157.1567795837809"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQH1PhQhlUwtn7ejpoXJ5MKcFkqpHAJ16XV2Acg/HKcBzHzV4qau9b1w
Date: Fri, 06 Sep 2019 20:50:37 +0200
From: "Sebastian Nielsen" <sebastian@sebbe.eu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] =?UTF-8?Q?Sv=3A_=5Bexim=5D_CVE-2019-15846=3A_Exim_-_local_or_remote_?= =?UTF-8?Q?attacker_can_execute_programs_with_root_privileges?=
To: "'Heiko Schlittermann'" <hs@nodmarc.schlittermann.de>,
	"'oss-security'" <oss-security@lists.openwall.com>,
	<exim-users@exim.org>

------=_Part_89_966708157.1567795837809
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: sv

Shouldn't this be in connect ACL?
How would the deny in MAIL FROM prevent the exploit? What I have understand=
 is that there is exploit in the SNI of the TLS negotiation, thus the whole=
 connect attempt must be rejected right?

-----Ursprungligt meddelande-----
Fr=C3=A5n: Exim-users <exim-users-bounces+sebastian=3Dsebbe.eu@exim.org> F=
=C3=B6r Heiko Schlittermann via Exim-users
Skickat: den 6 september 2019 13:22
Till: oss-security <oss-security@lists.openwall.com>; Exim Users <exim-user=
s@exim.org>
=C3=84mne: Re: [exim] CVE-2019-15846: Exim - local or remote attacker can e=
xecute programs with root privileges

An Update to the mitigation for the current CVE:

Add - as part of the mail ACL (the ACL referenced by the main config
option "acl_smtp_mail"):

     deny    condition =3D ${if eq{\\}{${substr{-1}{1}{$tls_in_sni}}}}
     deny    condition =3D ${if eq{\\}{${substr{-1}{1}{$tls_in_peerdn}}}}

This should prevent the currently known attack vector.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -


------=_Part_89_966708157.1567795837809
Content-Type: application/pkcs7-signature; name=smime.p7s; smime-type=signed-data
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG
9w0BBwEAAKCAMIIFRTCCBC2gAwIBAgIIeTLArcr/4K4wDQYJKoZIhvcNAQEL
BQAwgYIxCzAJBgNVBAYTAklUMQ8wDQYDVQQIDAZNaWxhbm8xDzANBgNVBAcM
Bk1pbGFubzEjMCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5Njcx
LDAqBgNVBAMMI0FjdGFsaXMgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcx
MB4XDTE4MTExMjA4NTg0M1oXDTE5MTExMjA4NTg0M1owHTEbMBkGA1UEAwwS
c2ViYXN0aWFuQHNlYmJlLmV1MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
CgKCAQEAvSyoiLoqUrk3Qr3q0rDCrzJRpyF54KYKrrSoDNidj4XL5bz3+ohg
x/xXm1fmjCf4jd4CFQLvimRg9RTFbTspvwkMg2uuHauVDxwc1dlcIaPYjN7S
lfSGRNLY/BqXzUpCZFZRIlaPdk1mp7NHJQ8Ox+Oto8lcsBEDUgT5KKtzSoqL
6klbrZpFtLOhQcbv2ccGjVqGcAzD9iXUgYFTqe0HawNxyS9HVC6aLTFbdkdZ
koF0HTSCdOyHCBXlOFjbAQfHTeoFs+0dpiomZk2cogNQP8xJsevPxlJ36wUb
lR7RrUKpDNC7XJFN3foWkqg10PLyPu1p3qX1KcX750+QKziSQwIDAQABo4IC
ITCCAh0wDAYDVR0TAQH/BAIwADAfBgNVHSMEGDAWgBR+YPz4bKc9Pdeuk6F5
Ao+zdCk79TBLBggrBgEFBQcBAQQ/MD0wOwYIKwYBBQUHMAKGL2h0dHA6Ly9j
YWNlcnQuYWN0YWxpcy5pdC9jZXJ0cy9hY3RhbGlzLWF1dGNsaWcxMB0GA1Ud
EQQWMBSBEnNlYmFzdGlhbkBzZWJiZS5ldTBHBgNVHSAEQDA+MDwGBiuBHwEY
ATAyMDAGCCsGAQUFBwIBFiRodHRwczovL3d3dy5hY3RhbGlzLml0L2FyZWEt
ZG93bmxvYWQwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMIHoBgNV
HR8EgeAwgd0wgZuggZiggZWGgZJsZGFwOi8vbGRhcDA1LmFjdGFsaXMuaXQv
Y24lM2RBY3RhbGlzJTIwQ2xpZW50JTIwQXV0aGVudGljYXRpb24lMjBDQSUy
MEcxLG8lM2RBY3RhbGlzJTIwUy5wLkEuLzAzMzU4NTIwOTY3LGMlM2RJVD9j
ZXJ0aWZpY2F0ZVJldm9jYXRpb25MaXN0O2JpbmFyeTA9oDugOYY3aHR0cDov
L2NybDA1LmFjdGFsaXMuaXQvUmVwb3NpdG9yeS9BVVRIQ0wtRzEvZ2V0TGFz
dENSTDAdBgNVHQ4EFgQUw0Bod9eASI4aZTV7UGp8+PMbL2gwDgYDVR0PAQH/
BAQDAgWgMA0GCSqGSIb3DQEBCwUAA4IBAQBw4APxwGGFjSJ0s7iQcGkf1FpB
OgUiP5s+byW8igEpaSkSkI/FwIEvRNRhKDpGNTDuo3xG50Yqw+FGgn9lr39k
ol0BQg6SGsb5P/A5bszJlxn4R7lPE2JicUE7N9NOhPF1AVaxcyeAV1QyDq+n
58F9pYF8t6VmNObsOXCLfuAkGBUb8duUevtqSTeDYThKs2AaavrcIvmPUYG+
vRYZLBil8NSpf5IkkvJk6nB+Az/ruO3FP2rv6I/4ffc0WtzkkSHohLSk3TZr
KIu3RNPQCEtgXwEEfRk7ggFMDgLXDdO6La5KUHLcjaA+hrkeDDefF07QoR7m
uSQFKa3D0X8N8VfmMIIGRzCCBC+gAwIBAgIILNSK07EeD4kwDQYJKoZIhvcN
AQELBQAwazELMAkGA1UEBhMCSVQxDjAMBgNVBAcMBU1pbGFuMSMwIQYDVQQK
DBpBY3RhbGlzIFMucC5BLi8wMzM1ODUyMDk2NzEnMCUGA1UEAwweQWN0YWxp
cyBBdXRoZW50aWNhdGlvbiBSb290IENBMB4XDTE1MDUxNDA3MTQxNVoXDTMw
MDUxNDA3MTQxNVowgYIxCzAJBgNVBAYTAklUMQ8wDQYDVQQIDAZNaWxhbm8x
DzANBgNVBAcMBk1pbGFubzEjMCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMz
NTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMgQ2xpZW50IEF1dGhlbnRpY2F0
aW9uIENBIEcxMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwPzB
iVbZiOL0BGW/zQk1qygpMP4MyvcnqxwR7oY9XeT1bES2DFczlZfeiIqNLanb
kyqTxydXZ+kxoS9071qWsZ6zS+pxSqXLs+RTvndEaWx5hdHZcKNWGzhy5FiO
4GZvGlFInFEiaY+dOEpjjWvSeXpvcDpnYw6M9AXuHo4JhjC3P/OK//5QFXnz
tTa4iU66RpLteOTgCtiRCwZNKx8EFeqqfTpYvfEb4H91E7n+Y61jm0d2E8fJ
2wGTaSSwjc8nTI2ApXujoczukb2kHqwaGP3q5UuedWcnRZc65XUhK/Z6K32K
vrQuNP32F/5MxkvEDnJpUnnt9iMExvEzn31zDQIDAQABo4IB1TCCAdEwQQYI
KwYBBQUHAQEENTAzMDEGCCsGAQUFBzABhiVodHRwOi8vb2NzcDA1LmFjdGFs
aXMuaXQvVkEvQVVUSC1ST09UMB0GA1UdDgQWBBR+YPz4bKc9Pdeuk6F5Ao+z
dCk79TAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFFLYiDrIn3hm7Ynz
ezhwlMkCAjbQMEUGA1UdIAQ+MDwwOgYEVR0gADAyMDAGCCsGAQUFBwIBFiRo
dHRwczovL3d3dy5hY3RhbGlzLml0L2FyZWEtZG93bmxvYWQwgeMGA1UdHwSB
2zCB2DCBlqCBk6CBkIaBjWxkYXA6Ly9sZGFwMDUuYWN0YWxpcy5pdC9jbiUz
ZEFjdGFsaXMlMjBBdXRoZW50aWNhdGlvbiUyMFJvb3QlMjBDQSxvJTNkQWN0
YWxpcyUyMFMucC5BLiUyZjAzMzU4NTIwOTY3LGMlM2RJVD9jZXJ0aWZpY2F0
ZVJldm9jYXRpb25MaXN0O2JpbmFyeTA9oDugOYY3aHR0cDovL2NybDA1LmFj
dGFsaXMuaXQvUmVwb3NpdG9yeS9BVVRILVJPT1QvZ2V0TGFzdENSTDAOBgNV
HQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQELBQADggIBAE2TztUkvkEbShZYc19l
ifLZej5YjLzLxA/lWxZnssFLpDPySfzMmndz3F06S51ltwDe+blTwcpdzUl3
M2alKH3bOr855ku9Rr6uedya+HGQUT0OhqDo2K2CAE9nBcfANxifjfT8XzCo
C3ctf9ux3og1WuE8WTcLZKgCMuNRBmJte9C4Ug0w3iXqPzq8KuRRobNKqddP
jk3EiK+QA+EFCCka1xOLh/7cPGTJMNta1/0u5oLiXaOAHeALt/nqeZ2kZ+li
zK8oTv4in5avIf3ela3oL6vrwpTca7TZxTX90e805dZQN4qRVPdPbrBlWtNo
zH7SdLeLrcoN8l2EXO6190GAJYdynTc2E6EyrLVGcDKUX91VmCSRrqEppZ7W
05TbWRLi6+wPjAzmTq2XSmKfajq7juTKgkkw7FFJByixa0NdSZosdQb3VkLq
G8EOYOamZLqH+v7ua0+ulg7FOviFbeZ7YR9eRO81O8FC1uLgutlyGD2+GLjg
QnsvneDsbNAWfkory+qqAxvVzX5PSaQp2pJ52AaIH1MN1i2/geRSP83TRMrF
kwuIMzDhXxKFQvpspNc19vcTryzjtwP4xq0WNS4YWPS4U+9mW+U0Cgnsgx9f
MiJNbLflf5qSb53j3AGHnjK/qJzPa39wFTXLXB648F3w1Qf9R7eZeTRJfCQY
/fJUMIIFuzCCA6OgAwIBAgIIVwoRl0LE48wwDQYJKoZIhvcNAQELBQAwazEL
MAkGA1UEBhMCSVQxDjAMBgNVBAcMBU1pbGFuMSMwIQYDVQQKDBpBY3RhbGlz
IFMucC5BLi8wMzM1ODUyMDk2NzEnMCUGA1UEAwweQWN0YWxpcyBBdXRoZW50
aWNhdGlvbiBSb290IENBMB4XDTExMDkyMjExMjIwMloXDTMwMDkyMjExMjIw
MlowazELMAkGA1UEBhMCSVQxDjAMBgNVBAcMBU1pbGFuMSMwIQYDVQQKDBpB
Y3RhbGlzIFMucC5BLi8wMzM1ODUyMDk2NzEnMCUGA1UEAwweQWN0YWxpcyBB
dXRoZW50aWNhdGlvbiBSb290IENBMIICIjANBgkqhkiG9w0BAQEFAAOCAg8A
MIICCgKCAgEAp8bEpSmkLO/lGMWwUKNvUTufClrJwkg4CsIcoBh/kbWHuUA/
3R1oHwiD1S0eiKD4j1aPbZkCkpAW1V8IbInX4ay8IMKx4INRimlNAJZaby/A
RH6jDuSRzVju3PvHHkVH3Se5CAGfpiEd9UEtL0z9KK3giq0itFZljoZUj5ND
Kd45RnijMCO6zfB9E1fAXdKDa0hMxKufgFpbOr3JpyI/gCczWw63igxdBzcI
y2zSekciRDXFzMwujt0q7bd9Zg1fYVEiVRvjRuPjPdA1YprbrxTIW6HMiRvh
MCb8oJsfgadHHwTrozmSBp+Z07/T6k9QnBn+locePGX2oxgkg4YQ51Q+qDp2
JE+BIcXjDwL4k5RHILv+1A7TaLndxHqEguNTVHnd25zS8gebLra8Pu2Fbe8l
EfKXGkJh90qX6IuxEAf6ZYGyojnP9zz/GPvG8VqLWeICrHuS0E4UT1lF9gxe
KF+w6D9Fz8+vm2/7hNN3WpVvrJSEnu68wEqPSpP4RCHiMUVhUE4Q2OM1fEwZ
tN4Fv6MGn8i1zeQf1xcGDXqVdFUNaBr8EBtiZJ1t4JWgw5QHVw0U5r0F+7if
5t+L4sbnfpb2U8WANFAoWPASUHEXMLrmeGO89LKtmyuy/uE5jF66CyCU3nuD
uP/jVo23Eek7jPKxwV2dpAtMK9myGPW1n0sCAwEAAaNjMGEwHQYDVR0OBBYE
FFLYiDrIn3hm7YnzezhwlMkCAjbQMA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0j
BBgwFoAUUtiIOsifeGbtifN7OHCUyQICNtAwDgYDVR0PAQH/BAQDAgEGMA0G
CSqGSIb3DQEBCwUAA4ICAQALe3KHwGCmSUyIWOYdiPcUZEim2FgKDk8TNd81
HdTtBjHIgT5q1d07GjLukD0R0i70jsNjLiNmsGe+b7bAEzlgqqI0JZN1Ut6n
na0Oh4lScWoWPBkdg/iaKWW+9D+a2fDzWochcYBNy+A4mz+7+uAwTc+G02UQ
GRjRlwKxK3JCaKygvU5a2hi/a5iB0P2avl4VSM0RFbnAKVy06Ij3Pjaut2L9
HmLecHgQHEhb2rykOLpn7VU+Xlff1ANATIGk0k9jpwlCCRT8AKnCgHNPLsBA
2RF7SOp6AsDT6ygBJlh0wcBzIm2Tlf05fbsq4/aC4yyXX04fkZT6/iyj2HYa
uE2yOE+b+h1IYHkm4vP9qdCa6HCPSXrW5b0KDtst842/6+OkfcvHlXHo2qN8
xcL4dJIEG4aspCJTQLas/kx2z/uUMsA1n3Y/buWQbqCmJqK4LL7RK4X9p2jI
ugErsWx0Hbhzlefut8cl8ABMALJ+tguLHPPAUJ4lueAI3jZm/zel0btUZCzJ
J7VLkn5l/9Mt4blOvH+kQSGQQXemOR/qnuOf0GZvBeyqdn6/axag67XH/JJU
LysRJyU3eExRarDzzFhdFPFqSBX/wge2sY0PjlxQRrM9vwGYT7JZVEc+NHt4
bVaTLnPqZih4zR0Uv6CPLy64Lo7yFIrM6bV8+2ydDKXhlgAAMYIC+DCCAvQC
AQEwgY8wgYIxCzAJBgNVBAYTAklUMQ8wDQYDVQQIDAZNaWxhbm8xDzANBgNV
BAcMBk1pbGFubzEjMCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5
NjcxLDAqBgNVBAMMI0FjdGFsaXMgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIENB
IEcxAgh5MsCtyv/grjANBglghkgBZQMEAgEFAKCCATkwGAYJKoZIhvcNAQkD
MQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkwOTA2MTg1MDM3WjAt
BgkqhkiG9w0BCTQxIDAeMA0GCWCGSAFlAwQCAQUAoQ0GCSqGSIb3DQEBCwUA
MC8GCSqGSIb3DQEJBDEiBCDIqT7nu9NbmxbDm6t8lXt2tU3bVMD6HeLAFHKn
xv4hlzCBngYJKoZIhvcNAQkPMYGQMIGNMAsGCWCGSAFlAwQBKjALBglghkgB
ZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMCAgIA
gDAPBgkqhkiG9n0HQgoCAgCAMA0GCyqDCIyaSz0BAQEEMA0GCyqDCIyaSz0B
AQEDMA0GCyqDCIyaSz0BAQECMAoGCCqDGoyaRAEEMA0GCSqGSIb3DQEBCwUA
BIIBAB42f0w2kOQxrDEBhgrfweqEWgo7fz8rZ1yIlMXklM+pUN6ll/nmy8WQ
C/U/Bj8Akccos1xJJQsz7fXxFJT1lKekHB3AYbQ/muxmH9xutxgPBQ9QDedF
9G+g0+ujwBYoZlkRbszLKVNFl6eSoT1Pz2QcO3lzGxMt4pQu1Ya8BzWWCE3q
WJ9ZGlDL6QW+mKo/TjtpV0TTWS8mZVTiZGNofKCLvitZXOHOnxHnyf3xb5/y
GywIbbRFTPClQeoiiFjFGQCOX0sUxwm7krt4ff/lV2KVwCdmfJakoQvY6icQ
R7DepbhYvjhZCxfZM1I3r7vyd9nHTbrKrgIGwU5esFhRNVAAAAAAAAA=

------=_Part_89_966708157.1567795837809--
