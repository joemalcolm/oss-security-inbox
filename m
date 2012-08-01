X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/01/3
Message-ID: <mpro.m82vby3w5e1110nsi.taviso@cmpxchg8b.com>
Date: Wed, 1 Aug 2012 15:12:00 +0200
From: Tavis Ormandy <taviso@...xchg8b.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: NVidia Linux driver
Content-Type: text/plain; charset=utf-8

Marc Deslauriers <marc.deslauriers@...onical.com>
wrote:

> Hello,
> 
> Could a CVE please be assigned to the following issue:
> 
> The binary NVidia Linux driver allows local users to access arbitrary
> memory locations by leveraging GPU device-node read/write privileges, and
> escalate privileges to root. Possibly an incomplete fix for CVE-2012-0946.
> 
> See:
> 
> http://seclists.org/fulldisclosure/2012/Aug/4
> 
> Thanks,
> 
> Marc.

I know that at least Gentoo does this since ~2006:

35 # !!! SECURITY WARNING !!!
36 # DO NOT MODIFY OR REMOVE THE DEVICE FILE RELATED OPTIONS UNLESS YOU KNOW
37 # WHAT YOU ARE DOING.
38 # ONLY ADD TRUSTED USERS TO THE VIDEO GROUP, THESE USERS MAY BE ABLE TO
CRASH,
39 # COMPROMISE, OR IRREPARABLY DAMAGE THE MACHINE.
40 options nvidia NVreg_DeviceFileMode=432 NVreg_DeviceFileUID=0
NVreg_DeviceFileGID=VIDEOGID NVreg_ModifyDeviceFiles=1


http://sources.gentoo.org/cgi-bin/viewvc.cgi/gentoo-x86/x11-drivers/nvidia-drivers/files/nvidia?revision=1.3&view=markup

Tavis.

-- 
-------------------------------------
taviso@...xchg8b.com | pgp encrypted mail preferred
-------------------------------------------------------

