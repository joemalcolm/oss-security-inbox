X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/10/4
Message-ID: <292716918.35874.1299787377615.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 10 Mar 2011 15:02:57 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: buffer overflow in unixODBC's SQLDriverConnect()
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Hi,
> Please assign CVE id for a possible buffer overflow in unixODBC's
> SQLDriverConnect() function by specifying a large value for SAVEFILE
> parameter in the connection string.
> 
> A fix has been committed in the SVN addressing the issue:
> http://unixodbc.svn.sourceforge.net/viewvc/unixodbc/trunk/DriverManager/SQLDriverConnect.c?r1=23&r2=27
> 

Please use CVE-2011-1145.

Thanks.

-- 
    JB
