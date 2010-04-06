X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/06/2
Message-ID: <2026309239.406031270515782435.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 5 Apr 2010 21:03:02 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: cifs: cifs_create() NULL pointer dereference
Content-Type: text/plain; charset=utf-8


----- "Eugene Teo" <eugeneteo@...nel.sg> wrote:

> Reported by Eugene Teo. While creating a file on a server which
> supports 
> Unix extensions such as Samba, if a file being created does not supply
> 
> nameidata (i.e. nd is NULL), cifs client can trigger a NULL pointer 
> dereference when calling cifs_posix_open().
> 
> http://comments.gmane.org/gmane.linux.file-systems.cifs/5782
> https://bugzilla.redhat.com/579445
> 

Please use CVE-2010-1148

Thanks.

-- 
    JB
