X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/15/9
Message-ID: <495059406.357331255617265857.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 15 Oct 2009 10:34:25 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: oping allows the disclosure of arbitrary file contents
Content-Type: text/plain; charset=utf-8

----- "Julien Tinnes" <jt@....org> wrote:
> 
> in case anyone cares, oping also attempts to drop privileges with
> setuid(getuid()); without checking setuid()'s return value.
> 
> It's an obvious vulnerability, because a local attacker can make
> setuid() fail by setting a resource limit of 0 for RLIMIT_NPROC with
> setrlimit().
> 

Does that have any security implications though? I've not looked at the app.
If it's a security problem, I'll give it a CVE id.

Thanks.

-- 
    JB
