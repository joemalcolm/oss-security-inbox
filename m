X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/18/12
Message-ID: <20160718182341.GC18755@netmeister.org>
Date: Mon, 18 Jul 2016 14:23:41 -0400
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: Re: A CGI application vulnerability for PHP, Go, Python and others
Content-Type: text/plain; charset=utf-8

Richard Rowe <arch.richard@...il.com> wrote:
 
> The consequence is that an attacker can force a proxy of their choice to be
> used. This proxy receives the full request for anything sent over HTTP
> using a vulnerable client. It can also act in a malicious way to tie up
> server resources (a "reverse slowloris").

I know you mentioned it on https://httpoxy.org/, but I think it's worth
stressing explicitly again:  use of HTTPS for all requests made by the
application, internal as well as external, defeats this vulnerability
(provided certificates are actually verified).

-Jan
