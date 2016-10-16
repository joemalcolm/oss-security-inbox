X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1328" "Saturday" "15" "October" "2016" "22:56:54" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016025654.A45A96C0D67@smtpvmsrv1.mitre.org>" "34" "[oss-security] Re: potrace: invalid memory access in findnext (decompose.c)" nil nil nil "10" "2016101602:56:54" "[oss-security] Re: potrace: invalid memory access in findnext (decompose.c)" (number mark "U       cve-assign@m Oct 15   34/1328  " thread-indent "\"[oss-security] Re: potrace: invalid memory access in findnext (decompose.c)\"\n") "<4079765.cAzWC0Rqb2@arcadia>" ("<4079765.cAzWC0Rqb2@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17814 invoked by uid 550); 16 Oct 2016 02:57:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17677 invoked from network); 16 Oct 2016 02:57:06 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <4079765.cAzWC0Rqb2@arcadia>
Message-Id: <20161016025654.A45A96C0D67@smtpvmsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:56:54 -0400 (EDT)
Subject: [oss-security] Re: potrace: invalid memory access in findnext (decompose.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/08/29/potrace-invalid-memory-access-in-findnext-decompose-c/

> SEGV on unknown address

> 0x7fd7ec5bcbf3 in findnext ... potrace-1.13/src/decompose.c:436:11
> 0x7fd7ec5bcbf3 in getenv ... potrace-1.13/src/decompose.c:478

Use CVE-2016-8685.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAud1AAoJEHb/MwWLVhi2ScEP/3lo1mPD67U4CEoptEWB4GRo
yalqHOyd5Gs5X+D/lV2upZded+s3W2mRZ8ubu0S8bQdhkSbEHH4tX+ovPzV6LaAb
GNwYTSr1uCOGZCKRlN1HdU7NzQvjeAUi4w2JJBpV+XpTe21cEAopLH4w41Xwue4X
Wl3U5rF9dRVaqRng1LX56nC9bvHiVGe+DcbmpY46AosSIdTrXiBMi5KtHLgKTE6S
iYu5nTeIpK8DNsgDSPa9tqdsqxvihrF+xey5rPn02dHFumKJQOCis04VwOxgFtQG
8WGYob2bhXlxC1+AZcSox5BgIE5hS3MttouVmeqSviSSq1SO/QRF+Qu34iZZcCuI
573spEard0RIkqcY+RvVij8W2H6507P1fBZKLMjFxhDz4pR5hj6kjArRRL7X0LA8
WiS4wGK6l33mmUCwAzTfJTrmWlRO5qbJwaM7pGCo3d4BRwdmmq/sTv4Sov2txMxw
PFtj0FL44QAkuKEjcNp4lbLCF6XE3MB6cfeTnfjyya1evuSP5URD8SUHRB42Kjb5
FrCUOs2wYKVBOjtUabLKt9mrciBLqarEzXbbY1BWAqmOh8vBDyHGXLQL9oS4GT9E
BRhuq6CtPdH9+u5UKKSe3/TCQUcvmWNDowQcEqnnIgT7hxm+HGo/iz+9uIFj9ZgQ
kWGGXBvz+mQSlqdBJEW8
=odv0
-----END PGP SIGNATURE-----
