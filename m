X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/27/16
Message-ID: <Pine.LNX.4.64.1501271306190.11165@beijing.mitre.org>
Date: Tue, 27 Jan 2015 13:07:25 -0500 (EST)
From: cve-assign@...re.org
To: Patrick William <pat@...k911labs.com>
cc: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: Re: CVE Request: Webmin & Usermin - Read Mail Module Vulnerability
Content-Type: text/plain; charset=utf-8


> I need to request 2 CVE's; one for Usermin and one for Webmin.
>
> Both of them are vulnerable to a hardlink arbitrary file access within the 
> Read Mail Module. The end result is the ability to open any file on the 
> server, including root owned files, which could lead to a privilege 
> escalation.
>
> Reference: http://www.webmin.com/index.html
>
> "January 1: Webmin 1.730 and Usermin 1.640 released - This update includes 
> security fixes to produce against malicious links in the Read Mail module..."
>
> Thanks!

Only one identifier is needed.  Use CVE-2015-1377.

---

CVE assignment team, MITRE CVE Numbering Authority M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
