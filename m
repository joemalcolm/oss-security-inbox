X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/14
Message-ID: <20260908185203.201c8885@plasteblaster>
Date: Tue, 8 Sep 2026 18:52:03 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@...-hamburg.de>
To: <oss-security@...ts.openwall.com>
Subject: Re: Linux kernel LPEs: ZcopyReaper (CVE-2026-43502) and 20 more
Content-Type: text/plain; charset=utf-8

Do we need an LLM agent to dig through the reports and give a summary
where the vulnerabilities lie and what the mitigation would be?

Am Mon, 7 Sep 2026 20:29:16 -0700
schrieb Yuan Tan <yuant@...usec.ai>:

> We found a Linux kernel local privilege escalation vulnerability in the
> RDS zerocopy send path, tracked as CVE-2026-43502. We call the exploit
> ZcopyReaper.

>   CONFIG_INET=y
>   CONFIG_AIO=y
>   CONFIG_RDS=y or m
>   CONFIG_RDS_TCP=y or m

Good. Another obscure networking feature that I didn't know of and
which yields system exploitation. Locking kernel module loading after
boot has paid of many times now!

> In addition to CVE-2026-43502, there are 20 other Linux bugs that have
> been confirmed to be exploitable, with public exploits available:

Now, need I worry or not? What can I do? I checked out the repo and did
some guessing:

$ for f in Linux-CVE-2026-*; do echo === $f ===; (cd $f && find . -type f |xargs grep unshare); done                         <
=== Linux-CVE-2026-23274-kernelCTF ===
./exploit.c:void unshare_setup();
./exploit.c:    unshare_setup();
./exploit.c:void unshare_setup() {
./exploit.c:    SYSCHK(unshare(CLONE_NEWUSER));
./exploit.c:    SYSCHK(unshare(CLONE_NEWNET | CLONE_NEWNS));
./exploit.c:    unshare_setup();
./exploit.c:    unshare_setup();

Needs network namespaces.

=== Linux-CVE-2026-31659-Arch-6.19.10 ===
./exploit.c:	if (unshare(CLONE_NEWUSER | CLONE_NEWNET) < 0)
./exploit.c:		die("unshare(CLONE_NEWUSER|CLONE_NEWNET)");

Needs network namespaces.

=== Linux-CVE-2026-31678-Fedora-6.19.10-300 ===
./exploit.c:    if (unshare(CLONE_NEWNS) < 0)
./kernelsnitch/utils.h:    SYSCHK(unshare(CLONE_NEWUSER | CLONE_NEWNET));
./exploit-v104-crosscpu-flush-trace.c:    if (unshare(CLONE_NEWUSER) < 0)
./exploit-v104-crosscpu-flush-trace.c:        die("unshare(CLONE_NEWUSER)");
./exploit-v104-crosscpu-flush-trace.c:    if (unshare(CLONE_NEWNET) < 0)
./exploit-v104-crosscpu-flush-trace.c:        die("unshare(CLONE_NEWNET)");

Needs network namespaces.

=== Linux-CVE-2026-43042-Debian-6.12.101 ===
./utils.h:    SYSCHK(unshare(CLONE_NEWUSER | CLONE_NEWNET));

Needs network namespaces.

=== Linux-CVE-2026-43501-kernelCTF ===
./exploit.c:	if (unshare(CLONE_NEWUSER) < 0)
./exploit.c:		die("unshare(CLONE_NEWUSER)");
./exploit.c:	if (unshare(CLONE_NEWNET) < 0)
./exploit.c:		die("unshare(CLONE_NEWNET)");

Needs network namespaces.

=== Linux-CVE-2026-43502-openSUSE-6.4.0-150600 ===

??????

=== Linux-CVE-2026-52912-Fedora-6.19.10-300 ===
./exploit.c:	if (unshare(CLONE_NEWUSER) < 0)
./exploit.c:		die("unshare(CLONE_NEWUSER)");
./exploit.c:	if (unshare(CLONE_NEWNET | CLONE_NEWNS) < 0)
./exploit.c:		die("unshare(CLONE_NEWNET|CLONE_NEWNS)");
./kernelsnitch/utils.h:    SYSCHK(unshare(CLONE_NEWUSER | CLONE_NEWNET));

Needs network namespaces.

=== Linux-CVE-2026-52923-RHEL-6.12.0-211.7.3.el10_2 ===
./exploit.c:	if (unshare(CLONE_NEWUSER) < 0)
./exploit.c:		die("unshare user");
./exploit.c:	if (unshare(CLONE_NEWIPC) < 0)
./exploit.c:		die("unshare ipc");
./exploit.c:	if (unshare(CLONE_NEWIPC) < 0)
./exploit.c:		die("unshare(victim ipc)");
./exploit.c:		if (unshare(CLONE_NEWIPC) < 0)
./exploit.c:			die("unshare(trigger ipc)");
./kernelsnitch/utils.h:    SYSCHK(unshare(CLONE_NEWUSER | CLONE_NEWNET));

Needs network namespaces.


=== Linux-CVE-2026-52924-Arch-6.19.10 ===
./trigger.c:	if (unshare(CLONE_NEWUSER | CLONE_NEWNET) < 0)
./trigger.c:		die("unshare user+net");
./utils.h:    SYSCHK(unshare(CLONE_NEWUSER | CLONE_NEWNET));

Needs network namespaces.

=== Linux-CVE-2026-52924-ubuntu-7.0.0-28 ===
./trigger.c:	if (unshare(CLONE_NEWUSER) < 0)
./trigger.c:		die("unshare user");
./trigger.c:	if (unshare(CLONE_NEWNET) < 0)
./trigger.c:		die("unshare net");
./kernelsnitch/utils.h:    SYSCHK(unshare(CLONE_NEWUSER | CLONE_NEWNET));

Needs network namespaces.

=== Linux-CVE-2026-52929-Ubuntu-7.0.0-28 ===

????

=== Linux-CVE-2026-52933-Fedora-6.19.10-300 ===

????

=== Linux-CVE-2026-63834-Arch-6.19.10 ===
./kernelsnitch/utils.h:    SYSCHK(unshare(CLONE_NEWUSER | CLONE_NEWNET));

Needs network namespaces.

=== Linux-CVE-2026-68162-Ubuntu-7.0.0-28 ===
./exploit.c:	if (unshare(CLONE_NEWUSER) < 0)
./exploit.c:		die("unshare user: %s", strerror(errno));
./exploit.c:	if (unshare(CLONE_NEWNET) < 0)
./exploit.c:		die("unshare net: %s", strerror(errno));
./exploit.c:	if (unshare(CLONE_NEWNS) < 0)
./exploit.c:		die("unshare mount namespace: %s", strerror(errno));

Needs network namespaces.

=== Linux-CVE-2026-68376-Ubuntu-7.0.0-30 ===
./exploit.c:	if (unshare(CLONE_NEWUSER))
./exploit.c:		die("unshare user");
./exploit.c:	if (unshare(CLONE_NEWNET))
./exploit.c:		die("unshare net");

Needs network namespaces.

=== Linux-CVE-2026-72137-ubuntu-7.0.0-28 ===

????

=== Linux-CVE-2026-72255-Ubuntu-7.0.0-28 ===
./trigger.c:	if (unshare(CLONE_NEWUSER) < 0)
./trigger.c:		die("unshare(CLONE_NEWUSER)");
./trigger.c:	if (unshare(CLONE_NEWNET | CLONE_NEWNS) < 0)
./trigger.c:		die("unshare(CLONE_NEWNET|CLONE_NEWNS)");
./trigger.c:		if (pattern_index && unshare(CLONE_NEWNET) < 0)
./trigger.c:			die("unshare(next network namespace)");

Needs network namespaces.

=== Linux-CVE-2026-74480-RHEL-6.12.0-211.7.3.el10_2 ===
./exploit.c:    if (unshare(CLONE_NEWUSER) < 0)
./exploit.c:        die("unshare userns");
./exploit.c:    if (unshare(CLONE_NEWNET) < 0)
./exploit.c:        die("unshare netns");

Needs network namespaces.

=== Linux-CVE-2026-74581-Debian-6.12.101 ===
./exploit.c:	if (unshare(CLONE_NEWUSER) < 0)
./exploit.c:		die("unshare user");
./exploit.c:	if (unshare(CLONE_NEWNET) < 0)
./exploit.c:		die("unshare net");

Needs network namespaces.

=== Linux-CVE-2026-74597-Centos-10-6.12.0-264 ===
./exploit.c:	if (unshare(CLONE_NEWUSER))
./exploit.c:		die("unshare(CLONE_NEWUSER)");
./exploit.c:	if (unshare(CLONE_NEWNET))
./exploit.c:		die("unshare(CLONE_NEWNET)");

Needs network namespaces.

=== Linux-CVE-2026-80714-Debian-6.12.101 ===
./exploit.c:	CHECK(unshare(CLONE_NEWUSER), "unshare user");
./exploit.c:	CHECK(unshare(CLONE_NEWNET), "unshare net");

Needs network namespaces.


So this drives home the point that (unprivileged) network namespaces
are something that will stay forbidden on my systems. What a can of
worms that is!

But there is a number of exploits that get away without that:


=== Linux-CVE-2026-43502-openSUSE-6.4.0-150600 ===
=== Linux-CVE-2026-52929-Ubuntu-7.0.0-28 ===
=== Linux-CVE-2026-52933-Fedora-6.19.10-300 ===
=== Linux-CVE-2026-72137-ubuntu-7.0.0-28 ===

Someone got the time to dig out what those are about?


Alrighty then,

Thomas

-- 
Dr. Thomas Orgis
HPC @ Universität Hamburg
