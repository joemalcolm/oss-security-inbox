X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/14/1
Message-Id: <F98F0BB5-6485-45D0-BF61-186895EAAA33@technologysecure.com>
Date: Sat, 13 May 2017 22:44:44 -0400
From: Yury German <yury@...hnologysecure.com>
To: oss-security@...ts.openwall.com
Subject: Kernel 4.1.y might not contain patches for CVE-2016-10229
Content-Type: text/plain; charset=utf-8

This is just a small notice that Linux Kernel 4.1.y might not contain patches to CVE-2016-10229 [1]. This is a reference to the Vanilla Linux sources without any distribution specific patching. Typically a number of distributions apply their own patches to the standard vanilla Kernel. 

The patches might also not be needed for 4.1.y sources as were discussed on the mailing list [see [2]]. 

Please check with the distribution you are using to see if the patches for CVE-2016-10229 have been applied to the kernel 4.1.y tree for the distribution that you are using. 

[1] http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-10229
[2] https://www.spinics.net/lists/stable/msg167674.html

