X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/18/2
Message-ID: <Pine.GSO.4.51.0807181144510.17955@faron.mitre.org>
Date: Fri, 18 Jul 2008 11:44:56 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: projectl
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-3216
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-3216
Reference: MLIST:[oss-security] 20080709 CVE id request: projectl
Reference: URL:http://www.openwall.com/lists/oss-security/2008/07/09/8
Reference: CONFIRM:http://bugs.debian.org/489988

The save function in br/prefmanager.d in projectl 1.001 creates a
projectL.prf file in the current working directory, which allows local
users to overwrite arbitrary files via a symlink attack.


