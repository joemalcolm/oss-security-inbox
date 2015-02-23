X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/23/15
Message-ID: <20150223135131.405@usenet.piggo.com>
Date: Mon, 23 Feb 2015 12:52:21 +0000 (UTC)
From: Sébastien Delafond <seb@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: mod-gnutls: GnuTLSClientVerify require is ignored
Content-Type: text/plain; charset=utf-8

On 2015-02-22, Sébastien Delafond <seb@...ian.org> wrote:
>
> Hi,
>
> mod-gnutls doesn't consider the server's client verify mode, even if the
> verify mode was unset in the directory configuration. As a result,
> invalid certificates are ignored and clients can connect and receive
> data as long as they presented any certificate whatsoever.
>
>   Debian bug: https://bugs.debian.org/578663
>   Patch and detailed description: https://github.com/airtower-luna/mod_gnutls/commit/5a8a32bbfb8a83fe6358c5c31c443325a7775fc2
>
> Could you please assign a CVE for this issue ?

Explicitely adding cve-assign to Cc.

Cheers,

--Seb

