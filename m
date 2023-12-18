Received: (qmail 3228 invoked by uid 550); 18 Dec 2023 16:47:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3079 invoked from network); 18 Dec 2023 16:07:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rub.de; s=mail-2017;
	t=1702915695; bh=e5X1DmiHqiKFTlZwyKWbVRmDyqIkYbes4733e04tOfM=;
	h=Date:To:From:Subject:Cc:From;
	b=ocR6zdoyGTQsFArxb0HxLCkWSuYgOIwIVX4Guw5FOauyJQpzIZhu71XSD8IsacbXl
	 mhBeJ25RwvTTDIB3ik+qkEtbAVFu4HW1q3YEVvwe1bdsIUdSm2o4JXMWJrdYcJE0q9
	 2nJaWGZNT0fEbS/8wURxJM6GOS2dUjUJlkmsExQ0=
X-RUB-Notes: Internal origin=134.147.42.236
X-Envelope-Sender: <fabian.baeumer@rub.de>
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.0.4 at mx2.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.2.1 at mail2.mail.ruhr-uni-bochum.de
Message-ID: <a8637927-82b1-4f95-a7e8-7aa6cbaca455@rub.de>
Date: Mon, 18 Dec 2023 17:08:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB, de-DE
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?Fabian_B=C3=A4umer?= <fabian.baeumer@rub.de>
Cc: Marcus Brinkmann <marcus.brinkmann@rub.de>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-512; boundary="------------ms080905080700040408060702"
Subject: [oss-security] CVE-2023-48795: Prefix Truncation Attacks in SSH Specification
 (Terrapin Attack)

--------------ms080905080700040408060702
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

### Summary

Parts of the SSH specification are vulnerable to a novel prefix 
truncation attack (a.k.a. Terrapin attack), which allows a 
man-in-the-middle attacker to strip an arbitrary number of messages 
right after the initial key exchange, breaking SSH extension negotiation 
(RFC8308) in the process and thus downgrading connection security.

### Mitigations

To mitigate this protocol vulnerability, OpenSSH suggested a so-called 
"strict kex" which alters the SSH handshake to ensure a 
Man-in-the-Middle attacker cannot introduce unauthenticated messages as 
well as convey sequence number manipulation across handshakes. Support 
for strict key exchange has been added to a variety of SSH 
implementations, including OpenSSH itself, PuTTY, libssh, and more.

**Warning: To take effect, both the client and server must support this 
countermeasure.**

As a stop-gap measure, peers may also (temporarily) disable the affected 
algorithms and use unaffected alternatives like AES-GCM instead until 
patches are available.

### Details

The SSH specifications of ChaCha20-Poly1305 
(chacha20-poly1305@openssh.com) and Encrypt-then-MAC (*-etm@openssh.com 
MACs) are vulnerable against an arbitrary prefix truncation attack 
(a.k.a. Terrapin attack). This allows for an extension negotiation 
downgrade by stripping the SSH_MSG_EXT_INFO sent after the first message 
after SSH_MSG_NEWKEYS, downgrading security, and disabling attack 
countermeasures in some versions of OpenSSH. When targeting 
Encrypt-then-MAC, this attack requires the use of a CBC cipher to be 
practically exploitable due to the internal workings of the cipher mode. 
Additionally, this novel attack technique can be used to exploit 
previously unexploitable implementation flaws in a Man-in-the-Middle 
scenario.

The attack works by an attacker injecting an arbitrary number of 
SSH_MSG_IGNORE messages during the initial key exchange and consequently 
removing the same number of messages just after the initial key exchange 
has concluded. This is possible due to missing authentication of the 
excess SSH_MSG_IGNORE messages and the fact that the implicit sequence 
numbers used within the SSH protocol are only checked after the initial 
key exchange.

In the case of ChaCha20-Poly1305, the attack is guaranteed to work on 
every connection as this cipher does not maintain an internal state 
other than the message's sequence number. In the case of 
Encrypt-Then-MAC, practical exploitation requires the use of a CBC 
cipher; while theoretical integrity is broken for all ciphers when using 
this mode, message processing will fail at the application layer for CTR 
and stream ciphers.

For more details and a pre-print of the associated research paper, see 
https://terrapin-attack.com.

### Impact

This attack targets the specification of ChaCha20-Poly1305 
(chacha20-poly1305@openssh.com) and Encrypt-then-MAC 
(*-etm@openssh.com), which are widely adopted by well-known SSH 
implementations and can be considered de-facto standard. These 
algorithms can be practically exploited; however, in the case of 
Encrypt-Then-MAC, we additionally require the use of a CBC cipher. As a 
consequence, this attack works against all well-behaving SSH 
implementations supporting either of those algorithms and can be used to 
downgrade (but not fully strip) connection security in case SSH 
extension negotiation (RFC8308) is supported. The attack may also enable 
attackers to exploit certain implementation flaws in a man-in-the-middle 
(MitM) scenario.

-- 
M. Sc. Fabian Bäumer

Chair for Network and Data Security
Ruhr University Bochum
Universitätsstr. 150, Building MC 4/145
44780 Bochum
Germany


--------------ms080905080700040408060702
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: Kryptografische S/MIME-Signatur

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG
9w0BBwEAAKCCEewwggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcN
AQELBQAwgYIxCzAJBgNVBAYTAkRFMSswKQYDVQQKDCJULVN5c3RlbXMgRW50
ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYDVQQLDBZULVN5c3RlbXMgVHJ1
c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFsUm9vdCBDbGFz
cyAyMB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNV
BAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMg
RGV1dHNjaGVuIEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RG
Ti1QS0kxLTArBgNVBAMTJERGTi1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRo
b3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMtg1/9m
oUHN0vqHl4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZsFVV2B+pG/cgD
RWM+cNSrVICxI5y+NyipCf8FXRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0p
eQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDcNb1lDY9/Mm3y
WmpLYgHurDg0WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupO
kSk9s1FcragMvp0049ENF4N1xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCr
Kq4Xl14zzsjz9AkH4wKGMUZrAcUQDBHHWekCAwEAAaOCAXQwggFwMA4GA1Ud
DwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba1fFKpZFK4OpL4qIMz+EwHwYD
VR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/BAgwBgEB
/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGC
LB4wCAYGZ4EMAQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2
LnRlbGVzZWMuZGUvcmwvVGVsZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3Js
MIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUHMAGGIGh0dHA6Ly9vY3NwMDMz
Ni50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRwOi8vcGtpMDMz
Ni50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5j
ZXIwDQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5
Ri71sqQPrhE4eTizDnS6dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD
2HlrtrdNUAtmB7Xts5et6u5/MOaZ/SLick0+hFvu+c+Z6n/XUjkurJgARH5p
O7917tALOxrN5fcPImxHhPalR6D90Bo0fa3SPXez7vTXTf/D6OWST1k+kEcQ
SrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc22CzeIs2LgtjZ
eOJVEqM7h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bP
ZYoaorVyGTkwggWsMIIElKADAgECAgcbY7rQHiw9MA0GCSqGSIb3DQEBCwUA
MIGVMQswCQYDVQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1ciBGb2VyZGVy
dW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAw
DgYDVQQLEwdERk4tUEtJMS0wKwYDVQQDEyRERk4tVmVyZWluIENlcnRpZmlj
YXRpb24gQXV0aG9yaXR5IDIwHhcNMTYwNTI0MTEzODQwWhcNMzEwMjIyMjM1
OTU5WjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9l
cmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBW
LjEQMA4GA1UECwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9i
YWwgSXNzdWluZyBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
AJ07eRxH3h+Gy8Zp1xCeOdfZojDbchwFfylfS2jxrRnWTOFrG7ELf6Gr4HuL
i9gtzm6IOhDuV+UefwRRNuu6cG1joL6WLkDh0YNMZj0cZGnlm6Stcq5oOVGH
ecwX064vXWNxSzl660Knl5BpBb+Q/6RAcL0D57+eGIgfn5mITQ5HjUhfZZkQ
0tkqSe3BuS0dnxLLFdM/fx5ULzquk1enfnjK1UriGuXtQX1TX8izKvWKMKzt
FwUkP7agCwf9TRqaA1KgNpzeJIdl5Of6x5ZzJBTN0OgbaJ4YWa52fvfRCng8
h0uwN89Tyjo4EPPLR22MZD08WkVKusqAfLjz56dMTM0CAwEAAaOCAgUwggIB
MBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0PAQH/BAQDAgEGMCkGA1UdIAQi
MCAwDQYLKwYBBAGBrSGCLB4wDwYNKwYBBAGBrSGCLAEBBDAdBgNVHQ4EFgQU
azqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0jBBgwFoAUk+PYMiba1fFKpZFK
4OpL4qIMz+EwgY8GA1UdHwSBhzCBhDBAoD6gPIY6aHR0cDovL2NkcDEucGNh
LmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDBA
oD6gPIY6aHR0cDovL2NkcDIucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1j
YS9wdWIvY3JsL2NhY3JsLmNybDCB3QYIKwYBBQUHAQEEgdAwgc0wMwYIKwYB
BQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1TZXJ2ZXIvT0NT
UDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwt
cm9vdC1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwSgYIKwYBBQUHMAKG
Pmh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtZzItY2EvcHVi
L2NhY2VydC9jYWNlcnQuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQCBeEWkTqR/
DlXwCbFqPnjMaDWpHPOVnj/z+N9rOHeJLI21rT7H8pTNoAauusyosa0zCLYk
hmI2THhuUPDVbmCNT1IxQ5dGdfBi5G5mUcFCMWdQ5UnnOR7Ln8qGSN4IFP8V
Sytmm6A4nwDO/afr0X9XLchMX9wQEZc+lgQCXISoKTlslPwQkgZ7nu7YRrQb
tQMMONncsKk/cQYLsgMHM8KNSGMlJTx6e1du94oFOO+4oK4v9NsH1VuEGMGp
uEvObJAaguS5Pfp38dIfMwK/U+d2+dwmJUFvL6Yb+qQTkPp8ftkLYF3sv8pB
oGH7EUkp2KgtdRXYShjqFu9VNCIaE40GMIIHIjCCBgqgAwIBAgIMKEY6FiZd
yM744mtLMA0GCSqGSIb3DQEBCwUAMIGNMQswCQYDVQQGEwJERTFFMEMGA1UE
Cgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3Jz
Y2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQD
DBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTIzMDMzMTEwNTcx
M1oXDTI2MDMzMDEwNTcxM1owgZoxCzAJBgNVBAYTAkRFMSEwHwYDVQQKDBhS
dWhyLVVuaXZlcnNpdGFldCBCb2NodW0xLDAqBgNVBAsMI0NoYWlyIGZvciBO
ZXR3b3JrIGFuZCBEYXRhIFNlY3VyaXR5MRAwDgYDVQQEDAdCYWV1bWVyMQ8w
DQYDVQQqDAZGYWJpYW4xFzAVBgNVBAMMDkZhYmlhbiBCYWV1bWVyMIICIjAN
BgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAtUXof3QfwCyKSjiHcwXSMnDh
FiuJW24OoEiy77FbR0TMr6oJHCiVMnr9j/tSQEktkoLWOSOziyC38nc8/Bdr
5goeZ5XBCsp5PmgGN8s+i17vQVV/5e6sRu39wImM0AFZ/b0/rxJ4RVhqknnx
ocxwDweMjGxWRolSy69wSh96kdW0UcBGXS3TTiA9p6xYUO9/VuF4uJIrzRrb
wzhXqbDCIzTnthiOGnUzjQcALf/7omQy+A/x1OXSLi35gKXXALKWFbbHEJjW
H4ION4bwGyHIw/MyqGbPeSf47X5M2Wu5jHqknhQogw+5oVYNmaoT7+Zw8KyN
A4yeQ2wDTjwziiCgENpK21oY1n/8klBvHw/qVXccOzYrOZYoQkBO1GpThbyS
bz1k0WCT/47bFfXupqPzBbKp5NqHdoxUucR7n8He0e9liWi2xVIg4x9QH/6z
m4NPcDNmprVtozZQ2/WBZMn1ungqtVeiBp1NseBgjJXCW41aCUH9EDdR6fto
+5M5+SQWm6mGVWgaEXNudZ5b1Q5KnldMYFfwOciZJMPgDZYmP4cp3p++nYF8
0AxvF7AK8lo2y8Z+/EgB1XAqn7H0V8v41p1H2nbHNJwnLga2OiLQZmys+RZQ
wCuQNWFpV56X9mGD+NrFe9Z3i6PXAYQ8jb9Fw1P2mpyweHfT1liGw9pM8o8C
AwEAAaOCAnEwggJtMD4GA1UdIAQ3MDUwDwYNKwYBBAGBrSGCLAEBBDAQBg4r
BgEEAYGtIYIsAQEECzAQBg4rBgEEAYGtIYIsAgEECzAJBgNVHRMEAjAAMA4G
A1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQw
HQYDVR0OBBYEFNYVlkZ24IxVgUdDwzqJo3NFXWTfMB8GA1UdIwQYMBaAFGs6
mIv58lOJ2uCtsjIeCR/oqjt0MEMGA1UdEQQ8MDqBFWZhYmlhbi5iYWV1bWVy
QHJ1Yi5kZYEhZmFiaWFuLmJhZXVtZXJAcnVoci11bmktYm9jaHVtLmRlMIGN
BgNVHR8EgYUwgYIwP6A9oDuGOWh0dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZGZu
LWNhLWdsb2JhbC1nMi9wdWIvY3JsL2NhY3JsLmNybDA/oD2gO4Y5aHR0cDov
L2NkcDIucGNhLmRmbi5kZS9kZm4tY2EtZ2xvYmFsLWcyL3B1Yi9jcmwvY2Fj
cmwuY3JsMIHbBggrBgEFBQcBAQSBzjCByzAzBggrBgEFBQcwAYYnaHR0cDov
L29jc3AucGNhLmRmbi5kZS9PQ1NQLVNlcnZlci9PQ1NQMEkGCCsGAQUFBzAC
hj1odHRwOi8vY2RwMS5wY2EuZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHVi
L2NhY2VydC9jYWNlcnQuY3J0MEkGCCsGAQUFBzAChj1odHRwOi8vY2RwMi5w
Y2EuZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHViL2NhY2VydC9jYWNlcnQu
Y3J0MA0GCSqGSIb3DQEBCwUAA4IBAQA2TUR/4UBApxuFbGVWzAkFxAfnGjlY
UhVRhCext7xKms1E6tf6umVjXcSmdry1ELR2j0+6lbwrunNUmNud5kC8Q8qh
zCoY7iWMdh4eO/evWOCG0sWqhvKfCpSG2FZz6xsd6+VK0OGZAGcsoZwqMLKS
6gzsG3R37PIPwqPmjL1J5GuPguDVO/HCIyN2/+PDP/WLoYPii5Z93EDpxFXx
QK9kC76WL6S3qejPgWqpFbLT8ADBgMFT40/JVUW49pRdu5TFNLc3QF6LdWIO
3HU5fm4x1AwK/U1vsJnStXH9Ogsk6GusC61E52ZAQpGDClMQWBnRJoO9mi8S
WKWmmSgvLuqpMYIFKzCCBScCAQEwgZ4wgY0xCzAJBgNVBAYTAkRFMUUwQwYD
VQQKDDxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVuIEZv
cnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsMB0RGTi1QS0kxJTAjBgNV
BAMMHERGTi1WZXJlaW4gR2xvYmFsIElzc3VpbmcgQ0ECDChGOhYmXcjO+OJr
SzANBglghkgBZQMEAgMFAKCCAl0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMjMxMjE4MTYwODE0WjBPBgkqhkiG9w0BCQQx
QgRA51N2uBqDhwICuk9/W8xwvCaPBqTbkYR86B0EXwxpw6COxcVOmO5GRz6r
brcg+hby909gBt1F/nGzY/zS0cNwajBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCG
SAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwIC
AgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMIGv
BgkrBgEEAYI3EAQxgaEwgZ4wgY0xCzAJBgNVBAYTAkRFMUUwQwYDVQQKDDxW
ZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVuIEZvcnNjaHVu
Z3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsMB0RGTi1QS0kxJTAjBgNVBAMMHERG
Ti1WZXJlaW4gR2xvYmFsIElzc3VpbmcgQ0ECDChGOhYmXcjO+OJrSzCBsQYL
KoZIhvcNAQkQAgsxgaGggZ4wgY0xCzAJBgNVBAYTAkRFMUUwQwYDVQQKDDxW
ZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVuIEZvcnNjaHVu
Z3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsMB0RGTi1QS0kxJTAjBgNVBAMMHERG
Ti1WZXJlaW4gR2xvYmFsIElzc3VpbmcgQ0ECDChGOhYmXcjO+OJrSzANBgkq
hkiG9w0BAQEFAASCAgCawkzDfN/hKJNVKzZw/YPl9rCEpK1BUbFUGY4JCt7B
Kn7uwZF8ALkeqC9asUXtrHB4a6g1I+PaYhlFw+yYmB0CXxihb4yGRLJ7hkly
u5gIAfRpj4f8iYq7XXCSzrvY8aQDv0Ia+7wYhYI4Ijy9pfEGDLCkuJu3k34r
MQH2EM5xONhO8XrVUHbIcGt9RThGG8m+/tWixEHo1LXHyvjHwPSvF7+74Hoc
UDwQwi+5JyCTfurx4OHBvUMAqIqtSOocQTKwAncr9VuN81y+t4rAPC+PZp9j
0neKtXJvqfwyB03CtHE6xXZWudCnRVTxdZJLzjmQLav7Cpom2h4j13nwPE3U
8XJv7fWxX62DzzaejpI7W7u9XYCwVWKfSzP+jgVnNZk5lACpHTlF69BLZygS
GdQBcyrJpCQ6n6CCa+mS6ehTrC/NZ08GLqBpskHqiDjWcqcAsQCJIlN/6ja/
jhufyXSjwieoTTDmDoIh13QdYdb/JVlAgrMqlb7//LT5mHqouXNqrnN+SWID
fV/YRjMWXdKEXkf27oSy5wjCcvPMlXRd9IsiSERnbwbrC4uB1xK31PcIbiSg
kzD0QsJQqBwaAxje6EweoCcXAQISZ6Xuxll5S13kYbvMS814ffTrEF7HIK+J
nylw/RETcfSOjKjyv17/BtYZChcCpCTRTO2lnw0PSQAAAAAAAA==

--------------ms080905080700040408060702--
