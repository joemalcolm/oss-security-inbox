X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1620" "Wednesday" "25" "January" "2017" "11:40:57" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<13a9a29f65f54f3498314ef5a425d9bc@imshyb01.MITRE.ORG>" "42" "[oss-security] Re: CVE request: lcms2 heap OOB read parsing crafted ICC profile" nil nil nil "1" "2017012516:40:57" "[oss-security] Re: CVE request: lcms2 heap OOB read parsing crafted ICC profile" (number mark "U       cve-assign@m Jan 25   42/1620  " thread-indent "\"[oss-security] Re: CVE request: lcms2 heap OOB read parsing crafted ICC profile\"\n") "<20170123030704.GA404@sin.redhat.com>" ("<20170123030704.GA404@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11828 invoked by uid 550); 25 Jan 2017 16:41:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11804 invoked from network); 25 Jan 2017 16:41:10 -0000
From: <cve-assign@mitre.org>
To: <dmoppert@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<i.elsayed92@gmail.com>
In-Reply-To: <20170123030704.GA404@sin.redhat.com>
Message-ID: <13a9a29f65f54f3498314ef5a425d9bc@imshyb01.MITRE.ORG>
Date: Wed, 25 Jan 2017 11:40:57 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: lcms2 heap OOB read parsing crafted ICC profile

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> An out-of-bounds heap read in lcms2 ("Little Colour Management System"),
> in the function Type_MLU_Read in cmstypes.c. This could be triggered by
> an untrusted image with a crafted ICC profile.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1367357
> 
> https://github.com/mm2/Little-CMS/commit/5ca71a7bc18b6897ab21d815d15e218e204581e2

>> Added an extra check to MLU bounds

>> http://www.openwall.com/lists/oss-security/2016/08/15/9

>> The vulnerability is read read-out-of 
>> bounds which enables me to read most of the data in the heap.

Use CVE-2016-10165.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYiNShAAoJEHb/MwWLVhi2tNYQAIIsVVuBdlAUm922u1XxVFd0
TvjrdIxzVWumze5hyQEdcGHdPZENi3OS2lpHvll3ePXjic4FNUhPaQYp1FWjk+Oy
QZmM1sS/vKeeSXaGjeRkvCdaI3eG6W/qF+Znsm6t5aUVrMgb4CO5LnG89JghsVcC
lknYsY84/9AjmxyyTuIwHwmirbzKC0MSxCTUz/7bMt3JTA/FmFhVGNjD8886XFmN
ihlRBxixjsW/9GjOKy3aszA3ejhlMrLHrjeo03CFHeNHA6u8zOtg08ysOa+U//wK
grvFTd99vn/tioP5RaoLOQ2qgXb0Pr196S0/2eJwxfpyxdE7unfGnbH/u91ge+t6
uqS4sNt3COGCSiksDOjC1fQJoV/CkgofkIFjyKA252SnBN5YAobQdoF4tSrNQqiE
ywDAeh/Nss/GNrNXfAfC3OCa9zXay6gQZeYs6/8Wn7CrRMuVN946wnQbPd0rbA10
gLOR3kEIg38KFmFPoXFAqorXeHiE/mt7luAtzqmlGhr0GV53Kp+dwmxA95S0pdWS
+Cu7zQFqFMiQI8mO8/MB1BNLrIz41kLqbziuVxYO40DC4dkXJDNnyeoSM0CrCd5z
LwAyeO+JdIrwOiAzRoPnjhcQP8vZX82aCmjhg29XN6NN1HV7BDUGyOVhzu48GvKL
Qqok7Oon7vjbFPBLJR8J
=XkOt
-----END PGP SIGNATURE-----
