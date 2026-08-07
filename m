X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/07/2
Message-ID: <20260807125041.4fe3881e@plasteblaster>
Date: Fri, 7 Aug 2026 12:50:41 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@...-hamburg.de>
To: fourie <littleddfu@...il.com>
CC: <oss-security@...ts.openwall.com>, Solar Designer <solar@...nwall.com>
Subject: Re: CVE-2026-64564: Linux SCTP ASCONF transport UAF leading to local privilege escalation and container escape
Content-Type: text/plain; charset=utf-8

Am Fri, 7 Aug 2026 09:52:57 +0800
schrieb fourie <littleddfu@...il.com>:

> Yes. On systems where SCTP is built as a loadable module rather than
> built into the kernel,
> unloading the sctp module and preventing it from being loaded should
> mitigate exploitation
> of this issue.

What I am missing is if any other conditions need to be met for a suser
to exploit this. I'd presume that the user needs to be able to run
their own network namespace. Or does it even work without it? No extra
privileges of any kind needed?

Gladly, my systems are once again safe from this as we disable module
loading after a startup phase. But it would be good to know if the SCTP
functionality would be available to anyone or just to users with their
own network namespaces, further reason to never ever allow those (which
of course makes a number of container setups less fun, but not relevant
to my HPC use case).


Alrighty then,

Thomas

PS: I'd have to read up on SCTP to figure out if I'd ever miss that
functionality. So far there is a good bet for this kind of bug that it
is in code I never intended to run, and hence probably shouldn't even
include in my kernel build.

-- 
Dr. Thomas Orgis
HPC @ Universität Hamburg
