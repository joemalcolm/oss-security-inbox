X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1410" "Thursday" "10" "November" "2016" "12:31:08" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e27fe29d768b4d2787b24e8c35e19913@imshyb02.MITRE.ORG>" "35" "[oss-security] Re: libming: listmp3: left shift in listmp3.c" nil nil nil "11" "2016111017:31:08" "[oss-security] Re: libming: listmp3: left shift in listmp3.c" (number mark "U       cve-assign@m Nov 10   35/1410  " thread-indent "\"[oss-security] Re: libming: listmp3: left shift in listmp3.c\"\n") "<2147367.62QfxKV9DH@blackgate>" ("<2147367.62QfxKV9DH@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22186 invoked by uid 550); 10 Nov 2016 17:31:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21941 invoked from network); 10 Nov 2016 17:31:20 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2147367.62QfxKV9DH@blackgate>
Message-ID: <e27fe29d768b4d2787b24e8c35e19913@imshyb02.MITRE.ORG>
Date: Thu, 10 Nov 2016 12:31:08 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libming: listmp3: left shift in listmp3.c

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/09/libming-listmp3-left-shift-in-listmp3-c
> 
> if you have a web application that calls directly the
> listmp3 binary to parse untrusted mp3, then you are affected.
> 
> listmp3.c:94:23: runtime error: left shift of negative value -1
> listmp3.c:95:23: runtime error: left shift of negative value -1

Use CVE-2016-9266.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYJK07AAoJEHb/MwWLVhi2xnIP/iMrmWEcLGxqkTjHbe/42kYD
VyEq/lC0HbGi+5xvI5qLcC3AhmUC4WnpkyzNzOMh+fynNiojxM6qjWVsPHx5oWqd
pUPBjGgZ08zdprhG9ovk5WE8+05ndCwSr47XJyyyJh6e3rUE4Le8wFs7AP7Qi0Lf
7zOkVw1d8fAYYFg1UKToNilbuLFYwJmbEIjVZorhjH/8GJxhYqIk5HWWfBHGNyD7
Huxvr9SXciyqhVKy+wOlSx9CU/M61iCXl4F+3cbnqX4xfFwoDUTRmbtHBJYXRBX4
F2o2Ouh7Xvl5dBR4d9QN6s9Lw3hAY28Mz5E74h9u2QqzuRbNnArKfUe5npTYM3V0
FSFZcv3e00Nojvsb1HvwVbpWnrGqv+ki9GbXAioBxJtuYWCV5MEguhq898nTRo1q
WI2ZuyE7xapCEWYygz/W7Lc4UuIEHrZC7NvQs6IaICbGSbcbfl3/kwe14Z02K5fL
AAteRtSd5DG97hZ6xhIdZhySxTXfa7mwmtaZpdKIYt1hKlwubDAtyrBDyFEle+mj
AEUM/ynACAT3JMlR3KmFSdShluKbqo2s/DpsaA3SiXKNKbj5DLTo9U530AmvIQPq
0qYTDeeb7p2POFf/nJg3RiUgPnLUl44lNskI5xyZVwmlLfi1a7hLaKQ1rUzXYZqR
j+6hvOFIw29NRzOZWo6o
=/BbH
-----END PGP SIGNATURE-----
