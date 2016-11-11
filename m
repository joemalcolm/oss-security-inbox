X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1493" "Friday" "11" "November" "2016" "12:42:40" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<86556a717f404fcda780ced608b05693@imshyb02.MITRE.ORG>" "35" "[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_skim_forms (dwarf_macro5.c)" nil nil nil "11" "2016111117:42:40" "[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_skim_forms (dwarf_macro5.c)" (number mark "U       cve-assign@m Nov 11   35/1493  " thread-indent "\"[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_skim_forms (dwarf_macro5.c)\"\n") "<2803183.JXljhHXDl4@blackgate>" ("<2803183.JXljhHXDl4@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13590 invoked by uid 550); 11 Nov 2016 17:42:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13571 invoked from network); 11 Nov 2016 17:42:51 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2803183.JXljhHXDl4@blackgate>
Message-ID: <86556a717f404fcda780ced608b05693@imshyb02.MITRE.ORG>
Date: Fri, 11 Nov 2016 12:42:40 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_skim_forms (dwarf_macro5.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/07/libdwarf-heap-based-buffer-overflow-in-_dwarf_skim_forms-dwarf_macro5-c
> https://sourceforge.net/p/libdwarf/code/ci/583f8834083b5ef834c497f5b47797e16101a9a6/
> 
> AddressSanitizer: heap-buffer-overflow
> READ of size 29

Use CVE-2016-9275 for this buffer over-read. Although the commit is
the same as for CVE-2016-9276, fixing CVE-2016-9275 apparently
requires the dwarf_macro5.c part of the commit.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYJgKQAAoJEHb/MwWLVhi24wcP/ArXrxDuL31zWyp2eGSZzbs3
OK084kv5ln3zjGErGzoOch57mF2Eh8YRTKR0BofC0sJJATYs3PTl5LdRLl7tiy6m
9y8Z6aWRZfu3AyahJWoeEZmxOdHvRUgiQ2SMBf9jJBowRkbM8/omCIvfsLU7owyp
z1gauiGtLXzkGMMBREGqW5rdsFBBfHWqXo9fv8J7gUWOtNmYBiZ8lgc5Vsl6WTwl
+B7FFUBncj0oJGva807YmrrhHd0oKYv6Czrlfb3mdNYgVy2DaB+sIAkNpbmxg1Bc
+79RJ3Hir1j8An9M59qij0HNyWfvlk6mv99p6ELBcZ0xisYcFaeSKtS9XZbbYeAG
ROojMlSprq5uaKrEoFodUDuNrmC05X8A5sanVWyOPIkUaEw+7wcKPe78LYRpCUbn
0AQLBeG4YOkaPxA2VluU4+s5wMHJDtQvmK/yaGTf2+S3AlQf5JWVN054sBa2Boi7
i+m8XhW9gPurKrcjgLD7qN7q6rXWNo3U36I05bvsCObc4fgPr6CY/xEGM5QHYh/k
ApEZU4ZAvgcjew7R7HaaxgxBk5+90bEq4bzWNhExB0MCMpNrf4xg/L/PhzKSa+fF
HE+TQk5aIQqfGjI8eowdw/JZvEtDApNxqtKw/FcLuQe2DmJ55QJ/D9bijNwgpeB+
6VCWZuLyUbFPqM9sghS9
=FIB3
-----END PGP SIGNATURE-----
