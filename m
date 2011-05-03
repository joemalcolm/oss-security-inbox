X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/03/4
Message-ID: <20110503172310.GF2160@redhat.com>
Date: Tue, 3 May 2011 11:23:11 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: openssh
Content-Type: text/plain; charset=utf-8

>OpenSSH Security Advisory: portable-keysign-rand-helper.adv
>
>This document may be found at:
>http://www.openssh.com/txt/portable-keysign-rand-helper.adv
>
>1. Vulnerability
>
>        Portable OpenSSH's ssh-keysign utility may allow unauthorised
>        local access to host keys on platforms if ssh-rand-helper is
>        used.

Full details at the URL above.  I don't see a CVE name in the advisory;
could one be assigned for this flaw?

Note: it only affects 5.6 and 5.7.

Thanks.

-- 
Vincent Danen / Red Hat Security Response Team 
