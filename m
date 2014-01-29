X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/29/4
Message-ID: <20140129063017.GA9779@lorien.valinor.li>
Date: Wed, 29 Jan 2014 07:30:17 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: 736969@...s.debian.org
Subject: (possible) CVE request: suPHP 0.7.2 release fixed a possible arbitrary code execution
Content-Type: text/plain; charset=utf-8

Hi

I do not have a commit reference for this: suPHP 0.7.2 release fixed a
security ssue that was introduced with the 0.7.0 release. From
Upstream[1]:

----cut---------cut---------cut---------cut---------cut---------cut-----
suPHP 0.7.2 has been released.
This release fixes a security issue that was introduced with the 0.7.0
release. This issue affected the source-highlighting feature and could
only be exploited, if the suPHP_PHPPath option was set. In this case
local users which could create or edit .htaccess files could possibly
execute arbitrary code with the privileges of the user the webserver
was running as.
----cut---------cut---------cut---------cut---------cut---------cut-----

Does this have already a CVE and/or should one be assigned?

suPHP is furthermore not anymore maintained upstream, see [3].

 [1] http://www.suphp.org/Home.html
 [2] http://bugs.debian.org/736969
 [3] https://lists.marsching.com/pipermail/suphp/2013-May/002554.html

Regards,
Salvatore
