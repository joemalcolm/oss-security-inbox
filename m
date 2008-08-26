X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/26/6
Message-ID: <Pine.GSO.4.51.0808261025270.18466@faron.mitre.org>
Date: Tue, 26 Aug 2008 10:26:33 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: coley@...re.org
Subject: Re: CVE request: kernel: sctp: fix potential panics in the SCTP-AUTH API
Content-Type: text/plain; charset=utf-8


On Mon, 25 Aug 2008, Eugene Teo wrote:

> "[PATCH] sctp: fix potential panics in the SCTP-AUTH API.
>
> All of the SCTP-AUTH socket options could cause a panic if the extension
> is disabled and the API is envoked.

Use CVE-2008-3792, to be filled in later.

> Additionally, there were some additional assumptions that certain
> pointers would always be valid which may not always be the case."

Use CVE-2008-3793, to be filled in later.  I'm assuming that when
SCTP-AUTH is enabled, that these APIs are reachable from unprivileged
users?

- Steve
