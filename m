X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2414" "Saturday" "28" "May" "2016" "23:22:55" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160529032255.12FC7332079@smtpvbsrv1.mitre.org>" "55" "[oss-security] Re: Fwd: PHP-FPM fpm_log.c memory leak and buffer overflow" "^Cc:" nil nil "5" "2016052903:22:55" "[oss-security] Re: Fwd: PHP-FPM fpm_log.c memory leak and buffer overflow" (number mark "U       cve-assign@m May 28   55/2414  " thread-indent "\"[oss-security] Re: Fwd: PHP-FPM fpm_log.c memory leak and buffer overflow\"\n") "<56B0D4EE.8010002@firma.seznam.cz>" ("<56B0D4EE.8010002@firma.seznam.cz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3827 invoked by uid 550); 29 May 2016 03:23:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3809 invoked from network); 29 May 2016 03:23:07 -0000
In-Reply-To: <56B0D4EE.8010002@firma.seznam.cz>
Message-Id: <20160529032255.12FC7332079@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Sat, 28 May 2016 23:22:55 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Fwd: PHP-FPM fpm_log.c memory leak and buffer overflow
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Date: Tue, 2 Feb 2016 17:10:22 +0100
> To: <oss-security@lists.openwall.com>

> Date:	Mon, 25 Jan 2016 16:50:38 +0100
> To:	bugtraq@securityfocus.com

> The FastCGI Process Manager (FPM) SAPI of PHP was vulnerable to memory
> leak and buffer overflow in the access logging feature.

> the PHP engine performed an out-of-boundaries read and also wrote a \n
> character outside of the allocated memory.

> http://git.php.net/?p=php-src.git;a=commit;h=2721a0148649e07ed74468f097a28899741eb58f
> http://www.search-lab.hu/about-us/news/111-some-unusual-vulnerabilities-in-the-php-engine

>> as it has some strict prerequisites, the severity is low.

>> This was just an expanded version of the default access.format
>> template, we added the REMOTE_ADDR and REQUEST_URI fields

As explained in the www.search-lab.hu post (in the section between "We
found the answer by reviewing the source code" and "And here we are"),
there was really only one underlying problem: the code misinterpreted
the semantics of the snprintf return value. Use CVE-2016-5114. The
other outcomes were consequences of this. The "memory leak" is the
same as the "out-of-boundaries read": extra bytes from process memory
were being written to a log file that might be readable by untrusted
users. The "buffer overflow" is the same as the "wrote a \n character
outside of the allocated memory."

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXSmAHAAoJEHb/MwWLVhi2KkwQAJYehVlnt9SusqqgXhyhdZgt
TwqfEcyDihIZRtNw1MVqSTyR3B5Tf8S0SiSeINC2uRvaWSia/NlSEjWuMshmDkIn
vXsPj60bPpjtvU9DXK7NZ2L35zOqwaVLf/n/XnNf2dkHIVCE2uNfm2GvNyGjGSGn
8W38RS9xu1BJeF1PKtgkd3CdYKbfy2J/NZs59E02yhJ5gtQoR64n86zj2qdv5lhd
/pTvd3QzdCztOU+/wKRA/vOlm0UJKc4vMyP92ffYPuQkPaqaA2AovzCGJuJ+vKoL
XHSKvwigkLK1VECfTHpxmt0JXOHe4UMdDjSFPXryixjWxT0D3OnYU1lJKCn7XjKx
UBGOm+p3CvEZ5+3pxDqI5oULJokn6ZiLBLuWP2rhDITcyEsRbr745UQCJ0kZjuSu
tHheUYJWRHo4XOHQkeV2eiVrZTjTo/1txTUZCoenV57WK8EnOiKuoFaBbq0xddtq
UfQMWB6wYFf7n7O4LuMPxcE4UgC6dO04CuY12yHduarvxcPb/r7n9H8ACyexb93k
OvmhaX2fDJNEjQ2ZGIBvOhKXJAYCe/kHjCeFH256xAfQhe2eW14SLo53Akt6dgvg
0jzyABI/KSbJnpWqwB3Bf1K9vfmSmBCEWYJVlY0HCtE5caqe+IJSE5RygSlR22Ha
7YksgydiRGiXmapN76dc
=ONL0
-----END PGP SIGNATURE-----
