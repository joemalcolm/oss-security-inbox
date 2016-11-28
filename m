X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1413" "Monday" "28" "November" "2016" "03:49:09" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<90cda9c173e44ef5a56478ba116836fb@imshyb02.MITRE.ORG>" "34" "[oss-security] Re: kernel: fix minor infoleak in get_user_ex()" nil nil nil "11" "2016112808:49:09" "[oss-security] Re: kernel: fix minor infoleak in get_user_ex()" (number mark "U       cve-assign@m Nov 28   34/1413  " thread-indent "\"[oss-security] Re: kernel: fix minor infoleak in get_user_ex()\"\n") "<20161107124854.GA7492@inutil.org>" ("<20161107124854.GA7492@inutil.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15640 invoked by uid 550); 28 Nov 2016 08:49:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15614 invoked from network); 28 Nov 2016 08:49:21 -0000
From: <cve-assign@mitre.org>
To: <jmm@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161107124854.GA7492@inutil.org>
Message-ID: <90cda9c173e44ef5a56478ba116836fb@imshyb02.MITRE.ORG>
Date: Mon, 28 Nov 2016 03:49:09 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: kernel: fix minor infoleak in get_user_ex()

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> the LWN comment by Brad Spengler referenced above refers to a new issue
> which affected some Linux stable lines, which backported
> 1c109fabbd51863475cd12ac206bdd249aee35af without also backporting
> 548acf19234dbda5a52d5a8e7e205af46e9da840.
> 
> So please assign a second CVE ID for the latter.

https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-9644

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYO+8OAAoJEHb/MwWLVhi2VwkQALNPfR4xU0r/4dKHpFtFppMX
aKkVEdoR/rYXp84ph/QSRnrBisv5s4z8uaCSAEhL3eMUSzqPFkkvDR8jPOWYVMw4
tHp42FztwVEZl43CNQojS3oRQ5VpX3IRQOlq3Ojcsq9Lcovze8hnGyEE7ZWuHqbd
xKF6SbTiLsmlzI6UFsVfwC9+GEEPwoBG4WWOxQr5Ryn8x+EWwp/YMZpGHhkvwcTC
Whi43J5uyvQOP5WuDv4IwvjsuOIxrpXW+uvuxflasf9QuYV0dEk3ZPPhr+TkQ9PN
mSA9gwqmIh+bShrmy8T+ir0YTZppx3grEJQplxUGIFXqYxBJS8iykoln0XWLnhih
XGfWKBx44UuoARuGfU7cJ7+KWycsWNWx0LuaK54PM+tPCcAwJtbP+AtZndYH9gLY
5CG8rlQwBQkIZbPXo2a/CYx55s5CAevClaJwPTNduwbA5+8Umy1qtAKYaSoK6auL
dDvwEuQtDo5PPOB/TlDdgv+/wsbe5HerI6yltL9l18zjomG6Qpyw3RVnbI/m4QGB
90Nw6QUw13tGnQZIGQq9BqQQlwH1uSRg2I6vSA4yidJAzX1R6b28N0ZZ84TLBf2W
fiH8mNoKR/nolU5RRvt7sE8bIVAkOxLI6zbevx4hE7aiHa6y7ASU2i9Ur+yQidjk
eFPK2b2Ws14fGAsEbAsQ
=xE31
-----END PGP SIGNATURE-----
