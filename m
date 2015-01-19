X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/19/3
Message-ID: <54BD49CE.5050609@rack911labs.com>
Date: Mon, 19 Jan 2015 14:15:42 -0400
From: Patrick William <pat@...k911labs.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: Webmin & Usermin - Read Mail Module Vulnerability
Content-Type: text/plain; charset=utf-8

Hi,

I need to request 2 CVE's; one for Usermin and one for Webmin.

Both of them are vulnerable to a hardlink arbitrary file access within 
the Read Mail Module. The end result is the ability to open any file on 
the server, including root owned files, which could lead to a privilege 
escalation.

Reference: http://www.webmin.com/index.html

"January 1: Webmin 1.730 and Usermin 1.640 released - This update 
includes security fixes to produce against malicious links in the Read 
Mail module..."

Thanks!

Patrick
