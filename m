X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/11/5
Message-ID: <54DB2135.5000401@oracle.com>
Date: Wed, 11 Feb 2015 09:30:29 +0000
From: John Haxby <john.haxby@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: wordexp(3)
Content-Type: text/plain; charset=utf-8

On 10/02/15 17:57, Rich Felker wrote:
> Obviously implementations using /bin/sh were
> vulnerable to shellshock on systems where /bin/sh is bash.

I must admit, that was my first thought.

Closely followed by wondering whether this gives an interesting new
vector in spite of the BASH_FUNC_...() wrapper.

jch
