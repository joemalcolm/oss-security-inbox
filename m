X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1340" "Monday" "16" "January" "2017" "19:08:48" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<6a99e3df9a9449dcb2ea3a4358c469b0@imshyb01.MITRE.ORG>" "35" "[oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)" nil nil nil "1" "2017011700:08:48" "[oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)" (number mark "U       cve-assign@m Jan 16   35/1340  " thread-indent "\"[oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)\"\n") "<2047603.jilSxc2Osk@blackgate>" ("<2047603.jilSxc2Osk@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5848 invoked by uid 550); 17 Jan 2017 00:09:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5737 invoked from network); 17 Jan 2017 00:09:09 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2047603.jilSxc2Osk@blackgate>
Message-ID: <6a99e3df9a9449dcb2ea3a4358c469b0@imshyb01.MITRE.ORG>
Date: Mon, 16 Jan 2017 19:08:48 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] https://blogs.gentoo.org/ago/2017/01/16/jasper-invalid-memory-write-in-dec_clnpass-jpc_t1dec-c
> 
> AddressSanitizer: SEGV on unknown address
> The signal is caused by a WRITE memory access.
> 
> dec_clnpass ... jasper-1.900.27/src/libjasper/jpc/jpc_t1dec.c:869:4

Use CVE-2017-5503.


- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYfV+OAAoJEHb/MwWLVhi2MgsP/RhVEboMm9UMLEpF8m4ZYraO
lDJaf20dpH2yKmiGnxl1ZGr3FxPdLW7TG50sJdJ6aJ6uXcI9j5mgNBsHP/d7Iccv
i3oYr7QFGY+vTmi8HvXTCPVJmeGLZiniUWZaGmnblWkRHBlBU1zOrv+C3R78BvGR
XcrYX/E6fUSZEVe0kdb+8lMUG7NHpPqF3xsp1Ys1Yoyj2AAt2EkEP9sR0qc3xD0X
69IRLfV4v6KNzqYp72uJ7JrETKY0VKAGjM1PKRtLZdcEL1HJBHL1J/BkvjtHH3hk
cEEROgbamXFX2B2LjQAFdL4emcAIvPRBztR4cojmNwi3lEwP3ZsLjTIWyX+3ZyCv
V3TAy9tDdO9e8oBUGQSdMzSH8zh6Yb0alJZYcBRNOQhgDnxuLGtKEbSiE3+lbNmJ
Z4mTR4xlH9KGjFkseHmdD0UoNUJrYNzokeoy0sXJUkBDUERkc935gmeUWAKnJ/s1
U5MZpyKydRJsk+qulp7r+1I2MRXChx6kZiKkRu2iI931GH2f/TGiQxB6I7JZqtLX
mhq+UUR6aYoSKxNAWciDiTrrbFuAyHtQ90uvwxTU/ySpzHuJN4CUPJ3iUzjauPMa
BOfP6lhwlV6t/1x5volP5A55xNsyhCnmguacdoK0r8YkPjfIyraEd8VX17sCq2FS
DJIvlsjb/y8uB9Dh5KYN
=etAz
-----END PGP SIGNATURE-----
