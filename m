X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1565" "Wednesday" "30" "September" "2015" "12:55:45" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150930105545.GC8507@kronk.local>" "45" "[oss-security] CVE Request: zendframework SQL injections" nil nil nil "9" "2015093010:55:45" "[oss-security] CVE Request: zendframework SQL injections" (number mark "        alessandro@g Sep 30   45/1565  " thread-indent "\"[oss-security] CVE Request: zendframework SQL injections\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7255 invoked by uid 550); 30 Sep 2015 10:55:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7231 invoked from network); 30 Sep 2015 10:55:57 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-type:content-disposition:user-agent;
        bh=tJcydO718dunXdR4pFVt2iHbcaAoSo/VSv6QiYthNP4=;
        b=YmqESU7xdxulZjDTkvBt8xII3hACIG9DiwRjh7Z1H8UcuUGFhtP1n79cbmBCG/zxTl
         +UkMppFSK0VSDbHjCL1l8GxBmEc+5BYk9xPlk5ZGx9/UpV75hm7Q9plawqqWrnZEudOG
         5FT2aWRksDVlj0lgJ9XN1Hp5wWGXLRA2AUMqnr0O93EfymGjjrUNGwrTmSra3tgqn2n8
         vjMhUzF0Du1Jk4B1cbelinUoPD52HWaYnJZzJ+XoFml6vNdqk1isg+2SFQ2wSoVzrBhg
         iU10QVeZV4G+PYBFU2akbmj9CiIjFBkQl3osVDdTR1Gu7tAmOQ2kaTdYMgHdcnNOykI3
         jeSQ==
X-Received: by 10.194.79.196 with SMTP id l4mr3737645wjx.93.1443610546574;
        Wed, 30 Sep 2015 03:55:46 -0700 (PDT)
Message-ID: <20150930105545.GC8507@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qtZFehHsKgwS5rPz"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: cve-assign@mitre.org
Date: Wed, 30 Sep 2015 12:55:45 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: zendframework SQL injections
To: oss-security@lists.openwall.com

--qtZFehHsKgwS5rPz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

the Zendframework project released the following advisory:

> ZF2015-08: Potential SQL injection vector using null byte for PDO (MsSql, SQLite)
http://framework.zend.com/security/advisory/ZF2015-08

The patch for the MS SQL backend seems to be:
https://github.com/zendframework/zf1/commit/2ac9c30f73ec2e6235c602bed745749a551b4fe2

but I couldn't find the fix for the mentioned SQLite backend.

This is somewhat related to CVE-2014-8089, which was about a similar issue
in the sqlsrv backend.

Can CVE(s) be assigned for these issues?

Thanks

--qtZFehHsKgwS5rPz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWC7+xAAoJEK+lG9bN5XPL8QYP/RxS3l223+Mm7aTDCLBEqS/0
5YeqzERHLHievLAtiP1YdDLDqr7XnnnQpdYHmaZBfBb6SzS6rIO8+Ks4ka7yb2me
L62Q9NpqhPzmzuc3LKUNAouxbk8QGiyqnDrRmzY/XrEuILeWlGv8aaYJGRIM6lkG
0Jq2q0QtA2zCHmcnJ+0aSenQwN0IyG4c0LE101D4ojsKp+nkUIpqgufzTbAaELG0
vPicZv931yP2UcRXiLOiM1w1ptu+XZ26KoaT9ZWMFhP2cI+a3dhj7NWSyyukqSeL
ReEzIunXhV6sofy04eapMubOrD9OpTbJPHQLE95XUPylD+H8A+T3XpIl5Bi9oRGr
JDRtvACBuPsVHv2wCvyf3sE99jYGwi8O8XDWivbDYxa4PhRp8NkhaU6A1nbPkfV+
HpoquQLXc2iVfA9L238kKt9nnjOZzDaf+UFuqvZjtKSVyLADURfIZmB1p4xTkps+
Yp6PbTUkj1ERL6P4fEgwdkZNJDjdnayvle9/wPjJ28jDaPHoWoxi8Ay+RqXp7btF
IxkU27O6ES9n8zmYdIAs/Y3T/X46wTVDzzhBRKrAfYt7BydDnK9D2U0pP4eaaOYP
HUTfUGA5NZWB54Jz6Np94/E6dutkX0A17ZcAfVv6c3Zm6bGremOmLuZDsTs9JJ/R
7msfbHIUD1ATG0x6FZMd
=Pi+S
-----END PGP SIGNATURE-----

--qtZFehHsKgwS5rPz--
