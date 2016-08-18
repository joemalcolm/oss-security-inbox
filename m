X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1402" "Wednesday" "17" "August" "2016" "23:28:51" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160818032851.5356A3AE006@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: libav: heap-based buffer overflow in ff_audio_resample (resample.c)" nil nil nil "8" "2016081803:28:51" "[oss-security] Re: libav: heap-based buffer overflow in ff_audio_resample (resample.c)" (number mark "U       cve-assign@m Aug 17   37/1402  " thread-indent "\"[oss-security] Re: libav: heap-based buffer overflow in ff_audio_resample (resample.c)\"\n") "<7075099.s70Ngifp61@arcadia>" ("<7075099.s70Ngifp61@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30044 invoked by uid 550); 18 Aug 2016 03:29:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30026 invoked from network); 18 Aug 2016 03:29:03 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <7075099.s70Ngifp61@arcadia>
Message-Id: <20160818032851.5356A3AE006@smtpvbsrv1.mitre.org>
Date: Wed, 17 Aug 2016 23:28:51 -0400 (EDT)
Subject: [oss-security] Re: libav: heap-based buffer overflow in ff_audio_resample (resample.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I documented a crash in libav here:
> https://blogs.gentoo.org/ago/2016/08/07/libav-heap-based-buffer-overflow-in-ff_audio_resample-resample-c/

> AddressSanitizer: heap-buffer-overflow
> WRITE of size 2

> https://git.libav.org/?p=libav.git;a=commit;h=0ac8ff618c5e6d878c547a8877e714ed728950ce

> This bug does not affect ffmpeg.

Use CVE-2016-6832.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtSTHAAoJEHb/MwWLVhi2ndEP/3JqSSUZDxnNmDkthAetf8Ft
VI/misT4mhNA8YZE7RfjwZSwfXHP+OhGSYaWLjnhIMokfM+m01YCtDL/L72+6cMw
bvxRHqgrVxACMQT+Z3Thn2huEDQ3bzLAikid1fi/x+wptuipDwmxhuGit4jATbMM
R/y1IgWaOOMjm+nDeQkcG9NNvvPlyYVz4tRk/t5ScmLzZva7W6oFoVqFvvGxSwp6
PLmkjDBqHk0/orHswFwzliaHTnnMeeIv/KJvkVBK+5ZeBR3d7IEFuCM8IMjzSBT8
Fu7ltqNqzGVCX3+3U+IUnVxB1Scjzf06d+zVNpibXwnr5TE4kM6+rSadryVXafRp
9biKl2Hkn+wuDt2iy9a1kkUXR2Fk7M6Bb96eOL0VgUUVM6Da3aK5TodveEiMqi0m
wXR+moGTzyfEDAH79TIT7wJbP5+cP7dE1l6R38E5ABdZ6tLuc3DFJJyA8gYwKw6s
tr2JkDyuO4CIsa9/gAcSPzvlKr2vVDXJeCgk9UxcquZnnNYbe37ZK593WZUosTL7
ZjRgOC8MAGK8KrmIANdec9SIZx0FZzMNegYC2Wj8iz32/KK5NCeky1SPaZ0q6lOk
SWLIXLVksg2Y7vgawgY0XkkWsk8kMY+AZlGtRTM7U2ttFiQ++RbzHo+cuFB90rdZ
6A8bgdTD+jVp1nMI9oX7
=KScB
-----END PGP SIGNATURE-----
