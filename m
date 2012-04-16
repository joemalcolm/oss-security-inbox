X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/16/1
Message-ID: <4F8BAE07.9010803@redhat.com>
Date: Mon, 16 Apr 2012 10:58:39 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
CC: jpff@...bath.ac.uk
Subject: CVE Requests: Multiple security flaws in csound5
Content-Type: text/plain; charset=utf-8

Hi Folks,

Multiple security flaws were reported in csound5, details below.
Can CVE ids be please assigned to these issues?

1. Integer overflow leading to buffer overflow in pv_import
Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=810802
http://secunia.com/secunia_research/2012-7/
There seems to be two patches for this issue. The earlier fix was
incomplete and a second patch had to be applied later.

2. Integer overflow leading to buffer overflow in lpc_import
Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=810807
http://secunia.com/secunia_research/2012-6/
Though the commit date does not match up with the date described in the
secunia advisory, this is the only commit which seems to match the flaw
description.

3. Stack-based buffer overflow in lpc_import
Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=810810
http://secunia.com/secunia_research/2012-4/


John, Can you please review the patches and let us know if they are
correct?

Thanks!

-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
