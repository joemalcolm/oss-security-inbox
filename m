X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/19/2
Message-ID: <CAH8yC8mN3S5iWs9aZvG0Z7TFaMqa+CiFF_m-TQPXFMj1sPMNrg@mail.gmail.com>
Date: Wed, 18 Nov 2026 21:11:38 -0500
From: Jeffrey Walton <noloader@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Another (?) Linux kernel SCTP vuln undisclosed
Content-Type: text/plain; charset=utf-8

On Wed, Nov 18, 2026 at 6:57 PM Rich Felker <dalias@...c.org> wrote:

> The nginx2root thing is not itself a root vuln, but relies on an
> undisclosed LPE vuln in the Linux kernel to get root. According to the
> vuln website (https://nginx2root.com/),
>
>     "The host-root stage uses a separate Linux SCTP kernel
>     vulnerability and must be assessed separately."
>
>     ....
>
>     "The kernel bug is a separate local privilege escalation
>     vulnerability and needs its own patch, which will be released in
>     the coming weeks."
>
> It's not 100% clear that this is new, but anyone not needing SCTP
> should probably block loading of the module via modprobe.d
>
> I'm posting this here because it does not seem to have been announced
> outside of the nginx2root website.
>

I think one of the problems at the moment is, the kernel has not patched
the underlying SCTP vulnerability.[0,1]

Xint posted recommended mitigations until all the patches are available at
[2].  From [2]:

    ... disabling HTTP/2 addresses only two of the five nginx
vulnerabilities.

[0] <https://xint.io/blog/nginx2root-remote-code-execution>
[1] <https://lwn.net/Articles/1108362/>
[2] <
https://xint.io/blog/nginx2root-remote-code-execution#33-emergency-mitigations-before-patching-14
>

Jeff

