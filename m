X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/14/24
Message-ID: <805041020.87965.1300136062211.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 14 Mar 2011 16:54:22 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: format-string vulnerability in PHP Phar extension
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-1153 for this.

Thanks.

-- 
    JB



----- Original Message -----
> Hi,
> I just found several format-string vulnerability in PHP Phar
> extension, a
> bug has been filed in the PHP bugtracker (private):
> http://bugs.php.net/bug.php?id=54247
> On error several class methods passes the supplied argument to
> zend_throw_exception_ex()
> which prints a formatted error message using such value as the
> formatter
> string.
> 
> $ sapi/cli/php ../bug.php "%08x.%08x.%08x.%08x.%08x"
> PHP Fatal error: Uncaught exception 'PharException' with message
> 'unable to
> open phar for reading "00000008.00000000.bf95c204.0963e050.00000014"'
> in
> /home/felipe/dev/bug.php:4
> 
> Thanks.
> 
> --
> Regards,
> Felipe Pena
