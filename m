X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1557" "Tuesday" "8" "January" "2019" "16:26:27" "+0100" "Greg KH" "gregkh@linuxfoundation.org" "<20190108152627.GA19359@kroah.com>" "40" "[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability." nil nil nil "1" "2019010815:26:27" "[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability." (number mark "U       gregkh@linux Jan  8   40/1557  " thread-indent "\"[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability.\"\n") "<CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>" ("<CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17999 invoked by uid 550); 8 Jan 2019 15:59:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20208 invoked from network); 8 Jan 2019 15:26:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1546961189;
	bh=Danb1e06BURhsCCPYvyyyajwKZEAT6MrwpFFoldZYxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nQkZExXHxWwv2cysEHEXBrEoLY//9eaQ9TRrzPed/UtVFR1GsTw9tEL0q4nsWbpcJ
	 X0v4GBFxsfKLwPyjxIT5Ud0UzcUwNsJqGwvioqH2lItNjVd2eKLitQCzi3nIynSP+j
	 Y055IDncySjJj9oJrSD974doC2ensj3Mc6tVwXg4=
Date: Tue, 8 Jan 2019 16:26:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Entropy Moe <3ntr0py1337@gmail.com>
Cc: security@kernel.org, oss-security@lists.openwall.com
Message-ID: <20190108152627.GA19359@kroah.com>
References: <CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
Subject: [oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability.

On Tue, Jan 08, 2019 at 07:08:14PM +0400, Entropy Moe wrote:
> Hello,
> I wanted to let you know that there seem to be a deadlock vulnerability on
> the linux kernel 4.20.
> I am attaching the result report from syzkaller which also got the c code
> for replication.
> 
> thank you,

> Syzkaller hit 'possible deadlock in console_unlock' bug.
> 
> RBP: 00000000006cb018 R08: 0000000000000001 R09: 0000000000000031
> R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000004
> R13: ffffffffffffffff R14: 0000000000000000 R15: 0000000000000000
> 
> ======================================================
> WARNING: possible circular locking dependency detected
> 4.20.0-rc7+ #8 Not tainted
> ------------------------------------------------------
> syz-executor579/2028 is trying to acquire lock:
> 00000000e478796d (console_owner){-.-.}, at: log_next kernel/printk/printk.c:489 [inline]
> 00000000e478796d (console_owner){-.-.}, at: console_unlock+0x33d/0xd30 kernel/printk/printk.c:2401
> 
> but task is already holding lock:
> 0000000030388923 (&(&port->lock)->rlock){-.-.}, at: pty_write+0xcd/0x1d0 drivers/tty/pty.c:120
> 
> which lock already depends on the new lock.


Are you sure this is a real problem?  Can you deadlock this when
running?

Also, try 5.0-rc1, a number of tty core changes went in there to try to
resolve these types of issues.  They have not been backported to 4.20.y
yet as they need to get more testing.  If you could run your same test
suite on that kernel, it would be great to find out your results.

thanks,

greg k-h
