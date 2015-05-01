X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5883" "Friday" "1" "May" "2015" "19:15:22" "+0000" "mancha" "mancha1@zoho.com" "<20150501191522.GA18039@zoho.com>" "146" "[oss-security] On sanctioned MITMs" nil nil nil "5" "2015050119:15:22" "[oss-security] On sanctioned MITMs" (number mark "        mancha1@zoho May  1  146/5883  " thread-indent "\"[oss-security] On sanctioned MITMs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7578 invoked by uid 550); 1 May 2015 19:16:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7433 invoked from network); 1 May 2015 19:15:55 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:mime-version:content-type; 
  b=VRzMG3OVwq1SQSkQ3ibA1YsKr9FcD3H5YJVipscpogL7LVvnVQIMaHL0m0ytA0UduSqswVysEIGj
    +a2sdE9LFs1Hq+UDg0eAKe8ulLI/WZEyHIudQz+CfrY/wsAJAGgV  
Message-ID: <20150501191522.GA18039@zoho.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="69pVuxX8awAiJ7fD"
Content-Disposition: inline
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Fri, 1 May 2015 19:15:22 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] On sanctioned MITMs
To: oss-security@lists.openwall.com

--69pVuxX8awAiJ7fD
Content-Type: multipart/mixed; boundary="i9LlY+UWpKt15+FH"
Content-Disposition: inline


--i9LlY+UWpKt15+FH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

In recent times, we've seen the growing popularity of CDNs such as
Akamai Prolexic, CloudFlare, and Incapsula that, among other services,
provide upstream DDoS mitigation to vulnerable servers.

In the context of SSL/TLS, the interposition between client and server
can take many forms. For example, CloudFlare offers products such as
"Flexible SSL", "Full SSL", and "Full SSL (strict)" [1]. In addition,
they've recently rolled out a new product they call "Keyless SSL".

Hushmail is a email provider that prominently advertises security and
built-in encryption [2]. In the past day or two, Hushmail webmail access
began getting handled by CloudFlare [3] & [4]. CloudFlare's server, in
effect a sanctioned man-in-the-middle, serves its own X.509 certificate
issued by "GlobalSign Organization Validation CA - G2" (attached). The
certificate has a *.hushmail.com DNS name in its SAN extension so
browsers with the GlobalSign certificate in their root store proceed
without incident when connecting to https://www.hushmail.com.

Though Hushmail email credentials, for example, can't be sniffed in the
segment connecting the client to CloudFlare, they are available to
CloudFlare's infrastucture. Moreoever, there is no way for the client to
verify that the segment connecting CloudFlare to the destination server
is similarly encrypted (i.e. it might be in the clear as would be the
case when using CloudFlare's "Flexible SSL" product).=20=20

Hushmail's CloudFlare usage serves as an example that brings me to my
general point.

How should the security community view this growing use of sanctioned
MITM in light of the ever-increasing amount of sensitive content sent
over SSL/TLS encrypted channels (e.g. email, electronic banking, medical
records, etc.)?

--mancha

=3D=3D=3D=3D=3D

[1] https://www.cloudflare.com/images/ssl/ssl.png

[2] https://www.hushmail.com

[3] dig www.hushmail.com

id 20483
opcode QUERY
rcode NOERROR
flags QR RD RA
;QUESTION
www.hushmail.com. IN A
;ANSWER
www.hushmail.com. 299 IN A 104.16.15.172
www.hushmail.com. 299 IN A 104.16.19.172
www.hushmail.com. 299 IN A 104.16.17.172
www.hushmail.com. 299 IN A 104.16.18.172
www.hushmail.com. 299 IN A 104.16.16.172
;AUTHORITY
;ADDITIONAL

[4] whois 104.16.15.172

NetRange:       104.16.0.0 - 104.31.255.255
CIDR:           104.16.0.0/12
NetName:        CLOUDFLARENET
NetHandle:      NET-104-16-0-0-1
Parent:         NET104 (NET-104-0-0-0-0)
NetType:        Direct Assignment
OriginAS:       AS13335
Organization:   CloudFlare, Inc. (CLOUD14)
RegDate:        2014-03-28
Updated:        2014-03-28
Comment:        https://www.cloudflare.com
Ref:            http://whois.arin.net/rest/net/NET-104-16-0-0-1

=3D=3D=3D=3D=3D

--i9LlY+UWpKt15+FH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="hushmail-cloudflare.pem"

-----BEGIN CERTIFICATE-----
MIIFQzCCBCugAwIBAgISESGVuB3asQnetzcsV4gb4dQ4MA0GCSqGSIb3DQEBBQUA
MF0xCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTMwMQYD
VQQDEypHbG9iYWxTaWduIE9yZ2FuaXphdGlvbiBWYWxpZGF0aW9uIENBIC0gRzIw
HhcNMTUwMTI4MTk0OTMzWhcNMTUxMDE3MjE1ODM5WjBuMQswCQYDVQQGEwJVUzEL
MAkGA1UECAwCQ0ExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xGTAXBgNVBAoMEENs
b3VkRmxhcmUsIEluYy4xHzAdBgNVBAMMFnNzbDg1MDQuY2xvdWRmbGFyZS5jb20w
ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMFFWIk+AxxscWXDITqsdl
wwZGkpwUwOmqqRp60Yp8b0mS9jDeQwgXbKz0hEvgbXE7M4M0LhyX+H9frB2Tn4qR
/eUNa+sKySTqiAWG/U+1iwK4fm4qm7rhneDxbhmZWfRQIDzP1cQNT4JC4YIGqlOu
/mTovXXoh6Rtr4ZRFPi6HeXmH+TPP2ay4X+q1d9If/qXm7o35TlIStsJbT0Zxnis
32Zby6VXe2gWHdDRCktJm0y1w+eR+jgQJJkhUA9Bq2R1iuAd1TDc3dkPEjMlXFWq
aCUA2h6ssitAN8FAUzS46lKYSUvrpOQED7EmvFNeXYRqYuiQEd2F1dHacwXq+aRd
AgMBAAGjggHqMIIB5jAOBgNVHQ8BAf8EBAMCBaAwSQYDVR0gBEIwQDA+BgZngQwB
AgIwNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVw
b3NpdG9yeS8wPwYDVR0RBDgwNoIWc3NsODUwNC5jbG91ZGZsYXJlLmNvbYIOKi5o
dXNobWFpbC5jb22CDGh1c2htYWlsLmNvbTAJBgNVHRMEAjAAMB0GA1UdJQQWMBQG
CCsGAQUFBwMBBggrBgEFBQcDAjBFBgNVHR8EPjA8MDqgOKA2hjRodHRwOi8vY3Js
Lmdsb2JhbHNpZ24uY29tL2dzL2dzb3JnYW5pemF0aW9udmFsZzIuY3JsMIGWBggr
BgEFBQcBAQSBiTCBhjBHBggrBgEFBQcwAoY7aHR0cDovL3NlY3VyZS5nbG9iYWxz
aWduLmNvbS9jYWNlcnQvZ3Nvcmdhbml6YXRpb252YWxnMi5jcnQwOwYIKwYBBQUH
MAGGL2h0dHA6Ly9vY3NwMi5nbG9iYWxzaWduLmNvbS9nc29yZ2FuaXphdGlvbnZh
bGcyMB0GA1UdDgQWBBT1qYp5c/XGK80ToWYR3GsoFIDs/TAfBgNVHSMEGDAWgBRd
RrKNxEt0HLvt9XO2Orc4j3WefjANBgkqhkiG9w0BAQUFAAOCAQEAFgbklFy9iZDN
TqwySwur8F/TNxzdmxZH5pumk9hrtzS2Sc8j5qTcx+zK2N4nt9sGmQ1Q4fqtftFR
U7zSj0x55lXHY415/79jse6ji7rw3n5xGlyKuaB1mQ8Tf5/MNm+syzqzyjDvKWmx
M99wzpOh+6Cm4HhLuw12w6zq0vCn8+R9ecup2VWxBHgMI2H9bIz9eSMpVeSi/DFr
TAr/hUBrEaF0P9YF0JSfzrm78URmz7Jpm/LofEAtqdtaPSus1F7KjUxznKuD7SJD
b8F4+hNfj7GEg3RN/0Al5rUThgfhDfXtsoD4JYfsnKPvJxPeDGh8fljtF1/jy/bJ
Cbq6bet3jw==
-----END CERTIFICATE-----

--i9LlY+UWpKt15+FH--

--69pVuxX8awAiJ7fD
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVQ9DKAAoJEB4VYy8JqhaDIiYP/0N2x/vhtF8hHqafcrDrjdk7
fzV736gTO2ASMJoJaA1iAmz0XbUEvJvLWNSWTklxDvJVBWc5vzfuEJ+URvSg5Dd4
Lvr9KS6QWSXiOkH9qRMsR0bUA1cVFazEzP0L9hjVZevgu2GRpcOgidawqFg0ud2F
LH9/5r5ppiHEb49pbRPplds5Q/uuzT57ScHL65v/RA9/uPVN8Y5ntYz/OIBMR2NS
vJ4zPD7qyLoQqGCO43NQeBliDmr8epyxmmkxHsZKE6VcVKiXqd74HHDDDhDVemyW
o6W044rkRgBXofqrFCcrb+rpbP++BxSzYKpD6P+RrqUpbLt24sL1eWYIP3G5pwLQ
7xd3vN/d9NHskAbwQV7r9g5iETDo7WqD+hhYRbW3lxut20+1P8gQU7gcTNFxWUob
W7lQSto2oEqJqWEXRNJGIJcFlPm9IAjcs8wnPg02+RKm5hmBMJJc46PaG/nLLIwE
2+g7T5XIdK7rTZuOer3Xg0P6LE+pcEsb3I9SP2mdmi26od5YSJVC8MZc4RueV2PZ
9PKDu4WfpTd+rbGHtxGvZ7YvAvip5c19CfCXtFY5rq1YQCaAhGe9D1ysVgMskklV
GKy6auc6URTX547pJCgLNEOyfbTorBxZTM1ki8QjscZbSjEDNdt27aJzvw6s0ASe
CNs/KHz2qp9suulBuBgn
=e1Lc
-----END PGP SIGNATURE-----

--69pVuxX8awAiJ7fD--

