X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/24/3
Message-ID: <Pine.GSO.4.51.0809232241350.14140@faron.mitre.org>
Date: Tue, 23 Sep 2008 22:41:43 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: pdnsd <1.2.7 Denial of Service
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-4194
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-4194
Reference: CONFIRM:http://www.phys.uu.nl/~rombouts/pdnsd.html
Reference: CONFIRM:http://www.phys.uu.nl/~rombouts/pdnsd/ChangeLog
Reference: FRSIRT:ADV-2008-2582
Reference: URL:http://www.frsirt.com/english/advisories/2008/2582

The p_exec_query function in src/dns_query.c in pdnsd before 1.2.7-par
allows remote attackers to cause a denial of service (daemon crash)
via a long DNS reply with many entries in the answer section, related
to a "dangling pointer bug."


