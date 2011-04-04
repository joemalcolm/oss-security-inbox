X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/04/34
Message-ID: <27335096.369043.1301938468030.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 4 Apr 2011 13:34:28 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com, Petr Matousek <pmatouse@...hat.com>
Cc: coley@...us.mitre.org
Subject: Re: CVE request: libvirt: error reporting in libvirtd is not thread safe
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> "It has been found that when several libvirtd threads are
> reporting errors at the same time, the errors can get mixed
> or corrupted, potentially leading to a libvirtd crash (DoS)."
> 
> Reference:
> https://bugzilla.redhat.com/show_bug.cgi?id=693391
> https://www.redhat.com/archives/libvir-list/2011-March/msg01087.html
> 

Please use CVE-2011-1486.

Thanks.

-- 
    JB
