X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/06/03/2
Message-ID: <4A25DABE.1060703@redhat.com>
Date: Wed, 03 Jun 2009 10:06:54 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>, Greg KH <greg@...ah.com>
Subject: CVE-2009-1385 kernel: e1000_clean_rx_irq() denial of service
Content-Type: text/plain; charset=utf-8

e1000 has an issue in which a partial frame can leak through validation
check on reception. This can lead to an underflow in the length
computation of the frame which will panic the system in question.

This bug was discovered and fixed in e1000-7.5.5 since April 2007, but
was somehow not merged in the upstream kernel...

http://sourceforge.net/project/shownotes.php?release_id=504022&group_id=42302
Notes:
 * fix panic on changing MTU under stress
[...]

References:
http://sourceforge.net/projects/e1000
http://git.kernel.org/linus/ea30e11970a96cfe5e32c03a29332554573b4a10
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2009-1385

Thanks, Eugene
