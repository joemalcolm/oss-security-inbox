X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/29/3
Message-Id: <6371D290-EB1B-44E6-97D0-DCBF27ACAFA1@apache.org>
Date: Tue, 28 Aug 2018 15:39:48 -0700
From: Bryan Call <bcall@...che.org>
To: announce@...fficserver.apache.org, dev <dev@...fficserver.apache.org>, users <users@...fficserver.apache.org>, security@...fficserver.apache.org, oss-security@...ts.openwall.com
Subject: [ANNOUNCE] Apache Traffic Server vulnerability with method ACLs - CVE-2018-1318 
Content-Type: text/plain; charset=utf-8

CVE-2018-1318: Apache Traffic Server vulnerability with method ACLs

Reported By:
Leif Hedstrom

Vendor:
The Apache Software Foundation

Version Affected:
ATS 6.0.0 to 6.2.2
ATS 7.0.0 to 7.1.3

Description:
Adding method ACLs in remap.config can cause a segfault when the user makes a carefully crafted request. 

Mitigation:
6.x users should upgrade to 6.2.3 or later versions
7.x users should upgrade to 7.1.4 or later versions


References:
	Downloads:
		https://trafficserver.apache.org/downloads
	Github Pull Request:
		https://github.com/apache/trafficserver/pull/3195
	CVE:
		https://cve.mitre.org/cgi-bin/cvename.cgi?name=2018-1318

-Bryan



