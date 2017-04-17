X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/17/7
Message-Id: <E3256204-9440-4DDA-9E00-A65C5A4DA022@apache.org>
Date: Mon, 17 Apr 2017 16:09:08 -0700
From: Bryan Call <bcall@...che.org>
To: dev <dev@...fficserver.apache.org>, users@...fficserver.apache.org, announce@...fficserver.apache.org, security@...fficserver.apache.org, oss-security@...ts.openwall.com, bugtraq@...urityfocus.com, Masaori Koshiba <masaori@...che.org>
Subject: [ANNOUNCE] HPACK Bomb Attack vulnerability in ATS - CVE-2016-5396
Content-Type: text/plain; charset=utf-8

There is a vulnerability in ATS with the HPACK Bomb Attack that can lead to a DoS.  Versions 6.0.0 to 6.2.0 are affected.  Please upgrade to ATS 6.2.1 or 7.0.0.

Downloads:
	https://trafficserver.apache.org/downloads

Jira Ticket:
	ttps://issues.apache.org/jira/browse/TS-5019

CVE
	https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2016-5396

-Bryan

