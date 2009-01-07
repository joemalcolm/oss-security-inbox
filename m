X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/07/11
Message-ID: <Pine.GSO.4.51.0901071357270.15738@faron.mitre.org>
Date: Wed, 7 Jan 2009 13:57:46 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: Tomas Hoger <thoger@...hat.com>, coley@...re.org
Subject: Re: CVE request - pdfjam
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-5843
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-5843
Reference: MLIST:[oss-security] 20081228 Re: CVE request - pdfjam
Reference: URL:http://openwall.com/lists/oss-security/2008/12/28/3
Reference: CONFIRM:https://bugs.gentoo.org/show_bug.cgi?id=252734

Multiple untrusted search path vulnerabilities in pdfjam allow local
users to gain privileges via a Trojan horse program in (1) the current
working directory or (2) /var/tmp, related to the (a) pdf90, (b)
pdfjoin, and (c) pdfnup scripts.


