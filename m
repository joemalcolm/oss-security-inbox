X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/09/6
Message-ID: <CALx_OUDJpLzJ+nKSBRXpm2KTNjB4JNpuyB6-EHnEzAMW0E053Q@mail.gmail.com>
Date: Wed, 8 Oct 2014 19:30:55 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Thoughts on Shellshock and beyond
Content-Type: text/plain; charset=utf-8

> I think you're taking on a too rigid mindset here.

Well, I just honestly don't understand how adding the prefix to
environment variable fits in the mold of the rule you cite ("When an
existing construct in a system is widely expected to be used for
storing data, avoid overloading it for use of storing code"). It
strikes me as the epitome of overloaded, in-band transmission of code
alongside with data - pretty close to the menace of HTML + JS, just
done in a slightly smarter way.

If what Florian has implemented embodies the spirit of the rule we're
preaching here, I'm all for it, but not sure if most developers would
interpret it this way. A natural interpretation would be, "don't put
functions in the environment", which is fine, except that there aren't
many other places to put them if you really want to implement exports
in the first place.

/mz
