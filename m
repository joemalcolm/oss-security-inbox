X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/05/16/4
Message-ID: <20266383-77f2-3ebd-0bfa-09a4808c7506@apache.org>
Date: Mon, 16 May 2022 16:45:25 +0000
From: Tim Allison <tallison@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-25169: Apache Tika BPGParser Memory Usage DoS 
Content-Type: text/plain; charset=utf-8

Description:

The BPG parser in versions of Tika before 1.28.2 and 2.4.0 may allocate an unreasonable amount of memory on carefully crafted files.


