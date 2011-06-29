X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/29/14
Message-ID: <18104020.1024492.1309377425735.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 29 Jun 2011 15:57:05 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: libvirt: integer overflow in VirDomainGetVcpus
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-2511.

Thanks.

-- 
    JB


----- Original Message -----
> It has been found that calling VirDomainGetVcpus with bogus parameters
> can lead to integer overflow and subsequent heap corruption. A remote
> attacker could use this flaw to crash libvirtd (DoS).
> 
> Upstream patch:
> https://www.redhat.com/archives/libvir-list/2011-June/msg01278.html
> 
> References:
> https://bugzilla.redhat.com/show_bug.cgi?id=717199
> https://www.redhat.com/archives/libvir-list/2011-June/msg01278.html
> 
> Thanks,
> --
> Petr Matousek / Red Hat Security Response Team
