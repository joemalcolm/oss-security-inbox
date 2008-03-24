X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/24/1
Message-Id: <1206353623.30020.10.camel@localhost.localdomain>
Date: Mon, 24 Mar 2008 11:13:43 +0100
From: Lubomir Kundrak <lkundrak@...hat.com>
To: Secunia Research <vuln@...unia.com>
Cc: oss-security@...ts.openwall.com
Subject: SA29489 CenterIM URL handling flaw
Content-Type: text/plain; charset=utf-8

Hi,

Ad SA29489 [1] "CenterIM URL Parsing Command Execution Vulnerability"

CenterIM does completely nothing with received URLs. Maybe the
unfortuate "exploit writer" was using XFCE Terminal [2], or a terminal
emulator with a similar problem.

[1] http://secunia.com/advisories/29489/
[2] http://bugzilla.xfce.org/show_bug.cgi?id=3383

-- 
Lubomir Kundrak (Red Hat Security Response Team)

