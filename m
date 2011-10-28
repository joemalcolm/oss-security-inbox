X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/28/15
Message-ID: <c0ed7b0e-5668-4bfc-928b-c0fabf9a92da@zmail15.collab.prod.int.phx2.redhat.com>
Date: Fri, 28 Oct 2011 11:37:46 -0400 (EDT)
From: Ramon de C Valle <rcvalle@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: openldap2 UTF8StringNormalize() can cause a (one-byte) buffer overflow
Content-Type: text/plain; charset=utf-8

> > |I wonder if this is really security relevant as it seem the worst
> > |that might
> > |happen is that an authenticated user can crash the daemon. I was
> > |not able to do
> > |so during a short test but I guess that is just a matter of trying
> > |long enough.
Doug Lea's Malloc stores chunks whose size is small than 512 bytes in one of the small bins, which holds identically sized chunks. The size of a chunk is always a multiple of 8 bytes, and the first small bin holds 16 bytes chunks. Since the minimum allocated size is 16 bytes, it seems no data that can result in application crash can be overwritten as a result of this.


-- 
Ramon de C Valle / Red Hat Security Response Team
