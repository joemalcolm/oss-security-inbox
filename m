X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/24/5
Message-ID: <Pine.GSO.4.51.0812241254080.12707@faron.mitre.org>
Date: Wed, 24 Dec 2008 12:54:14 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re:  CVE id request: verlihub
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-5706
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-5706
Reference: MILW0RM:7183
Reference: URL:http://www.milw0rm.com/exploits/7183
Reference: MLIST:[oss-security] 20081216 CVE id request: verlihub
Reference: URL:http://openwall.com/lists/oss-security/2008/12/17/16
Reference: MISC:http://bugs.debian.org/506530

The cTrigger::DoIt function in src/ctrigger.cpp in the trigger
mechanism in the daemon in Verlihub 0.9.8d-RC2 and earlier allows
local users to overwrite arbitrary files via a symlink attack on the
/tmp/trigger.tmp temporary file.


