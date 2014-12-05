X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/05/22
Message-ID: <004101d010db$be406d80$3ac14880$@mantisforge.org>
Date: Fri, 5 Dec 2014 22:35:15 -0000
From: "P Richards" <paul@...tisforge.org>
To: <oss-security@...ts.openwall.com>, "'Damien Regad'" <dregad@...tisbt.org>, <cve-assign@...re.org>
Subject: RE: CVE-2014-6316: URL redirection issue in MantisBT
Content-Type: text/plain; charset=utf-8

"Paul Richards also found another redirection issue in permalink_page.php, which turned out to have the same root cause."

And nik-picking here, but the issue that I identified in permalink_page.php I believe was a cross site scripting issue and not a URL redirection vulnerability so should probably be allocated a separate CVE identifier?

The http request headers of the permalink_page.php issue that I recall are at http://tinypic.com/r/2dh8y1f/8 and relate to a XSS vulnerability and not a URL Redirection as shown in the image linked.



