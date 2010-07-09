X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/09/3
Message-ID: <4C369BDB.50308@kernel.sg>
Date: Fri, 09 Jul 2010 11:47:39 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
Subject: kernel: gfs2 acl issue
Content-Type: text/plain; charset=utf-8

Upstream commit 2646a1f6 (2.6.33-rc1) fixed an interesting gfs2 acl 
issue late last year. Thanks Dan Rosenberg for informing us about this.

http://git.kernel.org/linus/2646a1f61a3b5525914757f10fa12b5b94713648

I didn't request a CVE name for this but if you need one, ping Steve.

Thanks, Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
