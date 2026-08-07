X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/07/8
Message-ID: <CAHtpoa2OYXeku70p_tMdwkN5Zy0jW+RxNk4OHGDp0GpwqrPk7Q@mail.gmail.com>
Date: Sat, 8 Aug 2026 07:36:07 +0800
From: fourie <littleddfu@...il.com>
To: "Dr. Thomas Orgis" <thomas.orgis@...-hamburg.de>
Cc: oss-security@...ts.openwall.com, Solar Designer <solar@...nwall.com>
Subject: Re: CVE-2026-64564: Linux SCTP ASCONF transport UAF leading to local privilege escalation and container escape
Content-Type: text/plain; charset=utf-8

> What I am missing is if any other conditions need to be met for a suser
> to exploit this. I'd presume that the user needs to be able to run
> their own network namespace. Or does it even work without it? No extra
> privileges of any kind needed?

The exploit does not require CAP_NET_ADMIN, but it does require CAP_NET_RAW
to construct the malicious packet.
A separate network namespace is not strictly required.

Docker grants CAP_NET_RAW by default, and the exploit works from
inside a container
and results in container escape.
So, for the known exploit paths, either CAP_NET_ADMIN or CAP_NET_RAW
is sufficient.

Fourier
