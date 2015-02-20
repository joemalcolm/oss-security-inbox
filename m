X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/20/11
Message-ID: <CALoOobPzwfx+gz=Y8bMP4573OT7mUEZ6qj+a-3LZNcsRuNkCRA@mail.gmail.com>
Date: Fri, 20 Feb 2015 00:14:47 -0800
From: Paul Pluzhnikov <ppluzhnikov@...gle.com>
To: Rich Felker <dalias@...c.org>
Cc: oss-security@...ts.openwall.com
Subject: Re: Fixing the glibc runtime linker
Content-Type: text/plain; charset=utf-8

On Thu, Feb 19, 2015 at 11:57 PM, Rich Felker <dalias@...c.org> wrote:

> How is an empty or relative rpath easy?

all: foo
foo: foo.c
        ${CC} -Wl,-rpath=${VAR} -o $@ $^


If VAR is unset, or set to relative path, resulting binary will be "bad".

Quoting original Tim's message:

> Over the last couple of years I've spent a good deal of time dealing with
> vendors who, for one reason or another have shipped binaries where it is
> possible to inject "untrusted" code into running processes, notably but not
> exclusively via DT_RPATH.

I can easily believe that such binaries are fairly common.



-- 
Paul Pluzhnikov
