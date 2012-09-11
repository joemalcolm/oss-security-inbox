X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/09/11/9
Message-ID: <Pine.GSO.4.64.1209111726360.22593@faron.mitre.org>
Date: Tue, 11 Sep 2012 17:37:11 -0400 (EDT)
From: "Steven M. Christey" <coley@...-smtp.mitre.org>
To: oss-security@...ts.openwall.com
cc: "Steven M. Christey" <coley@...-smtp.mitre.org>, Florian Weimer <fweimer@...hat.com>, Oracle Security Team <secalert_us@...cle.com>
Subject: Re: CVE Request (minor) -- JVM: heap memory disclosure (possibly various JDKs)
Content-Type: text/plain; charset=utf-8


Jan/Kurt,

The bug report appears to be describing a narrow class of vulnerability 
that could affect multiple codebases that implement Java Virtual Machines, 
not just Oracle's; if so, then a separate CVE would be needed for each 
REPORTED codebase, and CVE-2012-4416 is ONLY for bug id 7196857 for the 
Oracle-supported JVM.

I wonder about the severity of the issue, but given the possibility that 
applications might access an array before a fill, and applications may 
depend on there being "empty" elements after initialization, this seems 
reasonable for a CVE.

- Steve
