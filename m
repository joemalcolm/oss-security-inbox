X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/09/7
Message-ID: <YvKVxLtBs86r6Dmh@quatroqueijos>
Date: Tue, 9 Aug 2022 14:13:40 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@...onical.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-2585 - Linux kernel POSIX CPU timer UAF
Content-Type: text/plain; charset=utf-8

CVE-2022-2585 - Linux kernel POSIX CPU timer UAF

It was discovered that when exec'ing from a non-leader thread, armed POSIX
CPU timers would be left on a list but freed, leading to a use-after-free.

An independent security researcher working with SSD Secure Disclosure
discovered that this vulnerability could be exploited for Local Privilege
Escalation.

This bug was introduced by commit 55e8c8eb2c7b ("posix-cpu-timers: Store a
reference to a pid not a task"), which is present since v5.7-rc1.

This has been assigned CVE-2022-2585.

A PoC that will trigger KASAN is going to be posted in a week.

A fix has been sent to linux-kernel@...r.kernel.org and is at
https://lore.kernel.org/lkml/20220809170751.164716-1-cascardo@canonical.com/T/#u.
