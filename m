X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/11/3
Message-ID: <20130211111258.GB30292@kludge.henri.nerv.fi>
Date: Mon, 11 Feb 2013 13:12:58 +0200
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Subject: CVE request: Trac Ticket Modification Workflow Permission Restriction Bypass
Content-Type: text/plain; charset=utf-8

Hello,

>From Secunia: A security issue has been reported in Trac, which can be exploited
by malicious users to bypass certain security restrictions. The security issue
is caused due to the application not properly checking workflow permissions
before modifying a ticket, which can be exploited to change the status and
resolution of tickets without having proper permissions.

http://secunia.com/advisories/39123/
http://osvdb.org/show/osvdb/63317

The security issue is reported in versions prior to 0.11.7.
http://trac.edgewall.org/wiki/ChangeLog#a0.11.7

Could you assign CVE-2010-XXXX, thank you. Please double verify this hasn't been
assigned. I tried my best to avoid duplicates :)

--
Henri Salo
