X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2380" "Tuesday" "26" "May" "2015" "07:52:47" "-0700" "Greg KH" "greg@kroah.com" "<20150526145247.GB23156@kroah.com>" "51" "Re: [oss-security] CVE request: vulnerability in the kernel tty subsystem." nil nil nil "5" "2015052614:52:47" "[oss-security] CVE request: vulnerability in the kernel tty subsystem." (number mark "        greg@kroah.c May 26   51/2380  " thread-indent "\"Re: [oss-security] CVE request: vulnerability in the kernel tty subsystem.\"\n") "<435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>" ("<926476450.3946717.1432609079414.JavaMail.zimbra@redhat.com>" "<435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16058 invoked by uid 550); 26 May 2015 14:53:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16040 invoked from network); 26 May 2015 14:53:00 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=u/8gI33A4eWH6UVLOaez32+zpBs=; b=oSf2l
	YWVf7OF/YoZAFPeMkmpOKlJ1iPuwpLMJ3IBnhbOOJe5fJOXu2c5ppfqBtQ6Bp07E
	ymDgrmH3NUJ44BuN4EBjeumfBF0yMh+LKeck84Tbn3VMiFuY7DX+jOcSVDfMYaXU
	ePsqreWxv1+4vqHeM5v+KuW8tKMIldbdk3cKnc=
X-Sasl-enc: ImMCW2P/acPwTxkx0ALNNgviIxmzBteMpkSTrv6U2WFf 1432651968
Message-ID: <20150526145247.GB23156@kroah.com>
References: <926476450.3946717.1432609079414.JavaMail.zimbra@redhat.com>
 <435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <435842836.3987672.1432621133397.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Tue, 26 May 2015 07:52:47 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: vulnerability in the kernel tty
 subsystem.
To: oss-security@lists.openwall.com

On Tue, May 26, 2015 at 02:18:53AM -0400, Wade Mealing wrote:
> Gday,
> 
> An issue was discovered in the linux kernel's tty subsystem handling during shutdown. The
> flaw was that a new tty thread could hold a reference to the ldisc lock used during
> the shutdown phase in the original thread and create a deadlock.
> 
> This race occurs on hangup of tty.  It races and hangs on ldsem_down_write on a semaphore 
> that is being aquired by a new reader(CPU 1).  The new reader/writer is sleeping
> in ldsem_down_read() and the hangup is sleeping in ldsem_down_write().
> 
> The deadlock can occur under these conditions.
> 
>    CPU 0                                   |  CPU 1
> 					   |
> _raw_spin_unlock_irq                       | _raw_spin_unlock_irq+0x24/0x26
> down_write_failed                          | down_read_failed+0xe3/0x1b9
> ldsem_down_write <-- here                  | ldsem_down_read  <--- here
> tty_ldisc_lock_pair_timeout                | tty_ldisc_ref_wait
> tty_ldisc_lock_pair_timeout                | tty_write
> tty_ldisc_hangup                           | redirected_tty_write
> __tty_hangup                               | tty_write
> disassociate_ctty                          | o_loop_readv_writev
> do_exit                                    | do_readv_writev
>                                            | SyS_writev
> 
> 
> This section of code was re-written upstream by creating a read/write semaphore to
> specially to handle ldisc, ldsem ( 4898e640caf03fdbaf2122d5a33949bf3e4a5b34 ).  
> 
> This issue was reproduced on a system under load when testing the reproducer for
> CVE-2014-0196, on a system that already has this issue fixed.  No root permissions
> are required to recreate the deadlock.
> 
> I would like to request a CVE for this issue.

For a 2 year old bugfix?

I know you all like to try to track bugs for old and obsolete products,
but really, there's no end of CVEs you could request if you wish to do
this.  Heck, I could start asking for multiple CVEs for every single
stable kernel release I do, which would just be pointless.

Please just mark this as a "oh look, a bug was fixed years ago and we
need to backport it because we have old kernels out in the wild and our
customers don't like to upgrade" type issue.  Don't force CVEs to play
by the odd enterprise rules that you all wish perpetuate.

thanks,

greg k-h
