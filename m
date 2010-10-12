X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/10/12/2
Message-ID: <4CB40C01.6020802@redhat.com>
Date: Tue, 12 Oct 2010 15:19:29 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
Subject: kernel: avoid pgoff overflow in remap_file_pages
Content-Type: text/plain; charset=utf-8

Thomas Pollet reported an integer overflow issue in remap_file_pages(). 
While we are able to reproduce the issue, we are unable to find a 
security impact. If your views differ, do let us know.

https://bugzilla.redhat.com/show_bug.cgi?id=636383
http://git.kernel.org/linus/5ec1055aa5632dd7a8283cdb5fa9be3c535eaa06

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
