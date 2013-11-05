X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/05/2
Message-ID: <20131105100235.19a5cf16@chromobil.localdomain>
Date: Tue, 5 Nov 2013 10:02:35 +0100
From: Stefan Bühler <stbuehler@...httpd.net>
To: oss-security@...ts.openwall.com
Subject: Re: openssl default ciphers
Content-Type: text/plain; charset=utf-8

On Mon, 04 Nov 2013 21:02:44 +0100
leToff <letoff@...il.com> wrote:

> On 04/11/2013 20:40, Eric H. Christensen wrote:
> >
> > BEAST is now mitigated on most browsers so we can drop the very
> > broken RC4 cipher.
> I guess Stephan is working with Safari...
> 
> leToff

This is certainly not about which browser I am using, or what clients
I have to support with my servers. Also the latest Safari versions
support TLS1.2 (this itself doesn't mitigate BEAST on TLS1.0
connections, yes...)


I didn't mention this in my first post: this is not only about setting
a default cipher suite in a new software, but also about what I propose
to dist maintainers to backport.

So in my case (lighttpd SNI bug) I could add "HIGH:!aNULL@...ENGTH" as
default cipher string in the patch fixing the SNI bug. Do you who
voted so fast for dropping MEDIUM also vote for backporting such
change to all long term support dists?

In this case I think it would be better if instead openssl gets fixed
to use "HIGH:!aNULL@...ENGTH" as default (including backporting this
fix), fixing all applications using openssl at once.


regards,
Stefan

Download attachment "signature.asc" of type "application/pgp-signature" (837 bytes)
