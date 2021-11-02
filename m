X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/02/2
Message-ID: <4rs9o8oo-3q9s-1276-r921-6r9n436o758@inai.de>
Date: Tue, 2 Nov 2021 02:21:58 +0100 (CET)
From: Jan Engelhardt <jengelh@...i.de>
To: "Perry E. Metzger" <perry@...rmont.com>
cc: oss-security@...ts.openwall.com
Subject: Re: Trojan Source Attacks
Content-Type: text/plain; charset=utf-8

On Tuesday 2021-11-02 00:50, Perry E. Metzger wrote:

> On 11/1/21 16:51, Jan Engelhardt wrote:
>>> We have identified an issue affecting all compilers and interpreters that
>>> support Unicode.
>>> [...]
>>> The attached paper describes an attack paradigm -- which we believe to be
>>> novel -- discovered by security researchers at the
>>> University of Cambridge.
>> Not so novel. At one time, this picture made the rounds
>> (https://twitter.com/acronis/status/1019152990022787072 - the pic is likely
>> older than this 2018 tweet), and anyone who knew that Unicode had zero-width
>> characters already made the connection.
>
> If it was known to everyone, then why are so many language interpreters and
> compilers impacted? [...] (Claims that people who write
> compilers are fools will be cheerfully ignored.)

Perhaps a case of "not my problem".

The filesystem layer of many an operating system does not care about filenames.
The only rules, if any, are the special meaning of the hierarchy separator (if
any) and perhaps a string terminator (if any).

Compilers - could be the same thing. As long as the grammar is satisfied,
why should they bother what comes in. ("Write/use better editors and frontends")
