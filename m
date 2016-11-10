X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1392" "Thursday" "10" "November" "2016" "12:28:52" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<064f9484fc644cd8b748db5f0810ae75@imshyb02.MITRE.ORG>" "35" "[oss-security] Re: libming: listmp3: global-buffer-overflow in printMP3Headers (listmp3.c)" nil nil nil "11" "2016111017:28:52" "[oss-security] Re: libming: listmp3: global-buffer-overflow in printMP3Headers (listmp3.c)" (number mark "U       cve-assign@m Nov 10   35/1392  " thread-indent "\"[oss-security] Re: libming: listmp3: global-buffer-overflow in printMP3Headers (listmp3.c)\"\n") "<2777400.XtlcyMQHst@blackgate>" ("<2777400.XtlcyMQHst@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5521 invoked by uid 550); 10 Nov 2016 17:29:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5503 invoked from network); 10 Nov 2016 17:29:04 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2777400.XtlcyMQHst@blackgate>
Message-ID: <064f9484fc644cd8b748db5f0810ae75@imshyb02.MITRE.ORG>
Date: Thu, 10 Nov 2016 12:28:52 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libming: listmp3: global-buffer-overflow in printMP3Headers (listmp3.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/07/libming-listmp3-global-buffer-overflow-in-printmp3headers-listmp3-c
> 
> if you have a web application that calls
> directly the listmp3 binary to parse untrusted mp3, then you are affected.
> 
> AddressSanitizer: global-buffer-overflow
> READ of size 4

Use CVE-2016-9264 for this buffer over-read.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYJK0uAAoJEHb/MwWLVhi2AH0QALid3jJto+PIZZFy5SeUF38m
YPTuN2gkmj/+xlSpC1wtRNlu40Ny+u6yixQsltfR8c5A52jeyx333xj8yzB4DmB1
rTwfl5AqJR9GXslCdisocTEurfD8W5x7LIHcU4Xl+RBIUG0hc7gXo/QzNCqGYdxC
KsSVvXHsd6YYIVv8NpCDhTv2bVpD0hmywyAYNcMJOckiPYzmnef1Mdj/Yo5irUO/
9hCCt/nUloadqpvu9HST6Kb7oj7B36H7AtV7k3uWVhaCPmJIxu1btwaAd2i+y99R
Nj5DUF4N1HrRemNEXEwlWQv/YQhc11hOvGlq1svkW/EO1qsVMUweiTgd/c/70xDE
oEVXpBWJCaQLpUec8YYP5r4+3/1Ewk5ZqPLwM7uExGcAGew8QQX59QLdASOiKAJL
H2W2ended2QV40IvMKkUwJWXqY+PYp6tX6rNs43vTdVM8StexBMPoGzyTbWuvDKq
p25SKbBFgYSp7bg/p1AHVTODM0brcS6bOidzyoUpKYxm98jIn7RqN1y+jqw4SogJ
EiVUZzfFOkM/nTn/wu8A0FzThtGZrjSLduYsYRi9hLVg++/U3gV4so4tEFDDblS6
sjlMTDJ31ZbStX6AHK0UuArpWmJGD/GAUT0ZNL7LS6t+mxJxaMuL1mEECW1HJmUR
B+SZwspusWrzIvf9p0yB
=3Pz5
-----END PGP SIGNATURE-----
