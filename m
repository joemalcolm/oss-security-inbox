X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/17/1
Message-ID: <20140717055037.GO5412@outflux.net>
Date: Wed, 16 Jul 2014 22:50:37 -0700
From: Kees Cook <kees@...flux.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-4943: Linux privilege escalation in ppp over l2tp sockets
Content-Type: text/plain; charset=utf-8

CVE-2014-4943 is a flaw in the Linux kernel allowing an unprivileged user
to escalate to kernel privilege when CONFIG_PPPOL2TP is enabled. If built
as a module, a work-around to limit this to just the root user would be
to add this to /etc/modprobe.conf:

alias pppox-proto-1 off
blacklist l2tp_ppp

Upstream commit:
https://git.kernel.org/linus/3cf521f7dc87c031617fd47e4b7aa2593c2f3daf

-Kees

-- 
Kees Cook                                            @outflux.net
