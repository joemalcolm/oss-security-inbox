X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1372" "Wednesday" "8" "February" "2017" "23:59:30" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<25d7b5cb2bae4fa0a13334e37fa0ad48@imshyb02.MITRE.ORG>" "34" "[oss-security] Re: CVE request: XSS in viewvc" nil nil nil "2" "2017020904:59:30" "[oss-security] Re: CVE request: XSS in viewvc" (number mark "U       cve-assign@m Feb  8   34/1372  " thread-indent "\"[oss-security] Re: CVE request: XSS in viewvc\"\n") "<20170208203850.538@usenet.piggo.com>" ("<20170208203850.538@usenet.piggo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31904 invoked by uid 550); 9 Feb 2017 04:59:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31865 invoked from network); 9 Feb 2017 04:59:42 -0000
From: <cve-assign@mitre.org>
To: <seb@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170208203850.538@usenet.piggo.com>
Message-ID: <25d7b5cb2bae4fa0a13334e37fa0ad48@imshyb02.MITRE.ORG>
Date: Wed, 8 Feb 2017 23:59:30 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: XSS in viewvc

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/viewvc/viewvc/commit/9dcfc7daa4c940992920d3b2fbd317da20e44aad

>> Escape some raw path data before handing off to templates
>>   lib/viewvc.py
>>   (nav_path): Escape the 'name' property of navigation path components
>>    the same way we escape that of the 'root' path component.

Use CVE-2017-5938.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYm/M1AAoJEHb/MwWLVhi2ydkP/iZePnJAdB7POw86HhGs/KEl
WyFuBzilrKz11Yn5hGFX/fDPld9Qlc5BKF8AyLeX5NjKonLyvNOSk8uHjUS0uzlh
LR7Lzbo+V9+An+17PFbLu0P8BLbFtvMyPvbOloN6MrIJhavB8UAwIROamQONwlxA
WtI+YjB0Y4DrRcxX7tx9G2hL6pMUhiLomDC8ZI9NcPHH1ycL6DypPXM7FhUKfayv
JnYhR9owZAVBDq3U43D3kbsm7aKMPa6qJKCtXTGlplxXs+QtglQmg421u9NNRWHg
Z887uIVuk0sjUZL0YwFGhwfLNy0IXKQr6mEkZU+topPmgWODt/Cqc4lMUS5c/uCj
+ZmpqVQ5sEj26cnEh21FhyIvMSdt8Phht3CTbPkIjnL9ZwAZ6TWzQlsOPKMZANYK
IJDNjVSgdumCc2HllO/7AqnDqKeXYmKC/nt8GCLRmtlX+8+ugCnkD5+NFx4C49Kx
G2zDXt9jbmIITHLIyxmJwHKXOglwebANi9l6+K7tcOOzxQb6zAPdd0s1VxM43WMO
V1FcOufegbkp+4Jd4clYhJTLFHutw0KQQx0BDyjHmodZrpMHy0Y5GKygCsxsvh77
oH53yMp3AZeHuMQS0kgzK2RQoEVW0U2+tqpQVglnJ2irHmjs9CSKKYRKGN8FqdKz
pD5vwyqr7SXdOymWK+vu
=LX6c
-----END PGP SIGNATURE-----
