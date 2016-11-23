X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1455" "Tuesday" "22" "November" "2016" "19:18:36" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<fe5751f9e5494448b7b92dce806bcf49@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: imagemagick: null pointer must never be null (tiff.c)" nil nil nil "11" "2016112300:18:36" "[oss-security] Re: imagemagick: null pointer must never be null (tiff.c)" (number mark "U       cve-assign@m Nov 22   37/1455  " thread-indent "\"[oss-security] Re: imagemagick: null pointer must never be null (tiff.c)\"\n") "<1975740.FIEDfIgEBD@arcadia>" ("<1975740.FIEDfIgEBD@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11650 invoked by uid 550); 23 Nov 2016 00:18:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11590 invoked from network); 23 Nov 2016 00:18:48 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1975740.FIEDfIgEBD@arcadia>
Message-ID: <fe5751f9e5494448b7b92dce806bcf49@imshyb02.MITRE.ORG>
Date: Tue, 22 Nov 2016 19:18:36 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: imagemagick: null pointer must never be null (tiff.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/19/imagemagick-null-pointer-must-never-be-null-tiff-c

> coders/tiff.c:655:39: runtime error: null pointer passed as argument 2, which
> is declared to never be null
> MagickCore/string_.h:76:23: note: nonnull attribute specified here

> https://github.com/ImageMagick/ImageMagick/commit/b61d35eaccc0a7ddeff8a1c3abfcd0a43ccf210b

> coders/tiff.c

Use CVE-2016-9559.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYNN51AAoJEHb/MwWLVhi2ZScP/3pbrqd7rGuodBIYCs3g/wPt
8vUfmVszGR1XLLyp6pZ4rWCsndukXim4ZLCDNa/Pru6KzVZiwhwv09/veXn7mD78
DVYe9Br+bO1h8nP+y3pd1uIOzuDXpIdJYZrNXPkYAE6o4CNEUG6vgL/eC4dHjvtq
6s8usKsLFULmTlUvQNJoM56mXDn1w3VnOBadMAF6dMlbbn4gyGmW9wwL9d4ebzS+
tvcWFaU5hUv5qztFNc/vNyNTkziPGU1jRiTkJu2N608ftMGHbMVaMZ90ZuZgOWrA
234HQE0horOikxFmRDZ/CBCTiV0PO2PzGfPkTFsBChTRzvDa05cF+e5xFhZly5R6
YiaEFZiGoqrfbwkiIpjAQCKK81YzmRt388GVY7sTxhT+swmoXs5xK2ZhC4tbwad3
OdCT8ZKvclDRsRJ9aMZDgQrqBPTh/IcwVbq/T0Y5m7r3gw5qbopNwZFlxhLV0X2t
uWowOUDGHyoRtY1/XjBuuWwNyb7EoNbRWI1bov08UMvfiv47A7mjatsr+qceM7Zo
shUMkSjsOygvmhd8zgeI7Eubq5BHrsGP1jRLmaaomRQr93CcB+/Wx8VLKxiG0vXw
lZlfj/tb7r2f48P/h3++VOIm9ew6nbqYD34RL94OJhkxuqwl/2DWD7gIcbfRoMGM
qbRlEBSoO/ByBIBnigXK
=CmvN
-----END PGP SIGNATURE-----
