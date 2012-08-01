X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/01/2
Message-ID: <20120801131345.GF14466@dhcp-25-225.brq.redhat.com>
Date: Wed, 1 Aug 2012 15:13:46 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org, security@...ntu.com
Subject: Re: CVE Request: NVidia Linux driver
Content-Type: text/plain; charset=utf-8

Hi Marc,

On Wed, Aug 01, 2012 at 08:58:16AM -0400, Marc Deslauriers wrote:
> Hello,
> 
> Could a CVE please be assigned to the following issue:
> 
> The binary NVidia Linux driver allows local users to access arbitrary
> memory locations by leveraging GPU device-node read/write privileges,
> and escalate privileges to root. Possibly an incomplete fix for
> CVE-2012-0946.
> 
> See:
> 
> http://seclists.org/fulldisclosure/2012/Aug/4

did you test that the exploit works on NVIDIA driver that should contain
the CVE-2012-0946 fix?

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
