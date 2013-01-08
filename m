X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/08/6
Message-ID: <20130108125640.GA22501@suse.de>
Date: Tue, 8 Jan 2013 13:56:40 +0100
From: Sebastian Krahmer <krahmer@...e.de>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: CVE Request: cronie fd leak
Content-Type: text/plain; charset=utf-8

"Hello Kurt, Steve, vendors,"

cronie leaks read-only fd's, please check here:

https://bugzilla.novell.com/show_bug.cgi?id=786096

can someone assign a CVE?

thanks,
Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@...e.de - SuSE Security Team

