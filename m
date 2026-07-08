X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/12
Message-ID: <20260708224129.6145033b@plasteblaster>
Date: Wed, 8 Jul 2026 22:41:29 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@...-hamburg.de>
To: <oss-security@...ts.openwall.com>
Subject: Linux: GhostLock / CVE-2026-43499 / stack-UAF and LPE in kernels 2.6.39 till 7.1
Content-Type: text/plain; charset=utf-8

Hi all,

as I did not see it mentioned on this list yet, there seems to be yet
another serioys LPE or at least DoS for the Linux kernel, dubbed
GhostLock and assigned CVE-2026-43499:

	https://nebusec.ai/research/ionstack-part-2/

As I'd have hoped to get an alert via this list, I figured a notice is
in order. Or do we give up to keep track of the stream of serious Linux
kernel flaws? :-/

I at least achieved system crash / hang using the poc.c linked from the
above website on a current Ubuntu system with 7.0.0-14 LTS kernel,
while Debian 13 with 6.12.95+deb13-amd64 or vanilla 6.6.144 is not
vulnerable, as probably are many other kernels not too far from
kernel.org LTS or mainline. The relevant fix is

	3bfdc63936dd (“rtmutex: Use waiter::task instead of current in remove_waiter()”)

which was committed on 2026-04-21. There is no module to block for this
one, or some other configuration as mitigation. The kernel needs to be
updated.

If you're not stuck on a commercial distro that hasn't updated its
kernel in the past months, you're probably safe …


Alrighty then,

Thomas

-- 
Dr. Thomas Orgis
HPC @ Universität Hamburg
