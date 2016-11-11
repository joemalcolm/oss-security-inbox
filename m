X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1495" "Friday" "11" "November" "2016" "12:43:58" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<5b255e157f6640988ff729ba46e4896d@imshyb02.MITRE.ORG>" "35" "[oss-security] Re: libdwarf: heap-based buffer overflow in get_attr_value (print_die.c)" nil nil nil "11" "2016111117:43:58" "[oss-security] Re: libdwarf: heap-based buffer overflow in get_attr_value (print_die.c)" (number mark "U       cve-assign@m Nov 11   35/1495  " thread-indent "\"[oss-security] Re: libdwarf: heap-based buffer overflow in get_attr_value (print_die.c)\"\n") "<2342970.3XqcyZiG6N@blackgate>" ("<2342970.3XqcyZiG6N@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23625 invoked by uid 550); 11 Nov 2016 17:44:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23573 invoked from network); 11 Nov 2016 17:44:10 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2342970.3XqcyZiG6N@blackgate>
Message-ID: <5b255e157f6640988ff729ba46e4896d@imshyb02.MITRE.ORG>
Date: Fri, 11 Nov 2016 12:43:58 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libdwarf: heap-based buffer overflow in get_attr_value (print_die.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/07/libdwarf-heap-based-buffer-overflow-in-get_attr_value-print_die-c
> https://sourceforge.net/p/libdwarf/code/ci/583f8834083b5ef834c497f5b47797e16101a9a6/
> 
> AddressSanitizer: heap-buffer-overflow
> READ of size 1

We would need more impact analysis before assigning a CVE ID for this.
It seems to affect only the dwarfdump command-line program, not
library code that is used in arbitrary applications.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYJgKVAAoJEHb/MwWLVhi2IdUP/2OaC1OfaPFR++3Jzepg9MNl
4gPc8ehCElI+uhC6eq9d2CJZHM+a608/IlA5jDTxuSTuzS2aQjNZ2OgNWYl7dPjy
K63lDfs7Xs25ChrVlynW5pcPXYcJ2f8GZpqZgaRB35nBUtjjQcQweQvW5lga3zLl
225z8m2EOId3KME5Vklr2gxbdH9fNeIqRUqdCa7gpyG/PzwZWnUg/blStSyw+S4i
yDCxL8iP7AlH/d0vdinT9rK9Ez0A/13IKLbcTU0Rk7YLFv8X5sbFYETnszU6pWBO
1RlglJh7xNEY204ibV17+6OawS/DyC8KvrLAAXEwtwBaWgj2IfgsmVtO4aNv9hdr
6eDQqIgCO90I8+aNQGQsAZZeNeeYE6ydfx+8+SVGHcbTc4uEqryynfCRNmy6eSET
qniAB3s2fl8872starbxjFfQFmashOzEWxDRLsIEHcfgw+y7mcZSHZOcPuzWb0+Y
tEVrJQWGRtpZL5paeqG/ML4zJNaTZ6Ypn52hafUoCFECVc3CZTRVVF6l+5Ac/pM0
sCtElvwhZ92HHGsa96salFE/B0ebcNmElKOanQ4C1pIOM4k9UJcbkmmXNgkLjIpk
c4Pum2dsIqiBgDEGMUTZKDCBcoEj/ivghYM2F7KslH0O5Ei/FIdkOuiraNU15YEg
6vwiWK7F7KAvl2XJdJvU
=Ts69
-----END PGP SIGNATURE-----
