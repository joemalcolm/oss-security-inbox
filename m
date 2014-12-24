X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/24/4
Message-ID: <CAAnPYQ7NhQmfN1oRK6K7+_ehCC12iKftpxY6nNHvJF7vSjeY2Q@mail.gmail.com>
Date: Wed, 24 Dec 2014 21:32:57 +0000
From: Gynvael Coldwind <gynvael@...dwind.pl>
To: oss-security@...ts.openwall.com,  Bastien ROUCARIES <roucaries.bastien@...il.com>
Cc: jodie.cunningham+osssecurity@...il.com
Subject: Re: Imagemagick fuzzing bug
Content-Type: text/plain; charset=utf-8

Hey,

Original reporter from google side here.


> You are aware that there is graphicsmagick which shares lots of code
> with im (it's an early fork)? It'd be nice to also report these issues
> to them if they apply. (I also reported a couple of issues in both
> im/gm lately and devs were always quick to fix things)
>

Do you know if either im or gm backport fixes from each other?
I fuzzed only im, so I've reported to im. I don't mind reporting to both in
the future, but if they DO backport fixes, that would lead into collisions
(i.e. two different fixes for one bug, makes merging harder).

Cheers,
Gynvael

