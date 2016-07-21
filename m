X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2106" "Thursday" "21" "July" "2016" "09:48:06" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160721134806.0BEC342E2D6@smtpvbsrv1.mitre.org>" "59" "[oss-security] Re: CVE Request: uclibc-ng (and uclibc): ARM arch: code execution" nil nil nil "7" "2016072113:48:06" "[oss-security] Re: CVE Request: uclibc-ng (and uclibc): ARM arch: code execution" (number mark "U       cve-assign@m Jul 21   59/2106  " thread-indent "\"[oss-security] Re: CVE Request: uclibc-ng (and uclibc): ARM arch: code execution\"\n") "<3f71b0bd-71dd-723e-eed8-925bf2e2c8f7@cojocar.com>" ("<3f71b0bd-71dd-723e-eed8-925bf2e2c8f7@cojocar.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14123 invoked by uid 550); 21 Jul 2016 13:48:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14104 invoked from network); 21 Jul 2016 13:48:17 -0000
From: cve-assign@mitre.org
To: lucian@cojocar.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <3f71b0bd-71dd-723e-eed8-925bf2e2c8f7@cojocar.com>
Message-Id: <20160721134806.0BEC342E2D6@smtpvbsrv1.mitre.org>
Date: Thu, 21 Jul 2016 09:48:06 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: uclibc-ng (and uclibc): ARM arch: code execution

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

http://www.uclibc-ng.org/ says "History ... uClibc-ng is a spin-off of
uClibc."

> This was fixed in version 1.0.16
> http://repo.or.cz/uclibc-ng.git/commit/e3848e3dd64a8d6437531488fe341354bc02eaed
> http://mailman.uclibc-ng.org/pipermail/devel/2016-July/001067.html

>> libc/string/arm/memset.S

>> bugfix: ARM: memset.S: use unsigned comparisons
>> 
>> The 'BLT' instruction checks for *signed* values. So if a3, length
>> parameter of memset, is negative, then value added to the PC will be
>> large.
>> 
>> memset(buf, 0xaa, 0xffff0000) triggers the bug.


> http://mailman.uclibc-ng.org/pipermail/devel/2016-May/000890.html
> 
> an attacker that controls the length parameter of
> the `memset' can also control the value of the PC register. The issue is
> similar to CVE-2011-2702.

>> The attack is a bit unrealistic, as it requires that the
>> application that uses uClibc allows a user to control a memory chunk
>> larger than 2GB.

> denial of service proof of concept
> 
> http://article.gmane.org/gmane.comp.lib.uclibc-ng/27

Use CVE-2016-6264.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXkNIpAAoJEHb/MwWLVhi2PgQP/1GXbqRoO4iat1l6WABZ44PN
lf9A6gqRtELgzs3V6fArIYpBHzNSFFUFZQYwMAXi0NGciRwNEWwxmnxmEo2yQ0my
/yX50tijfwgOn3/Rs0LJTGxDyfFkAC/Cp0IruKssMdlIBhk44WcBE29p84rQ5yCT
E/qoF+i0mHuFDwqC3f9wgUG14kgEd6TUZ7TG1WAwiwnmLhkS+TH8kE0FqfVMbXML
+QGedNg97XX1PAPeVD5S4QPRGtFmH09u4f9rFiE/zeebzk0t3ErVd403aB7meMkx
MnsWZlqFFU3U9iZOItO68OvXpWcH1JGqbyfBZ2sTlldtzLWkqPcqTRmtMJVU3ryY
V52wrxqIMWcd88QSpZnx976WLCQx7cTCVRc5QwXbI2XEGWYTlFbw8ijJ6CpowrN4
4/Qzz7Mf7u9CdQjb/vGbsie3uKGelYNslN2Ihq0AcCPQarCl5fUNiqEtNogycvB5
VNA/hKVHGAklmAUhIgajOkVg1TblcAZ1a2YOAoJzRqjGXqAky7i8QfXKZL7rqAir
va0SK9ldEcd9sPr0VCEO8i8SF6hHNdYM9dx+NVRmJAZ5+Hl7GVYdZUIau1dCLfZT
kTomgLWA16lofyebMMoPxv2It5wgq7lvrfaryZV5fzIEVfBbXbc9MSpRVTZEI2P8
vVLQwRK1FNQMM0L41u57
=r44f
-----END PGP SIGNATURE-----
