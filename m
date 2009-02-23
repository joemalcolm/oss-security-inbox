X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/02/23/1
Message-ID: <87wsbgommq.fsf@mid.deneb.enyo.de>
Date: Mon, 23 Feb 2009 22:43:09 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: CVE request: mldonkey arbitrary file download vulnerability
Content-Type: text/plain; charset=utf-8

mldonkey in version 2.9.7 and earlier permits remote attackers to
download arbitrary files accessible to the mldonkey daemon, using
crafted requests to the HTTP console.

<https://savannah.nongnu.org/bugs/?25667>

(The proposed patch deals with this in a rather odd place.)
