X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/12/1
Message-ID: <20131112101032.GG22293@dhcp-25-225.brq.redhat.com>
Date: Tue, 12 Nov 2013 11:10:33 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: Nico Golde <oss-security+ml@...lde.de>
Cc: oss-security@...ts.openwall.com
Subject: Re: some unstracked linux kernel security fixes
Content-Type: text/plain; charset=utf-8

Hi,

On Sun, Nov 03, 2013 at 05:32:52PM +0100, Nico Golde wrote:
> drivers/uio/uio.c: mapping of physical memory to user space without proper size check
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=7314e613d5ff

there is a size check in uio_mmap() (the only caller of uio_mmap_physical()):

        requested_pages = vma_pages(vma);
        actual_pages = ((idev->info->mem[mi].addr & ~PAGE_MASK)
                        + idev->info->mem[mi].size + PAGE_SIZE -1) >> PAGE_SHIFT;
        if (requested_pages > actual_pages)
                return -EINVAL;

why it wasn't sufficient?

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
