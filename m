X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/10/29/1
Message-ID: <4CCA1988.1010203@redhat.com>
Date: Fri, 29 Oct 2010 08:47:04 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: iovec overflow in rds_rdma_pages()
Content-Type: text/plain; charset=utf-8

Reported by Thomas Pollet, more info can be found at:
http://www.spinics.net/lists/netdev/msg145359.html
https://bugzilla.redhat.com/show_bug.cgi?id=647416

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
