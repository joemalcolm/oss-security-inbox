X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1341" "Saturday" "7" "January" "2017" "12:53:23" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<1d5f6a4116104bdd8da6527c64bfd588@imshyb02.MITRE.ORG>" "33" "[oss-security] Re: Firejail local root exploit" "^CC:" nil nil "1" "2017010717:53:23" "[oss-security] Re: Firejail local root exploit" (number mark "        cve-assign@m Jan  7   33/1341  " thread-indent "\"[oss-security] Re: Firejail local root exploit\"\n") "<20170106215110.GB6771@lizzie.io>" ("<20170106215110.GB6771@lizzie.io>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19572 invoked by uid 550); 7 Jan 2017 17:53:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19537 invoked from network); 7 Jan 2017 17:53:36 -0000
In-Reply-To: <20170106215110.GB6771@lizzie.io>
Message-ID: <1d5f6a4116104bdd8da6527c64bfd588@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
Date: Sat, 7 Jan 2017 12:53:23 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Firejail local root exploit
To: <_@lizzie.io>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> allows ptrace with --allow-debuggers, which allows a
> sandboxed program to escape the seccomp profile by rewriting permitted
> system calls into unpermitted ones pre-Linux-4.8.
> 
> https://github.com/netblue30/firejail/commit/6b8dba29d73257311564ee7f27b9b14758cc693e

Use CVE-2017-5206.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYcSqVAAoJEHb/MwWLVhi2NzwP/0z1VLyt3ZjtWZJ/LO4/9eFK
Y3r7DhndVjzW0ly7NN3IJSYdtLplmxl8j5oJsOhviUClRrbAos2LBHmOTUM/vfFj
nyun6Lil9yuoktXnqTTRDGV+bhqABxi8HJ0I8iC6XMFOS+HrHNMZxcPUbNROFKxM
CcmFClQ8/EY4ZqJKdglwdEDFzKO9xUzoFdSVMfVRGjCQz6WSnEtG/Ab/6v+e3VLZ
ZSKJarpbnQ0M3IXALpu+jQ5/pfg9bZu4GyL6rTK46GCHnC//Rjw0E1yF7ryebVBC
TSrp9j8AggY+ZH90AYDFS5Z9ya58QRUeTm0zuLTPiqFhZakFp0ZhHmFB6wW+/VDY
yEJM0akAzMTiljFhePJRNrA0BuCYAJSDD15vV52IrYNBO9U+bCugLDTC3Nmt5OrJ
V8lUM2uYlTg3q/8y3sWeVW+7O2khsDdt4Pan6c0QXs9Nstr70iGsRKzg/q9rE45s
2IaE54OkYN8znmLpSVmPUSc5uHOIkyLky/7EKN5jgoIdbmAVwKgCOIQwBkCP25if
OZesiYfVCnca+rArzCR3GbPZhqDPYQcyj6iRt1Z7lUEvrRPKPwdyHCZZpQUklBYc
jUlabDWSPYZNEpmefnuKRK91m3CRDmgWGXdSaHOxeaq0Ip+H6DR36tIT8lQnGZHv
ZkitBU93h9QWYAMHXjmd
=SPiX
-----END PGP SIGNATURE-----
