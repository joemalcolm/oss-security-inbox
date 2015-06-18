X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2388" "Thursday" "18" "June" "2015" "12:20:09" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150618162009.E54B1132E58E@smtpvbsrv1.mitre.org>" "61" "[oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch" nil nil nil "6" "2015061816:20:09" "[oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch" (number mark "        cve-assign@m Jun 18   61/2388  " thread-indent "\"[oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch\"\n") "<9F15CD0F-3D8D-4987-BB87-BAE3D4F728C1@me.com>" ("<9F15CD0F-3D8D-4987-BB87-BAE3D4F728C1@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13864 invoked by uid 550); 18 Jun 2015 16:25:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13839 invoked from network); 18 Jun 2015 16:25:07 -0000
In-Reply-To: <9F15CD0F-3D8D-4987-BB87-BAE3D4F728C1@me.com>
Message-Id: <20150618162009.E54B1132E58E@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 18 Jun 2015 12:20:09 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch
To: gcanalesb@me.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Sasquatch is an experimental fork of squashfs-tools.
> I'm requesting a CVE number for this vulnerability, per project.

CVE assignments typically cannot be done that way.

> https://github.com/devttys0/sasquatch/pull/5

As far as we can tell, there are two independent types of problems:

  - "int bytes" is incorrect because the return value of
    SQUASHFS_FRAGMENT_BYTES can be larger than the maximum
    value of a signed int

  - pull/5 says "If we fix this by making the variable size_t, we run
    into an unrelated problem in which the stack VLA allocation of
    fragment_table_index[] can easily exceed RLIMIT_STACK" but
    actually RLIMIT_STACK can be exceeded regardless of the data type
    of the bytes variable

We understand that the pull request is only intended to be an example
code change, not a comprehensive code change to all affected
functions.

This type of fork situation can have up to six CVEs:

 1 - all "int where size_t is correct" issues that occur only in squashfs-tools

 2 - all "int where size_t is correct" issues that occur only in sasquatch

 3 - all "int where size_t is correct" issues that occur in both squashfs-tools and sasquatch

 4 - all "exceeding RLIMIT_STACK" issues that occur only in squashfs-tools

 5 - all "exceeding RLIMIT_STACK" issues that occur only in sasquatch

 6 - all "exceeding RLIMIT_STACK" issues that occur in both squashfs-tools and sasquatch

We would guess that the most likely case is that only 3 and 6 are
applicable, i.e., the code problems are found only in
unsquash-1.c/unsquash-2.c/unsquash-3.c/unsquash-4.c and all of these
files exist in both squashfs-tools and sasquatch. Is this correct?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVgu8IAAoJEKllVAevmvms4iAH/2jSsPzoTZ4CPOCHDte6TuWr
1S02rSBvhaQ0HngavjC66y7EAdUK98SZpDeLwN9XP2o/jyhm8YMjcqgaJ/Kerf6s
W1QhG8Bq3h4bLiGLOWNteqCt3YinB8KNAppqXI8/zpFWH9SSHaAu0EYp5bS6Pqvz
ldan3rWvLCojwH/cfLWCPjUCi4dYPVN60x631WpH5Fg9ysLrlPLcFNpnBH17t+ul
k9tHS1YSox3AfdMjN1snzPalwpXqc2Qz3AlmrmeB/4YGaW7D1+fAOIr2jKEbbTUN
fk/7Nk86Keo2vp4nHavIwtuaYYB9g6AjP/nVsdzQAoITzz9yvwFp9xklHoUbtnM=
=YsiJ
-----END PGP SIGNATURE-----
