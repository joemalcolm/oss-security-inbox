X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/07/06/1
Message-Id: <20180706123543.E8F634800B4@webmail.sinamail.sina.com.cn>
Date: Fri, 06 Jul 2018 20:35:43 +0800
From: <zrlw@...a.com>
To: "oss-security" <oss-security@...ts.openwall.com>
Subject: mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook
Content-Type: text/plain; charset=utf-8

Hi all,i found a vulnerability in motion eye video4linux driver for Sony Vaio PictureBook,it desn't validate user-controlled parameter 'vma->vm_pgoff', a malicious process might access all of kernel memory from user space by trying pass different arbitrary address.
/usr/src/linux-4.4.21-69/drivers/media/pci/meye/meye.c:
static int meye_mmap(struct file *file, struct vm_area_struct *vma)
...        unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
...        pos = (unsigned long)meye.grab_fbuffer + offset;
        while (size > 0) {
                page = vmalloc_to_pfn((void *)pos);
                if (remap_pfn_range(vma, start, page, PAGE_SIZE, PAGE_SHARED)) {...
