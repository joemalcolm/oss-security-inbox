X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/24/1
Message-ID: <Ye2pUrZ81PjFsary@jasmine.lan>
Date: Sun, 23 Jan 2022 14:15:30 -0500
From: Leo Famulari <leo@...ulari.name>
To: John Helmert III <ajak@...too.org>
Cc: oss-security@...ts.openwall.com
Subject: Re: WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001
Content-Type: text/plain; charset=utf-8

On Sat, Jan 22, 2022 at 10:02:46PM -0600, John Helmert III wrote:
> With this big of a gap between releases and security advisories, it
> seems that users and distributors will be unaware of the necessity of
> updating due to security fixes, sometimes for weeks after the
> release. Why not always publish advisories close to new releases?

Since (almost?) every WebKitGTK update includes fixes for bugs that
allow remote execution of arbitrary code, I'd expect that distributors
are well aware that every update is critical.

And given the complexity of a fully-featured browser engine, it probably
cannot be any other way: it's the same story for Firefox and Chrome.
