X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1355" "Thursday" "10" "November" "2016" "12:29:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<15299dfb124a4dd3b82a88f7137f2a7a@imshyb02.MITRE.ORG>" "35" "[oss-security] Re: libming: listmp3: divide-by-zero in printMP3Headers (listmp3.c)" nil nil nil "11" "2016111017:29:55" "[oss-security] Re: libming: listmp3: divide-by-zero in printMP3Headers (listmp3.c)" (number mark "U       cve-assign@m Nov 10   35/1355  " thread-indent "\"[oss-security] Re: libming: listmp3: divide-by-zero in printMP3Headers (listmp3.c)\"\n") "<4314977.YHaczL6dzr@blackgate>" ("<4314977.YHaczL6dzr@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13850 invoked by uid 550); 10 Nov 2016 17:30:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13738 invoked from network); 10 Nov 2016 17:30:07 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <4314977.YHaczL6dzr@blackgate>
Message-ID: <15299dfb124a4dd3b82a88f7137f2a7a@imshyb02.MITRE.ORG>
Date: Thu, 10 Nov 2016 12:29:55 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libming: listmp3: divide-by-zero in printMP3Headers (listmp3.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/09/libming-listmp3-divide-by-zero-in-printmp3headers-list
> 
> if you have a web application that calls directly the
> listmp3 binary to parse untrusted mp3, then you are affected.
> 
> AddressSanitizer: FPE on unknown address
> a divide by zero

Use CVE-2016-9265.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYJK00AAoJEHb/MwWLVhi2PBcP/1yhSanzSSFcosnQDR6SBgGL
3PAxiDKEweFRzhDjXy2KhO1lF4c6sLqjaGOKwyBaqh2QI0kmEuU0rzTLxv3e+XST
NSsBK6/WyrevX2RxbBDK7kTTPjlEI6VPWFBbooB74oChUbeMVndiKAciz2vod5NX
EUaAvRDG2O8rF+RKcUFmiNQeTQKqn/AVUVOquA+/JniVY/+xyPkXQ+7wyfQhYojd
SuVDxRRIfzFYBSFhCdtLYY5WrMWdKEVVRBgPDqTtxjuXa7Xga0GALapE1S9zfY1w
Da7oct44Ns/xuMQIhWo/Q+ilxWZ0T9nQ0ShmWUMnGFxWWXc9iRPqbvfRNHZ7Nrlr
tm9vnhck9hUZEgYPpoyka8sOmk0DGIrXc2OUWj3IcBSX6R0lXaglh62UD/lri5lM
MzTaAPR0nzysvgqo3fweZKFJJqB3dw5yEtr8FW8Hhxys3Q/h1gTdRY268LVhePma
ANtkDMsfQPAtShLrSEbKgIsPV9rjxEV53qi8JnK4t59mf5Z5ziVJ+S6FT44qMUhp
YLQYnHSAJwT43q96KTVm6ok28hHvKzPCSPUkXE6BNyuXZGDRUDneqDkrvCly94mx
OxexVIi4z5r/srLJ5O0vpXjK//tZFFKWDUrrwo6dIrwn/BbPp4s6Qng/aPe0jylD
9c3RUlO53BDm0PJHS/ZC
=RSl5
-----END PGP SIGNATURE-----
