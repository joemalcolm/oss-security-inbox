X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1291" "Wednesday" "16" "March" "2016" "15:43:42" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160316194342.BC8FE6C4055@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: CVE request - OpenJPEG : Out-Of-Bounds Read in opj_tcd_free_tile function" nil nil nil "3" "2016031619:43:42" "[oss-security] Re: CVE request - OpenJPEG : Out-Of-Bounds Read in opj_tcd_free_tile function" (number mark "U       cve-assign@m Mar 16   35/1291  " thread-indent "\"[oss-security] Re: CVE request - OpenJPEG : Out-Of-Bounds Read in opj_tcd_free_tile function\"\n") "<1F2D4DA31CA62740BFF46830A0E6A4F7064F6983@EXMBX-TJ002.tencent.com>" ("<1F2D4DA31CA62740BFF46830A0E6A4F7064F6983@EXMBX-TJ002.tencent.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1416 invoked by uid 550); 16 Mar 2016 19:43:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1394 invoked from network); 16 Mar 2016 19:43:54 -0000
From: cve-assign@mitre.org
To: winsonliu@tencent.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1F2D4DA31CA62740BFF46830A0E6A4F7064F6983@EXMBX-TJ002.tencent.com>
Message-Id: <20160316194342.BC8FE6C4055@smtpvmsrv1.mitre.org>
Date: Wed, 16 Mar 2016 15:43:42 -0400 (EDT)
Subject: [oss-security] Re: CVE request - OpenJPEG : Out-Of-Bounds Read in opj_tcd_free_tile function

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A specially crafted JPEG2000 image file can force Out-Of-Bounds Read

> opj_decompress -o image.pgm -i oob_opj_tcd_free_tile.jp2

> precision 31 is larger than 16

> Program received signal SIGSEGV, Segmentation fault.

Use CVE-2016-3181.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW6bbDAAoJEL54rhJi8gl5zMcP/12As0D1ZFaAB/OX9zTMWPRM
ttAJ3Pd3BAkPH9K+hoGzIwY4Net+ClIP3E4yLYWqqfcuoDbbh0X7t0ZpVVs+nP6V
9oLkNTEeSD/5eyFWPcz1niXGi/Gx1KvbihsS3vcR7/cGpHzly8EDrXAytS1EbWkr
PSynB3gE2w1nnO8/Oq1toRhoSqKk9+5U3KAaI7tDl6tkilBs+edT1AxLwfAC8T80
3JThnjBr1Ee6HW4f5PZhkDUpVHFFdltsVCKkPZwgEdYRcDac8/Ia7nMnFGmRrcH7
mDdI/d/peHyAdR1E8ageG/GZOOm5P6vF9fn8GZZyRbMSHMOueLOpc1jlXF/GArPx
TQO4UhWj4QUP1NEfDe3nH/tHPV12Z4TqtNSy5Ea6EP6+Wzn16851G27WpYlFV65o
tbAKDrDX6in4Y3j/HMCc9VG/IPPVwZPwefQVPTLPVe+JaKZmbuD68RgREA/3thBd
gHIZsSgBuLoXGVnFwYCzJ7J/NFmJhuFBTCiPp5GEnFPTH9l3VuhO2jictuWzyc1H
/GKGwZOL4U8i7xDlwVDmaio0uSHtB6VoIvIAprK7dauevop/hjIhsVVhJvxImcR+
QGRnn228hS5dHZ+j01ErisFBLpqfcWazRnnNuPxvpVIBG4BIgraWj7g8cyPLVJji
YwftmPV2DEwNLl5q1zPA
=felc
-----END PGP SIGNATURE-----
