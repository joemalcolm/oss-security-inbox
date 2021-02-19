X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/02/19/6
Message-ID: <CAKx+4-rj0qAZMmpuW9txO6ep1rkFD6dJa0nviEfmDmo7NUvsPg@mail.gmail.com>
Date: Fri, 19 Feb 2021 17:54:27 +0530
From: Rohit Keshri <rkeshri@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-3411 kernel: broken KRETPROBES reports corruption of .text section while running a FTRACE stress tester
Content-Type: text/plain; charset=utf-8

Hello Team,

A violation of memory access flaw was found while detecting a padding of
int3 in the linking state in function can_optimize in
arch/x86/kernel/kprobes/opt.c. In this problem a local attacker with a
special user privilege may cause a threat to a system Integrity and
Confidentiality, and may even lead to a denial of service problem.

'CVE-2021-3411' was assigned by Red Hat.

Credit: Adam 'pi3' Zabrocki


References:
https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg2410570.html
https://lists.openwall.net/linux-kernel/2020/12/11/265
http://blog.pi3.com.pl/?p=831

Regards,
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@...hat.com for urgent response

