X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/24/7
Message-ID: <20110124213827.GC4979@outflux.net>
Date: Mon, 24 Jan 2011 13:38:27 -0800
From: Kees Cook <kees@...ntu.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: CVE request: multiple status.net issues
Content-Type: text/plain; charset=utf-8

Hello,

I wanted to get some CVEs assigned for some minor issues that I reported to
status.net.

    syslog message spoofing via newline injections into logging
    http://status.net/open-source/issues/2795

    limited XSS in error message contents
    http://status.net/open-source/issues/2796 (fixed)

    unsafe use of addslashes for SQL string escapes
    http://status.net/open-source/issues/2797 (fixed)

Thanks,

-Kees

-- 
Kees Cook
Ubuntu Security Team
