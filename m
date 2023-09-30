Received: (qmail 27732 invoked by uid 550); 30 Sep 2023 19:21:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18136 invoked from network); 30 Sep 2023 19:12:43 -0000
Date: Sat, 30 Sep 2023 20:26:45 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20230930182645.zZWIG%steffen@sdaoden.eu>
In-Reply-To: <ZRdyaYEi9YOZUXAg@codewreck.org>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
 <ZRXlPoozp5n+cWv1@itl-email>
 <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
 <7f60d2e7-59ca-13cd-9da1-473bd70dd5bb@juniper.net>
 <3708d220187cfe4a2f03f53067edfd15f1cbf8b5.camel@orlitzky.com>
 <ZRdyaYEi9YOZUXAg@codewreck.org>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-521-gb67d2a5fa1
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Rust programs in distrbutions (Was:
 CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx)

Dominique Martinet wrote in
 <ZRdyaYEi9YOZUXAg@codewreck.org>:
 ...
 |For what it's worth,[.]

I want to point out to the surprise of many that languages like
C and C++ allow the possibility to create and use collection aka
container as well as string objects through which access at
invalid offsets etc cause runtime errors, or assertions aka
panics, however desired.
The same is true for loaders of multimedia formats, one can use
"functions" which ensure overflow does not occur.
On the other hand to me rust is a terrible thing, and often the
file prologues with lots of [] directives are deep and dark
forests.  This is of course my personal opinion only.
Objective fact is that many of the OSS tools which get CVEs here
do not see any noticeable money in a market of many many billion
and with tens of thousands of programmers; i do not count the
multi-million-line monsters browsers and offices here, it is only
about the hundreds to thousands of topic libraries, and the
hundreds to thousands little programs which make up a system.
I am super happy that OpenSSL is now funded!
It has an illness factor that it is ok to spend lots of time and
money for a from-scratch rewrite in "safe" language XY (rust, go,
swift (that i at least like a bit) etc), instead of allowing
people to put some sense in software which possibly was written
in a rapid development mode to fit some desire or lack.  Then
again from scratch rewrites of something that already has seen
a mature state regarding desired functionality, interface etc
may make things better than something out in the blue, started on
a friday night, and then filled over time with more and more
functionality as the smoke cleared away.
Putting blame on languages in specialist forums which know better
seems a bit odd.  Most bugs i unfortunately produce are logic
errors, no language will help.  Or recently a memory leak upon
SIGINT that causes this old software to longjmp away, i hope for
a rewrite to get rid of the jumps.
But yes yes, automatic checks and such are nice, i started (over
perl) with JAVA that does this.  I heard (IANA TZ started using
it) that new ISO C ships with checked arithmetic.  Maybe that
comes twenty years too late.  Maybe special types or prefixes
could have been used long ago to achieve the same more nicely,
compiler sizes seem not to be the issue.  But you _can_ if you
_want_ or _need_, .. since ever.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
