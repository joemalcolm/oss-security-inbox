X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/28/1
Message-ID: <4E095272.4080209@redhat.com>
Date: Tue, 28 Jun 2011 12:02:58 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: oom: use pte pages in OOM score
Content-Type: text/plain; charset=utf-8

PTE pages are invisible memory user. A local, unprivileged user could
leverage this flaw to trigger a denial of service. AFAIK, this was
introduced in a63d83f427f (v2.6.36-rc1), fixed in f755a042d (v2.6.39-rc6).

http://git.kernel.org/linus/a63d83f427f
http://git.kernel.org/linus/f755a042d

Thanks, Eugene
