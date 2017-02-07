X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1402" "Tuesday" "7" "February" "2017" "01:52:33" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<79a088b371714beb89209770a077002d@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: mupdf: heap-based buffer overflow in fz_subsample_pixmap" nil nil nil "2" "2017020706:52:33" "[oss-security] Re: mupdf: heap-based buffer overflow in fz_subsample_pixmap" (number mark "U       cve-assign@m Feb  7   37/1402  " thread-indent "\"[oss-security] Re: mupdf: heap-based buffer overflow in fz_subsample_pixmap\"\n") "<5243964.BbMhzSCKag@blackgate>" ("<5243964.BbMhzSCKag@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9422 invoked by uid 550); 7 Feb 2017 06:52:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9401 invoked from network); 7 Feb 2017 06:52:46 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <5243964.BbMhzSCKag@blackgate>
Message-ID: <79a088b371714beb89209770a077002d@imshyb02.MITRE.ORG>
Date: Tue, 7 Feb 2017 01:52:33 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: mupdf: heap-based buffer overflow in fz_subsample_pixmap

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.ghostscript.com/show_bug.cgi?id=697515
> 
> AddressSanitizer: heap-buffer-overflow
> READ of size 1
> 
> mupdf-1.10a-source/source/fitz/pixmap.c:1210:12 in fz_subsample_pixmap

As far as we can tell, this buffer over-read issue affects the library
(e.g., libmupdf.a), not exclusively the mutool command-line program.

Use CVE-2017-5896.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYmW3+AAoJEHb/MwWLVhi2EuQQAIWqX8aA7zBTSSElX6o9D1hs
Cjbeerdb/OMcIp1K1xVY2p1xfphKIqfcJHwxwrBylzACx3Vc4bQhRbUGMe/TUsY+
njOnXPZBocipcYLd8wc/WW0Hb+0y8JlFNDR08G80hRBTttxPMzKeEEXFMaDDuH2x
zPINFJMS18Vda+r0h6iyprtsN5A8aLoH4VqRDe0Ksi6QZXQoe6llCvIYd/dHaonR
VVJM5sE3wmdHaSi7t+1ALu7dkdjq8T8CyJUf1xiGSuFvUMRmMc73F+HxvXQalJm8
TgJenmdnwjYAali/Z6Q00D662hxLpEUxWOCLgcneHfM3engScCKMHXvRRQhD+N1X
FcqAC+Ae4PKh450d0o1qiRBz7YQTLeIk8tH4m/0ljSEyou6kLVYvWky6yZgeJxEi
upQ9ff/t4d5XGILwRCCHm1osi/VQZqXGuLEuKUynDgJsd1gaWiGP5t0e587VTIT/
y/c0T230hbcwpNObiWPN6hly1vXSLQKWuvlFMzDhEfSx+7ZxRRIZ1KtCIjyr6PlW
zJCXQmj2sFfcOK83JsqD67qnrq9hyNzakkDCrt4Z+t4mk2+O3U40ea6jURzCMZx4
A38zUXHdTlo5i7Qs25wlPBTfZCPBxr22+sXLTRHZ4VrM1HX3ZX1fCQE7veykxxWU
n88zzEgrKbo+6ytZ8at0
=//bi
-----END PGP SIGNATURE-----
