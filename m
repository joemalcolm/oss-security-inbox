X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/25/46
Message-ID: <CALx_OUDxmuso3cVpcM9dUKobjQxiZFLC72d0py_4xbPuccsTuQ@mail.gmail.com>
Date: Thu, 25 Sep 2014 12:53:35 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security@...ts.openwall.com
Cc: Tavis Ormandy <taviso@...gle.com>, Chester Ramey <chet.ramey@...e.edu>,  Solar Designer <solar@...nwall.com>
Subject: Re: CVE-2014-6271: remote code execution through bash
Content-Type: text/plain; charset=utf-8

> Yeah, that general approach is probably the best.  I was just wondering.
> I don't really see the need to use a prefix and a suffix, though.

Prefix is definitely more valuable, because specific prefixes are
enforced by Apache and its ilk, but the suffix for the HTTP header ->
shell variable propagation is within attacker's control.

/mz
