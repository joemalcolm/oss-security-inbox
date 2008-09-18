X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/18/1
Message-ID: <969559020.1179271221698303548.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 17 Sep 2008 20:38:23 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Cc: coley@...re.org
Subject: CVE Request (mercurial)
Content-Type: text/plain; charset=utf-8

Hi Steve,

Looks like there's one more flaw in Mercurial we missed:
http://www.selenic.com/mercurial/wiki/index.cgi/WhatsNew#head-905b8adb3420a77d92617e06590055bd8952e02b

* hgweb: fix "allowpull" permission being ignored when pulling from hgweb

I admit I don't completely understand it.  rPath seems to have a little more info:
https://issues.rpath.com/browse/RPL-2753

Thanks

-- 
    JB
