X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/29/4
Message-Id: <8A23CEFE-CFC4-4A8A-B9C0-997DCEA27A8A@apache.org>
Date: Tue, 28 Aug 2018 15:39:43 -0700
From: Bryan Call <bcall@...che.org>
To: announce@...fficserver.apache.org, dev <dev@...fficserver.apache.org>, users <users@...fficserver.apache.org>, security@...fficserver.apache.org, oss-security@...ts.openwall.com
Subject: [ANNOUNCE] Apache Traffic Server vulnerability with multi-range requests - CVE-2018-8005 
Content-Type: text/plain; charset=utf-8

CVE-2018-8005: Apache Traffic Server vulnerability with multi-range requests

Vendor:
The Apache Software Foundation

Version Affected:
ATS 6.0.0 to 6.2.2
ATS 7.0.0 to 7.1.3

Description:
When the there are multiple ranges in a range request ATS will read the entire object from cache.  This can cause performance problems with large objects in cache.

Mitigation:
6.x users should upgrade to 6.2.3 or later versions
7.x users should upgrade to 7.1.4 or later versions

References:
	Downloads:
		https://trafficserver.apache.org/downloads
	Github Pull Request:
		https://github.com/apache/trafficserver/pull/3106
		https://github.com/apache/trafficserver/pull/3124
	CVE:
		https://cve.mitre.org/cgi-bin/cvename.cgi?name=2018-8005

-Bryan



