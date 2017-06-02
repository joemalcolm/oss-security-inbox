X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/02/9
Message-Id: <85f955b3d43c6455@courtesan.com>
Date: Fri, 02 Jun 2017 12:55:10 -0600
From: "Todd C. Miller" <Todd.Miller@...rtesan.com>
To: oss-security@...ts.openwall.com
Subject: Re: Arbitrary terminal access via sudo on Linux
Content-Type: text/plain; charset=utf-8

On Fri, 02 Jun 2017 12:51:55 -0600, Kurt Seifried wrote:

> which says it is NOT exploitable, but you're saying that it is actually
> exploitable? If confirmed yes I'll get you a new CVE for this asap. Thanks.

The file overwrite issue is not exploitable in 1.8.20p1.
However, the arbitrary tty access IS exploitable in 1.8.20p1.

 - todd
