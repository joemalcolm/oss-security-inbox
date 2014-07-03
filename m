X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/03/20
Message-ID: <20140703222715.739ef963@chromobil.localdomain>
Date: Thu, 3 Jul 2014 22:27:15 +0200
From: Stefan Bühler <stbuehler@...httpd.net>
To: oss-security@...ts.openwall.com
Subject: Re: Varnish - no CVE == bug regression
Content-Type: text/plain; charset=utf-8

Hi,

On Thu, 3 Jul 2014 21:07:39 +0100
Marek Kroemeke <kroemeke@...il.com> wrote:

> I doubt that CDNs like Akamai, Fastly(varnish?), Cloudflare(nginx?)
> etc.. would agree that the fact that a core part of their
> infrastructure could be DoSed by one of their users is not a security
> vulnerability, but I'm happy to be in minority regarding this view.

As long as varnish has no high priority to protect itself against
malicious backends I'd say it is not suited to be a frontend proxy in a
CDN network (you could use a seperate varnish instance for each
application/"trust group" though).

Different implementations have different priorities; choose one that
matches your requirements.

regards,
Stefan
