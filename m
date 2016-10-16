X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1771" "Saturday" "15" "October" "2016" "22:42:33" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016024233.399CF42E027@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: libav: null pointer dereference in get_vlc2 (get_bits.h)" nil nil nil "10" "2016101602:42:33" "[oss-security] Re: libav: null pointer dereference in get_vlc2 (get_bits.h)" (number mark "U       cve-assign@m Oct 15   43/1771  " thread-indent "\"[oss-security] Re: libav: null pointer dereference in get_vlc2 (get_bits.h)\"\n") "<3959521.p6bvcEHnKb@arcadia>" ("<3959521.p6bvcEHnKb@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1466 invoked by uid 550); 16 Oct 2016 03:10:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1434 invoked from network); 16 Oct 2016 03:10:53 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <3959521.p6bvcEHnKb@arcadia>
Message-Id: <20161016024233.399CF42E027@smtpvbsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:42:33 -0400 (EDT)
Subject: [oss-security] Re: libav: null pointer dereference in get_vlc2 (get_bits.h)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/09/07/libav-null-pointer-dereference-in-get_vlc2_get_bits_h/
> 
> A crafted file causes a NULL pointer access.
> 
> AddressSanitizer: SEGV on unknown address
> 
> 0x7f5273202c6b in get_vlc2 ... libav-11.3/work/libav-11.3/libavcodec/get_bits.h:530:5

> https://github.com/libav/libav/commit/e5b019725f53b79159931d3a7317107cbbfd0860

> He said that the commit e5b019725f53b79159931d3a7317107cbbfd0860 make
> the issue not anymore reachable through the provided testcase, but the
> issue is still here

Use CVE-2016-8675 for the issue that was fixed by
e5b019725f53b79159931d3a7317107cbbfd0860. Use CVE-2016-8676 for the
issue that remains after e5b019725f53b79159931d3a7317107cbbfd0860.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAudAAAoJEHb/MwWLVhi2BeoQALT+/NOvMXNAUFbTth5ZENQR
9obKiTpG1etX5K3BJjkmRffEgprSU8o0KqE6hHSgav9IPoX5t1Ic8mHVPGrzDWBI
G+ubzdVIXhbidIfXg4qF0yHbyPpU25sNga61gsAYRrOcZiKzbNnhRUsMhuvv2cHx
XJWrTDjVQsE9foEeIdTnONcWUMBQ7mZfjWz+GVJmgICC0Lna/HcitQ0pO2G35kQ2
7sGaQ/szDWZCDbJ9CjonJKqZtI1a45wIX/3I3qy28KOIojguk6b6me0iAcQSSC2r
Ext8uDLlVcgMHAChF+mSbo1Yctij2RFiOSz9YdK+Errnw3I3gb8Ad7sXfHNpGw2a
aAudyYgdLk8w2a7yP4Wpzy/Mr/KaxyU52qJp/BXe4pvFCippCaa/iwXG9DF9MbC+
H1vgAbzI5tlCeV5r7d08OuZlHx+t29Ki+iyoy7xpArPs5TOVz+Ut5iAlTMquJKsh
8X6azUINjDpJILy/sJKP5R3PKoapjkYA1Tjn3WeTs9NfYsOBOdBrjpp0V6k7B5hq
h9q3LcCOOkKnVvaSi7n9naMZt7QRsId/Wc62bqUkR0N1sHLE5Co0wxFArbdyAjs9
8uX7ZIdiWr7qRxviilT5105jO4sCTEBsGz3lcjgezNMRMS1F+OpdU9BJ45s4fFgz
2svTRycflYTFU6E/BO0U
=atYc
-----END PGP SIGNATURE-----
