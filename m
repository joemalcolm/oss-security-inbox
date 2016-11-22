X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/22/18
Message-ID: <CAAeHK+znVzS6vZ00rm8bBzu6q=NgDgB4b8G8Eggyoa3xwrs1FQ@mail.gmail.com>
Date: Tue, 22 Nov 2016 10:52:44 +0100
From: Andrey Konovalov <andreyknvl@...gle.com>
To: cve-assign@...re.org
Cc: oss-security@...ts.openwall.com, Dmitry Vyukov <dvyukov@...gle.com>,  Kostya Serebryany <kcc@...gle.com>
Subject: CVE Request: Linux: net/sctp: slab-out-of-bounds in sctp_sf_ootb
Content-Type: text/plain; charset=utf-8

Hi,

There's a bug in the Linux kernel sctp implementation which allows a
remote attacker to trigger a slab-out-of-bounds access with an offset
up to 64K bytes.

The bug was fixed upstream:
https://github.com/torvalds/linux/commit/bf911e985d6bbaa328c20c3e05f4eb03de11fdd6

More details are here:
https://groups.google.com/forum/#!topic/syzkaller/pAUcHsUJbjk

Could you assign a CVE for this?

Thanks!
