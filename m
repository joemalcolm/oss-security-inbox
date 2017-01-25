X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1362" "Wednesday" "25" "January" "2017" "03:48:17" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e79b63144d4c451291ba0a0c5776be8f@imshyb01.MITRE.ORG>" "34" "[oss-security] Re: CVE Request: libXpm < 3.5.12 heap overflow" nil nil nil "1" "2017012508:48:17" "[oss-security] Re: CVE Request: libXpm < 3.5.12 heap overflow" (number mark "U       cve-assign@m Jan 25   34/1362  " thread-indent "\"[oss-security] Re: CVE Request: libXpm < 3.5.12 heap overflow\"\n") "<20170122132251.GA11536@pepper.home.stoeckmann.org>" ("<20170122132251.GA11536@pepper.home.stoeckmann.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14047 invoked by uid 550); 25 Jan 2017 08:48:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14021 invoked from network); 25 Jan 2017 08:48:29 -0000
From: <cve-assign@mitre.org>
To: <tobias@stoeckmann.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170122132251.GA11536@pepper.home.stoeckmann.org>
Message-ID: <e79b63144d4c451291ba0a0c5776be8f@imshyb01.MITRE.ORG>
Date: Wed, 25 Jan 2017 03:48:17 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: libXpm < 3.5.12 heap overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://cgit.freedesktop.org/xorg/lib/libXpm/commit/?id=d1167418f0fd02a27f617ec5afd6db053afbe185
> 
> through maliciously crafted XPM files.
> 
> The affected code is prone to two 32 bit integer overflows while parsing
> extensions: the amount of extensions and their concatenated length.

Use CVE-2016-10164.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYiGPYAAoJEHb/MwWLVhi2nUQP/0LQAMNgcfikDFbTd0j6xWyF
O1qAdm8ok5jnJaV4VR5ivn68LxV98eL3uBI6dKzxNrSf7wl/Xj8YdxtdYr5KgF6W
38IfyWLLNwt2GHhqAkHFUE4CUoZQMoAmffdpexZuJ5FuD7q4IGX3raV8/nhFg4bG
zuUPuJD+7FMXYzFBy/t6yk+1VwqQVhCY4RxzX5J/Np2XYGHi2yOhtfSCoZ5OWAKV
1GFYbxAUqYZn1HvqrCbVFGi0PEejpORm4Z+R8plxnImgQAwEXImscxuc3L1nxGZB
SOMNfRmSKQ2VGhsk0LEfJvwk8ZdwWv18iHNGyMCDw1rnIu1KzVVAMyF6/IwtkOk4
VHIWP9SkUs1w20xznzSdGF1CQN5sSfRGkxwqwavCbK4h/2iFpsN/VEmbHbdkGmc6
y/dhmGf6WPJezXbPafcLOY5o9BZayzSgSN5+lpJvaGrW+CYKZUU2IsnNJ1P5txs1
c9OvaGKHXfnC57aLPEybSrkTlJDQghqTLTVFGUR7wIrOhVPrpM1MtXVHXbonPUtp
J7qc6h3TpEbCWa/KhmvvDbrlzhO4cnOptIx57z2b6UxLRjVhNP26X+YRtH/NxzPh
TRBmJ7MwdU32Ngpr1LiPhBsyZ5ECO4M/G2JUmStOVpuaXHmKQTYU6do4MD/UlgVz
GKnveQt+Y4sDCrQa6sDX
=T2kK
-----END PGP SIGNATURE-----
