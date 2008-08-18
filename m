X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/18/6
Message-ID: <Pine.GSO.4.51.0808181541070.19112@faron.mitre.org>
Date: Mon, 18 Aug 2008 15:42:20 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: mktemp
Content-Type: text/plain; charset=utf-8


On Mon, 18 Aug 2008, Nico Golde wrote:

> This is known but as I wrote in the bug report:
> "the file is safely created with O_EXCL and 0600, still
> unsafe if used with -u"

Given that -u is "unsafe mode" with a disclaimer against race conditions
(at least based on the manpage I looked at), I'm of the mindset that you'd
flag an application for using mktemp -u, but not mktemp itself.

- Steve
