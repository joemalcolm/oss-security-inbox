X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/30/2
Message-ID: <785033fe-2bbf-4880-b471-7dde04bc926a@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 30 Sep 2011 10:36:04 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: heap-based buffer overflow in ldns
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-3581 for this.

Thanks.

-- 
    JB

----- Original Message -----
> Could a CVE be assigned to this flaw?  A boundary error in
> ldns_rr_new_frm_str_internal() could lead to a heap-based buffer
> overfow
> when processing RR records.
> 
> http://www.nlnetlabs.nl/bugs-script/show_bug.cgi?id=403
> https://secunia.com/advisories/46153/
> https://bugzilla.redhat.com/show_bug.cgi?id=741024
> 
> Thanks.
> 
> --
> Vincent Danen / Red Hat Security Response Team
> 
