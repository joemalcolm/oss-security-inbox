X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2579" "Friday" "21" "June" "2019" "13:19:28" "+0200" "Erik Winkels" "erik.winkels@open-xchange.com" "<1438003945.458.1561115969008@appsuite-dev-guard.open-xchange.com>" "56" "[oss-security] PowerDNS Security Advisories 2019-04 and 2019-05" nil nil nil "6" "2019062111:19:28" "[oss-security] PowerDNS Security Advisories 2019-04 and 2019-05" (number mark "U       erik.winkels Jun 21   56/2579  " thread-indent "\"[oss-security] PowerDNS Security Advisories 2019-04 and 2019-05\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] PowerDNS Security Advisories 2019-04 and 2019-05" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21694 invoked by uid 550); 21 Jun 2019 11:22:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18401 invoked from network); 21 Jun 2019 11:19:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1561115969;
	bh=SCBt8YDj2iZrvG+zz5ljF8pIL+Woz1H/Rgesb5dpTeA=;
	h=Date:From:Reply-To:To:Subject:From;
	b=umpQP30btcg7OW400MLAs7lkeD3MaDZDGGO53Wm3wmhAoF8IMZuUt9a/HJIn5gYqR
	 udHHrY+un2vUVVh9r7EVAIIfZgbSlrnu8fyIOYuZNmTmXm2SnL1ntEJgP9orPy7p8v
	 mveIOn0eStiBkOfnPzs8zlBINH75xTJMgcIWGaoobHE9UltkZ2qGB3ptwkdQm8G/UB
	 Mv/7fEZ1ncnDWYGVYDk/EP7dMPS3OVATc/0XUxaY7GvHgDcTdB4XTKLgrj8AjMwYzE
	 x7wHK8KAvV7vKmTvGSWTX4JwTnCytGoWf8e8xS7ny9t/179phntmjZcnGzH8gWgnV+
	 jhYolGnfKFGnQ==
Date: Fri, 21 Jun 2019 13:19:28 +0200 (CEST)
From: Erik Winkels <erik.winkels@open-xchange.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <1438003945.458.1561115969008@appsuite-dev-guard.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; 
	boundary="----=_Part_457_158478696.1561115969006"
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.10.2-Rev4
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] PowerDNS Security Advisories 2019-04 and 2019-05

------=_Part_457_158478696.1561115969006
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Good day,

(via: https://blog.powerdns.com/2019/06/21/powerdns-authoritative-server-4-0-8-and-4-1-10-released/  )

We just released PowerDNS Authoritative Server 4.0.8 and 4.1.10.

The 4.0.8 and 4.1.10 (together with 4.1.9) releases fix the following security advisories:

- PowerDNS Security Advisory 2019-04[1] (CVE-2019-10162)
    - thanks to Gert van Dijk for finding and subsequently reporting this issue

- PowerDNS Security Advisory 2019-05[2] (CVE-2019-10163)
    - thanks to George Asenov for finding and subsequently reporting this issue

Please also see the 4.0.8[3] and 4.1.10[4] changelogs for more details.

The 4.0.8 tarball[5] (sig[6]) and 4.1.10 tarball[7] (sig[8]) are available at downloads.powerdns.com and packages for CentOS 6 and 7, Debian Jessie and Stretch, Ubuntu Trusty, Xenial and Bionic are available from repo.powerdns.com.

Please send us all feedback and issues you might have via the mailing list[9], or in case of a bug, via GitHub[10].

[ 1] https://doc.powerdns.com/authoritative/security-advisories/powerdns-advisory-2019-04.html
[ 2] https://doc.powerdns.com/authoritative/security-advisories/powerdns-advisory-2019-05.html
[ 3] https://doc.powerdns.com/authoritative/changelog/4.0.html#powerdns-authoritative-server-4-0-8
[ 4] https://doc.powerdns.com/authoritative/changelog/4.1.html#change-4.1.10
[ 5] https://downloads.powerdns.com/releases/pdns-4.0.8.tar.bz2
[ 6] https://downloads.powerdns.com/releases/pdns-4.0.8.tar.bz2.sig
[ 7] https://downloads.powerdns.com/releases/pdns-4.1.10.tar.bz2
[ 8] https://downloads.powerdns.com/releases/pdns-4.1.10.tar.bz2.sig
[ 9] https://mailman.powerdns.com/mailman/listinfo/pdns-users
[10] https://github.com/PowerDNS/pdns/issues/new
--
Erik Winkels
PowerDNS.COM BV -- https://www.powerdns.com

------=_Part_457_158478696.1561115969006
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.61

iQEcBAABCgAGBQJdDL1BAAoJEG/8M0ObDQTfh1oIAKiVIe9LsSdd6QQb+DNa+vYD
By2z+LiM+6Io/lq4g+VlAjYCaJleKDXIyPv/orE6ArLlXYteXg6z9k8yQeHRbW2m
HfB9xr2fZR3WgCiZKAMp9buh83EqWeDUF1wIP2MqpcjGeD6tUQOAZ0+l7P69Vvm9
ZQ822f0M3/TbJUmTITq5udqeM+0la7noQxvNcJJq5D7q64Ajo4da7Mth7nEDCImr
9t/sD0uxolXtO6vyXichEaw88LrKAlnJwb81Swb5c7LC/YP5RJqbuoArDOK8+e4j
XR/YqzUAtAXEBKJhdJUEeWALu/mUjLEyArtd2cDKVKBpnaL38Wa+JLlzQ37Y9gI=
=cf5T
-----END PGP SIGNATURE-----

------=_Part_457_158478696.1561115969006--
