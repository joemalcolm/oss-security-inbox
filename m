X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/02/10/5
Message-ID: <CAKx+4-rJk=tc6uRfvNFZhr33g4-vi7ZMpBzFu2bjZ=a_-Fu-8Q@mail.gmail.com>
Date: Wed, 10 Feb 2021 20:34:37 +0530
From: Rohit Keshri <rkeshri@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()
Content-Type: text/plain; charset=utf-8

Hello Team,

A use-after-free flaw may be seen due to a race problem while in
detach_vmas_to_be_unmapped() in mm/mmap.c in VMA access while
munmap(). This flaw could allow a local attacker with a user privilege
to crash the system, because VMA with VM_GROWSDOWN or VM_GROWSUP flag
set may change their size under mmap_read_lock(). This vulnerability
could even lead to a kernel information leak problem.


'CVE-2021-20200' was assigned by Red Hat.

References:
https://bugs.chromium.org/p/project-zero/issues/detail?id=2056
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=246c320a8cfe0b11d81a4af38fa9985ef0cc9a4c

Thanks and Regards
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@...hat.com for urgent response

