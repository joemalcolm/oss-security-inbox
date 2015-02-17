X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/17/8
Message-ID: <87oaosqkgt.fsf@mid.deneb.enyo.de>
Date: Tue, 17 Feb 2015 22:47:14 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-Request - bitbake
Content-Type: text/plain; charset=utf-8

* Maxin John:

> Executing "bitbake -g -u depexp <package>" when DISPLAY is not
> properly set causes segfault and a denial of service (through OOM) via
> a crafted script.
>
> Bug Report URL:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=7299

I'm not sure if this is a security vulnerability in Bitbake.  It's a
build tool, right?  If the build jobs are not constraint externally,
the build commands could cause resource exhaustion in their own right,
I think.
