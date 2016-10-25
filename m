X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1355" "Tuesday" "25" "October" "2016" "01:29:09" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161025052909.84CF1ABC51D@smtpvmsrv1.mitre.org>" "33" "[oss-security] Re: libwmf: memory allocation failure in wmf_malloc (api.c)" nil nil nil "10" "2016102505:29:09" "[oss-security] Re: libwmf: memory allocation failure in wmf_malloc (api.c)" (number mark "U       cve-assign@m Oct 25   33/1355  " thread-indent "\"[oss-security] Re: libwmf: memory allocation failure in wmf_malloc (api.c)\"\n") "<2620117.JbBQOqU5X0@blackgate>" ("<2620117.JbBQOqU5X0@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24222 invoked by uid 550); 25 Oct 2016 05:29:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24190 invoked from network); 25 Oct 2016 05:29:21 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2620117.JbBQOqU5X0@blackgate>
Message-Id: <20161025052909.84CF1ABC51D@smtpvmsrv1.mitre.org>
Date: Tue, 25 Oct 2016 01:29:09 -0400 (EDT)
Subject: [oss-security] Re: libwmf: memory allocation failure in wmf_malloc (api.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> AddressSanitizer failed to allocate 0xfe769000 bytes of LargeMmapAllocator

> 0x7f7173b4d337 in wmf_malloc ... libwmf-0.2.8.4/src/api.c:482
> 0x7f7173b5d2f8 in wmf_scan ... libwmf-0.2.8.4/src/player.c:143
> 0x7f7173d6dcf7 in ReadWMFImage ... ImageMagick-7.0.3-0/coders/wmf.c:2675:13

Use CVE-2016-9011.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYDu1AAAoJEHb/MwWLVhi2VPwP/20e47SxBDB94G3os2r/E/rD
Us+bIZe+GEusNpuUoKn+Ykh9Y9/OBgUxkSacTLhETbWwInWSZcwv5Tntl/+SYQPU
e623sugwiN9TrlAAPnBstCD6lx0CndQar4mkdVrvdHqLxnGXz34D/vfdseIKpmLK
fMnAMpD3mLDF2BuwVqPdqVgoDV7ieD9rSZ8JWIJFsJIHm1qxtjMoAOKcyddBtYo9
kJa+LEtQGJebL8Dh5r8nEsimINscI17h803D5//U8o57BOLpleztKKDk4wVGKNJe
7L92xplVIGQ2a84SnjCcOPPAc2p4gSz1C3CQjDKTh3kmnuFzLB/VVOIgzwLtpeBN
oF6LUK5WLx36/V9RW4Yrk7ilFudIFzW+kg/1cE4P4+zE/LItwPSGF4y5PfvLsEQB
2deI2cV+pIzNBLIUOtx4M+4d0+vjzXW+NmrVUCKmdoBAKtvXi1OBmDjN/NN8U1A5
dBugmmfZ95Yzw2Yv96UVQ7YNxzUjjQxcP2I6ufKAOa99oKm/mWUAsb2p8bgrnNZ6
kUPMfUyKrVmrgkxUSHaT5AldPm9K/JYCsiyuoU7HDCE/HSKHUKYypUK5hwEMK4xV
N3XK4Ex1wVb3drCRwXniVMpwrpGyPxSNg3T5okHmmHDn01Q600GunzzJorRDkNIV
MO66uFXEbfDaT3Gz2hd2
=Xe0u
-----END PGP SIGNATURE-----
