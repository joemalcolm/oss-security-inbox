X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/20/9
Message-ID: <000701d272fc$329c12e0$97d438a0$@gmail.com>
Date: Fri, 20 Jan 2017 17:04:22 +0800
From: "idl3r" <idler1984@...il.com>
To: <oss-security@...ts.openwall.com>
Cc: "'Anarcheuz Fritz'" <anarcheuz@...il.com>
Subject: RE: CVE Request - Samsung Exynos GPU driver OOB read
Content-Type: text/plain; charset=utf-8

> Ah, so this isn't upstream in the main kernel tree, thanks for letting me
know,
> that's what I was most concerned about.
> 
> Hopefully Samsung figures a way to push this change out to all of their
> users... :)

You are welcome :) Hope they can learn faster from other vendors.

> It's "user controlled" through the drm interface?  Or something else?

The affected mali driver is not using drm interface yet, still the
traditional vendor defined interface.

Thanks,
James


