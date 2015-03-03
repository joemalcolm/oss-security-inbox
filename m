X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/03/03/6
Message-ID: <54F5CA9A.6020504@upv.es>
Date: Tue, 03 Mar 2015 15:52:10 +0100
From: Hector Marco <hecmargi@....es>
To: cve-assign@...re.org, oss-security@...ts.openwall.com
Subject: Re: CVE-Request: Linux ASLR mmap weakness: Reducing entropy by half
Content-Type: text/plain; charset=utf-8

Hello Mitre,

Any update about this issue ?



El 18/02/15 a las 12:01, Hector Marco escribió:
> Hi,
>
> A bug in Linux ASLR implementation for versions prior to 3.19 has been found.
> The issue is that the mmap area for processes is not properly randomized on some
> architectures.
>
> Affected systems have reduced the mmap base area entropy of the processes by half.
>
>
> Details at:
> http://hmarco.org/bugs/linux-ASLR-reducing-mmap-by-half.html
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
