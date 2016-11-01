X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3051" "Tuesday" "1" "November" "2016" "14:18:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<4d0087966bdd45da8a8802eacdcfa7b2@imshyb02.MITRE.ORG>" "68" "[oss-security] Re: Handful of libass issues" nil nil nil "11" "2016110118:18:40" "[oss-security] Re: Handful of libass issues" (number mark "U       cve-assign@m Nov  1   68/3051  " thread-indent "\"[oss-security] Re: Handful of libass issues\"\n") "<F5095245-3270-42FC-9FCC-91C2D121E6DC@gmail.com>" ("<F5095245-3270-42FC-9FCC-91C2D121E6DC@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16144 invoked by uid 550); 1 Nov 2016 18:18:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16098 invoked from network); 1 Nov 2016 18:18:52 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <F5095245-3270-42FC-9FCC-91C2D121E6DC@gmail.com>
Message-ID: <4d0087966bdd45da8a8802eacdcfa7b2@imshyb02.MITRE.ORG>
Date: Tue, 1 Nov 2016 14:18:40 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Handful of libass issues

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>>> The third is a huge memory allocation leading to a crash that wasn't
>>> fixed because a good solution is unavailable at the moment.

>>> https://github.com/libass/libass/pull/240

>> Use CVE-2016-7971.

The vendor's comment was:

> grigorig commented Oct 5, 2016
> I don't have a strong opinion about the CVE.

The MITRE CVE team has no current plans to reject this CVE. Someone
may want to use the CVE ID to track something. For example, there may
be people who need to track that libass is not suitable for their own
use case because they require exactly the "the best you can do is to
make sure [rendering] gracefully fails with an appropriate error
report (error code or exception or whatever you use) if memory can't
be allocated or if a library-user-specified limit is exceeded - then
the library user can handle that however they want to, for example by
exiting (appropriate for a command-line tool) or by reporting an error
but continuing to accept new requests (appropriate for a daemon)."
behavior suggested in the
http://www.openwall.com/lists/oss-security/2016/10/26/4 post.

Even if neither the upstream vendor nor any Linux distribution will
ever make any code change for CVE-2016-7971, discussion of the issue
can help with understanding the product's behavior. For example,
pull/240 also has a vendor comment of "Normally we should handle
memory allocation failures gracefully, but there's probably still a
lot of code which just crashes" that may be very relevant to planning
other research.

The MITRE CVE team is willing to mark a CVE with "DISPUTED" if someone
believes that it's based solely on an "AddressSanitizer failed to
allocate ... bytes of LargeMmapAllocator" misinterpretation, and
believes that it cannot have any relevance to risk management.

Also, of course, if a finding (such as "AddressSanitizer failed to
allocate ... bytes of LargeMmapAllocator" without follow-on research)
has no known audience, then sending a CVE ID request may not be the
best approach.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYGNtgAAoJEHb/MwWLVhi2NHMP+gNg7Xht/CNWHsVdWq4xXt94
dt3eBEmYAI08dewav8dTrZ60S+Q0H/j7U4wvwO0xbnrpmnoq1ZjSEKZdXWUZyFnC
Q5mGmmffyImnHYOyBUfpuNs+6rpo9ymuARgMBOxj1nZlVXz9n53O6jzcGVaPJ6Op
EzqWoDHRDTkZ7rzDrsFrnrWPaDDusxgHhlIjTQyY0PuXvQEWgG01xDCAZl2x49Cf
nDtGhA3Ox8K5tTw811CRNb8x57nXAu5OHCZTwr6rB4QFk+Oc/5Lm6SQP5XX8nY0o
18YNacM1B5pYv999CofBwy4RthFm/J1tQzbATKUlTLBx4Li2+5PiFuomvpEfAJv4
OhQlYQiUToRBiPBFGrihJB3f9iIW87V4ouX3sTPfBe9UcSjAZsd+VpGIf+SvWJFT
TTkE/woWvUprfIKXlJLNxfUdFRBlagK6OZgvRYlVixDY96uAYergHFlyDsdPP6eN
Je847yrnBkSB/KC1GVV/X8B6xNmeTz8JOW60pJ2TV8XvppOWxF+g9OVpQAnFMOYV
soWxwSrSI5Vim+AfcrWEnHz+WPPPMpSc8xw0djFSOKzh4RJRs8y25hg5+B/UVo5W
ZGFiLN26U9caRLjWoKK/K+9RL1HNbNA8wZSXb6vsCiNjtSVPQUNxsnbUZTN+SL/x
sRvikrhVVxQ+YrFPTT+c
=aMyc
-----END PGP SIGNATURE-----
