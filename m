X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/09/2
Message-ID: <AANLkTikQK8EhgjWK=LD2NPx6MJWa5hkd37ODc2PCX1vH@mail.gmail.com>
Date: Wed, 9 Mar 2011 14:18:10 -0300
From: Felipe Pena <felipensp@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: buffer overflow in unixODBC's SQLDriverConnect()
Content-Type: text/plain; charset=utf-8

Hi,
Please assign CVE id for a possible buffer overflow in unixODBC's
SQLDriverConnect() function by specifying a large value for SAVEFILE
parameter in the connection string.

A fix has been committed in the SVN addressing the issue:
http://unixodbc.svn.sourceforge.net/viewvc/unixodbc/trunk/DriverManager/SQLDriverConnect.c?r1=23&r2=27

Thanks.

-- 
Regards,
Felipe Pena

