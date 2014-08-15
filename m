X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/15/1
Message-ID: <loom.20140815T031210-201@post.gmane.org>
Date: Fri, 15 Aug 2014 01:15:46 +0000 (UTC)
From: Vincent Lefevre <vincent@...c17.net>
To: oss-security@...ts.openwall.com
Subject: Re: BadUSB discussion
Content-Type: text/plain; charset=utf-8

Yves-Alexis Perez <corsac@...> writes:
> for bus in /sys/bus/usb/usb*;
             ^^^^^^^^^^^^^^^^^

should be: /sys/bus/usb/devices/usb*

> do
>   echo 0 > ${bus}/authorized_default
> done
> 
> to disable registration of new USB devices (kernel will still enumerate
> them, but no driver will handle them).

[posted via gmane, I hope this will not break the thread]

Regards,
Vincent Lefevre.

