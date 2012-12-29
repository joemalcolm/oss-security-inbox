X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/12/29/5
Message-ID: <20121229103143.GA3201@elende>
Date: Sat, 29 Dec 2012 11:31:43 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Cc: team@...urity.debian.org
Subject: Inkscape reads .eps files from /tmp instead of the current directory
Content-Type: text/plain; charset=utf-8

Hi

Going trough some bugreports in Debian I noticed [1], [2] I haven't
found a CVE for "Inkscape reads .eps files from /tmp instead of the
current directory".

If one has file foo.eps in current directory, and /tmp/foo.eps is
present

 $ inkscape foo.eps

opens the copy in /tmp/foo.eps

Does this warrants a CVE? If so could you assign one?

 [1]: http://bugs.debian.org/654341
 [2]: https://bugs.launchpad.net/inkscape/+bug/911146

Regards,
Salvatore

Download attachment "signature.asc" of type "application/pgp-signature" (837 bytes)
