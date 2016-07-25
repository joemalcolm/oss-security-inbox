X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/25/13
Message-ID: <20160725133417.43b97c67@pc1>
Date: Mon, 25 Jul 2016 13:34:17 -0400
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: Use after free in my_login() function of DBD::mysql (Perl module)
Content-Type: text/plain; charset=utf-8

https://blog.fuzzing-project.org/50-Use-after-free-in-my_login-function-of-DBDmysql-Perl-module.html

DBD::mysql versions 4.033 and earlier have a use after free bug in the
my_login() function. DBD::mysql is a Perl module providing bindings to
the mysql database. The issue was fixed in version 4.034.

This issue was discovered with Address Sanitizer.

https://github.com/perl5-dbi/DBD-mysql/pull/45
Pull request / patch

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Content of type "application/pgp-signature" skipped
