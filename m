X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/11/10/3
Message-ID: <1289358301.135181257816957122.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 9 Nov 2009 20:35:57 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: oping allows the disclosure of arbitrary file contents
Content-Type: text/plain; charset=utf-8

----- "Steven M. Christey" <coley@...us.mitre.org> wrote:
> 
> This says:
> 
>   2009-09-29 Version 1.3.3 is available. The new release fixes a serious
>   security issue in oping: If the application is installed with the
>   SetUID-bit, anybody on the system could use oping to read arbitrary files
>   using the "-f" option.
> 
> So as stated, this sounds worthy of a CVE to me.  Thoughts?
> 

That issue has a CVE id. I gave it CVE-2009-3614 quite some time ago.
http://marc.info/?l=oss-security&m=125561742729846&w=2

The discussion then branched out into if an unchecked call to setuid to drop
permissions is a security flaw (as a user could cause it to fail, preventing
oping from dropping privs). I saw nothing in the code that showed it to be
anything but a bug, as oping doesn't do anything exciting after the call could
fail.

-- 
    JB
