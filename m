X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1024" "Friday" "6" "July" "2018" "15:26:55" "+0200" "Greg KH" "greg@kroah.com" "<20180706132655.GA1466@kroah.com>" "21" "Re: [oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook" "^Date:" nil nil "7" "2018070613:26:55" "[oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook" (number mark "        greg@kroah.c Jul  6   21/1024  " thread-indent "\"Re: [oss-security] mmap vulnerability in motion eye video4linux driver for Sony Vaio PictureBook\"\n") "<20180706123543.E8F634800B4@webmail.sinamail.sina.com.cn>" ("<20180706123543.E8F634800B4@webmail.sinamail.sina.com.cn>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4009 invoked by uid 550); 6 Jul 2018 14:17:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3991 invoked from network); 6 Jul 2018 14:17:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; bh=kra4m8VsWI2bXUISXaVPOobENjfwltxKkX3ML8kHvWE=; b=bsK0t1JI
	O0kgDvaysMHfOLfO07/g72Dkqsgu7Zfiwk+8FWgDDT5mQqG1SgcA1DRxyjw76yXC
	Cy87o3BWbwDgXhmRKPISJjiiKkYBArpDqBXxlSeQAJnwSZKz2DBTmuK6lavtpgws
	bQJ9KKPzyhQsRV8WcbqNa4v0NSFMmjU1u5MrmRVgtvPZKYj60nCufVVtLYcpXe4V
	Ol5gZEQgbbazjBdjPPBx9Xd/B3O2Ngwg3AMgZ89H0OWrR29VRk6ArQ68Q1PHWYS1
	xiQ6ELGlsKkc6ngeSr9f1aZmH9cua12JyHDDha+TLHMvLh6mDYelRbHeJmLqlkJD
	nahvyu/sQ8/PdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=kra4m8VsWI2bXUISXaVPOobENjfwl
	txKkX3ML8kHvWE=; b=XVLKG/sF8fMlZ70eyETNO6X+sTeMVUQe6i8v+pWGQ6kfR
	x+H1mD3gSDHtmAxFKeCpx8yxtaVNstKWZFVMOKimglYsyINCWWrro2OxLvUF9N7M
	8TC6EODDKz5W4BS9BPN6nKTYZmiqbMZAN4hFOC0O69CH+Dh9afhdFyoIwfarXKnf
	mivcKh/KAsxekP3Oa8cHuPVJtnfUd9dw8H5UGzL9yKwpC2WjOLvrtIUaieOMJMI3
	g92kKGvPaBW+NauHjVcvq4o68bFu3HAkZ0NqFdjxcZcd3DygU2y/c+mikLCa6yzE
	pPPjZ5xT38BU+HZwnYdQqsosh6WwFgpJAGYeOPZFg==
X-ME-Proxy: <xmx:6nk_W-4qDLSvYLDQ3-0GM9kAeJc8G_YsvwlHvqY6-dI12fZkipOtrw>
    <xmx:6nk_W-uASDNa1-7UCvVq-METpBpNVyNM3DeRBvYeDtRT6Zdag_d6TA>
    <xmx:6nk_W2ac43kTYISaCBJYfPCS7SdXvndt5nN5vxubVlbHzPOSS-0QsQ>
    <xmx:6nk_W98Gdx7tiMiQP1KL6dEX-JD22UHz0Qlk0dsBkSWdaIwL8sxS2g>
    <xmx:6nk_W2bKHsDxAyJz2mOOYzkCvOrF8QlC4jjAI5_U1p4sEGjZ46qbOA>
    <xmx:6nk_Wy50bQM5Jf_NCARJIe1huYn0VodYJcJAfeGhY1t2a7KrPwWmlg>
X-ME-Sender: <xms:6nk_W9EFrva7L-XC63p8EmgM7XBcvLVB3Krv--1xk1rMgjIzf5r_Ng>
Message-ID: <20180706132655.GA1466@kroah.com>
References: <20180706123543.E8F634800B4@webmail.sinamail.sina.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180706123543.E8F634800B4@webmail.sinamail.sina.com.cn>
User-Agent: Mutt/1.10.0 (2018-05-17)
Date: Fri, 6 Jul 2018 15:26:55 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mmap vulnerability in motion eye video4linux
 driver for Sony Vaio PictureBook
To: oss-security@lists.openwall.com

On Fri, Jul 06, 2018 at 08:35:43PM +0800, zrlw@sina.com wrote:
> Hi all,i found a vulnerability in motion eye video4linux driver for Sony Vaio PictureBook,it desn't validate user-controlled parameter 'vma->vm_pgoff', a malicious process might access all of kernel memory from user space by trying pass different arbitrary address.
> /usr/src/linux-4.4.21-69/drivers/media/pci/meye/meye.c:
> static int meye_mmap(struct file *file, struct vm_area_struct *vma)
> ...        unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
> ...        pos = (unsigned long)meye.grab_fbuffer + offset;
>         while (size > 0) {
>                 page = vmalloc_to_pfn((void *)pos);
>                 if (remap_pfn_range(vma, start, page, PAGE_SIZE, PAGE_SHARED)) {...

Commit:
	be83bbf80682 ("mmap: introduce sane default mmap limits")
which was backported to all stable kernels, should have resolved this
problem, correct?

If not, please notify the media driver maintainers and they will be glad
to fix the problem.

thanks,

greg k-h
