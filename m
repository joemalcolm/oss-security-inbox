X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/02/5
Message-ID: <1130385152.449852.1307045020774.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 2 Jun 2011 16:03:40 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: Re: CVE request -- libvirt: regression introduced in disk probe logic
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Hello Steve, vendors.
> 
> Description:
> Regression introduced in commit d6623003 (v0.8.8) - using the
> wrong sizeof operand meant that security manager private data
> was overlaying the allowDiskFOrmatProbing member of struct
> _virSecurityManager. This reopens disk probing, which was
> supposed to be prevented by the solution to CVE-2010-2238.
> 
> References:
> https://www.redhat.com/archives/libvir-list/2011-May/msg01935.html
> https://bugzilla.redhat.com/show_bug.cgi?id=709769
> 

Please use CVE-2011-2178

Thanks.

-- 
    JB
