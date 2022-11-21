Received: (qmail 7173 invoked by uid 550); 21 Nov 2022 12:24:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24055 invoked from network); 21 Nov 2022 10:39:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1669027164;
	bh=58kfhx9Z6pHOwCULC/BJOboR536O+0nhustm8x488sA=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=Nr4nwos13JwIO7Qb27ob/37ep9NYrCoohYtFpXvlGBZdeyl/RXbSKWCGpaD81bA/b
	 1w2Omkhk9ufoTI9z3dJB92ETozJ9WFIphK7pABsr0KQYFnooG6y2dqu+Cp+fL3fZrC
	 FUV1Ld7vmTVC3iP9+xopgHyi930s3gK0G00Puh5XrZ0sDn1D2dgAwyvQ8nAdpoBgLl
	 fmfEsBg9EEpEOn84QL4XtXliG1IqwuZVC7w+eGm3QKxqHZGF/F3oU4QcD+6uqZrz4q
	 Ke55SIjVzLb/IY31z/6XMp/+6Q79cacQuuxhq//jwOlb2nLSirMFU4hoxlafRkSom1
	 k1ncCunfbou+A==
Date: Mon, 21 Nov 2022 07:39:20 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <Y3tVWDWwK6b5a3c6@quatroqueijos.cascardo.eti.br>
References: <CAJedcCyz-uNq+tyK+BqG0xCD9_WOOC8nta77Up7gaOBs+pfwyA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJedcCyz-uNq+tyK+BqG0xCD9_WOOC8nta77Up7gaOBs+pfwyA@mail.gmail.com>
Subject: Re: [oss-security] Linux kernel: staging: rtl8712: A
 Use-after-Free/Double-Free bug in read_bbreg_hdl in
 drivers/staging/rtl8712/rtl8712_cmd.c

On Fri, Nov 18, 2022 at 11:58:55AM +0800, Zheng Hacker wrote:
> hi,
> This is a bug I've found in linux kernel before 5.19.2, which is
> in cmd_hdl_filter in drivers/staging/rtl8712/rtl8712_cmd.c, allows
> attacker to launch Local Denial of Service attack and gain escalation
> of privileges.
> I reported it to linux kernel in 2022.8.29 and the upstream fixed it in
> 2022.09.06. Now the patch was opened to the public
> 
> ## Root cause && possible exploit
> 
> This is a uaf / double free bug. Whenrtl8712 wireless networdk adapter
> initialized, for example using command "ifconfig wlan0 up",
> it calls netdev_open function, which final calls cmd_hdl_filter function.
> As we can control the command code, we can trigger the vulnerabiliy.
> After pcmd object was freed, we can use msg_msg heap spray to
> get the object, and design the layout of it. By controlling the parambuf
> address, we can leak infomation to pcmbuf, which will finally write to
> adapater's memory. By using msg_msg tech we can also leak the information.
> Then in r8712_free_cmd_obj funtion , as we have access to pcmd->parmbuf. Now
> we have a Arbitrary Free bug. This is a powerful primitive and there is some
> common skill after that.
> 
> ## Fix
> 
> [1] https://lore.kernel.org/all/20220906132823.157986856@linuxfoundation.org/
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c53b3dcb9942b8ed7f81ee3921c4085d87070c73
> 
> ## CVE
> 
> Now no CVE number is assigned for this issue.
> 

This was assigned CVE-2022-4095.

Regards.
Cascardo.

> ## Timeline
> 
> 2022-08-29: reported to security@kernel.org
> 2022-08-29: bug confirmed
> 2022-09-06: patch it
> 2022-09-06: patch released
> 2022-09-07: apply for a CVE number in MITRE
> 2022-09-29: reported to secalert@redhat.com
> 2022-11-18: Announced on oss-security lists.
> 
> ## Credit
> 
> Zheng Wang(@xmzyshypnc) and Zhuorao Yang(@A1ex)
> 
> ## Additional Information
> 
> This is a bug reported to Linux kernel. Although staging driver is not
> a so important driver module in Linux. [1] This vulnerability has been
> introduced as far as the driver was added in 2010. I've checked the
> issue doesn't affect the vendor in the CNA-project list. But this
> issue can affect othe company who use it as their rtl8712 adapter
> driver module like D-link [2] . I  searched the related issue like
> CVE-2021-28660. I think its NOTE description(NOTE: from the
> perspective of kernel.org releases, CVE IDs are not normally used for
> drivers/staging/* (unfinished work); however, system integrators may
> have situations in which a drivers/staging issue is relevant to their
> own customer base) is very appropriate for my situation.  This is a
> long-existing issue as far as the driver module was added so I think
> it's necessary to assign a CVE number so that anyone using it can fix
> the bug.
> 
> [1] https://github.com/torvalds/linux/commit/2865d42c78a9121caad52cb02d1fbb7f5cdbc4ef
> [2] https://cateee.net/lkddb/web-lkddb/R8712U.html
> 
> 
> Best regards,
> Zheng Wang
