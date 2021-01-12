X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/01/12/1
Message-ID: <CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>
Date: Tue, 12 Jan 2021 16:58:07 +1000
From: Wade Mealing <wmealing@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-20177 kernel: iptables string match rule could result in kernel panic
Content-Type: text/plain; charset=utf-8

Gday,

A flaw was found in the Linux kernels implementation of string matching
within a packet. A privileged user
(with root or CAP_NET_ADMIN ) when inserting iptables rules could insert a
rule which can panic the system.

Likely a user with these permissions could do worse, however it crashes the
system (DOS) and the user is going to have a bad day
especially if the rule is inserted and restored on every boot.

At this time it doesn't affect RHEL releases, and there are fixes already
in multiple upstream trees.

Thanks,

Wade Mealing

Upstream patch:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ca58fbe06c54

Upstream bugzilla:
https://bugzilla.kernel.org/show_bug.cgi?id=209823

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1914719


-- 

Wade Mealing

Product Security - Kernel, RHCE

Red Hat

<https://www.redhat.com>

wmealing@...hat.com
<https://red.ht/sig>
TRIED. TESTED. TRUSTED. <https://redhat.com/trusted>

secalert@...hat.com for urgent response

