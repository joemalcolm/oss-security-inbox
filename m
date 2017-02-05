X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/05/9
Message-ID: <1486328960.8813.4.camel@gmail.com>
Date: Sun, 05 Feb 2017 22:09:20 +0100
From: Ailin Nemui <ailin.nemui@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Irssi 1.0.0 minor remote memory leak
Content-Type: text/plain; charset=utf-8

On Sun, 2017-02-05 at 21:54 +0100, Ailin Nemui wrote:
> memory it wants to leak. The issue is a missing free of the base64
> data. Please advise whether that issue needs a CVE?  

Note that, a malicious server would have many ways to exhaust Irssi
resources which we see no urgency to protect against, for example by
force joining people to an endless number of channels, open many
queries etc.
