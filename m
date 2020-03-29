X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2081" "Sunday" "29" "March" "2020" "22:52:38" "+0200" "Matthias =?ISO-8859-1?Q?Bl=E4sing?=" "mblaesing@doppel-helix.eu" "<24afb6093cb0de9e0f652ed5252e6aa97f34fd30.camel@doppel-helix.eu>" "62" "[oss-security] [CVE-2019-17560] \"Apache NetBeans\" autoupdate cert validation" nil nil nil "3" "2020032920:52:38" "[oss-security] [CVE-2019-17560] \"Apache NetBeans\" autoupdate cert validation" (number mark "U       mblaesing@do Mar 29   62/2081  " thread-indent "\"[oss-security] [CVE-2019-17560] \"Apache NetBeans\" autoupdate cert validation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-17560] \"Apache NetBeans\" autoupdate cert validation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28022 invoked by uid 550); 30 Mar 2020 10:46:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21839 invoked from network); 29 Mar 2020 20:52:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=doppel-helix.eu;
	s=201912; t=1585515160;
	bh=IqtlxiT268uDtwiPFs6ZQtaHJs/dPWdGJvDbxAzIPrw=;
	h=Subject:From:Reply-To:To:Date:From;
	b=UVJMarE+XAHFy9KRGzRJnguUiTDj7ip/ijM5kGjnH0V+vx26fo5iAK5ESHLqQaOFq
	 6+Q75AU5UGqyI6xRZ8n/mgurcrDES1xkYFr/fFCGSvhSXIbcgJ6rw4tYhTNWcZZffg
	 xTOJQomnK8v2Ph2/hYDhi5Mw3ut6zseIaOEyp46s8LuxDjNXTwHVTRyRtRQRMarwyD
	 +oHZ0VyzbjLQfbIZicxoh/buiw7znSCSeMJK7ynXFae2oSRw8Zrz2ua3JHpc1xZ/wg
	 NL/mY1AijRelWBDQ7FJ+wXES67vtX4FZZ6DwPgm03k9Q+f7qBG+pgauW0aNhkJC9ct
	 LbjgT8I//BBAA==
Message-ID: <24afb6093cb0de9e0f652ed5252e6aa97f34fd30.camel@doppel-helix.eu>
From: Matthias =?ISO-8859-1?Q?Bl=E4sing?= <mblaesing@doppel-helix.eu>
To: dev@netbeans.apache.org, announce@netbeans.apache.org,
 security@apache.org,  oss-security@lists.openwall.com
Date: Sun, 29 Mar 2020 22:52:38 +0200
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-3Y8ILJBhqREs4Yg8MYxm"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Subject: [oss-security] [CVE-2019-17560] "Apache NetBeans" autoupdate cert validation

--=-3Y8ILJBhqREs4Yg8MYxm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-ID
------
CVE-2019-17560

Summary
-------
The "Apache NetBeans" autoupdate system does not validate SSL=20
certificates and hostnames for https based downloads.

Versions Affected:=20
------------------
- All Apache NetBeans versions up to and including 11.2
- NetBeans releases before the Apache transition started may be
  also affected

Description:
------------
The "Apache NetBeans" autoupdate system does not validate SSL=20
certificates and hostnames for https based downloads. This allows
an attacker to intercept downloads of autoupdates and modify the
download, potentially injecting malicious code.

Mitigation:
-----------
- Disable autoupdates
- Manually download plugins to installed with a web browser
- Update to NetBeans 11.3 by downloading the release, verifying the
  signature and manually installing it

Credit:
-------
The investigation was triggered by a proof-of-concept submitted by
Emilian Bold

--=-3Y8ILJBhqREs4Yg8MYxm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE+nkp+DrUTEWQ9sxoFcccCk4Ljt0FAl6BCpYACgkQFcccCk4L
jt2Q9hAAjvoPiS4Nc+7rGv7gz8eMM3YxLmgnZerq4gZra+WxSzQEbUKS1Cpzpd+g
F8zC61fkDs31kMdtvPUfKOM2egvlSbN484CPDqbWkUfQM+UfFrpk8wXj5w2eTqLt
pvPaiDP43dqrkYhOe3A3GS77lV5pm7vFC6u138L4kCuEHLVY9hCepsKPu24163+y
6AMtAngPge3w/ajMmxQ/PAsIgYDoLb12Nr3Dohw+eM2PU7YQTKcBsVw2TJ5Aj+AZ
ErOYwT4QHDMnNEhuoQ5TiA3F7VNntrKLTPTJZ7esfIezxmXd6kv8Ikp4yQiUm/16
2S/pnddaXAmcq9oiV2Heab0F1HHsDozEAuevUtDn9fz/GdK6/7m5Elw2iLRFc3Rb
yy958W6lkcgmm/z44WaJhOMm8XUw9MEnoiGCE0cnPDGn3zAFE1I6Z9axhWx+3ULT
3JZfqXHz4wMLT748L2ptmvQd94zR/jOg4IukjE4wYg/SBjozLEyPfLexMj8tqA82
19UMq6TORBdP96CUTc7OfPMo3l54WrStHOM7ZMelNfE9Iv0QthRBWQfp/47xEfND
mRqkhqZQ8qnmoJbgwBJuiYGLjp+PZxR0lehzDoIH4vgBKeu4VIKly8uw8LHay6bK
jaSF78pyMHFRKyI+q/0pZTk0HtSQl0hyoV6sLxspsBnKIXyIrQw=
=josp
-----END PGP SIGNATURE-----

--=-3Y8ILJBhqREs4Yg8MYxm--

