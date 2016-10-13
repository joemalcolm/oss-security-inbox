X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1445" "Thursday" "13" "October" "2016" "03:01:25" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161013070125.9C7331BE0E7@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: bubblewrap LPE" nil nil nil "10" "2016101307:01:25" "[oss-security] Re: bubblewrap LPE" (number mark "U       cve-assign@m Oct 13   34/1445  " thread-indent "\"[oss-security] Re: bubblewrap LPE\"\n") "<20161012131247.GB14056@suse.de>" ("<20161012131247.GB14056@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13729 invoked by uid 550); 13 Oct 2016 07:01:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13698 invoked from network); 13 Oct 2016 07:01:37 -0000
From: cve-assign@mitre.org
To: krahmer@suse.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20161012131247.GB14056@suse.de>
Message-Id: <20161013070125.9C7331BE0E7@smtpvbsrv1.mitre.org>
Date: Thu, 13 Oct 2016 03:01:25 -0400 (EDT)
Subject: [oss-security] Re: bubblewrap LPE

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Once the dumpable flag is set, there is a chance we could attach to the process,
> once the remaining caps are dropped and the whole process runs as user.
> 
> Luckily, that happens at line 1707, right after a PrivSep socket has been opened!

Use CVE-2016-8659 for this issue in which there is unintended
functionality of attaching to the process because of the details
of the code near 1707.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX/zCzAAoJEHb/MwWLVhi2N7MP/iBQbZmO7LEnU4n2DN0AgDwV
WiZAzDsNl6rfFMDC25pSmy+0wY5E9qzbXdOWxiAphntuwG7K2qPeM78FrqcBr6wB
/bMwj1Xp7fIWZIAt5O9Nnd/0B+KQgYwU0KjaJVyEyHW59Qhk/WWIqWViqia3CDL0
zWVF/Ofnu2pTeoIOIBmnjAdgkiSihpU1XlR16e2YGfJAKAlaS0td+4jhogUmgkg3
Sa5IbvgTVrLdG0LALAa9NQeN2guOslDkiQepW4NjhNungSJbmrkgq3xdMey2GHrC
1hV1DgHbBLg43Kz7Mp1wKLxAn+VWvZrPHfYAP/gwpmA9kuUet1PAlN84awi2VbQg
fTiY2f7/0AyQsIhhgPQVqfsidw2xBQ0DYc7uoQftFff/MmVFs0+K4miuFqmeQ06B
WyFs4ur43J2EiS/rBJnZlNlqaBGvVg9pzeLv5MhfYnvteFGDxALfKAKNqIpQYHsZ
c0JynLFP+el/XMBS2pt8cJiD1xVhGS/G3eCGCUWTmPBmaMfLHcJeyxO8ZmLcDetN
zLPWjCDgtqUWGtfKWTR643I1cu5IVD3w2/k+glXwy3spz5JiKl5tfAFodDSUi35m
Yn54sbPQ5ohVqoUrSd7FzTzrgfVAZJVNjcqbG+3VGpnfscgn0dSsEiH2i2jTlOy7
Vxo15BHmFPpa4CuVsG/j
=/As/
-----END PGP SIGNATURE-----
