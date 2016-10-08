X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1585" "Saturday" "8" "October" "2016" "11:34:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161008153429.C0F6142E066@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: SPIP vulnerabilities: request for 5 CVE" nil nil nil "10" "2016100815:34:29" "[oss-security] Re: SPIP vulnerabilities: request for 5 CVE" (number mark "U       cve-assign@m Oct  8   42/1585  " thread-indent "\"[oss-security] Re: SPIP vulnerabilities: request for 5 CVE\"\n") "<80dec0d7-75a1-6319-6ad9-d316d4bb7d34@sysdream.com>" ("<80dec0d7-75a1-6319-6ad9-d316d4bb7d34@sysdream.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16048 invoked by uid 550); 8 Oct 2016 15:34:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16030 invoked from network); 8 Oct 2016 15:34:41 -0000
From: cve-assign@mitre.org
To: labs@sysdream.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, spip-team-owner@rezo.net
In-Reply-To: <80dec0d7-75a1-6319-6ad9-d316d4bb7d34@sysdream.com>
Message-Id: <20161008153429.C0F6142E066@smtpvbsrv1.mitre.org>
Date: Sat,  8 Oct 2016 11:34:29 -0400 (EDT)
Subject: [oss-security] Re: SPIP vulnerabilities: request for 5 CVE

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> * Template Compiler/Composer PHP Code Execution
> https://core.spip.net/projects/spip/repository/revisions/23186
> https://core.spip.net/projects/spip/repository/revisions/23189
> https://core.spip.net/projects/spip/repository/revisions/23192

Use CVE-2016-7998.


> * Server Side Request Forgery
> https://core.spip.net/projects/spip/repository/revisions/23188
> https://core.spip.net/projects/spip/repository/revisions/23193

(In other words, the :// substring is rejected to prevent
outbound network traffic.)

Use CVE-2016-7999.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX+RA3AAoJEHb/MwWLVhi2GqIQAKupTLee7N5Q7UpyJJkiM8ek
CHcI1zwsMiH1MKmXkUCxiSW12C7Av9D9AW057G7N18HmL8bIuRHwBUDtsFq6zlAQ
526Vm7CJDRuO74UK2ximr47KodVBd09fJonRl7MPEDXgllppCvkmh/1ctKTdrJ8+
6DKd5ErXO/zoAWFIgfXwXllYBFKnzrH9gqYJO8X1T5UFQ/Mka6WDzkVH83h4D96e
8dcrHT9yISaF8kyPf/qwrkgxEzXE4lfECZZI4sVI4lu1KCVAtx07DiWXAT+D7VW2
BuTylk9PxONmGmL6ZTeYSEOSYT+QqheBn2ZniSpS4r7M9dAytKtjxFSR2a3AFXu9
9F6uyTdOcKJZv1hhBg6O6eGYQlip83KvySAXm+USPd90oU3DDEqhisVl211ZNqWj
pj4Pl8gTAftRWlZz//URJvpwATa1r0hl1fnuBdQxnfdoPvhiMNqQBBu8BICJXTby
Hc9A/6RLMX4kFmzg+ReqTnFlg2xGroplayg8u/oAH/C0c5tId9m34i2/rX1B9naY
lfpjHADIejCh+FEU6uR23lza6UR8cgNYwrSaexED1y6tG9ec1RdtpohAL9WKf0Kx
BqwWCoKLZYYisfQMtGfD4F4/Qp08F68QkAslfz1xXqeYv1wlHIEDI9xKXpc/fovM
mLEFfwUdXnAHGHUyumCj
=v5y8
-----END PGP SIGNATURE-----
