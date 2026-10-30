X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/6
Message-Id: <351F3FC8-D6C2-405B-9C56-767BB6E08125@gmail.com>
Date: Fri, 30 Oct 2026 09:05:46 +0000
From: John Haxby <john.haxby@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Protecting against CVE-2026-98432 when using Go programs
Content-Type: text/plain; charset=utf-8



> On 30 Oct 2026, at 00:21, Alan Coopersmith <alan.coopersmith@...cle.com> wrote:
> 
> Note that disabling MPTCP on a program-by-program basis is a fragile mitigation. Accidentally leaving a single MPTCP listener exposed will still leave a system vulnerable. Further, it assumes that all viable exploits for this bug depend on MPTCP. Again, we strongly recommend upgrading to a patched kernel version.

MPTCP can be disabled system-wide on Linux with `sysctl -w net.mptcp.enabled=0`  This will, of course, upset programs that require mptcp although[1] suggests that while newly started Go programs will handle this just fine, running programs may have unexpected errors on new connections.

jch

[1]: https://cs.opensource.google/go/go/+/refs/tags/go1.27.3:src/net/mptcpsock_linux.go;drc=68c6a73380e82a0ea9a93c1a75ab8a38f28f3a3d;l=36
Download attachment "signature.asc" of type "application/pgp-signature" (269 bytes)
