X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/08/8
Message-ID: <alpine.GSO.2.20.1711081305160.6849@scrappy.simplesystems.org>
Date: Wed, 8 Nov 2017 13:13:20 -0600 (CST)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security@...ts.openwall.com
cc: "Jonas 'Sortie' Termansen" <sortie@...si.org>
Subject: Re: Race condition between UDP bind(2) and connect(2) delivers wrong datagrams
Content-Type: text/plain; charset=utf-8

On Wed, 8 Nov 2017, Eric Blake wrote:
>>
>> This issue is not that case because Darwin[1], DragonFly[2], FreeBSD[3],
>> GNU/Hurd (though by importing Linux man pages), Linux[4], NetBSD[5], and
>> OpenBSD[6] all document behavior compatible with POSIX[7].
>
> It doesn't matter what the implementations document (if their
> documentation is copying from POSIX), but what they actually DO.

For the purpose of this list (about security) it seems to me that the 
current behavior makes use of the recv(2) (or read(2)) system calls 
inherently insecure since there is no way to verify that a received 
message is from the expected source address.  The only work-around is 
to intentionally discard messages until no more messages are 
available, but this may discard valid messages.

This makes most common uses of recv(2) insecure.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
