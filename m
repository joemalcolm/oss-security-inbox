X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/08/3
Message-ID: <alpine.LFD.2.10.1401080900400.27637@javelin.pnq.redhat.com>
Date: Wed, 8 Jan 2014 09:05:30 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: cve@...re.org
Subject: Re: CVE split and a missed file
Content-Type: text/plain; charset=utf-8

+-- On Tue, 7 Jan 2014, P J P wrote --+
| But the 3 new CVEs do not seem to cover patch to a file

The same applies to 'CVE-2013-6463' too. It is split into 6 new CVEs covering 
6 files of the 35 that are patched by commit - 'f3d3342602f8'.

 -> https://git.kernel.org/linus/f3d3342602f8bcbf37d7c46641cb9bca7618eb1c

CVE-2013-6463 =>

   - CVE-2013-7266 (drivers/isdn/mISDN/socket.c),
   - CVE-2013-7267 (net/appletalk/ddp.c),
   - CVE-2013-7268 (net/ipx/af_ipx.c),
   - CVE-2013-7269 (net/netrom/af_netrom.c),
   - CVE-2013-7270 (net/packet/af_packet.c),
   - CVE-2013-7271 (net/x25/af_x25.c)

Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
