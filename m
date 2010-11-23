X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/23/2
Message-ID: <4CEBA3E2.5030606@redhat.com>
Date: Tue, 23 Nov 2010 19:22:10 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: posix-cpu-timers: workaround to suppress the problems with mt exec
Content-Type: text/plain; charset=utf-8

This issue can trigger a BUG_ON() in posix_cpu_timer_del(). More info 
at: https://bugzilla.redhat.com/show_bug.cgi?id=656264

Upstream commit:
http://git.kernel.org/linus/e0a70217107e6f9844628120412cb27bb4cea194

Thanks, Eugene
