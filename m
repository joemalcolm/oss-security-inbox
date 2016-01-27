X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1874" "Wednesday" "27" "January" "2016" "00:40:08" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160127054008.4655CB2E019@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: a bug in gif2rgb.c in giflib-5.1.2" nil nil nil "1" "2016012705:40:08" "[oss-security] Re: a bug in gif2rgb.c in giflib-5.1.2" (number mark "U       cve-assign@m Jan 27   43/1874  " thread-indent "\"[oss-security] Re: a bug in gif2rgb.c in giflib-5.1.2\"\n") "<d47bb80.ff77.1527e58ea1c.Coremail.xiaoqixue_1@163.com>" ("<d47bb80.ff77.1527e58ea1c.Coremail.xiaoqixue_1@163.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17779 invoked by uid 550); 27 Jan 2016 05:40:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17730 invoked from network); 27 Jan 2016 05:40:20 -0000
From: cve-assign@mitre.org
To: xiaoqixue_1@163.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <d47bb80.ff77.1527e58ea1c.Coremail.xiaoqixue_1@163.com>
Message-Id: <20160127054008.4655CB2E019@smtpvbsrv1.mitre.org>
Date: Wed, 27 Jan 2016 00:40:08 -0500 (EST)
Subject: [oss-security] Re: a bug in gif2rgb.c in giflib-5.1.2

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We find a memory allocation whose size could be zero in gif2rgb.c.
> and It will result to several memory out of bound read and write. the bug in gif2rgb.c:386 :
> 
> 386 if ((ScreenBuffer = (GifRowType *) 
> 387 malloc(GifFile->SHeight * sizeof(GifRowType))) == NULL) 
> 388 GIF_EXIT("Failed to allocate memory required, aborted.");
> 
> 
> Please see "http://sourceforge.net/p/giflib/bugs/82/" for more details.

Can you provide more information about the relationship between
http://sourceforge.net/p/giflib/bugs/82/ and the above instance of
GifFile->SHeight in the malloc call? The
http://sourceforge.net/p/giflib/code/ci/4cc68b315ff9a378aef6664e1be6b2144ad4a5e6/
patch for http://sourceforge.net/p/giflib/bugs/82/ adds a check for
"GifFile->SWidth == 0" but does not add new validation of the
GifFile->SHeight value.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWqFekAAoJEL54rhJi8gl5AtQP/imjqKTZMrt2KiqYaIAiEbvK
KBvoKNDaBesh4kJQ2XHIlT+kG5y2Qr0KiXYR3+O0nrbebXzM9pUlcAI6H3jAhiOX
h2mRNBXKGOof7wbsoAFsKrYEKAdASvLxy+KSl74Bxb00Z68PSezgBo1SoHi/xW3z
C5yFxRnOjYLlVz/X76+gYYqbLgwnLHUPWN4mIxu2unDZ67Mc43i8br4pr1eXH4an
1GgExNhoMsIk2vwPLatOL7DDEqBJKLygVh5QYtXs1uXjBx/RA4opzJRsb3mgmX2D
K4q5mjgrUfx85meR/9zBVs22HLSWcJPQoqQnaRHcKKN0R8J0P+31X2NYBqbMj9d3
HVZaaX9zB4Uq3Mpj9ZTgGnvyJuI/YVi7VviYTWhn17NGrvH3ivCr/vvhs7nudBti
PfQj6if3vhy6cH7WYUN9ybzG3NXFdPpL9ZU5WN5GAyICXfYo3m63X03OZWPuTm3h
skzp2a4dAfh+6KTF53ebUzoi0V+vX3tq5+jnMbDam/UfZBOdq+cK0CYU2VrOmNCj
F0LcBDjzGBxepVLQS54Bvh/B5ymrIWjcub4zJ6gIIh0Sg5sUBBW2eg80my5wrD46
7mvpMgl2D2FWy8dHkdyf4abotfnZj62d43XD+tqjfERuTRnJCDNh/O8q4MyMVw73
69PiDuGJuPAhFns58FDN
=bNmf
-----END PGP SIGNATURE-----
