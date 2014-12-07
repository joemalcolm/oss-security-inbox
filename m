X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/07/11
Message-ID: <20141207195503.GP2055@betterave.cristau.org>
Date: Sun, 7 Dec 2014 20:55:03 +0100
From: Julien Cristau <jcristau@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: postgresql: pg_dump creates world-readable dump
Content-Type: text/plain; charset=utf-8

On Sun, Dec  7, 2014 at 20:31:27 +0100, Robert Scheck wrote:

> $ pg_dump postgres > postgres1.sql
> $ pg_dump postgres > postgres2.sql
> $ pg_dump postgres > postgres3.sql
[...]
> 
> I do not know which behaviour you are exactly seeing (and for which
> version of PostgreSQL) but above seems absolutely fine to me.
> 
You're not showing anything about pg_dump if you're having the shell
open the file.

Cheers,
Julien
