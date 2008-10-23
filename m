X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/10/23/2
Message-ID: <1891015626.2906441224784905538.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 23 Oct 2008 14:01:45 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE Request (netpbm)
Content-Type: text/plain; charset=utf-8

----- "Josh Bressers" <bressers@...hat.com> wrote:
> I've not seen this assigned yet, it is a bit old, sorry for the
> delay.
> 
> We noticed this via a Fedora update:
> https://admin.fedoraproject.org/updates/F9/FEDORA-2008-6999
> 
>     update to 10.35.48, fixes buffer overrun in pamperspective and
> pngtopnm output
>     format
> 

OK, I spent some time trying to figure this one out, and mailed upstream about it.  That message from Fedora is misleading and wrong.  The commit in question fixes an OOB memory read, which we won't consider a security flaw.

Sorry for sending this request before I'd done a proper investigation.

-- 
    JB
