X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/30/7
Message-ID: <3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>
Date: Tue, 30 May 2017 14:52:58 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com, Daniel Micay <danielmicay@...il.com>
Cc: Roee Hay <roeehay@...il.com>
Subject: Re: Linux kernel: stack buffer overflow with controlled payload in get_options() function
Content-Type: text/plain; charset=utf-8

On 05/30/2017 01:51 PM, Daniel Micay wrote:
> It's unreasonable to consider the kernel line untrusted. A CVE being
> issued for one of these issues didn't make sense.

It's a potential Secure Boot bypass, so it matters in some theoretical
sense to some downstreams which carry those Secure Boot patches.

(Although I have yet to see anyone to revoke a signature on a kernel
with known root-to-ring-0 escalations, so the practical impact isn't
large because an attack could still downgrade to a kernel with an
exploitable vulnerability.)

Florian
