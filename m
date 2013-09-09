X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/09/09/13
Message-ID: <87zjrln2ky.fsf@mid.deneb.enyo.de>
Date: Mon, 09 Sep 2013 22:48:45 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request : NAS v1.9.3 multiple Vulnerabilites
Content-Type: text/plain; charset=utf-8

* Kurt Seifried:

> Format String please use CVE-2013-4258

This was actually fixed in r285, before the report:

http://sourceforge.net/mailarchive/forum.php?thread_name=E1Rp1rP-00038Z-VJ%40sfp-svn-6.v30.ch3.sourceforge.com&forum_name=nas-commits

In case someone else is wondering why there hasn't been a recent
commit fixing a format string issue. :-)
