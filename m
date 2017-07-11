X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/11/11
Message-ID: <62d1bbfa-25f2-427c-e5ca-8edadc525800@thiem.email>
Date: Tue, 11 Jul 2017 14:59:09 +0200
From: Jonas Thiem <jonas@...em.email>
To: oss-security@...ts.openwall.com, "Dr. Thomas Orgis" <thomas.orgis@...-hamburg.de>
Subject: Re: mpg123: global buffer overflow in III_i_stereo (layer3.c)
Content-Type: text/plain; charset=utf-8



On 11.07.2017 10:02, Dr. Thomas Orgis wrote:
> My program accesses memory that belongs
> to my program … unless the compiler inserts forbidden zones in there.

So why do you know for sure that no program would store private keys or
other sensitive data there? Or is this only static data by the mp3
library itself?

It seems to me like this could still be a major security issue beyond a
simple denial of service.
