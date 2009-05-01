X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/05/01/1
Message-ID: <87my9xryav.fsf@mid.deneb.enyo.de>
Date: Fri, 01 May 2009 11:02:16 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: CVE request (sort of): Quagga BGP crasher
Content-Type: text/plain; charset=utf-8

There's a crasher bug in Quagga's bgpd which can allegedly be
triggered by routes present in the global table.  See:

  <http://thread.gmane.org/gmane.network.quagga.devel/6513>

I think we need a CVE for that, but I don't understand the problem yet
(and I can't reproduce it), so I can't come up with a concise
vulnerability description.
