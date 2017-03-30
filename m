X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/30/2
Message-ID: <f3785fb8-b95a-522b-14b4-94e8cefb02ab@linux.com>
Date: Thu, 30 Mar 2017 14:55:42 +0300
From: Alexander Popov <alex.popov@...ux.com>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel: CVE-2017-2636: local privilege escalation flaw in n_hdlc
Content-Type: text/plain; charset=utf-8

On 07.03.2017 20:45, Alexander Popov wrote:
> This is an announcement of CVE-2017-2636, which is a race condition in
> the n_hdlc Linux kernel driver (drivers/tty/n_hdlc.c). It can be exploited
> to gain a local privilege escalation.
> 
> This driver provides HDLC serial line discipline and comes as a kernel module
> in many Linux distributions, which have CONFIG_N_HDLC=m in the kernel config.

Hello,

I've published the write-up: https://a13xp0p0v.github.io/2017/03/24/CVE-2017-2636.html

--
Alexander

