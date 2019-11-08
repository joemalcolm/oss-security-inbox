X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/11/08/4
Message-Id: <5B458214-EF60-45B1-B20C-585B5306D66A@oracle.com>
Date: Fri, 8 Nov 2019 12:29:50 +0000
From: John Haxby <john.haxby@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|
Content-Type: text/plain; charset=utf-8



> On 8 Nov 2019, at 12:06, John Haxby <john.haxby@...cle.com> wrote:
> 
> In this particular case, the assert() will always trigger if the assert is on "a > INT_MAX-100" because that is well defined.   Does ubsan catch this issue?

Answering my own question:

foo.c:6:2: runtime error: signed integer overflow: 2147483647 + 99 cannot be represented in type 'int'
a.out: foo.c:6: foo: Assertion `a+100 > a' failed.

jch

Download attachment "signature.asc" of type "application/pgp-signature" (269 bytes)
