X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/9
Message-ID: <CAOp4FwRgN-hQPHsCXzXbBhnHAJxWfTmQ61+61taGkFG1JjTgWA@mail.gmail.com>
Date: Thu, 5 Nov 2026 23:38:51 +0400
From: Loganaden Velvindron <loganaden@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On Thu, 5 Nov 2026 at 23:14, Jan Schaumann <jschauma@...meister.org> wrote:
>
> OpenSSH just published OpenSSH 10.6p2 with a critical
> fix for a password authentication bypass on systems
> that use musl libc and have PAM disabled.  Alpine
> Linux has been called out as one such affected
> system:
>
> https://www.openssh.org/releasenotes.html#10.6p2
>
> >  * sshd(8): avoid password authentication bypass
> >  that is exploitable through sshd(8) that affects
> >  some Linux systems when built and run with PAM
> >  support disabled. We consider the root cause of
> >  this bug to be outside sshd, but it is exploitable
> >  via sshd and can be avoided there.
> >
> >   This bug was reported by Özgün Kültekin of
> >   Wakefield (wakefield.co)
>
>
> The vulnerability itself is described here:
>
> https://sshhole.com/
It's unfortunate that some people are writing misleading statements
about a security
problem in OpenSSH, especially on linkedin, despite djm@ explaining
that this is a WORKAROUND.
