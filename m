X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1517" "Saturday" "22" "October" "2016" "21:02:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161023010246.51126336018@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)" nil nil nil "10" "2016102301:02:46" "[oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)" (number mark "U       cve-assign@m Oct 22   38/1517  " thread-indent "\"[oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)\"\n") "<1731353.bZ4GPg8qyj@blackgate>" ("<1731353.bZ4GPg8qyj@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17708 invoked by uid 550); 23 Oct 2016 01:02:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17690 invoked from network); 23 Oct 2016 01:02:58 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1731353.bZ4GPg8qyj@blackgate>
Message-Id: <20161023010246.51126336018@smtpvbsrv1.mitre.org>
Date: Sat, 22 Oct 2016 21:02:46 -0400 (EDT)
Subject: [oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/10/18/jasper-two-null-pointer-dereference-in-bmp_getdata-bmp_dec-c-incomplete-fix-for-cve-2016-8690

> AddressSanitizer: SEGV on unknown address 0x000000000000
> 0x7f90527a18fd in bmp_getdata ... jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:394:5

Use CVE-2016-8884.


> AddressSanitizer: SEGV on unknown address 0x000000000000
> 0x7f888b2f5a43 in bmp_getdata ... jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:398:5

Use CVE-2016-8885.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYDAr0AAoJEHb/MwWLVhi2WH0P/i6yUAGi6CE1rRZQ+qXQbA03
SNbVOIpbLyceSU4JOM0IL6LjTNUyM3MMwaOt14br8cm4TBuiBbJXK36fLuZyVaBY
zC037f4NsnDhekzA34pnodMTZDOk/VpNARXr9OM8fvCDfou1idGoSuXuyb3OG/V+
clbafuDXOT5yqGmDRDmzGX9NeGqbIMjdn3wra1fqeFDXwWOpWMqL+WhnxxVOyIXW
G5Yh1VZmyGYa8otw56CPll9lZtovv46nyOT4XKgOpvjBWqLkVRVlwon1+AXVUKT4
ZFeL7QrElFSnQccCxKrmjTk2LVsbU5GE+W9enbnxM4KNVffgQF8XVIJq7PUsbBR8
bSlSumZCmw8lZPuNZjE35Vne5pMpg3PZgMFLq2eMOgdp07uOF7cQCh1/17pzrKmE
s0DUOIvfXQ2ojKikI41wrdC6L6MAs5ZTw3UdgGKdn6hxDmdotUAeujuRNu/Sd1zV
L7ut/q7Vvh4J89Cy2WWglcNEtlqgObVpq+N6QWau9GvK3fq4gNC4xDQB+tREy2Xb
n/zO16iTGTdvBvnyTgmRFIIYf94YG7heoYyUZnyoVawXWo+d4hy8fKT5Eges8d2v
AiUh2lPmySXhIQ8vQmSq5qw31cdGWaV+49yBrhxRv1uM/kCeRzh3zwr+UdSyzpsF
xIsmVdtbbQn29X5zyq8n
=+kLm
-----END PGP SIGNATURE-----
