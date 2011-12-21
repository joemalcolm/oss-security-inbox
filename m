X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/21/2
Message-ID: <4EF2572B.4050506@redhat.com>
Date: Wed, 21 Dec 2011 15:01:15 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
Subject: plib ulSetError() buffer overflow - CVE-2011-4620
Content-Type: text/plain; charset=utf-8

https://secunia.com/advisories/47297/
http://plib.sourceforge.net/index.html
http://www.exploit-db.com/exploits/18258/

 From Secunia:

======================
*Description*
A vulnerability has been discovered in PLIB, which can be exploited by 
malicious people to compromise an application using the library.

The vulnerability is caused due to a boundary error within the 
"ulSetError()" function (src/util/ulError.cxx) when creating the error 
message, which can be exploited to overflow a static buffer.

Successful exploitation allows the execution of arbitrary code but 
requires that the attacker can e.g. control the content of an overly 
long error message passed to the "ulSetError()" function.

The vulnerability is confirmed in version 1.8.5. Other versions may also 
be affected.
======================

Please use CVE-2011-4620 for this issue.

-- 

-Kurt Seifried / Red Hat Security Response Team


