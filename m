X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/02/13
Message-ID: <CAAeHK+yMo_kYnhJf_rJX7tNkBefWXuKMsXTF1aB6-RqsLZn4ZQ@mail.gmail.com>
Date: Sat, 3 Dec 2016 00:29:12 +0100
From: Andrey Konovalov <andreyknvl@...gle.com>
To: cve-assign@...re.org
Cc: oss-security@...ts.openwall.com, Kostya Serebryany <kcc@...gle.com>,  Dmitry Vyukov <dvyukov@...gle.com>, syzkaller <syzkaller@...glegroups.com>,  Eric Dumazet <edumazet@...gle.com>
Subject: CVE Request: Linux: signed overflows for SO_{SND|RCV}BUFFORCE
Content-Type: text/plain; charset=utf-8

Hi!

There's a bug in SO_{SND|RCV}BUFFORCE setsockopt() implementation,
which allows CAP_NET_ADMIN users to cause memory corruption.

The fix is upstream:
https://github.com/torvalds/linux/commit/b98b0bc8c431e3ceb4b26b0dfc8db509518fb290

Could you assign a CVE for this?

Thanks!
