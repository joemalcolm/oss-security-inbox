X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/24/5
Message-ID: <549B434D.8080804@mccme.ru>
Date: Thu, 25 Dec 2014 01:50:53 +0300
From: Alexander Cherepanov <cherepan@...me.ru>
To: oss-security@...ts.openwall.com
Subject: Re: Imagemagick fuzzing bug
Content-Type: text/plain; charset=utf-8

On 2014-12-25 00:32, Gynvael Coldwind wrote:
>> You are aware that there is graphicsmagick which shares lots of code
>> with im (it's an early fork)? It'd be nice to also report these issues
>> to them if they apply. (I also reported a couple of issues in both
>> im/gm lately and devs were always quick to fix things)
>>
>
> Do you know if either im or gm backport fixes from each other?
> I fuzzed only im, so I've reported to im. I don't mind reporting to both in
> the future, but if they DO backport fixes, that would lead into collisions
> (i.e. two different fixes for one bug, makes merging harder).

I don't know about security fixes specifically but they have this in the 
FAQ:

http://www.graphicsmagick.org/FAQ.html#how-often-does-graphicsmagick-pick-up-new-code-from-imagemagick

GraphicsMagick never picks up new code from ImageMagick as distributed 
by ImageMagick Studio LLC. [...]

-- 
Alexander Cherepanov
