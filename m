X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/07/02/6
Message-ID: <alpine.DEB.2.20.2007021325170.16951@tvnag.unkk.fr>
Date: Thu, 2 Jul 2020 13:34:03 +0200 (CEST)
From: Daniel Stenberg <daniel@...x.se>
To: Francis Perron <francisp@...gle.com>
cc: oss-security@...ts.openwall.com, xiao.zhang@...driver.com, Solar Designer <solar@...nwall.com>
Subject: Re: Contributing Back
Content-Type: text/plain; charset=utf-8

On Thu, 2 Jul 2020, Francis Perron wrote:

>  this delay may be possible due to many things, but the simplest possibility 
> that comes to mind is that Daniel (here cc'd) from H1 has only gotten a 
> reservation of CVE number, and he and MITRE have not triggered the 
> submission yet.

In the curl project we (nowadays) request and get CVE IDs from Hackerone, and 
we've subsequently told them to publish these two recent curl related CVE IDs 
when we made them public to the world - I suspect this is just them being a 
little slow. We don't have any direct contact with MITRE.

All details regarding the two recent curl flaws are here:

  https://curl.haxx.se/docs/CVE-2020-8169.html
  https://curl.haxx.se/docs/CVE-2020-8177.html

-- 

  / daniel.haxx.se
