X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1776" "Saturday" "7" "May" "2016" "11:21:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160507152115.4A261332033@smtpvbsrv1.mitre.org>" "53" "[oss-security] Re: CVE Request: wordpress and mediaelement" nil nil nil "5" "2016050715:21:15" "[oss-security] Re: CVE Request: wordpress and mediaelement" (number mark "U       cve-assign@m May  7   53/1776  " thread-indent "\"[oss-security] Re: CVE Request: wordpress and mediaelement\"\n") "<CALy8Cw7nYh_p5qR3anmUM+t5g5zV-2HuZD4E6SFiWckCMfhNMA@mail.gmail.com>" ("<CALy8Cw7nYh_p5qR3anmUM+t5g5zV-2HuZD4E6SFiWckCMfhNMA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22126 invoked by uid 550); 7 May 2016 15:21:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22102 invoked from network); 7 May 2016 15:21:26 -0000
From: cve-assign@mitre.org
To: csmall@enc.com.au
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CALy8Cw7nYh_p5qR3anmUM+t5g5zV-2HuZD4E6SFiWckCMfhNMA@mail.gmail.com>
Message-Id: <20160507152115.4A261332033@smtpvbsrv1.mitre.org>
Date: Sat,  7 May 2016 11:21:15 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: wordpress and mediaelement

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://wordpress.org/news/2016/05/wordpress-4-5-2/
> two security issues, both XSS


> WordPress versions 4.5.1 and earlier are affected by a SOME vulnerability through Plupload

> https://core.trac.wordpress.org/changeset/37382/

> wp-includes/js/plupload/plupload.flash.swf

Use CVE-2016-4566.


> WordPress versions 4.2 through 4.5.1 are vulnerable to reflected XSS
> using specially crafted URIs through MediaElement.js

> https://core.trac.wordpress.org/changeset/37371

> js/mediaelement/flashmediaelement.swf
> js/mediaelement/mediaelement-and-player.min.js

> https://github.com/johndyer/mediaelement/commit/34834eef8ac830b9145df169ec22016a4350f06e

> flash/FlashMediaElement.as
> js/me-shim.js

Use CVE-2016-4567.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXLgZiAAoJEHb/MwWLVhi2KUwP/Amvnzvt7dhmVFVXumBcyAw3
VhKj2FD/HMq7VXJemJSyVf6mo8oJKJwn5ruiMwY/ntQAOLy/+BkYhP3Ngm1HPGwR
22XWXCAPBIBzcKS02oXLMSxFycqqvPpttt9mr1HjamCa8Z8/jXoDubniLjdHD3RJ
psMkF1Yr2x+Tj6ZLBnKBJ8Mi/tF1fXGNfsNBLsg6V2189ZgcAh7lE5HcDUxb4V5H
ShkjwIhqP24q5Hmb2Kg/wDqviDg64NMRGEvbdmXZa8O2MtsADTR7UPAK5ycCPO2d
Tv2jg6xWBK7zb5KfeOAGZ7Ex9SESP8m41bhRW+zTx9rVPGEnrKmN4k3y/vBNYUYx
Rwf8cGFF8Fit10hO46WV2TRZkRVdq7eEUR+o7ji3rIxWheMJjXgcdjRvMFO/B8c9
w9NoFF0Lm5x4wOfccuSvEmxHfM8L40LJklKJMKP+hrxC3Q96cmS7ach55X7di8xf
GQ9xv2OH7xhR/UtpROzXW3KZDLAYO4/5dPgNEEl5sgbnEYgSGMAlAHbg799wbn7w
aUEhRJrzpxqEhwPpbOAPUWQsww+sCdYQtzmKfsY9mDZG1NhdnawQXznPwMayiCD6
0c6o+OXYLarcS6Cc9oRhQzFutjR2/yphuXH8ACIcf/svCblAz4pbJNVbGoajQxae
QiNFEoipdnkFPQiSGYa3
=nnff
-----END PGP SIGNATURE-----
