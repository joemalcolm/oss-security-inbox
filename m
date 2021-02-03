X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["895" "Wednesday" "3" "February" "2021" "08:19:09" "+0100" "Greg KH" "gregkh@linuxfoundation.org" "<YBpObXzJVfFDoJbc@kroah.com>" "29" "[oss-security] Re: KASAN: use-after-free in =?utf-8?B?Y29u?==?utf-8?B?X3Njcm9sbOKAiw==?=" nil nil nil "2" "2021020307:19:09" "[oss-security] Re: KASAN: use-after-free in =?utf-8?B?Y29u?==?utf-8?B?X3Njcm9sbOKAiw==?=" (number mark "U       gregkh@linux Feb  3   29/895   " thread-indent "\"[oss-security] Re: KASAN: use-after-free in =?utf-8?B?Y29u?==?utf-8?B?X3Njcm9sbOKAiw==?=\"\n") "<573a638c.960f.17766b555b8.Coremail.zhaowenjia@stu.xjtu.edu.cn>" ("<573a638c.960f.17766b555b8.Coremail.zhaowenjia@stu.xjtu.edu.cn>") nil nil nil nil nil nil nil "[oss-security] Re: KASAN: use-after-free in =?utf-8?B?Y29u?==?utf-8?B?X3Njcm9sbOKAiw==?=" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1069 invoked by uid 550); 3 Feb 2021 07:28:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30123 invoked from network); 3 Feb 2021 07:19:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1612336752;
	bh=TcuLCr6URRhAmUnV5yGVmJqJhV6LTmmNwOLyezOrg5g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HAbSMjPqBskGcHfp7p8M/oZZtp0jkyit/Dmcd3qKXqGfWeYTahBffrvBwTnso8LGs
	 Z0Z+KdWvr+w1L9T2haVQm3/o8ga6WRfT1bze3+1pO10JmLm+N32ShkAdskRKpXtSIY
	 CHzhg3C7uhQOfgUymkBDrSQGte26lD6tV/XvdM3E=
Date: Wed, 3 Feb 2021 08:19:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: ???? <zhaowenjia@stu.xjtu.edu.cn>
Cc: security@kernel.org, oss-security@lists.openwall.com,
	jirislaby@kernel.org, nico@fluxnic.net
Message-ID: <YBpObXzJVfFDoJbc@kroah.com>
References: <573a638c.960f.17766b555b8.Coremail.zhaowenjia@stu.xjtu.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <573a638c.960f.17766b555b8.Coremail.zhaowenjia@stu.xjtu.edu.cn>
Subject: [oss-security] Re: KASAN: use-after-free in =?utf-8?Q?con?=
 =?utf-8?B?X3Njcm9sbOKAiw==?=

On Wed, Feb 03, 2021 at 03:04:55PM +0800, ???? wrote:
> Dear Linux kernel developers,
> 
> I found a crash "KASAN: use-after-free in con_scroll+0x45c/0x620 drivers/tty/vt/vt.c:641"  when running the syzkaller,  
> 
> It is can be reproduced. I did not find a report about this problem. Hope it is useful.
> 
> 
> 
> 
> Linux version: Linux v5.9-rc8 (549738f15)
> 
> 
> The following is the crash report.
> 
> ==================================================================
> 
> BUG: KASAN: use-after-free in scr_memmovew include/linux/vt_buffer.h:68 [inline]
> BUG: KASAN: use-after-free in con_scroll+0x45c/0x620 drivers/tty/vt/vt.c:641
> Read of size 693770 at addr ffff8880000b894c by task syz-executor.2/7755
> 
> CPU: 0 PID: 7755 Comm: syz-executor.2 Not tainted 5.1.0 #4

5.1.0 is _VERY_ old, please try reproducing this on a more modern kernel
(i.e. 5.10 or newer).

thanks,

greg k-h
