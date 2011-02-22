X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/22/13
Message-ID: <1725488088.168783.1298408051088.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 22 Feb 2011 15:54:11 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: gdm PostLogin script executes scripts as user gdm
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> Hello oss-security,
> 
> should we consider this as a vulnerability?
> https://bugzilla.gnome.org/show_bug.cgi?id=602403
> 

I'm not sure this is a security flaw. It's not running user controlled
scripts (at least not by default). In order for it to run a user controlled
script, the admin would have to modify the Default script. Is this normal?

I'm not all that familiar with expected use of gdm, perhaps someone who
knows more can chime in?

Thanks.

-- 
    JB
