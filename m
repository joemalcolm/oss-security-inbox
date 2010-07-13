X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/13/1
Message-ID: <AANLkTimyhhbPNh4g3OTaUaJfYcobc-Sd599enji5NVoN@mail.gmail.com>
Date: Tue, 13 Jul 2010 21:00:12 +0200
From: Pierre Joye <pierre.php@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request, php var_export
Content-Type: text/plain; charset=utf-8

hi,

I would like to request a new # for a flaw in php's var_export. The
reason is that a fatal error occurs due to recursion, memory limit or
execution time var_export bails out. The buffer is never cleared and
it flushes to the user. It's not affected by display_errors() since
its considered part of the output.

Fix already commited to trunk, 5.2 and 5.3 and will be in the next PHP
releases (5.2.14 and 5.3.3):

http://svn.php.net/viewvc?view=revision&revision=301143

Cheers,
-- 
Pierre

@pierrejoye | http://blog.thepimp.net | http://www.libgd.org
