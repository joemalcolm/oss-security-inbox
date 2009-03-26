X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/26/2
Message-ID: <Pine.GSO.4.51.0903252114130.11191@faron.mitre.org>
Date: Wed, 25 Mar 2009 21:14:17 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: Steven Christey <coley@...us.mitre.org>
Subject: Re: CVE request: API key disclosure in piwik
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2009-1085
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-1085
Reference: MLIST:[oss-security] 20090323 CVE request: API key disclosure in piwik
Reference: URL:http://www.openwall.com/lists/oss-security/2009/03/23/2
Reference: MISC:http://marco-ziesing.de/archives/35-Schluesselloch-in-Piwik.html
Reference: CONFIRM:http://dev.piwik.org/trac/ticket/599

Piwik 0.2.32 and earlier stores sensitive information under the web
root with insufficient access control, which allows remote attackers
to obtain the API key and other sensitive information via a direct
request for misc/cron/archive.sh.


