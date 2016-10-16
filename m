X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1382" "Saturday" "15" "October" "2016" "22:52:20" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016025220.4E2E36C0D4B@smtpvmsrv1.mitre.org>" "34" "[oss-security] Re: graphicsmagick: stack-based buffer overflow in ReadSCTImage (sct.c)" nil nil nil "10" "2016101602:52:20" "[oss-security] Re: graphicsmagick: stack-based buffer overflow in ReadSCTImage (sct.c)" (number mark "U       cve-assign@m Oct 15   34/1382  " thread-indent "\"[oss-security] Re: graphicsmagick: stack-based buffer overflow in ReadSCTImage (sct.c)\"\n") "<1702944.HEYk80P7xf@arcadia>" ("<1702944.HEYk80P7xf@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23873 invoked by uid 550); 16 Oct 2016 02:52:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23851 invoked from network); 16 Oct 2016 02:52:31 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1702944.HEYk80P7xf@arcadia>
Message-Id: <20161016025220.4E2E36C0D4B@smtpvmsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:52:20 -0400 (EDT)
Subject: [oss-security] Re: graphicsmagick: stack-based buffer overflow in ReadSCTImage (sct.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/09/15/graphicsmagick-stack-based-buffer-overflow-in-readsctimage-sct-c/

> AddressSanitizer: stack-buffer-overflow ... READ of size 769
> 0x7f73e9a8399f in ReadSCTImage ... GraphicsMagick-1.3.25/coders/sct.c:126

> http://hg.code.sf.net/p/graphicsmagick/code/rev/0a0dfa81906d

Use CVE-2016-8682.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAudjAAoJEHb/MwWLVhi2Cd4P/2uPjJJV28gcOqSxM0Xj1TSh
UIn+ZanqSHgiWTIlWtTyj2dc6VPvvQDNNInI4TAHhUSvKxS/LW3g2UiH0hekIjVh
JdUkDQvFfgh0gfHpVtqHejfHQEn7ImG5a7JqwXzTrtzQRcGcQQU7UIXkNV+ekdpw
n2TUNDaKej8gTHt586futWz3v3Q0v5e8PCZuT1zKUyXSX0uLpk3r/fUnxyfjvR3z
M4bStOOgTR3MJUw45GV02rTbZI/huQEdqW2ESc61d56inr5Vo5j/bw5Cu1LooWne
AQngylwjPZmmmmhCpcmV5izqHyt5WcMnMrHustBToBapbweL/hhY7Xmag+nT2ydL
f5AR7Q0WlgOfEYacl3haA3ux7aa2RAEBUttSH6fXtneTlWJybsyeDWpwZ7uCJZWX
C250fBsOsk3A+BgHzXuMhvKvIoXbQCdjpI92r5aN3j+GKm/WmrqazFgWenczbymJ
Rl+YYVXyVALbeGh5XzV7rUr6Vsz757YGSjrylk7iK1sBj99ZRW8zqjSBz0AE8pXU
csKWMvaExOLHy3VaqmImQIJ0Ey3+LIxzGNd1pNNWJ5nFPXwvo1Vci6cfIgqItHEw
1BoO0N/TzxVdM8s10sR7TDqFkCinofPxCszrMQWu3b7cv854CLX8cxpfJZjtYCJk
ln3CicstgzDPDtG29ma/
=yO2d
-----END PGP SIGNATURE-----
