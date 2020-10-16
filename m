X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1181" "Friday" "16" "October" "2020" "09:03:49" "+0200" "Greg KH" "gregkh@linuxfoundation.org" "<20201016070349.GA574432@kroah.com>" "31" "Re: [oss-security] CVE-2020-25656: Linux kernel concurrency UAF in vt_do_kdgkb_ioctl" nil nil nil "10" "2020101607:03:49" "[oss-security] CVE-2020-25656: Linux kernel concurrency UAF in vt_do_kdgkb_ioctl" (number mark "U       gregkh@linux Oct 16   31/1181  " thread-indent "\"Re: [oss-security] CVE-2020-25656: Linux kernel concurrency UAF in vt_do_kdgkb_ioctl\"\n") "<09826e03-525c-d307-5bfe-f51cb9298e1f@kernel.org>" ("<09826e03-525c-d307-5bfe-f51cb9298e1f@kernel.org>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-25656: Linux kernel concurrency UAF in vt_do_kdgkb_ioctl" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20041 invoked by uid 550); 16 Oct 2020 07:33:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15661 invoked from network); 16 Oct 2020 07:03:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1602831798;
	bh=uJukAECNIcAu+vYI+8UiJJJCKee4t90OZstWj3s7SQA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KIMCLAm6kqb4E2wfX7d9hU5qbspfnKRqy58AarCDaQIk/DGkkYQ+JOBDCDvYms6Ot
	 165I6XQRSKxhTV6eyeazosp5VFreC7aohAMVwqWwq73tm6EF3VmomX1OSHONN0eQDS
	 9XXV6p91JNsbuesd8/eloI/K9A53pI8dGRjdjJns=
Date: Fri, 16 Oct 2020 09:03:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jiri Slaby <jirislaby@kernel.org>
Cc: Minh Yuan <yuanmingbuaa@gmail.com>, oss-security@lists.openwall.com,
	Linux kernel mailing list <linux-kernel@vger.kernel.org>
Message-ID: <20201016070349.GA574432@kroah.com>
References: <09826e03-525c-d307-5bfe-f51cb9298e1f@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <09826e03-525c-d307-5bfe-f51cb9298e1f@kernel.org>
Subject: Re: [oss-security] CVE-2020-25656: Linux kernel concurrency UAF in
 vt_do_kdgkb_ioctl

On Fri, Oct 16, 2020 at 08:58:34AM +0200, Jiri Slaby wrote:
> Cc Greg.
> 
> On 16. 10. 20, 5:39, Minh Yuan wrote:
> > Hi,
> > 
> > We recently discovered a uaf read in vt_do_kdgkb_ioctl from linux kernel
> > version 3.4 to the latest version (v5.9 for now).
> > 
> > The root cause of this vulnerability is that there exits a race in
> > KDGKBSENT and KDSKBSENT.
> > 
> > Here are details:
> > 1. use  KDSKBSENT to allocate a lager heap buffer to funcbufptr;
> > 2. use KDGKBSENT to obtain the allocated heap pointer in step1 by
> > func_table, at the same time, due to KDGKBSENT has no lock, we can use
> > KDSKBSENT again to allocate a larger buffer than step1, and the old
> > funcbufptr will be freed. However, we've obtained the heap pointer in
> > KDGKBSENT, so a uaf read will happen while executing put_user.
> 
> Hi,
> 
> this is likely the issue I am fixing at:
> https://git.kernel.org/pub/scm/linux/kernel/git/jirislaby/linux.git/commit/?h=devel&id=57c85191e788e172a446e34ef77d34473cfb1e8d
> 
> I think, it won't apply cleanly as it's a part of a larger set. I will
> reorder the patch and send something during the day.

Great, thanks for looking into this!

greg k-h
