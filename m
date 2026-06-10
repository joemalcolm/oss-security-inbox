X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/10/21
Message-ID: <b48cc3f4-79f4-416c-8bc7-c38ebd41d881@foolishgames.com>
Date: Wed, 10 Jun 2026 18:22:55 -0400
From: Lucas Holt <luke@...lishgames.com>
To: oss-security@...ts.openwall.com, bumsrakete <bumsrakede@...ton.me>
Subject: Re: CVE-2026-45257: FreeBSD kTLS-RX in-place AES-GCM decrypt over sendfile(2) EXTPG mbufs to page-cache write / local root
Content-Type: text/plain; charset=utf-8

On 6/10/26 15:19, bumsrakete wrote:

> ## Affected versions
>
> Vulnerable (verified or by inspection):
>    - FreeBSD 13.0, 13.1, 13.2, 13.3, 13.4
>    - FreeBSD 14.0, 14.1, 14.2
>    - FreeBSD 15.0-RELEASE (verified on 15.0-RELEASE-p5/amd64)

This would also impact MidnightBSD 4.0+

Lucas

