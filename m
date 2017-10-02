X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["716" "Monday" "2" "October" "2017" "14:06:44" "+0200" "Greg KH" "greg@kroah.com" "<20171002120644.GA4301@kroah.com>" "20" "Re: [oss-security] CVE-2017-1000252: KVM denial of service with posted interrupts on Intel systems (since Linux 4.4)" "^Date:" nil nil "10" "2017100212:06:44" "[oss-security] CVE-2017-1000252: KVM denial of service with posted interrupts on Intel systems (since Linux 4.4)" (number mark "        greg@kroah.c Oct  2   20/716   " thread-indent "\"Re: [oss-security] CVE-2017-1000252: KVM denial of service with posted interrupts on Intel systems (since Linux 4.4)\"\n") "<63ba101d-71b7-fcb0-5f28-ed6f78ebfbbd@amazon.de>" ("<63ba101d-71b7-fcb0-5f28-ed6f78ebfbbd@amazon.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27699 invoked by uid 550); 2 Oct 2017 12:06:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27679 invoked from network); 2 Oct 2017 12:06:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	fm1; bh=R94HHQw18QkmH6baRVaxBmPg0J6O9kfdgO/Sk/dAv98=; b=L0bJrgly
	vGcTnQq1lrV//gMXLnGxqf9sAy3wQeARep/xDrBW1qCiTN6GO0K5ttyWkWbYBnPw
	RMH63VOaL93sqnYFaJ5jt37Q9xU/ZwOxt4imfx8JAEkmsU3uxCHcSNH7nQbuTlDe
	SsPzm28qnXzu7MBIdzGssWF+1YhMV/0MITHEzRoK4JCiZTbZXWGcBuftPsA/oX1A
	1E7GjvqgCavowFXR8ghfPuEd4ssQ5afHcpYJuGQqq1vVZ28O7brwatrC5iDq3EyJ
	JroLSiahq/NQ8M0X0AlQ7Auw+LFINxaB9jtWav5vTyrgQ/6kaAzdRr4Oe8Gt72p8
	w+QgGlfaIJfLqA==
X-ME-Sender: <xms:yivSWfIkNAMVfv3ln6uVnka4fMH1wS1euq2qI2VgfxfES35jamDciw>
X-Sasl-enc: WxiUKO7sdeFRHIWTAY0OybzdLxeyUOf7+rLgVBYN2ra5 1506945994
Message-ID: <20171002120644.GA4301@kroah.com>
References: <63ba101d-71b7-fcb0-5f28-ed6f78ebfbbd@amazon.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <63ba101d-71b7-fcb0-5f28-ed6f78ebfbbd@amazon.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Mon, 2 Oct 2017 14:06:44 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-1000252: KVM denial of service with
 posted interrupts on Intel systems (since Linux 4.4)
To: oss-security@lists.openwall.com

On Fri, Sep 15, 2017 at 06:36:59PM +0200, Jan H. Schönherr wrote:
> Hi.
> 
> We have discovered a user triggerable BUG() when using KVM with posted interrupts on Intel
> systems. This requires an unprivileged user to have access to the KVM device.
> 
> Certain values in a KVM_IRQFD API call can trigger a BUG_ON() at a later point in
> vmx_update_pi_irte(). KVM as a whole seems to hang after that.
> 
> The issue was introduced with Linux 4.4, patches have been posted to the KVM
> mailing list:
> - https://marc.info/?l=kvm&m=150549145711115&w=2
> - https://marc.info/?l=kvm&m=150549146311117&w=2

Note, for those intersted in this, the second patch was reverted and
doesn't seem to be needed.

thanks,

greg k-h
