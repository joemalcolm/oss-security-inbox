X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3080" "Monday" "22" "August" "2016" "16:55:42" "-0400" "Greg KH" "greg@kroah.com" "<20160822205542.GB12931@kroah.com>" "65" "Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^Cc:" nil nil "8" "2016082220:55:42" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        greg@kroah.c Aug 22   65/3080  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") "<20160822183717.D769F6DC3AF@smtpvmsrv1.mitre.org>" ("<20160822152448.GC3132@suse.de>" "<20160822183717.D769F6DC3AF@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23644 invoked by uid 550); 22 Aug 2016 20:55:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23623 invoked from network); 22 Aug 2016 20:55:44 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=Q1IG4p/thBHtPzSmRFmddchYbwg=; b=Qjm6n
	oZ49vKSoE45reRXtaiaVBl3LOTKW9DEiVX+etfAdOd44Kt//Ng/BxzrnrM9QAWGU
	NT4uURvcSZyK3ZW7cqpNnEe1nU1ZxkOLQSVEHMUPC90uA0dQ49JdS26htxn+uNRX
	tobqLB3NSbvy1qJ2ihVu6K8hJWEmMrqv900AA8=
X-Sasl-enc: 0cpPf2FgWGDfa3w5lL4onX7RdBeJoTDk10C0jPVxjqIQ 1471899332
Message-ID: <20160822205542.GB12931@kroah.com>
References: <20160822152448.GC3132@suse.de>
 <20160822183717.D769F6DC3AF@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160822183717.D769F6DC3AF@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.7.0 (2016-08-17)
Cc: meissner@suse.de, cve-assign@mitre.org
Date: Mon, 22 Aug 2016 16:55:42 -0400
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when
 plugging in malicious USB devices
To: oss-security@lists.openwall.com

On Mon, Aug 22, 2016 at 02:37:17PM -0400, cve-assign@mitre.org wrote:
> There has been a related CVE for five years (CVE-2011-0640), although
> selecting udev as the responsible component was probably not the right
> approach, and maybe that CVE should be updated or rejected. We think
> the current understanding, very roughly, is:

Yes, udev isn't the correct place for it, but I really don't know what
would be.  What "tool" was assigned this CVE for other operating systems
that do the same thing (all BSDs, OS-X, Windows, etc.)?

> 
>   - the Linux kernel does not require a configuration in which a newly
>     connected USB device is recognized in any way

I don't understand this statement, can you clarify?

The Linux kernel has a configuration that does not allow any USB devices
to work, unless explicitly granted permission to do so by a userspace
tool.  The device will be enumerated, but that is all, it is up to
userspace to then tell the kernel to actually "use" the device.
This feature has been present at the USB "device" level for quite some
time, and at the USB "interface" level now for I think over a year (can
dig it out if people really care, the work was done by someone from
SuSE.)

Also, all Wireless USB devices operate in this manner "by default" for
as long as Linux has supported Wireless USB devices (thankfully these
devices are really rare.)

>   - a Linux distribution may ship with a default configuration in
>     which a newly connected USB device can operate as a keyboard and
>     inject text into an application

Yes, but I don't understand, perhaps what you really mean to say is:
	A Linux distribution may ship with a default configuration of
	trusting all new devices that are plugged in without any form of
	userspace authentication before they begin to operate.

>   - some Linux distributions want to have this behavior, and their
>     maintainers have concluded that there is no comprehensive method
>     for "asking a user" about a new USB device in a way that is
>     compatible with all use cases

Huh?  There is such a method, Linux has supported this for a very long
time (see above.)   It's up to the distro to decide to use it or not,
that's their choice (hint, I don't blame them for making this choice,
it's what almost all users expect and want as well...)

>   - if anyone (whether a Linux distribution or other type of product)
>     is announcing a required security update, in which software or
>     configuration is being changed to address malicious keyboard
>     attacks, then we can assign a CVE ID to associate with the update
>     announcement

Why would a CVE be needed for a "my distro decides to not trust USB
devices as much as your distro does" type decision?  This is just a
matter of how a distribution configures their kernel, combined with
their decision of how to deal with new USB devices.  Perhaps you could
argue that some of those decisions might be "more secure" than others,
but I don't see a "bug" that is resolved by deciding about this one way
or the other, do you?

thanks,

greg k-h
