X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/12/18/1
Message-ID: <50D065B7.2010408@redhat.com>
Date: Tue, 18 Dec 2012 13:46:47 +0100
From: Florian Weimer <fweimer@...hat.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Plug-and-wipe and Secure Boot semantics
Content-Type: text/plain; charset=utf-8

Some UEFI machines seem to boot from USB by default, without any 
prompting, probably assuming that a signed boot loader cannot cause any 
damage.  Most signed Linux boot loaders only verify the kernel (and, 
indirectly, code that's loaded into the kernel), but not the initrd 
contents.  (This isn't possible because initrds are system-specific and 
thus cannot be signed in general.  Recovery images signed by system 
manufactures likely have similar issues.)  As a result, the signed 
loader might start something that wipes the hard disk or uploads its 
contents somewhere

I'm wondering if this is a problem.  I haven't investigated boot order 
defaults for legacy systems, so I don't know if this plug-and-wipe issue 
is a regression.  In the end, this boils down to what Secure Boot means, 
semantically.

-- 
Florian Weimer / Red Hat Product Security Team
