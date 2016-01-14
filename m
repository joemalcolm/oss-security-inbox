X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1786" "Thursday" "14" "January" "2016" "14:35:52" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160114193552.C9EC86C0036@smtpvmsrv1.mitre.org>" "43" "[oss-security] Re: [CVE Request] Multiple PHP issues" "^Cc:" nil nil "1" "2016011419:35:52" "[oss-security] Re: [CVE Request] Multiple PHP issues" (number mark "U       cve-assign@m Jan 14   43/1786  " thread-indent "\"[oss-security] Re: [CVE Request] Multiple PHP issues\"\n") "<CA+KTh2xTqQrn4NebcfB=xVB8xt8oyS8ZVROj6AXKA5ukpv1_5g@mail.gmail.com>" ("<CA+KTh2xTqQrn4NebcfB=xVB8xt8oyS8ZVROj6AXKA5ukpv1_5g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19559 invoked by uid 550); 14 Jan 2016 19:36:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19538 invoked from network); 14 Jan 2016 19:36:04 -0000
In-Reply-To: <CA+KTh2xTqQrn4NebcfB=xVB8xt8oyS8ZVROj6AXKA5ukpv1_5g@mail.gmail.com>
Message-Id: <20160114193552.C9EC86C0036@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 14 Jan 2016 14:35:52 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [CVE Request] Multiple PHP issues
To: emmanuel.law@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Memory Read via gdImageRotateInterpolated Array Index Out of Bounds
> https://bugs.php.net/bug.php?id=70976

Use CVE-2016-1903. As far as we can tell, the discussion at
"2015-12-29 07:27 UTC" and later does not describe an additional
vulnerability. The discussion seems to be about adapting the security
patch for palette images so that it doesn't disrupt the handling of
true color images.


> Heap BufferOver Flow in escapeshell functions
> https://bugs.php.net/bug.php?id=71270
> https://github.com/php/php-src/commit/2871c70efaaaa0f102557a17c727fd4d5204dd4b

Use CVE-2016-1904 for both of the integer overflows in
ext/standard/exec.c (the one in the php_escape_shell_cmd function and
the one in the php_escape_shell_arg function).

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWl/gmAAoJEL54rhJi8gl5rm8QAMsiJK3V60k4bjWZFpShAFxz
9vOic/LsFrjgRb1hM+4eauCT6usPxS/v2R802eEheuOlhLWdi2epl9l65knTm+ho
uQMMYkBHPtdkRQMdf6A6XGBHNy7salXY4UTcBvoSvx8yqzsMyjgqDji3D+qWqhch
QDErqGljVS5ZUrrXHvPkTwKmCjQtZFuvNFdPtE1B7/0K58hM+PM0ZPFTfyKNvK3/
Vg75KOGlFz4H96kWsmvNQBOT0fMKKKDnQtg8yOiNJVMkJZiQnkNh3bMNaqqQW8KZ
9ZmWuje1ZRHP7osGjggfn/P0Wpmxq2JXqNNe4mH2Zwr0iIUAOlvCNunfRM1MfYik
wjwZ/tGifyEGxDdnKpu7MAb+9QAzqb6uKyTlr8DlJdrM72A68ygGc0CHQQHbstL6
1u+3/zVELSzEq1j/UnZkgu22+LzqNXhJTUK6Hda0hnfH0gW1qUoC/zqlM5i7lG2T
TPuduWSrXIDCB3UceOUwNSk36cWWtDhJj7K6nRRMTFAilvzfRGmeUXQ04/AhCLNM
Pkleb6O6EXFZed5CqWJFUlTD4ak+aibUL8fdXARGfXDz/5wEgIwgvbBIP1MUvbVF
/Mrb5HbHdrqADHXXd5CrgFkOcIuMhxZZb/RBnCwjM4oC9kht/0LYmpzydxdoFidQ
4bSuxdlqC4cMe1yn/wWJ
=WENK
-----END PGP SIGNATURE-----
