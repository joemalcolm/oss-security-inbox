X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/23/10
Message-ID: <20120323161320.GD28663@suse.de>
Date: Fri, 23 Mar 2012 17:13:20 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Cc: inestlerode@...ibm.com
Subject: openssl security issue or not? (CVE Request?)
Content-Type: text/plain; charset=utf-8

Hi folks, Ivan,

This patch:
http://cvs.openssl.org/chngview?cn=22161
fixes a decrypt error return values and according to the changelog
"detects symmetric crypto errors" 

I am not sure if this counts as security issue in the end, but "not
detecting a failed decrypt" seems to me like it is a security issue.

Any comments?

Ciao, Marcus
(also https://bugzilla.novell.com/show_bug.cgi?id=749210 )
