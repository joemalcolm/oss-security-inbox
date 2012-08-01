X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/01/1
Message-ID: <1343825896.32192.91.camel@mdlinux>
Date: Wed, 01 Aug 2012 08:58:16 -0400
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: coley@...us.mitre.org
Cc: oss-security@...ts.openwall.com, security@...ntu.com
Subject: CVE Request: NVidia Linux driver
Content-Type: text/plain; charset=utf-8

Hello,

Could a CVE please be assigned to the following issue:

The binary NVidia Linux driver allows local users to access arbitrary
memory locations by leveraging GPU device-node read/write privileges,
and escalate privileges to root. Possibly an incomplete fix for
CVE-2012-0946.

See:

http://seclists.org/fulldisclosure/2012/Aug/4

Thanks,

Marc.





