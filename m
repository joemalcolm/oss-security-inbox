X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/02/25/4
Message-ID: <nycvar.YSQ.7.76.2002251652010.341783@xnncv>
Date: Tue, 25 Feb 2020 16:53:23 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2020-2732: Nested VMX vulnerability
Content-Type: text/plain; charset=utf-8

+-- On Mon, 24 Feb 2020, Boris Ostrovsky wrote --+
| Under certain circumstances, an L2 guest may trick the L0 hypervisor into 
| accessing sensitive L1 resources that are supposed to be inaccessible to the 
| L2 guest according to L1 hypervisor configuration.
| 
| Only Intel processors are affected.
| 
| Patches are attached.

  -> https://www.spinics.net/lists/kvm/msg208259.html
  -> https://git.kernel.org/linus/07721feee46b4b248402133228235318199b05ec
  -> https://git.kernel.org/linus/35a571346a94fb93b5b3b6a599675ef3384bc75c
  -> https://git.kernel.org/linus/e71237d3ff1abf9f3388337cfebf53b96df2020d

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

