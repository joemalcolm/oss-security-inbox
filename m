X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/20/18
Message-ID: <c621d7a710e1a8aa6d989a60a7258c3c92ff06a8.camel@bzed.de>
Date: Thu, 20 Apr 2023 20:39:36 +0200
From: Bernd Zeimetz <bernd@...d.de>
To: oss-security@...ts.openwall.com
Subject: Re: PostgreSQL and CREATEROLE permission
Content-Type: text/plain; charset=utf-8

Hi,

> This information showed up on the pgsql-general mailing list at [1].
> It appears a user with CREATEROLE can elevate to root through
> pg_execute_server_program.[2]

really root? As I understand it you gain access to the DB superuser (usually
the postgres user) only. Although I could imagine that you could trick
careless admins into giving you root permissions on that way...


Bernd



-- 
 Bernd Zeimetz                            Debian GNU/Linux Developer
 http://bzed.de                                http://www.debian.org
 GPG Fingerprint: ECA1 E3F2 8E11 2432 D485  DD95 EB36 171A 6FF9 435F

