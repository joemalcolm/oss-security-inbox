X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/18/5
Message-ID: <CAA7hUgE_k-kCW=N-ddE=Z9V=_XnH6d=-j6V+V_Y+JmJQFx2ROw@mail.gmail.com>
Date: Tue, 18 Nov 2014 09:52:26 +0100
From: Raphael Geissert <geissert@...ian.org>
To: Open Source Security <oss-security@...ts.openwall.com>
Subject: Re: Fuzzing findings (and maybe CVE requests) - Image/GraphicsMagick, elfutils, GIMP, gdk-pixbuf, file, ndisasm, less
Content-Type: text/plain; charset=utf-8

On 17 November 2014 17:49, Raphael Geissert <geissert@...ian.org> wrote:
[...]
> Just to give an example of an in-browser crash, the other day I opened
> a 4-years old pdf of a random company and it made chromium's pdf
> plugin crash.
> No problem opening it with pdf.js under firefox or poppler.

Apparently it wasn't clear enough to some people the intention of the
example I gave (which is obviously flawed as a comparative argument).

It was a way to say: bugs do exist on an code base, even on scenarios
that were not specifically setup to try to identify them, such as when
fuzzing.

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
