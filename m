X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/31/1
Message-ID: <87k5dxtp36.fsf@mid.deneb.enyo.de>
Date: Sun, 31 Aug 2008 13:13:01 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: GNU ed heap overflow
Content-Type: text/plain; charset=utf-8

Can we get a CVE for this?  The overflow is in the command line
processing, and also affects the red command.

| Alfredo Ortega from Core Security Technologies has found that GNU Ed
| is vulnerable to a heap overflow.

<http://lists.gnu.org/archive/html/bug-ed/2008-06/msg00000.html>
