X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1694" "Friday" "22" "May" "2015" "15:08:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150522190803.86174B2E2E0@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE Request: t1utils: buffer overflow in set_cs_start" nil nil nil "5" "2015052219:08:03" "[oss-security] Re: CVE Request: t1utils: buffer overflow in set_cs_start" (number mark "        cve-assign@m May 22   40/1694  " thread-indent "\"[oss-security] Re: CVE Request: t1utils: buffer overflow in set_cs_start\"\n") "<20150513165817.GA29315@eldamar.local>" ("<20150513165817.GA29315@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19832 invoked by uid 550); 22 May 2015 19:08:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19814 invoked from network); 22 May 2015 19:08:15 -0000
In-Reply-To: <20150513165817.GA29315@eldamar.local>
Message-Id: <20150522190803.86174B2E2E0@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 22 May 2015 15:08:03 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: t1utils: buffer overflow in set_cs_start
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://github.com/kohler/t1utils/blob/master/NEWS
> https://bugs.debian.org/779274
> https://github.com/kohler/t1utils/issues/4
> https://github.com/kohler/t1utils/commit/6b9d1aafcb61a3663c883663eb19ccdbfcde8d33
> https://bugzilla.redhat.com/show_bug.cgi?id=1218365#c7

> t1disasm: buffer overflow in set_cs_start

As far as we can tell, versions before 1.39 had two different
instances of the unchecked "while (!isspace(*q) && *q != '{')" loop.
One of them, found by a researcher using afl-fuzz, was in the
set_cs_start function in t1disasm.c. The other, apparently found
manually by the vendor, was in the main function of t1asm.c. There are
similar situations in which there might have been two CVE IDs
assigned. Here, however, we feel that there should be only one CVE ID,
because it seems extremely unlikely that t1disasm.c and t1asm.c had
independent mistakes. Almost certainly, the mistake was made once and
then copied from one file into the other.

Use CVE-2015-3905.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVX34lAAoJEKllVAevmvmscB8IAKAm+NMB+m8t9pLHGDS7M4Ks
QIaWmNEGPDNr+2JXWp3j5OUSty3cRNPg6OU2pjinnT7N7kIOVYdtKkAqxbvW+yIJ
B7w5j6IS7GdOO+X/zmt9/aP/4OZIxGOgDo++VBHN5Ozv4DxETecL2YN1grstr+/T
jMBXlUkXfaNaZBGWfJj5b1ys4dcjXMyVWKqie0orB2enZI2qCKdSV6RvcOJPn9CA
lK0wCJJ5tPgHaJbgcwM550dDMV+9jPqY0IP+cn7OddPIUXkW9PDh7u4loOVA+bR2
tvqoOv9ygOVxqj7SDpkQlMDhvIyItb7sadEbPjM6HFEL88rn+4vjw7z7MxjXP/E=
=5vl2
-----END PGP SIGNATURE-----
