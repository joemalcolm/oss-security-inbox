X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/10/20
Message-ID: <CAJ6=jSCBZjEsKoOhq=AJMcF+HcDcks9=kz57a-xXWJDrKw7bTQ@mail.gmail.com>
Date: Mon, 10 Apr 2017 07:55:43 -0700
From: Leandro Pereira <leandro@...dinfo.org>
To: oss-security@...ts.openwall.com
Subject: Re: alloca in inline functions can be dangerous
Content-Type: text/plain; charset=utf-8

On Mon, Apr 10, 2017 at 7:36 AM, Jason A. Donenfeld <Jason@...c4.com> wrote:
> I'm interested if anybody else has encountered this behavior or has any
> thoughts about it.

Yes, and I usually mark those functions with __attribute__((noinline))
to avoid precisely this kind of behavior.

-- 
 Leandro
