X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/24/3
Message-ID: <20110924140819.GR1502@redhat.com>
Date: Sat, 24 Sep 2011 08:08:19 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: heap-based buffer overflow in ldns
Content-Type: text/plain; charset=utf-8

Could a CVE be assigned to this flaw?  A boundary error in
ldns_rr_new_frm_str_internal() could lead to a heap-based buffer overfow
when processing RR records.

http://www.nlnetlabs.nl/bugs-script/show_bug.cgi?id=403
https://secunia.com/advisories/46153/
https://bugzilla.redhat.com/show_bug.cgi?id=741024

Thanks.

-- 
Vincent Danen / Red Hat Security Response Team 
