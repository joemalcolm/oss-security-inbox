X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/11/3
Message-ID: <20160611055627.GA26999@1wt.eu>
Date: Sat, 11 Jun 2016 07:56:27 +0200
From: Willy Tarreau <w@....eu>
To: John Johansen <john.johansen@...onical.com>
Cc: oss-security@...ts.openwall.com, Jann Horn <jannh@...gle.com>, Tyler Hicks <tyhicks@...onical.com>, "security@...nel.org" <security@...nel.org>
Subject: Re: [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ
Content-Type: text/plain; charset=utf-8

John, Jann,

On Fri, Jun 10, 2016 at 02:46:23PM -0700, John Johansen wrote:
> The flaw in eCryptfs was assigned CVE-2016-1583.
> 
> If backporting these patches to kernels pre 4.6 you may need to
> cherry-pick patch 6a480a7842545ec520a91730209ec0bae41694c1

In the future, please add such precious information to the relevant
commit message, because it significantly helps doing backports and
everyone does not necessarily read a security list archives at the
same time.

Thanks!
Willy
