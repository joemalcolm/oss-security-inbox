X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/27/5
Message-ID: <CALx_OUC40AYVDPSZ3v19iS9Z0qgvSyJt5ju14RTsOeicE4G-Wg@mail.gmail.com>
Date: Fri, 26 Sep 2014 23:47:17 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security@...ts.openwall.com
Subject: Re: Fwd: Non-upstream patches for bash
Content-Type: text/plain; charset=utf-8

FWIW, I'm pretty sure I bumped into another bad-looking and probably
exploitable parser issue; for now, I sent the details privately to
Chet, Florian, and Alexander. But the bottom line is, the parser
really shouldn't be exposed to the outside world.
