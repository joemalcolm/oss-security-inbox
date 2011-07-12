X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/12/5
Message-ID: <4E1C7AFB.4090908@msgid.tls.msk.ru>
Date: Tue, 12 Jul 2011 20:48:59 +0400
From: Michael Tokarev <mjt@....msk.ru>
To: oss-security@...ts.openwall.com
Subject: CVE Request: qemu -runas does not clear supplementary groups
Content-Type: text/plain; charset=utf-8

There's a missing initgroups() call in qemu in the -runas
argument handling.  Details are available on

 https://bugs.launchpad.net/qemu/+bug/807893

in short, -runas is supposed to reduce privileges to a
bare minimum (after all initialization is completed),
but the process still has all the supplementary groups
which should be dropped too.

Can a CVE id be assigned for this issue?

Thanks,

/mjt
