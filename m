X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/18/6
Message-ID: <Pine.GSO.4.51.0807181148300.17955@faron.mitre.org>
Date: Fri, 18 Jul 2008 11:48:34 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: op
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-3229
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-3229
Reference: MLIST:[oss-security] 20080712 CVE id request: op
Reference: URL:http://www.openwall.com/lists/oss-security/2008/07/12/4
Reference: CONFIRM:http://swapoff.org/changeset/563

Stack-based buffer overflow in op before Changeset 563, when xauth
support is enabled, allows local users to gain privileges via a long
XAUTHORITY environment variable.


