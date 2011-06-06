X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/06/4
Message-ID: <4DECA2C9.6050402@redhat.com>
Date: Mon, 06 Jun 2011 11:50:01 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request -- LuaExpat -- Prone to XML "billion laughs attack"
Content-Type: text/plain; charset=utf-8

Hello, Josh, Steve, vendors,

   It was found that LuaExpat, a SAX XML parser based on the Expat
library, is prone to XML "billion laughs attack", as described in:
[1] 
http://www.ibm.com/developerworks/xml/library/x-tipcfsx/index.html#N100F1

A remote attacker could provide a specially-crafted XML file, which
once opened in an application, linked against LuaExpat, could cause
that application to crash.

References:
[2] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=629225
[3] http://matthewwild.co.uk/projects/luaexpat/luaexpat-1.2.0.tar.gz
[4] https://bugzilla.redhat.com/show_bug.cgi?id=711027

Could you allocate a CVE id for this?

Thank you & Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
