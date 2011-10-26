X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/26/16
Message-ID: <CAOSRhRMYs921N+a5zJAv7sqGkr2C5tka7-PdaKJXt62rBJfnyA@mail.gmail.com>
Date: Wed, 26 Oct 2011 13:43:16 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- kernel: sysctl: restrict write access to dmesg_restrict
Content-Type: text/plain; charset=utf-8

On Wed, Oct 26, 2011 at 11:16 AM, Petr Matousek <pmatouse@...hat.com> wrote:
> When dmesg_restrict is set to 1 CAP_SYS_ADMIN is needed to read the
> kernel ring buffer. But a root user without CAP_SYS_ADMIN is able
> to reset dmesg_restrict to 0.
>

Minor correction: CAP_SYSLOG is needed to read the kernel ring buffer,
with CAP_SYS_ADMIN being a fallback for legacy reasons.  But it's
correct that CAP_SYS_ADMIN is now required to modify the sysctl.

I also agree with Vasiliy's point that LXC security boundaries in the
mainline kernel are not well defined at this point, so the whole thing
is a bit silly.

-Dan
