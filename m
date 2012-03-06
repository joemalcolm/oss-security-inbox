X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/06/3
Message-ID: <20120306073122.GA12833@foo.fgeek.fi>
Date: Tue, 6 Mar 2012 09:31:22 +0200
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Subject: CVE-request: Kish Guest Posting Plugin for WordPress File Upload Remote PHP Code Execution
Content-Type: text/plain; charset=utf-8

Can we assign CVE-identifier for this security vulnerability, thanks.

http://osvdb.org/show/osvdb/78479
http://www.securityfocus.com/bid/51638
http://secunia.com/advisories/47688/
http://www.exploit-db.com/exploits/18412/

Plugin is disabled in WordPress (doesn't show up in http://wordpress.org/extend/plugins/), but SVN can be found from here: http://plugins.svn.wordpress.org/kish-guest-posting/trunk/

File http://plugins.svn.wordpress.org/kish-guest-posting/trunk/readme.txt says:

"""
= 1.2 =
security update for Uploadify Script
"""

But I haven't tested (yet) if that is valid fix for the vulnerability.

- Henri Salo
