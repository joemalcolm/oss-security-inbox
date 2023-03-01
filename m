X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/01/7
Message-ID: <CAEih1qU_yvoQUjGK3c0ncD8yMbxQ6_9+SFpWthEpK9ppq=oOyQ@mail.gmail.com>
Date: Wed, 1 Mar 2023 16:32:42 +0100
From: Pietro Borrello <borrello@...g.uniroma1.it>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-1077: Linux kernel: Type confusion in pick_next_rt_entity()
Content-Type: text/plain; charset=utf-8

Hi all,

I am disclosing a type confusion in the RT scheduling stack of the Linux Kernel.
pick_next_rt_entity() caller checks that list_entry() on the scheduler queue
does not return NULL, using a BUG_ON.
However, this condition can never happen.
For an empty list, list_entry() returns a type confused view of the list_head.
The buggy condition would lead to the use of a type confused sched_rt_entity,
causing memory corruption.

The proposed patch has been merged in the Linux tree:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=7c4a5b89a0b5a57a64b601775b296abf77a9fe97

The issue has been assigned CVE-2023-1077.

Best regards,
Pietro Borrello
