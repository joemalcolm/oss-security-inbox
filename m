X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1399" "Saturday" "3" "June" "2017" "08:56:40" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496494600.21640.9.camel@gmail.com>" "24" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Date:" nil nil "6" "2017060312:56:40" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ Jun  3   24/1399  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<1496493018.21640.5.camel@gmail.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>" "<20170530165015.GA4884@openwall.com>" "<06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>" "<1496493018.21640.5.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10124 invoked by uid 550); 3 Jun 2017 12:56:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10095 invoked from network); 3 Jun 2017 12:56:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=lWorOe4HqNFEcRP4gL/aA1IBWqHh71/1Pul96UpcDjA=;
        b=tz8ztUgKi/pA3umLnzN8TtmzeefkeXvvx+BZgxV+gBsmNfaZM6NGWJxTAJBMj4gJAI
         sqxYeQvH6PikAzA8BkR1EPcg3h5EbpJuctco9ci9ZJQemxKP+eO3VNT/A/P0yY7dKrIv
         9M9fYImvY7TP0YLwNfquDxOFnKSmSlfocs7LZyc4ivU02QIaXOamX20nsZZZ8gdyXOxR
         8YcF3yHpw8fa4+YCBOg8My1KVYMZ1uIlrHkK5rYidQ4NSlkQqF7OQEG4QNA6rvQ4Wu1R
         CZmw1DuEExCl69hVrr7dl37lPjk+4E3bVgffv9hS9L7zMpprm0GysrTUAKJPY+Ajj81a
         51SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lWorOe4HqNFEcRP4gL/aA1IBWqHh71/1Pul96UpcDjA=;
        b=FZcJ2+D/ieGEsp5r32ouDyYEWz0JVoF++NcBe2ooWMVFdDtH49ZDqvUfMAr46f2NYP
         lxNVwnnZPx2s0NpJdRjY/T0E8vhlU0UOr99th8tNxYXWm6v0FRECwlI/aa1q20TfsPzK
         Q0q5leyr/UM2crYkazCrsNLKj7eAjtFeNgXUaZd4bzbV1qUcnf7ZXMy9iNDVDHTRMKsp
         mUg+eSeEkZ2zdKskgae55tPj8NQQa30CcdNhJrXkeKC5AX0SRAp8cgDG9Qb/S0Y6B8Vp
         VQS4u4yUeF7wROKq0c1J3I++UwE6bk6EFo3YDrvyql1/QBLKsxojBFbhPFr1nh046Gxa
         J4fg==
X-Gm-Message-State: AODbwcA8IVh+s2T9LFsxznieRBLHULih0gJ8tnvC9dlxu2SaSyD6KsiM
	jueyoF8JJZI+JHGeynhUfw==
X-Received: by 10.107.13.148 with SMTP id 142mr2179950ion.158.1496494601953;
        Sat, 03 Jun 2017 05:56:41 -0700 (PDT)
Message-ID: <1496494600.21640.9.camel@gmail.com>
In-Reply-To: <1496493018.21640.5.camel@gmail.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>
	 <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>
	 <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
	 <20170530165015.GA4884@openwall.com>
	 <06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>
	 <1496493018.21640.5.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Sat, 03 Jun 2017 08:56:40 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

> Here's why the Android-based justification given earlier is bogus: you
> can boot from a usb flash drive as real root, without SELinux
> containing
> the init launched from there. It has full control over the kernel. In
> fact, there is no way to contain real root on those devices. They have
> DMA access over the kernel via peripherals that are not contained by
> the
> IOMMU with APIs exposed to userspace offering that control.

I fail to see why this rootfs / initrd / init control matters though. I
can't see how it's a vulnerability. Android covers the kernel line with
verified boot and control over it is a verified boot bypass. If you
found a way to persist as root after getting that temporary root access
via the verified boot bypass, that would be *another* verified boot
bypass, but you can persist as the system user (less than root but not
in a way that matters to a user) by design since vanilla Android doesn't
yet cover enough of userspace with verified boot to do much more than
guarantee that factory resets (which wipe all persistent state, but
don't touch the OS) purge root / system malware.

The DMA access issues matter because some of those processes could be
contained if it wasn't for the driver issues. However, it can't just be
considered a vulnerability unless it was intended for that to be case.
If they intended to contain those processes, it's a vulnerability.
