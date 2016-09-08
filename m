X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1823" "Thursday" "8" "September" "2016" "02:54:34" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160908065434.2F43213A1BE@smtpvmsrv1.mitre.org>" "43" "[oss-security] Re: CVE Request: OpenJPEG Integer Overflow Issue" nil nil nil "9" "2016090806:54:34" "[oss-security] Re: CVE Request: OpenJPEG Integer Overflow Issue" (number mark "U       cve-assign@m Sep  8   43/1823  " thread-indent "\"[oss-security] Re: CVE Request: OpenJPEG Integer Overflow Issue\"\n") "<1F2D4DA31CA62740BFF46830A0E6A4F7066E5C45@EXMBX-TJ002.tencent.com>" ("<1F2D4DA31CA62740BFF46830A0E6A4F7066E5C45@EXMBX-TJ002.tencent.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8133 invoked by uid 550); 8 Sep 2016 06:54:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8069 invoked from network); 8 Sep 2016 06:54:45 -0000
From: cve-assign@mitre.org
To: winsonliu@tencent.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1F2D4DA31CA62740BFF46830A0E6A4F7066E5C45@EXMBX-TJ002.tencent.com>
Message-Id: <20160908065434.2F43213A1BE@smtpvmsrv1.mitre.org>
Date: Thu,  8 Sep 2016 02:54:34 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: OpenJPEG Integer Overflow Issue

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I reported a security issue of OpenJPEG some days ago and it has been
> fixed now. The fix is available at
> https://github.com/uclouvain/openjpeg/commit/c16bc057ba3f125051c9966cf1f5b68a05681de4
> and
> https://github.com/uclouvain/openjpeg/commit/ef01f18dfc6780b776d0674ed3e7415c6ef54d24
> 
> An integer overflow issue exists in function opj_pi_create_decode of
> pi.c. It can lead to Out-Of-Bounds Read and Out-Of-Bounds Write in
> function opj_pi_next_cprl of pi.c (function opj_pi_next_lrcp,
> opj_pi_next_rlcp, opj_pi_next_rpcl, opj_pi_next_pcrl may also be
> vulnerable). This vulnerability allows remote attackers to execute
> arbitrary code on vulnerable installations of OpenJPEG.
> 
> AddressSanitizer: heap-buffer-overflow
> READ of size 2

Use CVE-2016-7163.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX0QmeAAoJEHb/MwWLVhi2SEUQAJvisRFvAjK9IUHMHU4aRkbn
q9iW+T0WKW0ZcuUphsFfVdRy6UiTwabpTmv7G+QVP5f94PJeRtJLld+1KhC/WuGA
YFI6njO+oyFQZUfn6NUGN+tpeTKiggsqSNftQk1TI7UYa7s9pmVxnZCqBSm4Wv3p
+sknI6512MXWiaIEffk4yGMwZpjdeNquGfxWh6xVin3IE1e65xcpJEvZ9wvvFS34
y8EixiRrC0pryN9eEcmfat2yZCMdHzuCPVk1rvUfVrTIqVxTWg2pNyCfCx3eMdk+
y55TvqFA2D6f/Es8njxPQlxO1c8XIAqnlX6FnUWI9T+doEpKzBlQGjlUq0Pigwty
OsiKMKGyYc3GV2+FJwFWbb1Iwap4jJdjta5pqBPLOMaiun44euOeDIkjBaPCqYYG
m17WNAlt87rwaynbcEMf7DnStQRRstD98invsCDMScar5H/iVYjun2Vga+6Kjj4Z
ZyqKH0frrW6tMYRA2jQw8G7N8zejfAjzAy+sFPhQkQBWybHYVL4tQNaETaQ+DGWb
7Q22gSQnGZD8P4YozJaSOxbVsU7NKFeEHPlS3VWDmiXCwARJz4WpFRb+OhZLO8O9
ZIbDkOXK6fJnZA/UKximUSpi6tYyWebjB6ObLB0n3EIbmXo8dQj9hYU3IW6d6DTA
KQcQYU4f5/THNjpi6MnK
=Hb3K
-----END PGP SIGNATURE-----
