X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/02/3
Message-ID: <20120802113706.GB7726@suse.de>
Date: Thu, 2 Aug 2012 13:37:06 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: php5 pdo array overread/crash
Content-Type: text/plain; charset=utf-8

Hi,

I think this issue does not have a CVE id yet as far as I can see:

Prepared statements in PHP5 pdo can be used to cause an array overread
and crash of the php5 interpreter instance.

References:
	Report on Bugtraq: http://seclists.org/bugtraq/2012/Jun/60
	Upstream PHP bug (including testcase) available at: https://bugs.php.net/bug.php?id=61755
	https://bugzilla.novell.com/show_bug.cgi?id=769785

Ciao, Marcus
-- 
Open Linux Security Engineer Position at SUSE: http://bit.ly/Li4RbS
