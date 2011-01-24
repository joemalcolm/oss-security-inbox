X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/24/8
Message-ID: <20110124214124.GD4979@outflux.net>
Date: Mon, 24 Jan 2011 13:41:24 -0800
From: Kees Cook <kees@...ntu.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: CVE request: libxml2 heap contents leak
Content-Type: text/plain; charset=utf-8

Hello,

I'd like to get a CVE assigned for a minor heap contents leak in
libxml2. I reported that it is possible to leak heap memory contents
from libxml2 (and things linked against it, for example PHP[1], or things
written in PHP[2]):

https://bugzilla.gnome.org/show_bug.cgi?id=631551

Thanks,

-Kees

[1] http://bugs.php.net/bug.php?id=52998
[2] http://status.net/open-source/issues/2798

-- 
Kees Cook
Ubuntu Security Team
