X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/22/5
Message-ID: <AANLkTimYJ2WO0ukQcAqZMqBAOb8u95KDbYcks_V9b38m@mail.gmail.com>
Date: Tue, 22 Mar 2011 06:55:48 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE requests - kernel: irda/decnet issues
Content-Type: text/plain; charset=utf-8

On Tue, Mar 22, 2011 at 3:27 AM, Eugene Teo <eugene@...hat.com> wrote:
> Both are reported by Dan Rosenberg. Description of the issues can be found
> in the following links:-
>
> irda: validate peer name and attribute lengths
> http://marc.info/?l=linux-netdev&m=130067113628164&w=2
>
> DECnet: need to validate user data and access data?
> http://marc.info/?l=linux-netdev&m=130075091711143&w=2
>

Steve Whitehouse provided some clarification on DECnet, which not an
actual security issue (thus the question mark in the thread title):
http://marc.info/?l=linux-netdev&m=130078511604840&w=2

IrDA seems to be valid though.

-Dan

> Thanks, Eugene
> --
> main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
>
