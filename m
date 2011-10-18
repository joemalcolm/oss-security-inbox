X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/18/17
Message-ID: <623466df-9449-431b-aa79-789d1a417016@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 18 Oct 2011 16:38:10 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: MySQL executable comment execution on MySQL slave server (from 2009)
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> This is an old one that slipped through in 2009:
> 
> The executable comment capability in MySQL before 5.1.50 and 5.0.93
> can be used to execute arbitrary SQL commands as a privileged user.
> This occurs on MySQL servers configured as slaves in a MySQL
> replication environment where the slave server is running a newer
> version of MySQL than the server. The attacker would need the ability
> to add custom comments to a database on the MySQL server.
> 
> http://bugs.mysql.com/bug.php?id=49124
> http://dev.mysql.com/doc/refman/5.1/en/news-5-1-50.html
> http://dev.mysql.com/doc/refman/5.0/en/news-5-0-93.html

Please use CVE-2009-5026.

Thanks.

-- 
    JB
