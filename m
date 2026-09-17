X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/17/1
Message-ID:  <SYDP300MB2666705B60E95BF5BF37B7F717EEB82@SYDP300MB266670.AUSP300.PROD.OUTLOOK.COM>
Date: Thu, 17 Sep 2026 03:08:00 +0000
From: Peter Gutmann <pgut001@...auckland.ac.nz>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
CC: Sam James <sam@...too.org>, Clemens Lang <cllang@...hat.com>, "Lexi Groves (49016)" <contact@....fail>
Subject: Re: Retrospective by 'gpg.fail' authors
Content-Type: text/plain; charset=utf-8

Soatok Dreamseeker <soatok.dhole@...il.com> writes:

>So... why not delete it? Unmaintained code is a liability (and,
>categorically, forgotten about code is not being maintained).

Apart from the obligatory XKCD reference:

https://xkcd.com/1172/

there's the secondary problem that it's not clear which code is obsolete and/
or can be safely removed.  I was recently talking with the developer of
another well-known OSS project on issues found by frontier AI models in them
and we both mentioned that, totally unscientifically, around half of all
issues found were in code that was 20 or more years old and, at least in my
case, wasn't bugs but design decisions and tradeoffs made 20 or more years
ago.  Given that it's open source with an unknown number of downstream users
doing unknown things with it, there's no way to tell whether it's safe to
remove or not.

Peter.
