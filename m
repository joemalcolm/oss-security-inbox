X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/21/2
Message-ID: <Pine.GSO.4.51.0901202024500.22454@faron.mitre.org>
Date: Tue, 20 Jan 2009 20:24:54 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Re: CVE request - horde XSS
Content-Type: text/plain; charset=utf-8



======================================================
Name: CVE-2008-5917
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-5917
Reference: MLIST:[announce] Horde 3.2.3 (final)
Reference: URL:http://lists.horde.org/archives/announce/2008/000462.html
Reference: MLIST:[announce] Horde 3.3.1 (final)
Reference: URL:http://lists.horde.org/archives/announce/2008/000464.html
Reference: CONFIRM:http://cvs.horde.org/diff.php/framework/Text_Filter/Filter/xss.php?r1=1.17&r2=1.18

Cross-site scripting (XSS) vulnerability in the XSS filter
(framework/Text_Filter/Filter/xss.php) in Horde Application Framework
3.2.2 and 3.3, when Internet Explorer is being used, allows remote
attackers to inject arbitrary web script or HTML via unknown vectors
related to style attributes.


