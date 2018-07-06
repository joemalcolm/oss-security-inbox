X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1342" "Friday" "6" "July" "2018" "16:54:22" "+0200" "Solar Designer" "solar@openwall.com" "<20180706145422.GA29390@openwall.com>" "26" "Re: [oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook" "^Cc:" nil nil "7" "2018070614:54:22" "[oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook" (number mark "        solar@openwa Jul  6   26/1342  " thread-indent "\"Re: [oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook\"\n") "<20180706132655.GA1466@kroah.com>" ("<20180706123543.E8F634800B4@webmail.sinamail.sina.com.cn>" "<20180706132655.GA1466@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23779 invoked by uid 550); 6 Jul 2018 14:58:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21663 invoked from network); 6 Jul 2018 14:54:40 -0000
Message-ID: <20180706145422.GA29390@openwall.com>
References: <20180706123543.E8F634800B4@webmail.sinamail.sina.com.cn> <20180706132655.GA1466@kroah.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180706132655.GA1466@kroah.com>
User-Agent: Mutt/1.4.2.3i
Cc: zrlw@sina.com
Date: Fri, 6 Jul 2018 16:54:22 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook
To: oss-security@lists.openwall.com

On Fri, Jul 06, 2018 at 03:26:55PM +0200, Greg KH wrote:
> On Fri, Jul 06, 2018 at 08:35:43PM +0800, zrlw@sina.com wrote:
> > Hi all,i found a vulnerability in motion eye video4linux driver for Sony Vaio PictureBook,it desn't validate user-controlled parameter 'vma->vm_pgoff', a malicious process might access all of kernel memory from user space by trying pass different arbitrary address.
> > /usr/src/linux-4.4.21-69/drivers/media/pci/meye/meye.c:
> > static int meye_mmap(struct file *file, struct vm_area_struct *vma)
> > ...        unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
> > ...        pos = (unsigned long)meye.grab_fbuffer + offset;
> >         while (size > 0) {
> >                 page = vmalloc_to_pfn((void *)pos);
> >                 if (remap_pfn_range(vma, start, page, PAGE_SIZE, PAGE_SHARED)) {...
> 
> Commit:
> 	be83bbf80682 ("mmap: introduce sane default mmap limits")
> which was backported to all stable kernels, should have resolved this
> problem, correct?
> 
> If not, please notify the media driver maintainers and they will be glad
> to fix the problem.

I think zrlw@sina.com is not subscribed, so CC'ing.

I wonder if it's also possible to cause integer overflow on "(unsigned
long)meye.grab_fbuffer + offset", bringing pos below meye.grab_fbuffer,
and what the impact of that would be.

Alexander
