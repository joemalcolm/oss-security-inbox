X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1566" "Friday" "5" "February" "2016" "12:37:00" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160205173700.66743B2E0CA@smtpvbsrv1.mitre.org>" "41" "[oss-security] Re: CVE Request uclibc-ng dns resolver issues" "^Cc:" nil nil "2" "2016020517:37:00" "[oss-security] Re: CVE Request uclibc-ng dns resolver issues" (number mark "U       cve-assign@m Feb  5   41/1566  " thread-indent "\"[oss-security] Re: CVE Request uclibc-ng dns resolver issues\"\n") "<1454682395.12024.102.camel@fahlgren-laptop>" ("<1454682395.12024.102.camel@fahlgren-laptop>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17947 invoked by uid 550); 5 Feb 2016 17:37:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17924 invoked from network); 5 Feb 2016 17:37:12 -0000
In-Reply-To: <1454682395.12024.102.camel@fahlgren-laptop>
Message-Id: <20160205173700.66743B2E0CA@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri,  5 Feb 2016 12:37:00 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request uclibc-ng dns resolver issues
To: daniel@fahlgren.se

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The first is a denial of service while parsing compressed items. An
> attacker can make the application end up in an infinit loop. Fixed by:
> 
> http://repo.or.cz/uclibc-ng.git/commit/16719c1a7078421928e6d31dd1dec574825ef515

Use CVE-2016-2224.


> The other problem is that a crafted packet will make the parser
> terminate early. The buffer is never initialized and is later passed to
> strdup(). Fixed by:
> 
> http://repo.or.cz/uclibc-ng.git/commit/bb01edff0377f2585ce304ecbadcb7b6cde372ac

Use CVE-2016-2225.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWtNzoAAoJEL54rhJi8gl5S9EP/jQ9DVZd0cXk8H0+ZJbgJi78
3+rQH00Sh5sTlPIPiq5zlE+dTZEIvHHq3eaHqIa6clTiZ8aWMSRy7PzcODWkXRIi
E1/Kj+IdBg6puYeWWnkJZY7FeeU3PYKo4+fOKwB4O5+DYH9Lo0IN1bsKisiWmIpo
KXhsK117DPrcMfE5HlrjLIQ1ZHd+c0O9LIaVFbjW75gLCEN553tWls6KU3NFzFUz
Nh+zASekPfnt8XsTkNA0DT88ZFutiqvznNuy4IHMf65Zz3lWiCqX9gfxprjrR1FV
aHwp95qN6DOIiw7S9aE/E+UCYZkGF/HVaIkmAZkFAeNWGwICjlBnWhGviIaEPaJC
Jphp2YGbbY/6wxA2d4pfz7yXd5rwpvSElizHrhUdmlH9c1DvW0kaZVCybvsfU2HN
+V8S2U/e5DZPLIcQXHV757WAjeMRduHMX2yP7qYO0EwEbor1IaD5LoQ3cIU//eSB
AWC0rIIl6kaUeSktuwATRApk8OJ+11PX83cTy+XGYHLeP6jgaTgI6l9pRR9BJnIj
qF4YSs/1kbikQXS6aLMGAeiIvVuxgbp64TRACw6rZNSLrXnbQ7DbcBxjxOAW9CNO
2Ht/mY5o7hWTLJkyEbb7XHbpj6lx1gSWic+BRn38tmYsHvvLPYdU2hl3cfbtuI0O
DQDtql0LtIp/P9AKIsCY
=LXU8
-----END PGP SIGNATURE-----
