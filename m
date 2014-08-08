X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/08/6
Message-ID: <20140808140013.GA5441@kroah.com>
Date: Fri, 8 Aug 2014 07:00:13 -0700
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Subject: Re: BadUSB discussion
Content-Type: text/plain; charset=utf-8

On Fri, Aug 08, 2014 at 09:56:34AM -0400, Daniel Kahn Gillmor wrote:
> 
> For example, you could register keyboards by serial number with the
> system,

Most USB keyboards in the system do not have a unique serial number.
Heck, most USB devices in the system do not have a unique serial number,
the only USB device that is required to do so is a USB printer,
everything else is free to not have one at all, or have the same serial
number for all devices made of that type.

Never treat a USB serial number as "unique", except for a USB printer,
sorry.

greg k-h
