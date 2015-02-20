X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/20/9
Message-ID: <CALoOobMabfas=TDaWkQBNNTz9Rq-F1tCGb3A0-ijrUo1SFK2HA@mail.gmail.com>
Date: Thu, 19 Feb 2015 23:50:37 -0800
From: Paul Pluzhnikov <ppluzhnikov@...gle.com>
To: Rich Felker <dalias@...c.org>
Cc: oss-security@...ts.openwall.com
Subject: Re: Fixing the glibc runtime linker
Content-Type: text/plain; charset=utf-8

On Thu, Feb 19, 2015 at 11:34 PM, Rich Felker <dalias@...c.org> wrote:

> I don't see how you think this is a security issue at all.

I think the point is that 'system(argv[1])' is a hard mistake to make
by accident, but empty or relative RPATH is easy, and is not
immediately discoverable: you have to run 'readelf -d a.out' and then
think about what you see.


-- 
Paul Pluzhnikov
