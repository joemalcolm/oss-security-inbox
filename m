X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/17/7
Message-ID: <alpine.BSF.2.21.1711180920070.49959@aneurin.horsfall.org>
Date: Sat, 18 Nov 2017 09:22:04 +1100 (EST)
From: Dave Horsfall <dave@...sfall.org>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Re: phusion passenger CVE-2017-1000384
Content-Type: text/plain; charset=utf-8

On Fri, 17 Nov 2017, Jakub Wilk wrote:

> But false _is_ a defined macro in this file, so this doesn't disable the 
> code inside. I guess they meant to write:
>
>  #if false
>  ...
>  #endif

Or perhaps they meant to write the more conventional "#ifdef notdef".

-- 
Dave Horsfall DTM (VK2KFU)  "Those who don't understand security will suffer."
