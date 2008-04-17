X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/17/9
Message-ID: <Pine.GSO.4.51.0804171307380.3756@faron.mitre.org>
Date: Thu, 17 Apr 2008 13:07:53 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: tss <= 0.8.1-3: arbitary file reading
Content-Type: text/plain; charset=utf-8


On Thu, 17 Apr 2008, Nico Golde wrote:

> Steve (the mitre one :) did you miss that?

yes, but I didn't miss this anyway :)

======================================================
Name: CVE-2008-1877
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-1877
Reference: CONFIRM:http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=475747

tss 0.8.1 allows local users to read arbitrary files via the -a
parameter, which is processed while tss is running with privileges.


