X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/25/2
Message-ID: <4D8C697C.2010909@redhat.com>
Date: Fri, 25 Mar 2011 11:07:56 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security <oss-security@...ts.openwall.com>
Subject: CVE Request -- php-doctrine-Doctrine -- SQL injection flaw
Content-Type: text/plain; charset=utf-8


Hello Steve, vendors,

   a SQL injection flaw has been reported against Doctrine, the PHP Object Relational Mapper:
   [1] http://www.doctrine-project.org/blog/doctrine-security-fix
   [2] https://bugzilla.redhat.com/show_bug.cgi?id=689396

Further from [1]:
"The security hole was found today and affects the Doctrine\DBAL\Platforms\AbstractPlatform::modifyLimitQuery()
function which does not cast input values for limit and offset to integer and allows malicious SQL to be executed
if these parameters are passed into Doctrine 2 directly from request variables without previous cast to integer."

Could you allocate a CVE id for this?

Thanks && Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team
