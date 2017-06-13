X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/13/11
Message-ID: <e84de9d7-409e-1346-87a6-0950030449fe@insomniasec.com>
Date: Wed, 14 Jun 2017 09:24:26 +1200
From: Murray McAllister <murray.mcallister@...omniasec.com>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel: drm/vmwgfx: 4 byte read of uninitialised kernel memory in vmw_gb_surface_define_ioctl()
Content-Type: text/plain; charset=utf-8

On 13/06/17 15:39, Murray McAllister wrote:
> The vmw_gb_surface_define_ioctl() function (accessible via
> DRM_IOCTL_VMW_GB_SURFACE_CREATE) defines a backup_handle variable but
> does not give it an initial value. If you attempt to create a GB
> surface, and provide a previously-allocated DMA buffer to be used as a
> backup buffer, the backup_handle variable does not get written to and is
> then later returned to user-space.
> 
> Upstream commit:
> 
> https://github.com/torvalds/linux/commit/07678eca2cf9c9a18584e546c2b2a0d0c9a3150c
> 
> CVE:
> 
> I'll request one now and reply once I have one.
> 

MITRE assigned CVE-2017-9605.

Thanks
