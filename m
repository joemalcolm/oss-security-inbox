X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/02/18/1
Message-ID: <4B7C933B.3070705@redhat.com>
Date: Thu, 18 Feb 2010 09:09:15 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Marcus Meissner <meissner@...e.de>
Subject: Re: CVE request: kernel information leak via userspace USB interface
Content-Type: text/plain; charset=utf-8

Hi Marcus,

On 02/17/2010 06:29 PM, Marcus Meissner wrote:
> While programming a USB device using libusb I found that a usb read from
> the device returned data it should not.
[...]
> Access to USB userspace devices either requires root access or desktop user access
> via udev/hal ACLs on non-mass-storage Digital Cameras or Media Players. (So the
> desktop user needs to plugin such a ACL getting device before being able
> to read the memory).

To abuse this, you will need physical access to plug in a USB device, so 
I do not think this should be regarded as a security issue.

Thanks, Eugene
-- 
Eugene Teo / Red Hat Security Response Team
