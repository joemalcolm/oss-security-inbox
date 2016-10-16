X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1402" "Saturday" "15" "October" "2016" "22:54:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016025407.15BD46C0D67@smtpvmsrv1.mitre.org>" "34" "[oss-security] Re: graphicsmagick: memory allocation failure in ReadPCXImage (pcx.c)" nil nil nil "10" "2016101602:54:07" "[oss-security] Re: graphicsmagick: memory allocation failure in ReadPCXImage (pcx.c)" (number mark "U       cve-assign@m Oct 15   34/1402  " thread-indent "\"[oss-security] Re: graphicsmagick: memory allocation failure in ReadPCXImage (pcx.c)\"\n") "<9649317.cx0s2DkPu2@arcadia>" ("<9649317.cx0s2DkPu2@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1501 invoked by uid 550); 16 Oct 2016 02:54:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1409 invoked from network); 16 Oct 2016 02:54:18 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <9649317.cx0s2DkPu2@arcadia>
Message-Id: <20161016025407.15BD46C0D67@smtpvmsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:54:07 -0400 (EDT)
Subject: [oss-security] Re: graphicsmagick: memory allocation failure in ReadPCXImage (pcx.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/09/15/graphicsmagick-memory-allocation-failure-in-readpcximage-pcx-c/
> 
> AddressSanitizer failed to allocate 0x4cd6a6000 bytes of LargeMmapAllocator
> 0x7ff8e887beba in ReadPCXImage ... GraphicsMagick-1.3.25/coders/pcx.c:467:16
> 
> http://hg.code.sf.net/p/graphicsmagick/code/rev/b9edafd479b9

Use CVE-2016-8683.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAudpAAoJEHb/MwWLVhi2gGgP/Ap9/pDnuCPqVn/qnhRromrx
9QKzln7BUKzpxejBtCjEdD6goq8EB8okxves+eVeBEJPMX+EdhqOTWotZw8xSip/
b8gSBWG7NcTXVu/G8EHW1wlc8J3QRRRtQobNgCpRiURy31FQKqZdLYzhZndntbFH
GiyxfdSR+zV+l0uE5EsDYIffL0o2HDTOzx/cDJE3Wn6X39xOqGXXciwLoopE1kD4
p52FNXZjsy6TSO7bXBjVhYgGVF/HgoK7dqwglJ5vHFSkuG0mga4FjMOo+jBYRI9O
0TMhtigGVyr6YYSPqJS03tZEfhExbY3Vvrj7ZEH0PIqnxNG/VbruZwYkCtwgo3Bq
F93DTl2vfDTvn8VQuoSgmO+P/8nTfc4G/XlLuvuuGX03Yag7bjKhi34G2BTObbQJ
2OHB47g+iCoDSCxQyeOIm25safvTEGm7G/bUp711E8IKfpnp39bbihM4NdLUfeVK
ZqHiLYrlC6STGG+Ck+x5qhk0BF6u0iSGXldm+AJDKJVC4HLqS5rs0co/8ehXHw0l
syc9sH4FZhCgFWikJs/hcdFwBkysGBFownL+VUIX+2xFfccV0RdvBQbnkD5pNaTn
ufQHHiYdisPRs9md0jyHKt9ZX3N+kBjiDw/aoLE/1kkXJrxnzRIfG23tGLrIJT20
tpTSMf9s9E/DW3wIsppH
=HEJV
-----END PGP SIGNATURE-----
