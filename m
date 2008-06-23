X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/06/23/4
Message-ID: <Pine.GSO.4.51.0806231427400.1760@faron.mitre.org>
Date: Mon, 23 Jun 2008 14:27:51 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: tmsnc
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-2828
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-2828
Reference: CONFIRM:http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=487222

Stack-based buffer overflow in tmsnc allows remote attackers to cause
a denial of service (crash) and possibly execute arbitrary code via an
MSN packet with a UBX commands containing a large UBX payload length
field.


