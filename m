X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2051" "Thursday" "28" "April" "2016" "12:46:11" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>" "50" "[oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions" "^Cc:" nil nil "4" "2016042816:46:11" "[oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions" (number mark "        cve-assign@m Apr 28   50/2051  " thread-indent "\"[oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions\"\n") "<CACn5sdQuKknmR6bZHKM2-G0Yb+P7hnJe7NkdRQkFthMpN5thpw@mail.gmail.com>" ("<CACn5sdQuKknmR6bZHKM2-G0Yb+P7hnJe7NkdRQkFthMpN5thpw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28011 invoked by uid 550); 28 Apr 2016 16:46:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27992 invoked from network); 28 Apr 2016 16:46:23 -0000
In-Reply-To: <CACn5sdQuKknmR6bZHKM2-G0Yb+P7hnJe7NkdRQkFthMpN5thpw@mail.gmail.com>
Message-Id: <20160428164611.B328A3AE1A8@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 28 Apr 2016 12:46:11 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests: DoS in librsvg parsing SVGs with circular definitions
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Two DoS in librsvg 2.40.2 parsing SVGs with circular definitions were found
> (they will produce stack exhaustion). Other versions can be vulnerable too.

> these issues are solved in the last git revision of librsvg2

Probably the best we can reasonably do here is assign separate CVE IDs
to the separate reproducers. Are there any other details that might
enable a wider set of readers to use your report for risk management?
2.40.2 is apparently a version from late 2013. Is this related to
https://git.gnome.org/browse/librsvg/commit/?id=8ee18b22ece0f869cb4e2e021c01138cbb8a0226
(from 2015-02-06): "If a chain of paint servers, defined through the
xlink:href attribute, has a cycle, then we would loop infinitely"?

> They affect the following functions:

> * rsvg_cairo_pop_discrete_layer - rsvg_cairo_pop_render_stack -
> rsvg_cairo_generate_mask: reproducible using circular-1.svg

Use CVE-2016-4347.


> * _rsvg_css_normalize_font_size: reproducible using circular-2.svg

Use CVE-2016-4348.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXIj3tAAoJEHb/MwWLVhi28asP/ind5vax8Ln+o2RusWj8E+LS
Q/R1pAJgj20Duo6s23zx/iWicsyTudMMdeBQwhnpPbnDOvUtVUqn5jjtD2xTZkBG
zKdKNw3QpJYYC4BSaNp3r+VVEuIlWiNlXYfmWu8hThzgRJL8HjQhQd9sE/WcA6xo
XX5639p6TRA5leTIXPWHaQ8HxB/9cSufkTZ2nH4WTBJcwh45iKVczsPAh1nuabnF
FmghWc83c9woO4ImKdDa+/wF/yaO2asrztAedtxCNDQQZTxZRtU7e/IcIbdW9VNU
VM41OImZG8k8JzO0r7/Bg2XnRuVUvoJdK0pRNnS0LPfzDX38HCWlKZnKKFJkZjTT
vQ+sErtM+I33NR+hc4o2wsMnzL8L0oln4q1zYepu0SLZaPTwDN6L6X/Gz1gKL4Zi
Uxowp0OF+8nknnVlhnySHcOGr5tfjT+Q1RdtUmZie0vW+5m9iPubBUHFBLuC6GYF
5rp4JqaDFxHUVwX+gXz+jT8+O489ASVlb6NS2bPoC2K/aUl6MYcQygeIZky0GfdP
9OKoYWrUq2JUkzQMhI9FML0F64Pt4blZksSQ5tHa24xxMCRl/nkR4OEPIg/eMW1f
D6hr+/mR9saLzv8pao0Qf+k+Kuig2R+7F8be673J8QXcowJX5/tHYQWbS7Ai0CAI
v7jIqoYfMx9CP7ccozvg
=hvLp
-----END PGP SIGNATURE-----
