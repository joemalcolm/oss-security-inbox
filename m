X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/24/11
Message-ID: <2140623688.254048.1306238348454.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 24 May 2011 07:59:08 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Robert Scheck <robert@...oraproject.org>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- phpMyAdmin -- PMASA-2011-3 & PMASA-2011-4
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Hello, Josh, Steve, vendors,
> 
> the following two security flaws have been recently reported against
> phpMyAdmin:
> [1] http://www.phpmyadmin.net/home_page/security/PMASA-2011-3.php

This one is an XSS flaw. Use CVE-2011-1940.


> [2] http://www.phpmyadmin.net/home_page/security/PMASA-2011-4.php

This one is a URL redirection flaw. Use CVE-2011-1941


> References:
> [3] http://bugs.gentoo.org/show_bug.cgi?id=368495
> 

Thanks.

-- 
    JB
