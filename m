X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/20/8
Message-ID: <CAOSRhRPyUj0diDn_93ZVdR2Rco_-wh2dvvs6f6tif+HkeE4pjQ@mail.gmail.com>
Date: Wed, 20 Jul 2011 08:22:45 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: arbitrary kernel read in xtensa
Content-Type: text/plain; charset=utf-8

Not sure if any distributions support xtensa, but regardless:

Due to a failure to check user pointers passed to a ptrace_setxregs
request, it is possible for a local unprivileged user to read
arbitrary kernel memory [1].

-Dan

[1] http://marc.info/?l=linux-kernel&m=131008344912672&w=2
