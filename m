X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/18/7
Message-ID: <CAH72vigDpcFLGufy3KSWJrRrqKypTcR3M_-aV7Br9vr2dVy6TQ@mail.gmail.com>
Date: Tue, 18 Nov 2014 12:17:12 +0100
From: Źmicier Januszkiewicz <gauri@....by>
To: oss-security@...ts.openwall.com
Subject: Re: Fuzzing findings (and maybe CVE requests) - Image/GraphicsMagick, elfutils, GIMP, gdk-pixbuf, file, ndisasm, less
Content-Type: text/plain; charset=utf-8

2014-11-18 4:37 GMT+01:00 Robert Watson <robertcwatson1@...il.com>:

> What about using fuzzing to find those tools withOUT vulnerabilities and
> "certifying them" in some way as safe for all inputs?

I think the main issue with this approach would be that one cannot
prove that something DOES NOT exist. One can easily prove that
something DOES exist by producing evidence: you can prove a bug exists
by providing reproduction steps or a proof-of-concept file that
triggers the issue. On the other hand, it would be very problematic to
prove a program is bug-free -- what evidence can you bring to support
that? Since one can theoretically produce an infinite amount of test
cases given e.g. a grammar, how would you test a program against "all
inputs"? If it's via fuzzing, who can "certify" that a fuzzer you used
indeed produced "all inputs"? Would we need fuzzer certifications,
then?

I think every time after a product passes an audit, a certification,
or whatever, another guy comes about and spots a security issue nobody
else has spotted before. Is the product still secure? Does that kind
of certification actually mean anything with respect to "having no
bugs"? I strongly doubt that.

Cheers,
Z.
