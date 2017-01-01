X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1372" "Sunday" "1" "January" "2017" "12:52:56" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<cb1ae0f8e06e43d180b360cd96d8c69f@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: libtiff: stack-based buffer overflow in _TIFFVGetField (tif_dir.c)" nil nil nil "1" "2017010117:52:56" "[oss-security] Re: libtiff: stack-based buffer overflow in _TIFFVGetField (tif_dir.c)" (number mark "U       cve-assign@m Jan  1   36/1372  " thread-indent "\"[oss-security] Re: libtiff: stack-based buffer overflow in _TIFFVGetField (tif_dir.c)\"\n") "<2609162.lMrVaOLpFB@arcadia>" ("<2609162.lMrVaOLpFB@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9850 invoked by uid 550); 1 Jan 2017 17:53:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9794 invoked from network); 1 Jan 2017 17:53:08 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2609162.lMrVaOLpFB@arcadia>
Message-ID: <cb1ae0f8e06e43d180b360cd96d8c69f@imshyb02.MITRE.ORG>
Date: Sun, 1 Jan 2017 12:52:56 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libtiff: stack-based buffer overflow in _TIFFVGetField (tif_dir.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2017/01/01/libtiff-stack-based-buffer-overflow-in-_tiffvgetfield-tif_dir-c

> tiffsplit
> AddressSanitizer: stack-buffer-overflow ... WRITE of size 4 at
> tiff-4.0.7/libtiff/tif_dir.c:1077:29

>> http://bugzilla.maptools.org/show_bug.cgi?id=2625
>> Reported: 2016-12-04

Use CVE-2016-10095.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYaUD7AAoJEHb/MwWLVhi2MEUP/3BmH0gq++MW96w7r1FJgdmw
+LDl1nEAQfZwiCRVP5G6iL0Egguw8VW2LlYK4YLmnorh8wYWf5mYJQDOI+44f+sK
oxO1uu2lv/IfePRqgMdWIoJFvuv7QzfplbXSQkH0oW8fCdo7FZ5dbEy3KzWlrFeU
dGWFx3ypXQ08VvddLssLuG4yLvw4KRI5nYfxkxMNY9N2wFzooVMm64m/bz4T9ZRJ
DvNMsIU6Yspk2Gv5NLVv4+isqWOTkOgRcuh4Gh8j9Rdni46pnjCEF6Bc1tDI+zmV
8XnUDURVfRDgXUR2X63/bKbRzTFfkY6lHECAOJ0mAc3fx105Pf6qfy1KvqSSxhi5
4VV9OaK3Nh/8QAdkalL1MoZZ4qCvmxoevxRIYN3pINx6qlHssYj52tNvaszumq6t
X7rDfdgKYxQf+uegYFiiEigTu7+UV8tEsRyx/kBfHiZqfkyXMw4eIAEJEJekC6y4
6RFnaC37VbhCScfHevmrEH8MW2IbVd6zfu3Taayp2WvJmMT0QQ+dXPY3TUgtZXdR
um0XCOgbrbMTWMVuR7huDzrzMnvkEUMvJtUlNZw+tx0gZerm4hxzrMiyKFhr2Bkj
8WLRWmgmaDWfeeeMzIZH+cbjI7z/7Mr/5dr2PPc9gXqwVJHpQc1sGjLSO2c4I5pT
bjm1p3FJdbBJi+DMt82Y
=2Tt2
-----END PGP SIGNATURE-----
