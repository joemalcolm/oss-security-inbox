X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/09/4
Message-ID: <alpine.LFD.2.10.1401091628380.4527@javelin.pnq.redhat.com>
Date: Thu, 9 Jan 2014 16:52:57 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: cve-assign@...re.org
cc: oss security list <oss-security@...ts.openwall.com>
Subject: Re: CVE split and a missed file
Content-Type: text/plain; charset=utf-8

+-- On Wed, 8 Jan 2014, cve-assign@...re.org wrote --+
| The CVEs are about vulnerability fixes, and don't necessarily capture
| all of the information that would be used in integrating the patches
| into one's own kernel build tree. For example, a file can be changed
| in order to be compatible with a vulnerability fix that affects
| interaction between functions, or a file can be changed so that its
| code executes faster after a vulnerability fix.

  Agreed. But then do these files need CVE? (just checking)

 -> net/ax25/af_ax25.c
 -> net/rose/af_rose.c
 -> net/compat.c
 -> net/socket.c
 -> net/rxrpc/ar-recvmsg.c

Thank you.
--
Prasad J Pandit / Red Hat Security Response Team
