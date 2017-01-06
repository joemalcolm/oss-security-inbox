X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1712" "Friday" "6" "January" "2017" "03:23:30" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>" "66" "[oss-security] Re: Firejail local root exploit" "^CC:" nil nil "1" "2017010608:23:30" "[oss-security] Re: Firejail local root exploit" (number mark "        cve-assign@m Jan  6   66/1712  " thread-indent "\"[oss-security] Re: Firejail local root exploit\"\n") "<1483655866.8979.68.camel@juliet.mcarpenter.org>" ("<1483655866.8979.68.camel@juliet.mcarpenter.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17425 invoked by uid 550); 6 Jan 2017 08:23:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16363 invoked from network); 6 Jan 2017 08:23:42 -0000
In-Reply-To: <1483655866.8979.68.camel@juliet.mcarpenter.org>
Message-ID: <730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
Date: Fri, 6 Jan 2017 03:23:30 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Firejail local root exploit
To: <mcarpenter@free.fr>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> 1. --tmpfs

Use CVE-2016-10117.


> 2. Nuke /etc/resolv.conf

Use CVE-2016-10118.


> /tmp was mounted tmpfs 0777 prior to:
> 
>   commit aa28ac9e09557b833f194f594e2940919d940d1f

Use CVE-2016-10119.


> /dev, /dev/shm, /var/tmp, /var/lock were mounted 0777 prior to:
> 
>   commit cd0ecfc7a7b30abde20db6dea505cd8c58e7c046

Use CVE-2016-10120.


> There are other weak perms fixed around here eg /dev/shm/firejail was
> 0777 prior to:
> 
>   commit 1cab02f5ae3c90c01fae4d1c16381820b757a3a6

Use CVE-2016-10121.


> 4. Environment not cleaned before root exec()

Use CVE-2016-10122.


> don't allow --chroot as user without seccomp support

Use CVE-2016-10123.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYb1OiAAoJEHb/MwWLVhi2N9kP/0AHycN7Au+PTq/bHoxXVi4l
74YrEI8PcE1UHIkL2m1kOLbZGTWWc8E0uMEJFTfKrVoIPAINN3iYtU9dYukSACxu
4gyQK8xWuzpbqBeF/PIBaZsp9THvTy7sfz2dKYDh/n5i0AFRv34/cs8BUIcl9BDE
4D/1FgdwLqarh0SJvclJRBmi4zmftqub3xbt1dJItSfc/5u5SxWMHqHbmW5vESIf
y3LU27S7E2qnSARfHxk1HfdqViDQO/76yYLQqlfGRc23wyj7ydFWQpRC28x0jjOL
SCiC91a2gG7nGyV1l/uFIF8QAQMACNl3uJT/5Hgp8ugUOVAko81u/o0liNJMthRK
NGWhENcFRuHqlqqxvOME/DfErfa7gn2cgFi+udl2BMfllCJb2ICH+Ddg9joaFLfu
33iPga5J0MB5YSPQYoCSERjz2Q/i65P9kzgeTjGRLOhHsfY4p6yxUr/YmqTJ9E+W
DXiTCbpxNJXEsopKwHODBD4ausPQ83A8LGPine7eGaJKoW3q8UdphDqOqitCRFEL
d/XkVjtt44N0wgjB/ABDezrRAYbRPSudcCDPYh7WVl6V/6D0YRuaqYJ/Q8LlT+Nl
/17KzyEunx/+0lBjvdtyGz2UQN8F7+9XKl/S0ZRBJS9i+Hrb4ShctP53h2aNbTQT
nC4OrYY4JBuW90DY4Ef2
=DJ5s
-----END PGP SIGNATURE-----
