X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/05/6
Message-ID: <20160705182522.GA26179@eldamar.local>
Date: Tue, 5 Jul 2016 20:25:22 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: CVE Request: libgd: global out of bounds read when encoding gif from malformed input with gd2togif
Content-Type: text/plain; charset=utf-8

Hi

The following (older) issue in libgd's issue tracker can be found,
with possible security impact for applications using the libgd
library. If I see it correctly this is not an issue in the gd2togif
utility but in the library. It was reported upstream as:

https://github.com/libgd/libgd/issues/209

with the fix

https://github.com/libgd/libgd/commit/82b80dcb70a7ca8986125ff412bceddafc896842 (gd-2.2.0)

Could you assign a CVE for this issue?

Regards,
Salvatore
