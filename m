X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/4
Message-ID: <20260928114817.GI9951@qaa.vinc17.org>
Date: Mon, 28 Sep 2026 13:48:17 +0200
From: Vincent Lefevre <vincent@...c17.net>
To: oss-security@...ts.openwall.com
Subject: crontab(1) silently truncates file path arguments >=100 chars
Content-Type: text/plain; charset=utf-8

A "minor" bug in cron was reported in the Debian BTS:

  https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1144850

"cron: crontab(1) silently truncates file path arguments >=100 chars"

I suspect that there is a typo in the given instructions there
because the total number of characters is incorrect. Moreover,
the truncation is not silent, unless the file exists, in which
case it leads to a different crontab file being loaded, possibly
belonging to another user of the machine. So this is actually a
vulnerability, with possible execution of code from another user.

Under Debian with the cron 3.0pl1-210 package:

$ a=aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
$ mkdir /tmp/${a}b
$ echo '* * * * * true' > /tmp/${a}b/x
$ echo '* * * * * false' > /tmp/${a}
$ crontab /tmp/${a}b/x
$ crontab -l
* * * * * false

(also reproducible with root creating /tmp/${a}b/x (actually not used)
and running "crontab /tmp/${a}b/x").

-- 
Vincent Lefèvre <vincent@...c17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
