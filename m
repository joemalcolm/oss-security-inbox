X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/07/12
Message-ID: <20141207200903.GA9301@hurricane.linuxnetz.de>
Date: Sun, 7 Dec 2014 21:09:03 +0100
From: Robert Scheck <robert@...oraproject.org>
To: oss-security@...ts.openwall.com
Subject: Re: postgresql: pg_dump creates world-readable dump
Content-Type: text/plain; charset=utf-8

Hello Julien,

On Sun, 07 Dec 2014, Julien Cristau wrote:
> You're not showing anything about pg_dump if you're having the shell
> open the file.

shame on me, you are indeed absolutely right! But looks still good:

$ umask
0022
$ pg_dump -f postgres1.sql postgres
$ ls -l postgres1.sql
-rw-r--r--. 1 postgres postgres 902 Dec  7 21:02 postgres1.sql
$ 

$ umask 0077
$ umask
0077
$ pg_dump -f postgres2.sql postgres
$ ls -l postgres2.sql
-rw-------. 1 postgres postgres 902 Dec  7 21:02 postgres2.sql
$ 

$ touch postgres3.sql
$ chmod 644 postgres3.sql
$ pg_dump -f postgres3.sql postgres
$ ls -l postgres3.sql
-rw-r--r--. 1 postgres postgres 902 Dec  7 21:02 postgres3.sql
$ 

$ pg_dump --version
pg_dump (PostgreSQL) 9.3.5
$

Robert

Content of type "application/pgp-signature" skipped
