X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/08/27
Message-ID: <2122975425.60510606.1412808272904.JavaMail.zimbra@redhat.com>
Date: Wed, 8 Oct 2014 18:44:32 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: openssh on linux rce in sftp-only mode
Content-Type: text/plain; charset=utf-8

> > 
> > I think one has to assume if a user has unrestricted sftp access, they can
> > figure out how to do most anything. Even with the upstream hardening patch,
> > it really only protects the sftpd process. Any other processes the user may
> > own could be modified.
> 
> Not that easily - /proc/$pid/mem requires you to either be the same process
> or be attached to it via ptrace, I think.
> 

I can't speak for other systems (I don't understand the details), but I can
read arbitrary process memory for processes I own in Fedora 20.

Does someone know what the typical default is?

Thanks.

-- 
    JB
