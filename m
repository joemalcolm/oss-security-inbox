X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/08/05/2
Message-ID: <87v9vb973d.fsf@oldenburg2.str.redhat.com>
Date: Mon, 05 Aug 2019 13:36:54 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Current CVE policy on missing-hardening bugs
Content-Type: text/plain; charset=utf-8

What's the current policy on assinging CVE IDs for bugs that are merely
missed hardening opportunities?  One example is lack of full ASLR due to
address space limits (47 or fewer bits instead of the theoretical limit
of 64 bits).

Are they eligible for CVE assignment?  Should we DISPUTE them if we
encounter them?

Thanks,
Florian
