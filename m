X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/24/4
Message-ID: <2026082431-onscreen-edge-01b1@gregkh>
Date: Mon, 24 Aug 2026 10:57:45 +0200
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel: Guest-to-Host DoS via TAP
Content-Type: text/plain; charset=utf-8

On Wed, Aug 12, 2026 at 10:01:50AM -0700, Dongli Zhang wrote:
> Hi,
> 
> This report describes a Denial of Service (DoS) vulnerability where a guest VM
> using the virtio-net driver can intentionally trigger a host panic when the
> host uses a tap device, such as macvtap, as the vhost-net backend.
> 
> VM (virtio-net) -- Host (vhost-net) -- Host (macvtap)
> 
> This is only one example scenario. Other tap device users may also be able to
> send malformed packets that cause the tap driver to panic.
> 
> This vulnerability is related to CVE-2022-50073. The fix for that CVE addressed
> the tap_get_user() path, but missed the tap_get_user_xdp() path.
> 
> The fix has already been merged into the mainline tree in the commit below.
> 
> net: tap: set skb->dev before parsing virtio net header in tap_get_user_xdp()
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3874892dd27d5387aa9a06f58d9060f18f351d24
> 
> So far, no CVE has been assigned by the Linux kernel CNA.

To follow up with this, it has been assigned CVE-2026-74684

