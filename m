X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/05/22/3
Message-ID: <Pine.GSO.4.51.0805220159510.15003@faron.mitre.org>
Date: Thu, 22 May 2008 02:01:05 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: Jonathan Smith <smithj@...ethemallocs.com>, chris@...ry.beasts.org
Subject: Re: vsftpd CVE-2007-5962 (Red Hat / Fedora specific)
Content-Type: text/plain; charset=utf-8


On Wed, 21 May 2008, Josh Bressers wrote:

> The leak is CVE-2007-5962.  deny_hosts not working did not get a CVE id.

Should it?  If an admin configures deny_hosts in some fashion that vsftpd
doesn't implement correctly, that might be worthy of a CVE.

- Steve
