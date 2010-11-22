X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/22/3
Message-ID: <AANLkTikK3k2YJudnA50amoERCjL-S2mDgw5kooOsCScM@mail.gmail.com>
Date: Sun, 21 Nov 2010 18:04:10 -0700
From: Kurt Seifried <kurt@...fried.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: gif2png: command-line buffer overflow problem
Content-Type: text/plain; charset=utf-8

> How could this possibly be exploited?  If you can trick a user into
> running gif2png [exploit payload], then that user has already lost.

It was reported that some CGI scripts/etc use it automatically so by
using a long file name it may be possible.

Personally I'm not worried but Debian/Fedora have fixed it as a
security issue so if that is the case a CVE would be nice for tracking
purposes.

> See also:
> make `perl -e 'print "A"x10000'`
>
> -Dan


-- 
Kurt Seifried
kurt@...fried.org
tel: 1-703-879-3176
