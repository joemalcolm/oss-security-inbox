X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/25/16
Message-ID: <20141126002805.7166f8b2@pc>
Date: Wed, 26 Nov 2014 00:28:05 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Cc: Tobias Stoeckmann <tobias@...eckmann.org>
Subject: OpenBSD patch issue also affects GNU patch
Content-Type: text/plain; charset=utf-8

Hi,

I saw this
http://marc.info/?l=openbsd-tech&m=141693055412785&w=2

And thought "let's try this on GNU patch on my linux sys".

And bang... segfault.

I don't know if this is a random coincidence or if gnu patch and
openbsd patch share some common ancestor code (haven't checked details).

valgrind output indicates this is an oob write issue:
==22957== Invalid write of size 1
==22957==    at 0x40904A: another_hunk (pch.c:1902)
==22957==    by 0x40304E: main (patch.c:366)
==22957==  Address 0x80000000051d3b82 is not stack'd, malloc'd or
(recently) free'd


Reported upstream:
https://savannah.gnu.org/bugs/?43700

cu,
-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Content of type "application/pgp-signature" skipped
