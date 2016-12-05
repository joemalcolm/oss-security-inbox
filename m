X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3434" "Sunday" "4" "December" "2016" "22:10:41" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<ac9eeb3580fa48569f233b0ebbf6e424@imshyb02.MITRE.ORG>" "107" "[oss-security] Re: libav: multiple crashes from the Undefined Behavior Sanitizer" nil nil nil "12" "2016120503:10:41" "[oss-security] Re: libav: multiple crashes from the Undefined Behavior Sanitizer" (number mark "U       cve-assign@m Dec  4  107/3434  " thread-indent "\"[oss-security] Re: libav: multiple crashes from the Undefined Behavior Sanitizer\"\n") "<2421787.A5MWpBLn5b@arcadia>" ("<2421787.A5MWpBLn5b@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13653 invoked by uid 550); 5 Dec 2016 03:10:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13618 invoked from network); 5 Dec 2016 03:10:53 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2421787.A5MWpBLn5b@arcadia>
Message-ID: <ac9eeb3580fa48569f233b0ebbf6e424@imshyb02.MITRE.ORG>
Date: Sun, 4 Dec 2016 22:10:41 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libav: multiple crashes from the Undefined Behavior Sanitizer

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/12/01/libav-multiple-crashes-from-the-undefined-behavior-sanitizer

> libav-11.8/libavcodec/mpegvideo.c:2381:65: runtime 
> error: left shift of negative value -1
> 
> libav-11.8/libavcodec/mpegvideo.c:2382:65: runtime 
> error: left shift of negative value -1
> 
> libav-11.8/libavcodec/mpegvideo.c:2383:65: runtime 
> error: left shift of negative value -1
> 
> Testcase:
> https://github.com/asarubbo/poc/blob/master/00036-libav-leftshift-mpegvideo

Use CVE-2016-9819.


> libav-11.8/libavcodec/mpegvideo_motion.c:323:47: runtime 
> error: left shift of negative value -1
> 
> libav-11.8/libavcodec/mpegvideo_motion.c:331:55: runtime 
> error: left shift of negative value -1
> 
> libav-11.8/libavcodec/mpegvideo_motion.c:336:55: runtime 
> error: left shift of negative value -1
> 
> Testcase:
> https://github.com/asarubbo/poc/blob/master/00036-libav-leftshift-mpegvideo

Use CVE-2016-9820.


> libav-11.8/libavcodec/mpegvideo_parser.c:91:65: runtime 
> error: signed integer overflow: 28573696 * 400 cannot be represented in type 
> 'int'
> Testcase:
> https://github.com/asarubbo/poc/blob/master/00037-libav-signedintoverflow-mpegvideo_parser

Use CVE-2016-9821.


> libav-11.8/libavcodec/mpeg12dec.c:1401:41: runtime 
> error: signed integer overflow: 28573696 * 400 cannot be represented in type 
> 'int'
> Testcase:
> https://github.com/asarubbo/poc/blob/master/00037-libav-signedintoverflow-mpegvideo_parser

Use CVE-2016-9822.


> libav-11.8/libavcodec/x86/mpegvideo.c:53:18: runtime 
> error: index -1 out of bounds for type 'uint8_t [64]'
> Testcase:
> https://github.com/asarubbo/poc/blob/master/00038-libav-uint8_t64-outofbounds-mpegvideo

Use CVE-2016-9823.


> libav-11.8/libswscale/x86/swscale.c:189:64: runtime 
> error: signed integer overflow: 65463 * 65537 cannot be represented in type 
> 'int'
> Testcase:
> https://github.com/asarubbo/poc/blob/master/00039-libav-signedintoverflow-swscale_c

Use CVE-2016-9824.


> libav-11.8/libswscale/utils.c:340:30: 
> runtime error: left shift of negative value -1
> Testcase:
> https://github.com/asarubbo/poc/blob/master/00040-libav-leftshift-utils_c

Use CVE-2016-9825.


> libav-11.8/libavcodec/ituh263dec.c:645:34: runtime 
> error: left shift of negative value -16
> Testcase:
> https://github.com/asarubbo/poc/blob/master/00041-libav-leftshift-ituh263dec_c

Use CVE-2016-9826.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYRNjAAAoJEHb/MwWLVhi2XgkP/ipJxBDzXKZk/Iw4b2AtNEWG
PN40jZo5SEEYBJWdQiFmHglJVxg4WTDanpSz6XZagWhCMf8HQnL5S1nptxv+0I9u
qX83NQ/+Ol8m0l9yX5GyLdQYJUn9va1iQeW/UPiqNjBK3JoEwU8w3ltb16PJBfFC
SocSA0SpPraNjUH53ffKGTslxYede5XESu1STFhuVfgjtGq7u9koj3faXdjQBkYl
0zxUpCnTP2kUKQLyyeQmzhYMR6alWMScgTVZIxz9nzW6Zx8BuInty7lwd0MOINn4
KHeS+DWUF9ZpL90e6mj38BRwxCcwm97xlULpOzU9JG1nrvltx7wJNYRAQ2hFkf6j
w2EEnq6zKQg2kVQLpOAh3Ri9GsugpPikCGbhAS7a7gL5en7SysRtEyVd8d4IvwTN
V/wg1qRnfYq8m0KBAhP5kGY9qEsXtlPRUckFJIrcWpFApi9+7nPSYC9v8XqroTXV
sHwwqs4zmvCy69fI34eC6oBg6OGNPlcVP90js+bVZF+LIGl5DQuswy4A1hgFXBaN
ZGw/Es8Cum2bg6CB+Rmwor2cbhmetEm2FURwyhXJmriwux0wbCMLEKExdsAtW03h
n/+UUPuBnUdv1vctKQcusL6GJY3fzeCMPj6xuGhSeJsIuDqTdvpBE+I9UzDIT/1v
VT5T+x2OdJWy13bvi+9J
=Nmrb
-----END PGP SIGNATURE-----
