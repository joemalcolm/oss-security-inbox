X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/01/8
Message-ID: <Pine.GSO.4.51.0807011754080.19497@faron.mitre.org>
Date: Tue, 1 Jul 2008 17:57:53 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com, Jamie Strandboge <jamie@...onical.com>
Subject: Re: CVE request for dnsmasq DoS
Content-Type: text/plain; charset=utf-8


On Mon, 30 Jun 2008, Jamie Strandboge wrote:

> Hi,
>
> There is a remote DoS in dnsmasq 2.25 (and presumably earlier) that is
> fixed in 2.26. Details can be found at [1]. Can we get a CVE assigned
> for this?

I'm not sure I fully understand Thierry Carrez' comment about the security
implications of this issue.  It seems like an exploit would require a
malicious DHCP server, in which case isn't DHCP service already
compromised?  If so, then a crash of dnsmasq (null dereference?) doesn't
seem to be any worse than the loss of DHCP itself.

- Steve
