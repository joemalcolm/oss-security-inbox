X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1007" "Tuesday" "7" "November" "2017" "21:22:37" "+0100" "Greg KH" "greg@kroah.com" "<20171107202237.GA10679@kroah.com>" "28" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017110720:22:37" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       greg@kroah.c Nov  7   28/1007  " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>" ("<906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>" "<1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23877 invoked by uid 550); 7 Nov 2017 20:22:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23847 invoked from network); 7 Nov 2017 20:22:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=zGUIzYbLojBLVodowxoDuj8Ab08Mk
	fEZWYQnNECzMPU=; b=Dk/NmEDSHCBqTzMTlBB0ZCo5UWoI147oFigBPzmBX7lRv
	JlvMGPQiPYIhlo1GY2NVlfMqBFP9jfjWzlrfuO+wvoE5KQSwYplv6OUnEMEr2VYO
	+kXC2titEvawI8g16iFhQELlyXOSSdPDjK0+bYsqCz3NxuvL/rZgGc75OZ3DXzEM
	hR6B+AwA6vs0nCZCVIFDKF74rJIsK3//64FXYw+2SsWkOyFYlHOI7u+qlniNIGaD
	cc2cf8ChfGaVOOAsOvrY3C8azndJNXuDgoscfpOzsnjN7VTEW5ImKq2+CJXClhAT
	8yRdL1bvW0gXmUmwRJ1OPvkrUSQf+BbgVEy/RLTdg==
X-ME-Sender: <xms:ABYCWjnWQ5tGlZTy9ERoIpnqRPHr12jQbT1xgXqQgJh3wbqlPEBULQ>
Date: Tue, 7 Nov 2017 21:22:37 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20171107202237.GA10679@kroah.com>
References: <906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>
 <1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due
 to a race condition in [legousbtower] driver

On Tue, Nov 07, 2017 at 03:14:56PM -0500, Vladis Dronov wrote:
> Heololo,
> 
> A race condition exists in Linux kernel since year 2003 through version 4.9-rc1
> in [legousbtower] driver which allows a null pointer dereference caused by
> not removing a device file interface on an error when the probe function is called.
> This can cause a write-what-where condition by remapping dev->interrupt_out_buffer
> in tower_write(), leading to privilege escalation.
> 
> References:
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1505905
> 
> An upstream patch:
> 
> https://github.com/torvalds/linux/commit/2fae9e5a7babada041e2e161699ade2447a01989

I hate to ask, but why are you getting CVEs for bugs fixed over a year
ago, and are already in all stable kernel releases a year ago?  Why does
it matter?

Unless you happen to have a product that doesn't ever do kernel updates
from the stable trees, and well, then you know what you are doing and
don't need CVEs assigned either, right?  :)

thanks,

greg k-h
