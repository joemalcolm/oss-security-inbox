X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1678" "Wednesday" "17" "August" "2016" "23:40:04" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160818034004.E6E24B2E01B@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: MantisBT: XSS in view_all_bug_page.php" nil nil nil "8" "2016081803:40:04" "[oss-security] Re: MantisBT: XSS in view_all_bug_page.php" (number mark "U       cve-assign@m Aug 17   40/1678  " thread-indent "\"[oss-security] Re: MantisBT: XSS in view_all_bug_page.php\"\n") "<np2ot9$gpa$1@blaine.gmane.org>" ("<np2ot9$gpa$1@blaine.gmane.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3735 invoked by uid 550); 18 Aug 2016 03:40:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3704 invoked from network); 18 Aug 2016 03:40:16 -0000
From: cve-assign@mitre.org
To: dregad@mantisbt.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <np2ot9$gpa$1@blaine.gmane.org>
Message-Id: <20160818034004.E6E24B2E01B@smtpvbsrv1.mitre.org>
Date: Wed, 17 Aug 2016 23:40:04 -0400 (EDT)
Subject: [oss-security] Re: MantisBT: XSS in view_all_bug_page.php

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> An XSS vulnerability was discovered in MantisBT's Filter API, affecting
> the View Issues page. It is caused by unescaped output of the
> 'view_type' GPC parameter, and can be exploited as follows:
> 
> /mantis/view_all_bug_page.php?view_type=[XSS]
> 
> To resolve the issue, the parameter's value is sanitized prior to being
> stored in the filter, ensuring only authorized values 'simple' and
> 'advanced' are saved, and subsequently printed on the hidden form field.
> 
> https://github.com/mantisbt/mantisbt/commit/7086c2d8b4b20ac14013b36761ac04f0abf21a4e
> https://mantisbt.org/bugs/view.php?id=21611

Use CVE-2016-6837.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtSbhAAoJEHb/MwWLVhi2y/sQAI4Zgb9yzisnCQlPnBFtPALu
nSl9WntQBBBKSS/7EIv+4OntPTRF69ngqgLFSZRNBB8OAbOYxqhuxNKjx2O/t9HL
3amuDNatrIQdvjd9dpd0yD23lIRRB3i7Zq+DzAPsEO2MwazQBtyHKTIGmmcYpGv9
UsZ0Vw+jD3l16Z/9DfZINu+pBuUO0k7/zKlpQ4v2RRjq4J6RGrGMbR+lY4nP7sxm
asQ5Mk9vz/Whpk7hAfYcAvSw2qb+K9bgTiLZ3HF/97kQCUTA+8VrCpVO8EG4k6Rz
o+8jK2tZi3lRPlmzYIeVe+b3gLuyTvuYSNV1WbQllnjtU4NNaqgcXm3BxTEKmAqj
IYo8OcZql1KDiVscDw8xuUTtPFmAqTtstUOh44DIVgzO0l4Rlz6PIF1kZ5IT8eFo
d0YuCIrAOXSupfVASpffuHGNKwBniF+AoQYFAdG26XKIBDmir7y4vZIx/OPH257d
sXTdJkzVhZuyQJWjVlOsV9tGIh/VkR/VO0vXj5Q02k//7AtmeLUf/utMVhNCOA0c
MDxQatjIDh+eDfEFDlLY/FkeduHb2aJI9QiI1QRayE01C6+tJUo26mhGcqf0O7Wa
Jgfd78fEaquju9kZ8TaR6qKVsABvEQWAesxVjfnrg5mk54rzbr09t3sqyVPpwNwy
5ROx1/qpuWT03S5xW/PG
=mmRp
-----END PGP SIGNATURE-----
