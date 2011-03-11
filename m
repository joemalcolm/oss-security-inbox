X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/11/1
Message-ID: <4D79BC8D.7080004@redhat.com>
Date: Fri, 11 Mar 2011 14:09:17 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE-2011-0695 kernel: panic in ib_cm:cm_work_handler
Content-Type: text/plain; charset=utf-8

This was reported by a customer, Jens Kuehnel.

[PATCH 1/2] rdma/cm: Fix crash in request handlers
http://www.spinics.net/lists/linux-rdma/msg07447.html
[PATCH 2/2] ib/cm: Bump reference count on cm_id before invoking callback
http://www.spinics.net/lists/linux-rdma/msg07448.html

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=653648

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
