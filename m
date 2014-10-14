X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/14/2
Message-ID: <CACYkhxgk6oKOxoYR2DRp1BE5yd5oCAcPyvbL9tTqzQ-eTL4mxQ@mail.gmail.com>
Date: Tue, 14 Oct 2014 12:39:48 +1100
From: Michael Samuel <mik@...net.net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: ejabberd compression allows cirucumvention of encryption despite starttls_required
Content-Type: text/plain; charset=utf-8

On 14 October 2014 00:09, Hanno Böck <hanno@...eck.de> wrote:
> I think this deserves a CVE:
> http://mail.jabber.org/pipermail/operators/2014-October/002438.html

If a client is willing to do that, then an attacker can simply force downgrade
the client and connect to the server using TLS. (Assuming client
certificates aren't in use)

Regards,
  Michael
