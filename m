X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/11/16/3
Message-ID: <391273470.108201258411170607.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 16 Nov 2009 17:39:30 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: jt@....org
Subject: Re: CVE request: oping allows the disclosure of arbitrary file contents
Content-Type: text/plain; charset=utf-8

----- "Tomas Hoger" <thoger@...hat.com> wrote:
> On Thu, 15 Oct 2009 15:15:57 +0200 Julien Tinnes <jt@....org> wrote:
> 
> > in case anyone cares, oping also attempts to drop privileges with
> > setuid(getuid()); without checking setuid()'s return value.
> > 
> > It's an obvious vulnerability, because a local attacker can make setuid()
> > fail by setting a resource limit of 0 for RLIMIT_NPROC with setrlimit().
> 
> Does the RLIMIT_NPROC trick work against oping, or any setuid app that calls
> setuid(getuid())?
> 

This should work for everything that calls setuid()

I have a little bit about this here:
http://www.bress.net/blog/archives/34-setuid-madness.html

The short story is that if you call setuid(), you need to check the return
code.

-- 
    JB
