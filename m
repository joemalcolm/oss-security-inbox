X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/18/5
Message-ID: <CAOp4FwRmbE3vuPtfO_s_C2X+79SZG5khmThEEQ=XDsNEKbxuRg@mail.gmail.com>
Date: Wed, 18 Feb 2015 15:19:54 +0400
From: Loganaden Velvindron <loganaden@...il.com>
To: oss-security@...ts.openwall.com
Cc: Assign a CVE Identifier <cve-assign@...re.org>
Subject: Re: CVE-Request: Linux ASLR mmap weakness: Reducing entropy by half
Content-Type: text/plain; charset=utf-8

On Wed, Feb 18, 2015 at 3:01 PM, Hector Marco <hecmargi@....es> wrote:
> Hi,
>
> A bug in Linux ASLR implementation for versions prior to 3.19 has been
> found. The issue is that the mmap area for processes is not properly
> randomized on some architectures.
>
> Affected systems have reduced the mmap base area entropy of the processes by
> half.
>
>
> Details at:
> http://hmarco.org/bugs/linux-ASLR-reducing-mmap-by-half.html

Hi Hector,

The timeline is not rendered properly on Google chrome browser or
mozilla firefox.


>
>
>
> Could you please assign a CVE-ID for this?
>
>
>
> Hector Marco.
> http://hmarco.org
>
> Cyber-security researcher at
> http://cybersecurity.upv.es/



-- 
This message is strictly personal and the opinions expressed do not
represent those of my employers, either past or present.
