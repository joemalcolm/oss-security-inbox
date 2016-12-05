X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2102" "Sunday" "4" "December" "2016" "22:17:35" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<3fd03cb43fae4c9f8d4744e04038bcac@imshyb02.MITRE.ORG>" "50" "[oss-security] Re: graphicsmagick: memory allocation failure in MagickRealloc (memory.c)" "^CC:" nil nil "12" "2016120503:17:35" "[oss-security] Re: graphicsmagick: memory allocation failure in MagickRealloc (memory.c)" (number mark "        cve-assign@m Dec  4   50/2102  " thread-indent "\"[oss-security] Re: graphicsmagick: memory allocation failure in MagickRealloc (memory.c)\"\n") "<54839894.ARmt1DTBun@arcadia>" ("<54839894.ARmt1DTBun@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21876 invoked by uid 550); 5 Dec 2016 03:17:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21837 invoked from network); 5 Dec 2016 03:17:47 -0000
In-Reply-To: <54839894.ARmt1DTBun@arcadia>
Message-ID: <3fd03cb43fae4c9f8d4744e04038bcac@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
Date: Sun, 4 Dec 2016 22:17:35 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: graphicsmagick: memory allocation failure in MagickRealloc (memory.c)
To: <ago@gentoo.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/12/01/graphicsmagick-memory-allocation-failure-in-magickrealloc-memory-c
> 
> The problem is that the embedded JPEG data claims to have dimensions 
> 5939556833 and
> this is only learned after we are in the JPEG reader.
> 
> AddressSanitizer failed to allocate 0xfb8065000 bytes of LargeMmapAllocator
> 
> MagickRealloc ... GraphicsMagick-1.3.24/magick/memory.c:471:18
> OpenCache ... GraphicsMagick-1.3.24/magick/pixel_cache.c:3155:7


>> From: Bob Friesenhahn
>> Date: Thu, 1 Dec 2016 21:20:13 -0600 (CST)
>> ...
>> We did make an unreleased fix (Mercurial changeset 14953:38d0f281e8c8,
>> and earlier changeset 14831:28c0bb8bf89a), but perhaps not the way you
>> like. The fix which was made was to require that the embedded JPEG
>> data has the same dimensions as the containing JNG file. The existing
>> resource limit mechanism would then allow the user to constrain the
>> size of the JNG image. The default constraints in a 64-bit build are
>> larger than what the JPEG format supports.

Use CVE-2016-9830.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYRNjcAAoJEHb/MwWLVhi2unEP/026aCl/yFoWW+oA6eBTE90K
crzLOqQvjd0xCLXZtZJzRYn1WD1YUm+2ViYpAWScUzazeqqQbdrESua2oHBUt9wJ
9MB0fHmxrt/X4FYeudBB98Jvm5d+fUs7OYNg6nlEUeeOVLyU8hSTbn6s0FVGp7TT
ewBIlJTixW76jKB63DNDZ6lVc/UvYgCzaYiR5SfjXRWjfddQZjtgbsxDb3B+iQ4s
kAbtvPDknfia5B0dewSogp7A0e5I2wfanhTWQRCYO7hTJFH7BhRd4u/Sj6bHn8WB
mxm9kq/ghCzG3vHRelZLIXp6rQ0LR5x9BfjCfFMU5PwEbWGpH/z0Omie5XsSH5hk
YR0Erj9BUBthPAeRCFYbkl9yhUfIn14d6Oj8SyMHto6FZ7kutFeWp1M/zQStXN2w
U/zKpHE1aOknMW0mGqenRI5BS5bhbR+KHimPfQVdTG/1DcbhPblsrpisChP4R4Nl
zwS2C5AYusq0jhAlJM+dFOIXyDM5t5tkP/Iqb+Xhks5SNnu67vl4t47JSY4nONgF
0MP2myZ0GtvkTI2AUDKFxapC2+LWNfOIqNAiIRino5ydLsvEke5jiglesTnEsI5S
/k65wgNAGUNHRi3+unBMeeOBxuPRFliLi+zj/GOvWPz1voZ4oMPFdrY2AG1jOJvx
HpRkWF3tQVXvCyW5QUgX
=ES9U
-----END PGP SIGNATURE-----
