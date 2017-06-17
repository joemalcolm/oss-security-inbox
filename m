X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/17/5
Message-ID: <20170617122716.gsaalyhxkv7ekmdm@perpetual.pseudorandom.co.uk>
Date: Sat, 17 Jun 2017 13:27:16 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: two vulns in uClibc-0.9.33.2
Content-Type: text/plain; charset=utf-8

On Fri, 16 Jun 2017 at 20:54:14 -0700, Michal Zalewski wrote:
> > Uclibc is a C library like GNU libc.  Why would a JS engine not use it?
> 
> Because they usually use stuff like pcre or irregexp.

Not all regular expressions are equal.

JavaScript regular expressions use the regex dialect originating in
Perl, which is also used in Python and libpcre (and, via libpcre,
in PHP). The two standardized POSIX dialects implemented by Unix C
libraries (basic regexes as used in grep and sed, and extended regexes
as used in grep -E and sed -E) aren't fully compatible with the Perl
syntax: for example \s matches the letter s in BREs or EREs, but
matches any whitespace character in the Perl-derived dialects. This makes
the POSIX regex functions not particularly useful for implementors of
a JavaScript runtime.

    S
