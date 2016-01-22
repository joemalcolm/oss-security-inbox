X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1650" "Thursday" "21" "January" "2016" "22:00:33" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160122030033.C787672E00C@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE request for Privoxy 3.0.24" nil nil nil "1" "2016012203:00:33" "[oss-security] Re: CVE request for Privoxy 3.0.24" (number mark "U       cve-assign@m Jan 21   40/1650  " thread-indent "\"[oss-security] Re: CVE request for Privoxy 3.0.24\"\n") "<20160121154650.41c0e854@fabiankeil.de>" ("<20160121154650.41c0e854@fabiankeil.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3599 invoked by uid 550); 22 Jan 2016 03:00:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3581 invoked from network); 22 Jan 2016 03:00:45 -0000
From: cve-assign@mitre.org
To: fk@fabiankeil.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160121154650.41c0e854@fabiankeil.de>
Message-Id: <20160122030033.C787672E00C@smtpvbsrv1.mitre.org>
Date: Thu, 21 Jan 2016 22:00:33 -0500 (EST)
Subject: [oss-security] Re: CVE request for Privoxy 3.0.24

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> - Prevent invalid reads in case of corrupt chunk-encoded content.
>   http://ijbswa.cvs.sourceforge.net/viewvc/ijbswa/current/filters.c?r1=1.196&r2=1.197

Use CVE-2016-1982 for the issues fixed in this revision: they all seem
closely associated with CWE-130.


> - Remove empty Host headers in client requests.
>   Previously they would result in invalid reads.
>   http://ijbswa.cvs.sourceforge.net/viewvc/ijbswa/current/parsers.c?r1=1.302&r2=1.303

Use CVE-2016-1983 for this issue, which seems to be about falsely
concluding that "Host: " is present after a check for only the "Host:"
substring.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWoZpDAAoJEL54rhJi8gl5xdYP/jxEbGcBErFJ8dYGrSlbFB5a
BDCgDl/Jxrsg/c6+dLLmhIWCSaho75yPoH0Y5kdTiPHpqBgGvZTLUpC4Djo7AIov
oYIsV/IsOfmEyldsHD8oHg9AXMm/cob25M2Id9nQzqqwwa32w3FaXY14DPckJoC/
sJnGy77ZO66n0kqSdc6D8E4irqpibzKfpwjfIb4YxcFRHjtEC2qjd4e/msM5ZqjU
eOBa88nip/tYYozeSAAhWdMvtReIghqWFZP9WTg4BuNDk9rVFp2y7mhjkieLvu1A
F1z84RSRgZr7/f7Y17PRBbi+f4/63xBSTFilboj3u2aqTGxtUScKa6Pa2ZZrntaf
0noIpTr/R5QptbQOXDCrGMqMEysId1AD/zSs4qTAFJVOkWt+UYn4LaV7B7A51bSq
BzC/f2A7mc72Gzcq0PLY6ZQV+ROgWRtpouHDiuhrUVPh/s18VREVyI7h5ZDBax9Z
6vZ4O+nPj0ltY33GwkDsACLTteCYW97WI9twM47XTrZgcajwdz+B/DPc7iI6HQNq
15QbuvibVIPlI89wpY+t0kPlRhq+Wt3hLwxTU1kns1KtbfyMvEL3h7frjUI8lQMl
ZwocisN2A5aUMrAXR7ypO+KCvd/MooZC4bCmQ/7vA9D3Ud/DfMzM2Ozdzl7oRuo8
lWNdVM9PB+NWRABUUny1
=XMf+
-----END PGP SIGNATURE-----
