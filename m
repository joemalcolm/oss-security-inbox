X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2359" "Tuesday" "18" "August" "2015" "19:24:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150818232448.386636C005E@smtpvmsrv1.mitre.org>" "50" "[oss-security] Re: CVE Request: ippusbxd" nil nil nil "8" "2015081823:24:48" "[oss-security] Re: CVE Request: ippusbxd" (number mark "        cve-assign@m Aug 18   50/2359  " thread-indent "\"[oss-security] Re: CVE Request: ippusbxd\"\n") "<20150811025532.GB23539@hunt>" ("<20150811025532.GB23539@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16175 invoked by uid 550); 18 Aug 2015 23:25:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16154 invoked from network); 18 Aug 2015 23:25:07 -0000
In-Reply-To: <20150811025532.GB23539@hunt>
Message-Id: <20150818232448.386636C005E@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@ubuntu.com
Date: Tue, 18 Aug 2015 19:24:48 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: ippusbxd
To: seth.arnold@canonical.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Till Kamppeter has provided the following patches to address the issue:
> https://github.com/tillkamppeter/ippusbxd/commit/46844402bca7a38fc224483ba6f0a93c4613203f
> https://github.com/tillkamppeter/ippusbxd/commit/a632841f8e65d402e13e81921515f5a1e2736c82
> 
> The first patch switches to using two sockets and binds them explicitly
> to the IPv6 and the IPv4 loopback addresses; the second patch simplifies
> the use of select(). Both patches are recommended.

As far as we can tell, the message was written this way because you
are addressing multiple audiences: one audience is interested in what
aspects of the commits are security-related so that they can be mapped
to individual CVE IDs, and another audience is much less concerned
about these mapping details but wants to fix the security problem
without adding a new problem in its place. Specifically, our
understanding is that there is no expectation that anyone has a
production copy of the code with
46844402bca7a38fc224483ba6f0a93c4613203f but not
a632841f8e65d402e13e81921515f5a1e2736c82. If anyone had such a copy,
they possibly might find that an attacker could cause a performance
degradation via a crafted client that intentionally triggers the
"select() call repeated in a loop if the timeout expired without
incoming data" issue. In other words, there is no CVE ID for a
"repeated in a loop" problem, and probably for two reasons: nobody is
using that code, and the performance degradation is too small.


> https://bugs.launchpad.net/ubuntu/+source/ippusbxd/+bug/1455644

The only CVE ID is for the presence of "addr.sin6_addr = in6addr_any"
in the original code. Use CVE-2015-6520.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJV071DAAoJEKllVAevmvmsaF0IAIwQQu5Le3ygNRS0luytSxf8
tdqQ19YXjCdlQVSyXbqlRsSul3BMskti3KvsUwLo5zxJZfIwb/npdekT2pkp1g5Y
GbJ3jbL70iXf9oSX6G/7arSZWPmrGDpDbeU02pvCxQtLmS5ApqS9OMNOAzp51i5m
u9o7yEqnWUMuB0NnIQITonCiAZHuFBruhQ3j3yksKLz0SUl8AevefzBxCurDwaBV
vBnEpqc9qvgQIHhvNZ3CfMthTI2tJbDB2oOCqckFxtnsMIS6QcYdBS5X0mla7ilf
7WDzZKFCCAgUAjTZ9Mukhno1cmSLeBNTuEMK6lmoumK0SOlxUgV+weeXTBQHttI=
=MhM/
-----END PGP SIGNATURE-----
