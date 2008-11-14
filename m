X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/11/14/2
Message-Id: <1226677707.3540.60.camel@dhcp-lab-164.englab.brq.redhat.com>
Date: Fri, 14 Nov 2008 16:48:27 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: htop
Content-Type: text/plain; charset=utf-8

Hello Nico,

  any success when receiving the CVE id for this one?

What about the reproducer? Not meaning Debian report
based one (successfully reproduced), but rather that one issuing
malicious escape sequences to the terminal used for displaying.

Thanks, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team


On Sun, 2008-11-02 at 13:06 +0100, Nico Golde wrote:
> Hi,
> htop doesn't filter non printable characters in process 
> names which enables processes doing evil things with the 
> display using escape sequences.
> 
> http://bugs.debian.org/504144
> 
> Steve, can you assign a CVE id to this?
> 
> Cheers
> Nico
> 

