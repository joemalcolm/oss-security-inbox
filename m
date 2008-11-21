X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/11/21/5
Message-ID: <Pine.GSO.4.51.0811202034580.20524@faron.mitre.org>
Date: Thu, 20 Nov 2008 20:35:31 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: imlib2
Content-Type: text/plain; charset=utf-8


SECUNIA:32796 suggests a Debian bug report, but I couldn't quickly find
it.

======================================================
Name: CVE-2008-5187
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-5187
Reference: MLIST:[oss-security] 20081120 CVE Request: imlib2
Reference: URL:http://www.openwall.com/lists/oss-security/2008/11/20/5
Reference: SECUNIA:32796
Reference: URL:http://secunia.com/advisories/32796

The load function in the XPM loader for imlib2 1.4.2, and possibly
other versions, allows attackers to execute arbitrary code via a
crafted XPM file that triggers a "pointer arithmetic error" and a
heap-based buffer overflow, a different vulnerability than
CVE-2008-2426.  NOTE: the provenance of this information is unknown;
the details are obtained solely from third party information.


