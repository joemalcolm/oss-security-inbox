X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/07/22/1
Message-ID: <CAHk-=whRsN13=0Ey1Db3+5k4ij5arawVArG7Pu2MMoVrONNYzg@mail.gmail.com>
Date: Sun, 21 Jul 2019 14:04:19 -0700
From: Linus Torvalds <torvalds@...ux-foundation.org>
To: Daniel Vetter <daniel@...ll.ch>
Cc: Tavis Ormandy <taviso@...il.com>, Bartlomiej Zolnierkiewicz <b.zolnierkie@...sung.com>,  Daniel Vetter <daniel.vetter@...ll.ch>, oss-security@...ts.openwall.com
Subject: Re: stack buffer overflow in fbdev
Content-Type: text/plain; charset=utf-8

On Sun, Jul 21, 2019 at 1:09 PM Daniel Vetter <daniel@...ll.ch> wrote:
>
> PS: git log -G disappoints by not using all the cores I have here ..

Yeah, "git grep" is threaded (but if you want more than 8 threads you
need to configure it). But "-G" is not.

Part of it is that "-G" is actually very very different from grep.
"grep" looks at all files, and is threaded over the number of files.

"-G" looks at each file diff pair, does a diff of them, and then does
a grep to see if the pattern is in the diff.

And usually the number of file diff pairs is fairly small, and it
would be non-trivial to parallelize it.

I guess git could parallelize over many commits, but it doesn't.

Side note: "-S" is usually faster than "-G". It skips the "create
diff" part, and instead just counts the number of occurrences of the
string in the diffpairs, and shows the end result is the number is
different. Odd semantics, but very useful exactly for the "when did
this appear or disappear" kind of thing.

So "git log -G fb_edid_add_monspecs" is indeed very slow.

If you limit the space that you grep over, you can speed things up
enormously. So something like

        git log -S fb_edid_add_monspecs drivers/video/fbdev/

isn't too horrendous.

                   Linus
