X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1456" "Monday" "21" "September" "2015" "19:46:52" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<560096EC.7030202@gmail.com>" "36" "Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities" nil nil nil "9" "2015092123:46:52" "[oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities" (number mark "        danielmicay@ Sep 21   36/1456  " thread-indent "\"Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel vulnerabilities\"\n") "<56005039.1040701@gmail.com>" ("<55FFC9BD.6030503@quarkslab.com>" "<5600451D.5060404@gmail.com>" "<56005039.1040701@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18340 invoked by uid 550); 21 Sep 2015 23:47:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18315 invoked from network); 21 Sep 2015 23:47:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=c0og9ySWATUg4VciRtCQsy5Rf426iBuCTmIqgpotWMc=;
        b=o0qclwmtMv5Kb+wcMMGWT0pzEhj/lTA1VqrBOJ9HtIpUgGEix0bGqGZqs8i674tBI6
         M95MM5cUwSjknynvvIrUqPt9me9CWKm8+QaGSCoCr8FAigpgVUKNp9oPN2lNA/b7t18Z
         4G6GBVe3SWNLpswUQ3rn1e4+XpbM+TJh7Qp/JpB2FHqweKAJZMs7T0Fv6W1u6YGiGqxe
         As5K6rWWSSW8NhTPqDGU68WizWqbSB2xAkdx2z+oPCxkfjaNmWucru8mFiUlcvxzvJu4
         k1+mDWREwNkNjSDviPpkSVW8ZBk1NNw+2iOW7k3gH1TO/m0RnJQLXEcq57qf0H7Xn/He
         EkAA==
X-Received: by 10.107.3.168 with SMTP id e40mr29288092ioi.151.1442879217396;
        Mon, 21 Sep 2015 16:46:57 -0700 (PDT)
References: <55FFC9BD.6030503@quarkslab.com> <5600451D.5060404@gmail.com>
 <56005039.1040701@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <560096EC.7030202@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <56005039.1040701@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="9BU6m3iWGO83sjMLAnPBNBXJ0aaDa0kNV"
Date: Mon, 21 Sep 2015 19:46:52 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Samsung S4 (GT-I9500) multiple kernel
 vulnerabilities
To: oss-security@lists.openwall.com

--9BU6m3iWGO83sjMLAnPBNBXJ0aaDa0kNV
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Er, not quite. STRUCTLEAK would need to be a bit more aggressive to
catch this (it should! :P). There's no pointer to mark with __user in
this case.

The UDEREF point still applies though, and I think it's worth thinking
about which issues are systemic/preventable ones.


--9BU6m3iWGO83sjMLAnPBNBXJ0aaDa0kNV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWAJbtAAoJEPnnEuWa9fIqgtYQAIFMukoaFe3Tt+gXR8AUQWwn
IJCLaNZvPp7YeTjxutESAQThNU4ExnrPbiY5RunSbhE1HA2PNfiSsCRx1J4rvVoY
Dhtk9cWldPpiEB+9xWAf6tlkmhahNqQEF+UKF+rjp7h/FgmZEQuPV15XnH6Ab7gf
5EgRjxEcgeQaMdzXPr7BoaLGKkLSIzMFC01ZDEGh2fDyqX1e46nWg3uBQoqiTcPg
SewKmES5IzYTCjycHHzXYcE3zFefyNXd8CtxK1jOa+U+XVtc6vj6OHhMcPV5/fnz
slsF9WIsm+4TT4ftMyaCO6nLJvEITGuGmzfVsdjDFarP/lQmtU7qJCKEeevpMX3g
C8HpHnCW4GUx75AHomS9AMxBftghEh4ewPfy0LLjuSzbq10tiX+NfBvk2GJ7s/b+
H1wNSIc/fDPonKdjc011IpCJZmAHGfd1Za31C5V6cxPC5l5lTAPLO+gU3a1ry+Md
C/G9NIXeMFfPgcrj1ooXwTmjo/dmJVmC8rpWOoQzwyP+xXZ1N1oa9JKXLjqce08J
uN3hKrLGxHN1hxtgYJEo8LGyrQQq0i1AqWnI4ECGLcn40Utgotzc/AKcc87LemTK
4lYDXt231R/ZczffzfscN/DQY0g6QzLJmQbFMn373uOTxbWbrnkdLvsi38b76DXj
ygXjWoJEJByXHWJBnQKN
=/jRQ
-----END PGP SIGNATURE-----

--9BU6m3iWGO83sjMLAnPBNBXJ0aaDa0kNV--
