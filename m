X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2159" "Tuesday" "22" "November" "2016" "19:15:59" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<d2bf58cac9ea4f93b050e6779b105caa@imshyb02.MITRE.ORG>" "53" "[oss-security] Re: jasper: signed integer overflow in jas_image.c" nil nil nil "11" "2016112300:15:59" "[oss-security] Re: jasper: signed integer overflow in jas_image.c" (number mark "U       cve-assign@m Nov 22   53/2159  " thread-indent "\"[oss-security] Re: jasper: signed integer overflow in jas_image.c\"\n") "<2140036.SkJE16ZSb9@arcadia>" ("<2140036.SkJE16ZSb9@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21589 invoked by uid 550); 23 Nov 2016 00:16:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21565 invoked from network); 23 Nov 2016 00:16:10 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2140036.SkJE16ZSb9@arcadia>
Message-ID: <d2bf58cac9ea4f93b050e6779b105caa@imshyb02.MITRE.ORG>
Date: Tue, 22 Nov 2016 19:15:59 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: jasper: signed integer overflow in jas_image.c

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/19/jasper-signed-integer-overflow-in-jas_image-c

> the commit which fixes the issue is not a fix itself for the
> signed integer overflow, but changed a bit how, in jasper, the things work.

> jasper-1.900.17/src/libjasper/base/jas_image.c:162:49:
> runtime error: signed integer overflow: 8543608947741818625 * 15 cannot be
> represented in type 'long'

> https://github.com/mdadams/jasper/commit/d42b2388f7f8e0332c846675133acea151fc557a

Use CVE-2016-9557 for the issues addressed by these
d42b2388f7f8e0332c846675133acea151fc557a changes:

  Some problematic types like uchar, ulong, and friends have been replaced
  with names with a jas_ prefix.
  ...
  An option max_samples has been added to the BMP and JPEG decoders to
  restrict the maximum size of image that they can decode.  This change
  was made as a (possibly temporary) fix to address security concerns.
  ...
  Some new integer overflow checks were added.
  ...
  Some new safe integer add/multiply functions were added.

(max_samples has a default of 64 Mb or 128 Mb in different parts of
the code.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYNN5mAAoJEHb/MwWLVhi2PqwP/RE8yNmQrXTrAhA7RpB9MxLv
AoBQfv6ap9aaF/K4UgMSLxny6eojVBkz6Ju0nlIfD8KGXQX3DvGCHdjPRFfi8vfe
5S63tmUz0me6PPfkoHnd8uro1z12St46TvMZQv4XeTi0U+FQWzQFtjBn7A7YLKdo
DAzZn/FXbB9s7RGXSY1A0O+0u0sxLN1pJeVODBDfcSyZarruYMQD1cAYtLGJsmD2
D61l6Xk9GcZabxAzhL6rHtQR2ZSxbjtDWfHrgui/retHALcIxSFlr5tLVC6h+4Av
NDfwOQuTlMh0aXb9AyCoGaXUt4N7dMLEO+uFoDNWoprPabA4QChaTUizr0QG2lIh
w8wnJ83veuhnp3FUNwtBjjwS4Cy8x0rqrWSFggFBKUzbvieQlOa8zbzhzM5ldMgy
ULzJ9eg+xNeVlAwp19YfNfEFif4LnkdHiybUIkwk8ErV49EgVeXKIc+XPYdgrjsK
CxdO783e4Putc1jjNNI869bbO2P2eOBUwTIcA2c55UceKsSTlMg/NLEbQsKXnMMF
liXpxyLf65Kc5lZBEzSCONBoz8h6Hb7Oq1kp2ekaUCjA8RJpunOobA2DGe5FIksh
4xXe/xan+GTLkOLbqoPg5tWSI0uSYvDV57bmQZPopqFbyKP4//3NZsHcS9NUWYFh
orerLmhz6lsZ4Ri5Q+8P
=Za2r
-----END PGP SIGNATURE-----
