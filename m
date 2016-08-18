X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2060" "Wednesday" "17" "August" "2016" "23:30:14" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160818033014.3FFE33AE001@smtpvbsrv1.mitre.org>" "52" "[oss-security] Re: CVE request for buffer overrun in CHICKEN process-execute and process-spawn posix procedures" nil nil nil "8" "2016081803:30:14" "[oss-security] Re: CVE request for buffer overrun in CHICKEN process-execute and process-spawn posix procedures" (number mark "U       cve-assign@m Aug 17   52/2060  " thread-indent "\"[oss-security] Re: CVE request for buffer overrun in CHICKEN process-execute and process-spawn posix procedures\"\n") "<20160814105011.GQ3971@scully.more-magic.net>" ("<20160814105011.GQ3971@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7570 invoked by uid 550); 18 Aug 2016 03:30:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7549 invoked from network); 18 Aug 2016 03:30:25 -0000
From: cve-assign@mitre.org
To: peter@more-magic.net
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160814105011.GQ3971@scully.more-magic.net>
Message-Id: <20160818033014.3FFE33AE001@smtpvbsrv1.mitre.org>
Date: Wed, 17 Aug 2016 23:30:14 -0400 (EDT)
Subject: [oss-security] Re: CVE request for buffer overrun in CHICKEN process-execute and process-spawn posix procedures

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://lists.nongnu.org/archive/html/chicken-announce/2016-08/msg00001.html

> I would like to request a CVE for a buffer overrun that
> was detected in CHICKEN Scheme's "process-execute" and
> "process-spawn" procedures from the posix unit.
> 
> CHICKEN preallocated an argument array of ARG_MAX items (or 256 if
> that was undefined), and an environment array of ENV_MAX items
> (or 1024 if that was undefined), and did not verify that the arguments
> or environment lists were less than this size, resulting in a buffer
> overrun if these lists were longer.

Use CVE-2016-6830.


> The bugfix also fixed a memory leak in the same piece of code, which
> could potentially be used to cause resource exhaustion/denial of
> service situation.

>> a memory leak existed in this code, which would be
>> triggered when an error is raised during argument and environment
>> processing (e.g., if one of the arguments wasn't a string).

> Does this warrant another CVE?

Yes, use CVE-2016-6831 for the memory leak.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtSRnAAoJEHb/MwWLVhi21jEQAKZvWLvq/uy2d4j31FTcH3Sx
OjM5j9I+2/szLaexJcEHjQGLUL34NDem+CEizZa1lU2NXKFFlYYXE8CGDGtVyvG9
M21Dxfq6QiSJv6WacORbLawUK6txSfBajOBu+DL36lr+Y6FSejh5zxwg/97E1Z97
J+bpICS96zSUDx21rTVj6a7AT+C48vHsGXdZ214yiui6Grs1UjKEwbyJvYONJnEh
qaUfZwxd1DMrp9mYLbTzC7YoaA8cpK4pa2XMj866Ek9zqd55W+IFrxTg7bapHrRY
elZdeTuXyg4POQ/ZJFUkkRVUZt5Dfa5r2nhG6O6oYxCNIWcjCwNkEH3vy8Fqnstp
60tAC2Plt/F58Or5rcgBMIPckf01rolGj23EOCKihuAqZC8iXyisaTWC80Bzvx9P
9L3RBU4p956GpRvDyMONdq30bGgI5ICtpV6yJUgiuMIR3npoCkZqH8/ONSrxZjdj
jPeikuZNGpzRmDqiKijG8PqXutTlnxNqiZ2sntFIzEgMrRYLtpaEqkXGJBOJiF/v
NiVOPbvlnVNfkbLBj4MjFwhxD10a8Nb+VuIUJaSVAEUszFlpTCiA/cj1t3ZZb5MG
bPumWrj0+22vn+C2V3KVlsevP8co68ggxydx2RYsbJ2gEQ7gkM904HFNkPfk1ZS2
CpJ18WYaF6DGQvTX6wie
=BpnE
-----END PGP SIGNATURE-----
