X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/30/5
Message-ID: <1137093294.964811222799647193.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 30 Sep 2008 14:34:07 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: ftpd
Content-Type: text/plain; charset=utf-8


----- "Steven M. Christey" <coley@...us.mitre.org> wrote:

> CVE-2008-4247 is for *BSD's ftpd; CVE-2008-4242 is for ProFTPD.
> 

I'm pretty sure this also affects at least wu-ftpd, but looking into what
else is on my list of things to do.  From my quick investigation, the file
in question (ftpcmd.y) is in lots of other ftp daemons, and the code is
eerily similar.

-- 
    JB
