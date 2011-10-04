X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/04/8
Message-ID: <cf622826-4695-4ee2-9a6d-e9ba08523080@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 04 Oct 2011 14:10:21 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Juliusz Chroboczek <jch@....jussieu.fr>
Subject: Re: CVE Request -- Polipo -- Assertion failure by processing certain HTTP POST / PUT requests
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-3596

Thanks.

-- 
    JB

----- Original Message -----
> Hello Josh, Steve, vendors,
> 
>    a denial of service flaw was found in the way Polipo, a
>    lightweight
> caching web proxy, processed certain HTTP POST / PUT requests. If
> polipo was configured to allow remote client connections and
> particular
> host was allowed to connect to polipo server instance, a remote
> attacker could use this flaw to cause denial of service (polipo
> daemon
> abort due to assertion failure) via specially-crafted HTTP POST / PUT
> request.
> 
> References:
> [1] http://seclists.org/fulldisclosure/2011/Oct/10
> [2] https://bugs.gentoo.org/show_bug.cgi?id=385307
> [3] https://bugzilla.redhat.com/show_bug.cgi?id=742891
> 
> Could you allocate a CVE id for this?
> 
> Thank you && Regards, Jan.
> --
> Jan iankko Lieskovsky / Red Hat Security Response Team
> 
