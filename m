X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/21/5
Message-ID: <4EC9E9D2.1090404@redhat.com>
Date: Mon, 21 Nov 2011 14:04:02 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: kernel: hfs: add sanity check for file name length
Content-Type: text/plain; charset=utf-8

https://lkml.org/lkml/2011/11/9/303
https://bugzilla.redhat.com/show_bug.cgi?id=755431
http://git.kernel.org/linus/bc5b8a9003132ae44559edd63a1623

On a corrupted file system the ->len field could be wrong leading to a
buffer overflow.

Thanks, Eugene
