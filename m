X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2316" "Thursday" "28" "July" "2016" "17:01:38" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160728210138.B68BC42E01D@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: paps: heap overflow when processing crafted file" "^Cc:" nil nil "7" "2016072821:01:38" "[oss-security] Re: paps: heap overflow when processing crafted file" (number mark "        cve-assign@m Jul 28   48/2316  " thread-indent "\"[oss-security] Re: paps: heap overflow when processing crafted file\"\n") "<1668779.EJMXeZi6qq@arcadia>" ("<1668779.EJMXeZi6qq@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11527 invoked by uid 550); 28 Jul 2016 21:01:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11506 invoked from network); 28 Jul 2016 21:01:50 -0000
In-Reply-To: <1668779.EJMXeZi6qq@arcadia>
Message-Id: <20160728210138.B68BC42E01D@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 28 Jul 2016 17:01:38 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: paps: heap overflow when processing crafted file
To: ago@gentoo.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> it was discovered during fuzzing that a crafted file causes an heap overflow
> in paps ( https://sourceforge.net/projects/paps/ ).

We would need someone to contribute additional risk analysis before we
would assign a CVE ID. We realize that
https://blogs.gentoo.org/ago/2016/07/28/paps-heap-based-buffer-overflow-in-read_file-paps-c/
says "It provides both a stand alone command line tool as well as a
library." The https://sourceforge.net/p/paps/code/ci/master/tree/src/
code has the library (in libpaps.c) whereas the
https://github.com/dov/paps code does not. In any case,
https://blogs.gentoo.org/ago/2016/07/28/paps-heap-based-buffer-overflow-in-read_file-paps-c/
is about a buffer under-read in the read_file function, which is only
called from main (not called from any library code). Also, the patch
is apparently only about handling empty files, not about handling any
other type of crafted file. If the user runs the command-line program
on an empty file, a "heap-buffer-overflow ... READ of size 1" occurs
when trying to read the last character of the file to determine if
it's a \n character. To avoid this impact, the user can simply stop
running paps on empty files.

Because we don't see any other risk, we are not providing a CVE ID at
this time.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXmnJYAAoJEHb/MwWLVhi2bCMP/i+FA2Xil4NRi7Qwn+2v+F11
o3Hl5Ef1Xooj3qPBCpK+Y5bUHRHhAUGD/kwe7DUx4RO96VyBAwKULSnhPz6BvZ87
8LWGqh0cY6p8+kCZE8yFiSgwOi9MwHz4RMkjsYtsWlVVBtBsqakf7hZ2FZ5x3rRi
xcjy6AEWpuhFDqFVXzaZm+BaNyn5ZwxuodxM7KPKkp0NM3hWn4Rp+vL2K/d/GI3a
AvKLOEVZAbJpfXSt5Po86mX0n0Cn5gMFGmCumxsvZoygZLsASgE6F9pPWsg9wOrh
GwCwL4S2Zk56x9w9j7RK1lX8jwkTW7tqw8YqUePihUDrhkbKhWG7DtOW+7WKi2yP
MOAl23ODkf71WT9LC7gxtOHSKhN14rr26VpawhLI4YEMXHIcJFTqBaprVUPLcbAb
m+bR2hFqXmSpYj4CcjIzFp6WvlpTKRJPQWb6+cZtOJmqCpyuG23Uf3tjYqyktYSV
HXTdmU1s5vmaUGzjh/5OOLXs8CprrmwWTMWvR7x48D+ZW+P+0XVOZ9Hr6NmoJhfp
XQjUUhLwcNy9RAeiX9wp5o73XoGi+AtkXR9ZvZGjQmsK+e5h52IMZi8eMCqUHkMw
rlYSQ3eynlNbQEcbi19m2XS40mfyApkIiqylbTDD2WZ6JgqcfUOUAHoAo6DwVeFt
YhpgVbqRajNuWJco7FBh
=Q5EF
-----END PGP SIGNATURE-----
