X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/11/19/1
Message-ID: <4B050A45.6070804@kernel.sg>
Date: Thu, 19 Nov 2009 17:05:09 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request: kernel: fuse: prevent fuse_put_request on invalid pointer
Content-Type: text/plain; charset=utf-8

"fuse_direct_io() has a loop where requests are allocated in each 
iteration. if allocation fails, the loop is broken out and follows into 
an unconditional fuse_put_request() on that invalid pointer."

Upstream commit:
http://git.kernel.org/linus/f60311d5f7670d9539b424e4ed8b5c0872fc9e83

This can be triggered when the system is low on memory, and when the 
fuse_request_alloc() function called from fuse_get_req() fails. The 
fuse_put_request() function will then dereference the invalid pointer 
returned, resulting in a kernel oops.

This was introduced in 413ef8cb (v2.6.14-rc1) and fixed in v2.6.32-rc7.

https://bugzilla.redhat.com/538734

Thanks, Eugene
