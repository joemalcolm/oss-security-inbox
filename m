X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/08/01/3
Message-Id: <291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me>
Date: Mon, 1 Aug 2016 12:24:21 +0200
From: Shiz <hi@...z.me>
To: oss-security@...ts.openwall.com
Subject: Re: cve request: systemd-machined: information exposure for docker containers
Content-Type: text/plain; charset=utf-8


> On 28 Jul 2016, at 16:42, Simon McVittie <smcv@...ian.org> wrote:
> 
> *Which* unprivileged user processes?
> 
> If the unprivileged user processes are not in a container, they can get a
> significant amount of the same information by reading the host's /proc.

Except if a host is running with hidepid={1,2}, which is not entirely uncommon
especially in hardened systems. In that regard it /does/ qualify as infoleak.

- Shiz

Download attachment "signature.asc" of type "application/pgp-signature" (802 bytes)
