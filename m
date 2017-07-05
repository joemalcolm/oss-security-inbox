X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/06/3
Message-ID: <20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>
Date: Wed, 5 Jul 2017 17:26:47 -0500
From: "Patrick J. Volkerding" <security@...ckware.com>
To: oss-security@...ts.openwall.com
Subject: Re: systemd fails to parse user that should run service
Content-Type: text/plain; charset=utf-8

On 07/05/2017 04:14 PM, Robert Scheck wrote:
> +1 for both, the CVE and that this is a problem. The service should not be
> started with more (!) permissions simply if parsing username fails.

One would think that without any User= line specified, defaulting to
nobody:nogroup would be more sane than defaulting to root. Since the
User= mechanism exists, if you want something to run as root, you should
need to ask for it.



Download attachment "signature.asc" of type "application/pgp-signature" (196 bytes)
