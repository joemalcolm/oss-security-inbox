X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/19/11
Message-ID: <4E25A123.8010302@redhat.com>
Date: Tue, 19 Jul 2011 17:22:11 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security@...ts.openwall.com, Even Rouault <even.rouault@...es-paris.org>, Pavel Lisý <pavel.lisy@...il.com>
Subject: CVE Request -- MapServer -- SQL injections in OGC filter encoding and in WMS time support.
Content-Type: text/plain; charset=utf-8

Hello Josh, Steve, vendors,

   the following has been brought to our attention:
   [1] https://bugzilla.redhat.com/show_bug.cgi?id=722545
   [2] http://trac.osgeo.org/mapserver/ticket/3903

More from [2]:

This ticket is to track fixes to prevent SQL injections through OGC 
filter encoding (in WMS, WFS and SOS), as well as a potential SQL 
injection in WMS time support.

Your system may be vulnerable if it has MapServer with OGC protocols 
enabled, with layers connecting to an SQL RDBMS backend, either natively 
or via OGR.

All versions of MapServer 4.x, 5.x and 6.x are potentially vulnerable. 
All users are ** strongly encouraged ** to upgrade to one of the latest 
releases with the fixes.

Could you allocate a CVE id for this?

Thank you && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
