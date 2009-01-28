X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/28/12
Message-ID: <1388405289.2642981233169056431.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 28 Jan 2009 13:57:36 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: php5
Content-Type: text/plain; charset=utf-8

----- "Steffen Joeris" <steffen.joeris@...lelinux.de> wrote:
> 
> I don't think this has a CVE id yet.
> 
> Quote from the debian bugreport:
> "When an invalid key is used when calling dba_replace on a dba inifile
> 
> resource it leads to file truncation."
> 
> References:
> Debian Bugreport:
> http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=507101

I may be missing something here, but this looks like an issue where a bad script
really needs to cause this. Wouldn't it be just as easy to for the script author to
delete the file in question via a PHP script?

-- 
    JB
