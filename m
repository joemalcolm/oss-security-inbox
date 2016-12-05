X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1234" "Sunday" "4" "December" "2016" "22:13:54" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<d20fed1084474487a95ace3810a92752@imshyb02.MITRE.ORG>" "31" "[oss-security] Re: libming: listswf: NULL pointer dereference in dumpBuffer (read.c)" nil nil nil "12" "2016120503:13:54" "[oss-security] Re: libming: listswf: NULL pointer dereference in dumpBuffer (read.c)" (number mark "U       cve-assign@m Dec  4   31/1234  " thread-indent "\"[oss-security] Re: libming: listswf: NULL pointer dereference in dumpBuffer (read.c)\"\n") "<2637042.StuLhmWT5T@arcadia>" ("<2637042.StuLhmWT5T@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1546 invoked by uid 550); 5 Dec 2016 03:14:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1518 invoked from network); 5 Dec 2016 03:14:06 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2637042.StuLhmWT5T@arcadia>
Message-ID: <d20fed1084474487a95ace3810a92752@imshyb02.MITRE.ORG>
Date: Sun, 4 Dec 2016 22:13:54 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libming: listswf: NULL pointer dereference in dumpBuffer (read.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/12/01/libming-listswf-null-pointer-dereference-in-dumpbuffer-read-c

> AddressSanitizer: SEGV on unknown address 0x000000000000

Use CVE-2016-9828.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYRNjQAAoJEHb/MwWLVhi2cvAP+gPY4EcM+y7VKMOf3XRSMw5A
vhej56NfW87dxFdi2e0WcqxlVLdGXkKNt0KwcnxWHeBU+qYZEnjhzqjnofGwQGM5
tlOLkTvuoCGz2es+CeeIONpR2EXo1H/3eg8phW7oOV31eU+GRec21c5WMfIsbt6T
vnUNvtsM9f8P86HujL3P108io2T0aUC48jDJu1zvlWstoSWzib5xATKq5EeQ5rvB
67dpp4ss9hE02OhvleENnIWx/Yit4DpuIcqPEykT48z0X9IcArqLto27deQeJZ5e
mgT/4KmR+V5DkwNtzxWpSNyuN4xXivC1Sy9bntp64Qbz10j4Bi/8jymHvzkaTF44
vfjO2z816WOTDKR0gmCyAlEKe0Lf+bSe2mL9edEFvlgkZfYAANTNUI9yIPQArd1h
Y1AfrSi598Dp5TODVb9EK9LU9VL3bL+yts8whhCozcR3DQ9SLzbSmb39E9XLISFt
hzR7Vd8FFaUZahYfTtiEffqWJT/wKhcRM7HD0zyG93s72G4lYYreJwdqUVbgiAPf
h44bnPzlxEi4RYUMd6vY80BAH/9AgK48coWIeGurRJ7qa8Fv5+sN704nx3hJGHX8
0TqSEy+RwlWCJkRqKRgBQMjtkw1XCkmAhkHYNGrKMNBkM4sfhFWjHGrf57goj4kR
GHYADtxkylXkQsIHgcuM
=no5m
-----END PGP SIGNATURE-----
