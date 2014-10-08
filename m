X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/08/13
Message-ID: <CALx_OUAdMG689eHBe54FvXLmcL6mYugy81wEhh3pfrwunfdqqA@mail.gmail.com>
Date: Wed, 8 Oct 2014 07:26:25 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Re: Thoughts on Shellshock and beyond
Content-Type: text/plain; charset=utf-8

> Note that the hardening fix that was provided in a rush
> post-disclosure is not the best one. [...]
> It breaks backward compatibility because it restricts which
> functions can be exported. For instance, you can't export a
> /bin/rm function anymore (was useful as a debugging tool).

Hmm, wasn't that breakage actually caused by the first (original)
patch, which added a call to legal_identifier()? We had problems with
the patch specifically because it managed to break several instances
where people were trying to export "fake object-oriented" function
names such as foo::bar.

/mz
