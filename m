X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/07/07/1
Message-ID: <Pine.GSO.4.51.0907071654330.14418@faron.mitre.org>
Date: Tue, 7 Jul 2009 16:54:53 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Re: nagios: remote code execution
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2009-2288
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-2288
Reference: CONFIRM:http://tracker.nagios.org/view.php?id=15
Reference: CONFIRM:http://www.nagios.org/development/history/core-3x/
Reference: SECUNIA:35543
Reference: URL:http://secunia.com/advisories/35543

statuswml.cgi in Nagios before 3.1.1 allows remote attackers to
execute arbitrary commands via shell metacharacters in the (1) ping or
(2) Traceroute parameters.


