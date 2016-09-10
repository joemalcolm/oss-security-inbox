X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1609" "Saturday" "10" "September" "2016" "16:26:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160910202626.F00E06DC1F4@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: libav: out-of-bounds stack read" nil nil nil "9" "2016091020:26:26" "[oss-security] Re: libav: out-of-bounds stack read" (number mark "U       cve-assign@m Sep 10   42/1609  " thread-indent "\"[oss-security] Re: libav: out-of-bounds stack read\"\n") "<2787791.31AdioJtTb@arcadia>" ("<2787791.31AdioJtTb@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1842 invoked by uid 550); 10 Sep 2016 20:26:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1816 invoked from network); 10 Sep 2016 20:26:38 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2787791.31AdioJtTb@arcadia>
Message-Id: <20160910202626.F00E06DC1F4@smtpvmsrv1.mitre.org>
Date: Sat, 10 Sep 2016 16:26:26 -0400 (EDT)
Subject: [oss-security] Re: libav: out-of-bounds stack read

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/08/20/libav-stack-based-buffer-overflow-in-aac_sync-aac_parser-c/

>> libav: stack-based buffer overflow in aac_sync (aac_parser.c)

>> The ASan report may be confused because it mentions get_bits, but the issue is in aac_sync.

>> AddressSanitizer: stack-buffer-overflow
>> READ of size 4

>> https://git.libav.org/?p=libav.git;a=commit;h=fb1473080223a634b8ac2cca48a632d037a0a69d

>> aac_parser: add required padding for GetBitContext buffer

>> libavcodec/aac_parser.c

Use CVE-2016-7393 for this buffer over-read issue.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX1GwHAAoJEHb/MwWLVhi2uWkQAJkvHeVw5VLDmUS2J/yTGh5g
+GZPqtoYlIY9rkV164NnkAI7Sd+Zu187c4LRwCsPz9QfrV/Uaar48VszuuQMuUgB
omLJG623GRRx/bt2DzIbTmFhI3NEjwATgi29CAd3LmvcMliJUlNib2d40ueQ910c
7Fj3foeYOmodKgOhT0BMR5Gqx82EmItTKxjPyPaBcrkA23fnabcv1JmDlqhpNldz
IQByGqnnuFD4mTg5rLnEUE4lErGKBenrj8VjVjL63u+Wf+aBLXo3HMemY+c5zF4P
rU9AGOIfMPjbiWXAkFZEACO7fY/BQV6qZEeJoRJB2Q1FCMC24amt9ATsopgEk6ik
2+G1KY1BB0RBJnRsuvnhx87XB4aQ2Er/qEonCLFX4fJCqN4voFLHOiNYPa4CxPEY
jXI75or7n3zUldlXeXdMnuK5dkz9Pxbz4iyIEzQJIlucSOXsRDaVwf/nABKVm07W
AsAxcOLYJNqh9djM0gxqO4jGaD6keasr55iU4rRd5tb7APhAlt//Ju+1Um6iPQ0U
CntH7QgVQgGDOQ6HI0R6llDZZzgQ6gw6wP7W/aZt8Xcc/6V+YK7E/46xFjTgwPtC
7cn/Qp4MHupIyRMZsLcb8Y+ohx4sdmVvBT4N73U/RCcDuBKjE8E1HUS85Eal0C+w
Xu6+BEm9Zwypmubgek8H
=JK5t
-----END PGP SIGNATURE-----
