X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/18/3
Message-ID: <1915220118.620201276874835970.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 18 Jun 2010 11:27:15 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request - kernel: xfs swapext ioctl issue
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-2226 for this.

Thanks.

-- 
    JB


----- "Eugene Teo" <eugeneteo@...nel.sg> wrote:

> User "foo" can use the SWAPEXT ioctl to swap a write-only file owned
> by 
> user "bar" into a file owned by "foo" and subsequently reading it. It
> 
> does so by checking that the file descriptors passed to the ioctl are
> 
> also opened for reading.
> 
> References:
> https://bugzilla.redhat.com/show_bug.cgi?id=605158
> http://archives.free.net.ph/message/20100616.130710.301704aa.en.html
> http://archives.free.net.ph/message/20100616.135735.40f53a32.en.html
> 
> Thanks, Eugene
> -- 
> main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i);
> }
