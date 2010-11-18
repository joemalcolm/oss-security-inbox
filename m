X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/18/2
Message-ID: <501156925.1443921290087587288.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 18 Nov 2010 08:39:47 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: Clear text password in process list when using MySQL GUI tools
Content-Type: text/plain; charset=utf-8

----- "Martin Drescher" <drescher@...fu.de> wrote:
> 
> If you use some MySQL-GUI-tool in most (any?) linux distribution like
> mysql-admin or mysql-query-browser and then open 'Tools -> MySQL Text
> Console' your password, user name and host will become exposed in the
> process list.
> 
> I think this issue must exists over a long time in many distributions
> now but nobody ever cared about.
> 
> For Debian users:
> Packages mysql-query-browser, mysql-admin are affected.
> 

While I suspect there are more things with these problems, let's start with
these two:

CVE-2010-4177 mysql-query-browser clear text password in process list
CVE-2010-4178 mysql-admin clear text password in process list

Thanks.

-- 
    JB
