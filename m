X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1519" "Monday" "18" "January" "2016" "13:54:41" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160118185441.EB3FE6C00B2@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: Buffer Overflow in lha compression utility" nil nil nil "1" "2016011818:54:41" "[oss-security] Re: Buffer Overflow in lha compression utility" (number mark "U       cve-assign@m Jan 18   39/1519  " thread-indent "\"[oss-security] Re: Buffer Overflow in lha compression utility\"\n") "<569CADC1.7000407@gmail.com>" ("<569CADC1.7000407@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21704 invoked by uid 550); 18 Jan 2016 18:54:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21679 invoked from network); 18 Jan 2016 18:54:53 -0000
From: cve-assign@mitre.org
To: pariszoump@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <569CADC1.7000407@gmail.com>
Message-Id: <20160118185441.EB3FE6C00B2@smtpvmsrv1.mitre.org>
Date: Mon, 18 Jan 2016 13:54:41 -0500 (EST)
Subject: [oss-security] Re: Buffer Overflow in lha compression utility

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The header_size variable is determined from the first byte of the lha
> archive header, which is read by the get_byte function. The returned
> value is used in:
> 
> header_size + 2 - COMMON_HEADER_SIZE
> 
> to determine the elements' size used in fread() .
> 
> If the header_size is less than abs(2 - COMMON_HEADER_SIZE) = abs(2 -
> 21) = 19 then the size parameter is overflowed and a buffer overflow
> occurs in fread.

Use CVE-2016-1925 for these CWE-130 issues.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWnTRlAAoJEL54rhJi8gl5bdUP/123UJ7W73/BOu1E/j1kKrFJ
NMHjJZtEwjLmwZLCbV0HQ2l7311hbMZnjNm1lHLJuX695ca7prndMGEV5va5NVRF
5X6z9OTBkitYTJVTp/RoolXPL+jXQr/LTXiieHl3M/Iq+lUV1fqZvWf5kytnGo2N
AzQFGpDct0B7JfM6fGn8t6qd+/5ar56EAU01IEwyqSeKzIiQtAUes/y8D7D7RAyk
O+B2lJMQ92/np8/i0guLoVs9P60xqDF0QPlVLQGKwZsBt/5T432JnUUkP/vyUYqc
vY7aoe8tM6ib5Y1loSk6hTUynHR34EyQc4ZfyE9OL0ugdz4GDy/QzOWbDfrSlIw1
u31ac9pRcGwHxToryqFmulPpfQlRclbnHQgqkNmPq0FrR9Q0WAYSiXHdHyqktKTv
pMMZtO7UF6yABYSWVPyivprflRYbyP+Mm52VnOG/W27bevEeK46UUjlHPYVn/Qi4
wFNhDvTh+fjkiGcfuR6wfIT2ABipkBeR8opAvz2XS8W7/ukDaIJZ1QVExThxMu57
9H/uqLcAor7FrQiDfZv+s7SzstS898UeJvTbOn8HRZBerj6OkaPW9xR6v/B5Tf1W
ssXuU2vaIe/7isYeWV8YzzD9dNJlGneHUBonSucu+buVx84spJqTP9NvRIcy2Z3U
1IeE6G2X4oMRf3Kxm8Sj
=h+oU
-----END PGP SIGNATURE-----
