X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/29/2
Message-ID: <9cf178b1-ac5a-111c-0784-622d3743845d@apache.org>
Date: Wed, 29 Mar 2023 11:29:40 +0000
From: Olivier Lamy <olamy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-28158: Apache Archiva privilege escalation 
Content-Type: text/plain; charset=utf-8

Description:

Privilege escalation via stored XSS using the file upload service to upload malicious content.
The issue can be exploited only by authenticated users which can create directory name to inject some XSS content and gain some privileges such admin user.

This issue is being tracked as n/a 

Credit:

sandr0 (sandr0.xyz)  (finder)

References:

https://archiva.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-28158
https://issues.apache.org/jira/browse/n/a

