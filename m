X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/09/4
Message-ID: <CACYkhxjv+J3KCceP-EFfV0T7DpAwLvcHDhgoiBT_hzLWYY1cVA@mail.gmail.com>
Date: Tue, 9 Sep 2014 15:22:36 +1000
From: Michael Samuel <mik@...net.net>
To: oss-security@...ts.openwall.com
Subject: Re: [CVE Requests] rsync and librsync collisions
Content-Type: text/plain; charset=utf-8

[ A reminder - librsync is a different codebase and protocol to rsync ]

On 9 September 2014 15:06, Loganaden Velvindron <loganaden@...il.com> wrote:
> Have the details been made public yet ?

The exploit code and example colliding blocks are not public, but I
don't believe it
would be hard to attempt your own exploit, especially against librsync
with default
parameters (a birthday attack is trivial).

There's an experimental patch for librsync:
https://github.com/therealmik/librsync/tree/blake2

Some review (especially by upstream) is required, and some agreement among users
on details is required.  See
https://github.com/librsync/librsync/issues/5 if you maintain
a downstream project (such as Duplicity).

I don't know what's happening with rsync upstream, there hasn't been much
communication.  I attempted a patch, but it got a bit hairy due to
hard-coded details in
the code (such as hash output length).

Regards,
  Michael
