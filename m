X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/07/3
Message-ID: <au6GINIUhkK5eodz@mertle>
Date: Fri, 6 Nov 2026 21:00:00 -0500
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On 2026-11-06 23:57:43, Loganaden Velvindron wrote:
> I think it's time for musl libc to revisit the idea and return NULL on
> failure and see which software is still breaking.

It was easy to lose in the noise, but musl is not the only one doing
this:

  https://github.com/besser82/libxcrypt/blob/develop/configure.ac#L322
