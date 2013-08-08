X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/08/5
Message-ID: <1110336290.13184628.1375949800967.JavaMail.root@redhat.com>
Date: Thu, 8 Aug 2013 04:16:40 -0400 (EDT)
From: David Jorm <djorm@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE request: remote code execution due to XML deserialization in Restlet
Content-Type: text/plain; charset=utf-8

Dinis Cruz has published information on remote code execution due to XML deserialization in Restlet:

http://blog.diniscruz.com/2013/08/using-xmldecoder-to-execute-server-side.html
https://github.com/o2platform/DefCon_RESTing

I have tested his reproducer and confirmed it works against Restlet 2.0 and 2.2. Please assign a CVE ID to this flaw.

Thanks
-- 
David Jorm / Red Hat Security Response Team

