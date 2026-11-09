X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/26
Message-ID: <CAOp4FwRmEMwxWdOC3O5W4ZG5nTFQZaYKy+hW37S7EhqqD7oztg@mail.gmail.com>
Date: Mon, 9 Nov 2026 22:43:38 +0400
From: Loganaden Velvindron <loganaden@...il.com>
To: oss-security@...ts.openwall.com
Cc: musl@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On Fri, 6 Nov 2026 at 21:17, Martin Steigerwald <martin@...htvoll.de> wrote:
>
> Greetings.
>
> Matt Johnston - 06.11.26, 03:05:13 CET:
> > Prior to ~2019 when the OpenSSH change was made, Debian
> > would have shown a different manpage that only documents
> > NULL for error [1].

This is the approach I'm taking on my build of Alpine Linux.

I would like to also submit a patch to musl to have this as a build option.
@musl, any interest in having this as a build option ?
