X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/02/09/7
Message-ID: <20120209072739.GA5840@openwall.com>
Date: Thu, 9 Feb 2012 11:27:39 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2011-4325 Linux kernel: nfs: diotest4 from LTP crash client
Content-Type: text/plain; charset=utf-8

On Tue, Feb 07, 2012 at 08:23:09PM +0100, Petr Matousek wrote:
> nfs_direct_read_schedule()
>  -> data = nfs_readdata_alloc();			// allocates and nulls readdata

Thank you!

Yes, I see that nfs_readdata_alloc() does:

	struct nfs_read_data *p = mempool_alloc(nfs_rdata_mempool, SLAB_NOFS);

	if (p) {
		memset(p, 0, sizeof(*p));

Alexander
