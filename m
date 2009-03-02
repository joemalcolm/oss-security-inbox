X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/02/5
Message-ID: <Pine.GSO.4.51.0903021444340.26325@faron.mitre.org>
Date: Mon, 2 Mar 2009 14:44:40 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: Marcus Meissner <meissner@...e.de>
Subject: Re: CVE request: optipng security release
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2009-0749
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-0749
Reference: MLIST:[oss-security] 20090224 CVE request: optipng security release
Reference: URL:http://www.openwall.com/lists/oss-security/2009/02/24/2
Reference: MLIST:[oss-security] 20090225 Re: CVE request: optipng security release
Reference: URL:http://www.openwall.com/lists/oss-security/2009/02/25/4
Reference: CONFIRM:http://optipng.sourceforge.net
Reference: CONFIRM:http://sourceforge.net/tracker/index.php?func=detail&aid=2582013&group_id=151404&atid=780913
Reference: BID:33873
Reference: URL:http://www.securityfocus.com/bid/33873
Reference: SECUNIA:34035
Reference: URL:http://secunia.com/advisories/34035
Reference: VUPEN:ADV-2009-0510
Reference: URL:http://www.vupen.com/english/advisories/2009/0510
Reference: XF:optipng-gifreadnextextension-code-execution(48879)
Reference: URL:http://xforce.iss.net/xforce/xfdb/48879

Use-after-free vulnerability in the GIFReadNextExtension function in
lib/pngxtern/gif/gifread.c in OptiPNG 0.6.2 and earlier allows
context-dependent attackers to cause a denial of service (application
crash) via a crafted GIF image that causes the realloc function to
return a new pointer, which triggers memory corruption when the old
pointer is accessed.


