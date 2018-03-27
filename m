X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/27/3
Message-ID: <CA+fCnZcF-sNgp=Z35B7SvktMsex3CKYh+VcBs_1me43ZkB6eOg@mail.gmail.com>
Date: Tue, 27 Mar 2018 14:50:32 +0200
From: Andrey Konovalov <andreyknvl@...il.com>
To: oss-security@...ts.openwall.com
Subject: Linux kernel: syzkaller dashboard
Content-Type: text/plain; charset=utf-8

Hi!

Syzkaller dashboard is live:
https://syzkaller.appspot.com/

See the full announcement here:
https://lwn.net/Articles/749910/

Syzkaller [1] is an unsupervised coverage-guided kernel fuzzer, mostly
targeted at fuzzing the Linux kernel. Since some time ago, bugs found
by syzbot [2], a continuous fuzzing system for syzkaller, are
automatically reported to the kernel maintainers. The dashboard
provides a web interfaces for all the bugs reported by syzbot.

Thanks!

[1] https://github.com/google/syzkaller

[2] https://github.com/google/syzkaller/blob/master/docs/syzbot.md
