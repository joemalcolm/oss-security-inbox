X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1496" "Thursday" "27" "October" "2016" "02:44:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161027064453.D3E771BE040@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds" nil nil nil "10" "2016102706:44:53" "[oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds" (number mark "U       cve-assign@m Oct 27   40/1496  " thread-indent "\"[oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds\"\n") "<CACn5sdQLTqa8MLRsaaReoPMBO5D6YJpSEiUQbrHPrny496rbOg@mail.gmail.com>" ("<CACn5sdQLTqa8MLRsaaReoPMBO5D6YJpSEiUQbrHPrny496rbOg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9989 invoked by uid 550); 27 Oct 2016 06:45:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9963 invoked from network); 27 Oct 2016 06:45:06 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdQLTqa8MLRsaaReoPMBO5D6YJpSEiUQbrHPrny496rbOg@mail.gmail.com>
Message-Id: <20161027064453.D3E771BE040@smtpvbsrv1.mitre.org>
Date: Thu, 27 Oct 2016 02:44:53 -0400 (EDT)
Subject: [oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A patch was recently proposed:
> 
> https://bugs.freedesktop.org/attachment.cgi?id=127421
> 
> thanks to John Bowler and his detailed analysis of this issue:
> 
> https://bugs.freedesktop.org/show_bug.cgi?id=98165
> 
> Can we have a CVE, now that we know it was an integer overflow and we have
> a patch?

Yes, use CVE-2016-9082 for everything fixed by
attachment.cgi?id=127421. Our understanding is that cairo is the
primary affected product.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYEaIXAAoJEHb/MwWLVhi2F84P/RGLhyp408cPps8/bkAIzpL5
zJ8/+sqWYlVfYt+Mwcd4InGIzxHhaBRtPbX7c8FsWRhySib7QRadPdnp4U9xUNXP
o7Z4kV55WIaJhqo5soJT0kMBoI+itrktfJHFsyWnX3KGPvrsc+lembzQ0313Bw8f
G8KSmcSIfEBChOPdqezTsVHggDpwPdmXjBrNrd44WbQJA95oUz9dr9VPknSX52Bw
eBUJRuZ19EV3qlwaw0zrZcme1oqReyELGj8LRBLXGIbEbKfX9azjnHefWJXQW8qr
N3iWWoKSHe2RMo61FcG0T75AVF+A8SCsnbrWsmR4tDMmV98KNqdEoBZmvqH0wrBH
1A3pfvLYE4b9y6IsuWOjSvncvnxaWjHL+U0Vl7ndvHjWUWx6FTXkNLy6+YtxOu7D
wTfMhCSjaXtGoQS6yXYTJlHO1iFE9E3b/7p7Bn/Wgztba78OUUZQyVf4+jT49YQg
dO3OlSx0piN/VSg3ow6+YBHcN9Hr4abgRjFQD9stw2Ski8AOnGZ6vAn5XYqP9xLG
xbWdGECCFX3WlTrQwW/2yKV4B1QndNeqvnhYFTEKNxePPI4236mTHC49mP64SFVG
qALbGd+izC6KRtK1TG6jmFze8wQ1zyfCg3pWd0wottDwoSDOIkUGLv+6U5Cpqz6O
nve18XRyf0Tm9+hQQ8/X
=3wl0
-----END PGP SIGNATURE-----
