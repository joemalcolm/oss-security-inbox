X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/13/4
Message-ID: <4DA53B63.1030107@redhat.com>
Date: Wed, 13 Apr 2011 13:57:55 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request - kernel: bonding: Incorrect TX queue offset
Content-Type: text/plain; charset=utf-8

Backport of upstream commit:
fd0e435b0fe85622f167b84432552885a4856ac8 bonding: Incorrect TX queue offset

By default bonding only allocates 16 queues. Devices that have more than 
16 receive queues will exceed the tx queue index for the bonding device, 
resulting in at least a denial of service (BUG: unable to handle kernel 
paging request at...).

For proper queue allocation, in the bonding driver and down to the 
devices, they should probably add the following line to one of the files 
in /etc/modprobe.d/

options bonding tx_queues=N

where N>= number of processors that show up in /proc/cpuinfo.

https://bugzilla.redhat.com/show_bug.cgi?id=696029
http://git.kernel.org/linus/fd0e435b0fe85622f167b84432552885a4856ac8

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
