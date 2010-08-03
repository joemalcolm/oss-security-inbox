X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/03/1
Message-ID: <4C579132.3000006@kernel.sg>
Date: Tue, 03 Aug 2010 11:46:58 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: kernel: [PARISC] led.c - fix potential stack overflow in led_proc_write()
Content-Type: text/plain; charset=utf-8

Ilja reported way back in Nov 2007. A writer to /proc/pdc/led(?) can 
cause the kernel to consume an unbounded amount of stack, and result in 
stack corruption.

http://www.spinics.net/lists/linux-parisc/msg02960.html

If you need a CVE name, change the subject to indicate that. We are not 
requesting one as we do not support the PA-RISC architecture in our 
distribution.

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
