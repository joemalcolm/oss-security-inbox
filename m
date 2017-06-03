X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3370" "Saturday" "3" "June" "2017" "08:30:18" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496493018.21640.5.camel@gmail.com>" "68" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Date:" nil nil "6" "2017060312:30:18" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ Jun  3   68/3370  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>" "<20170530165015.GA4884@openwall.com>" "<06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5983 invoked by uid 550); 3 Jun 2017 12:30:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5953 invoked from network); 3 Jun 2017 12:30:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=PvNxHyeWKlMwHxs85zwqzI+94tsBMdj49RUJbPV6NLo=;
        b=LsvGWFKPYnNCWDpz8MeTaOdD1efrw85QIVkB6Hgqr4wS//BleKbA/jqVAtTbqQx1CI
         tLGmMEnP6eIy2+MNIljHDae+BFJK0Bm2++eNHVlbLu9x1OgXw6byt8GVz+MCkO8ntLaP
         VoBAuJPb+QvcwKwTN+Ar3aj8mWG1+2+f2MxQAgigRdFinzR4R5vpCbiSjCOL6R9zHiaP
         kHsRtA58xDNvO95Y6kaa9//Q82rfI5ogjBFbO0jbHJZO+yeNyIW4K5af2RN94dt+LXfS
         9KsAItcsWLuYQ3DeHxM+eYNPPXnpW1fuysvGDKpA8BfoRVq4Tj0Ausx24jiwDiOWlAcD
         UhWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PvNxHyeWKlMwHxs85zwqzI+94tsBMdj49RUJbPV6NLo=;
        b=LgWXlD8+7P8rCWVXFGJQv3IAVlZDh4OicStyKmuHw6G5xkUyG6IJGaT1L2wFSZRk3a
         ePol7w56WxYuy260z3wev8dZ+Fq8dSct0xgOXd3QbX5OJs+SJs+2VfTnzkjFlymtEDoU
         pKET/kuIUQcZVxUENuTJoAFEJh1kyOw74+XPtz2cHkxMcHAolrraxs4uFuWW8bpp90RL
         5dZugGrThW3lI4GNhiTtHYZPK5rjP7eDt2d7E5SLMv2cS923rprtUCv0MkH1U3FXIMiz
         tNFbp+9gyw4vxH5jll28uQODEsHunPt7/Ae6hBtsJKHY3bj9HcfBqO9aPGwKH0QSFWJr
         G2ug==
X-Gm-Message-State: AODbwcDo4jnwmOHJsoQxvsNrnzJZP/Y6UTzeSK8YE5VNW5fc71TYIBKU
	mF8Pzh52MjX4ev5i4Wf6sw==
X-Received: by 10.36.80.18 with SMTP id m18mr3914865itb.49.1496493019400;
        Sat, 03 Jun 2017 05:30:19 -0700 (PDT)
Message-ID: <1496493018.21640.5.camel@gmail.com>
In-Reply-To: <06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>
	 <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>
	 <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
	 <20170530165015.GA4884@openwall.com>
	 <06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Date: Sat, 03 Jun 2017 08:30:18 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

On Sat, 2017-06-03 at 12:06 +0200, Florian Weimer wrote:
> On 05/30/2017 06:50 PM, Solar Designer wrote:
> > I guess Daniel might be associating the other side's arguments with
> > Red
> > Hat's because Florian was posting from a redhat.com address.  I have
> > no
> > idea whether Florian actually spoke on behalf of Red Hat or not, but
> 
> I'm not a Red Hat spokesperson, and I did not speak for Red Hat.  I
> hope
> I don't have to include a silly disclaimer in every message to counter
> such assumptions.

Yet you're citing Red Hat's cargo cult interpretation of secure boot and
claiming that other people following a meaningful definition are wrong
about it. If you don't want to act as a Red Hat spokesperson, use a
personal email address and don't push poor definitions of terms based on
Red Hat marketing while claiming that those are the correct ones.

> > either way I think the focus on Red Hat is excessive - e.g., in the
> > distros list thread on the previous issue, another distro vendor
> > inquired about the proposed public disclosure date, implying they
> > also
> > might care.  A better summary would be: understanding & opinions
> > vary.
> Right, I think those distributions that strive to boot under the
> Microsoft trust root for UEFI Secure Boot may also have concerns about
> this issue.  Part of the problem with UEFI Secure Boot is that no one
> has documented clear security objectives for UEFI Secure Boot.  Fedora
> sort of evolved into “no unsigned code running in ring 0 without
> virtualization”.  From what I can tell, Microsoft picked that up and
> urged other distributions under their trust root to implement that as
> well.

So, no meaningful security objective, and not implemented in the Linux
kernel or the downstream forks of it in distributions. The lockdown
patches would be useful if they were complete but they aren't upstream
and the connection to secure boot is bogus. Secure boot can work in a
meaningful way (i.e. verifying at least a useful subset of userspace)
*without* those patches since the non-verified portions can be contained
without them. Making that lockdown mandatory based on secure boot simply
doesn't make any sense and is clear cut cargo culting without any real
meaningful objective in mind.

> If restricted access to ring 0 is the goal (and I think it currently
> is)

Please stop misrepresenting Red Hat's interpretation of secure boot as
the only one. Some of us care about meaningful security, not marketing.

If you keep doing it, I'll keep pointing out what you're doing.

> then Linux kernel command line parsing bugs exploitable for code
> execution can be used to bypass an intended security policy, and
> qualifies as a security vulnerability.

Sorry, but fixing every single one of these parsing bugs doesn't provide
that security property that you claim.

The kernel line options trust the kernel line. There are many options
placing a whole lot of trust in it.

Here's why the Android-based justification given earlier is bogus: you
can boot from a usb flash drive as real root, without SELinux containing
the init launched from there. It has full control over the kernel. In
fact, there is no way to contain real root on those devices. They have
DMA access over the kernel via peripherals that are not contained by the
IOMMU with APIs exposed to userspace offering that control.
