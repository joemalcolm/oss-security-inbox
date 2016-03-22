X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/22/4
Message-ID: <1458687604.4129.2.camel@gmail.com>
Date: Tue, 22 Mar 2016 19:00:04 -0400
From: Daniel Micay <danielmicay@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption
Content-Type: text/plain; charset=utf-8

> Apparently, this vulnerability is being used to root older Android
> devices, and as a result it has just been fixed for older Android:

Most new Android devices are also vulnerable to it. The Nexus 6, 9, 5X
and 6P use 3.10, while older devices like the Nexus 5 use 3.4. There
isn't a Nexus device with 3.18, only the Pixel C and very few third
party devices.

Google's kernels aren't based on the upstream stable branches and they
missed this fix. They've surely missed a lot more too.
Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
