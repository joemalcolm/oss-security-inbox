X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/16/14
Message-ID: <20130116204226.GA19510@elende>
Date: Wed, 16 Jan 2013 21:42:26 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: bcron: cron jobs get access to the temporary output files from all other jobs that are still running
Content-Type: text/plain; charset=utf-8

Hi

I haven't found if there was already a request for this.

In Debian Bugtracker it was closed [1] today. It is possible due to a
bug in bcron-exec that cron jobs get access to the temporary output
files from other jobs that are still running. This is also mentioned
in upstream's NEWS[2]. The commit to fix this on github should be[3].
Even it looks bcron is not broadly used, could the above get a CVE?

 [1]: http://bugs.debian.org/686650
 [2]: http://untroubled.org/bcron/NEWS
 [3]: https://github.com/bruceg/bcron/commit/7e3b8d7a82a6712f4607aae151a3ba8843dc6c86

Regards,
Salvatore
