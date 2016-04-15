X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/15/1
Message-ID: <1850328.TsBv7S8R4o@ohm.usersys.redhat.com>
Date: Fri, 15 Apr 2016 15:56:45 -0400
From: Randy Barlow <rbarlow@...hat.com>
To: OSS Security <oss-security@...ts.openwall.com>
Cc: cve-assign@...re.org
Subject: CVE request - Pulp < 2.3.0 shipped the same authentication CA key/cert to all users
Content-Type: text/plain; charset=utf-8

Hello!

It was raised to my attention that a security issues that was resolved in 
Pulp 3 years ago should have had a CVE assigned to it:

https://bugzilla.redhat.com/show_bug.cgi?id=1003326

To summarize, all Pulp users used the same internal CA key and cert for 
versions of Pulp < 2.3.0. This CA is used to generate a client certificate 
during the /login API call, and is trusted by httpd to authenticate users.

Though the issue is now long resolved, we would like a CVE number 
assigned to it for reference. Thanks!
Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
