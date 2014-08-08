X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/09/3
Message-ID: <53E4F8FF.80500@gmail.com>
Date: Fri, 08 Aug 2014 09:21:19 -0700
From: lazytyped <lazytyped@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: BadUSB discussion
Content-Type: text/plain; charset=utf-8

On 08/08/2014 09:17, Greg KH wrote:
> There is a USB firmware download spec, which is quite easy to use, if
> manufacturers actually followed it (side note, I was one of the authors
> of that spec...)  And if USB device manufacturers actually required
> signed firmware to run in their devices, that would solve this issue
> instantly as long as the signing keys don't leak.

Or, for cheap devices like USB dongles, just keep the firmware
read-only. Who's going to update it anyway.

But yes, either the update should be signed and verified, or
hardware-switch controlled or impossible to begin with (read-only). Not
only for USB devices.


      -  twiz
