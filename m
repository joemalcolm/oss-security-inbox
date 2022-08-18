Received: (qmail 17968 invoked by uid 550); 18 Aug 2022 08:25:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17943 invoked from network); 18 Aug 2022 08:25:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1660811138; x=
	1660897538; bh=PMMHHU70no4wFAuT5ThXHRPOl2YI0TKp09BWWxNpQT4=; b=n
	K7Iy/uxlbMyLqU0Coa4mcD/0uiC+SDWiR7stgHRQkCYpnvNSFWpWgmgO+QCt00mS
	NEubm86cT18DY5Oo8njOpq/rQFh9tYlcFwnFRqREj1Ys8j9qXrhUUaWl4FKNvu3P
	RUCv6gEx89Z+WTm7Ql7sNGpcNITw/SUt2bAyGGL2oC5UhmCk8S+xYW54GBAwGY7S
	92QajD60754fIn61Spv0BrRQBSoZ3Mpfycm9oa2ZWpbHAgPF51mbLjeFllvziOk6
	qV9OAiaecWdKIthsq7DQTIguzQKIdad3yQS3I6ZpffiQ6P8yBm5zEV9uP3NsGIy9
	5Lz7imltZorrqlpRFbOPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:feedback-id:feedback-id:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1660811138; x=1660897538; bh=P
	MMHHU70no4wFAuT5ThXHRPOl2YI0TKp09BWWxNpQT4=; b=Yt10U8ytf/YdtI24P
	h7P6Nl74oxEhrg5PtC6otCdtv5ftY2iu0TwaOrKGUPu0OhO+iQ9lcI2SOGa+CFJp
	YZimTHiz5I3SW/fJGrTZfhKBsg77EZhWGu5wf0mOGoZ6ecNZj/ll7AaaQykNOtxj
	gSMZ72I3zGMjr3+22r60zz5tok5KG0gkTlXoCjciwealvqb76RPh7E6PkYDln4ui
	G7DuC5pdCO+YmaRuKT6I1B9tg0F670qdhTzBpd1nqjyPCy/SW2RzwWgU1JlX/+pH
	QsKsKmlsQ31XMx+JS+7EMpxNnQapIr+nidLWtLPD/n+ppDFdYrKtnCMKxyvvm1Lq
	XP0eA==
X-ME-Sender: <xms:gff9YrznOM_jYW37JN3KjdZPNBtv18F62wNZ3WaGjLXuYUpBqy6GYw>
    <xme:gff9YjSvs0xlHV34kRorlmlAnqmvnVjCDli_VSfsJuedwicUxe3HiePSUUNvDm3lB
    g07XT2JcRqTjg>
X-ME-Received: <xmr:gff9YlWpOqss2UWqrx6ForAkgr0Vwgmk3pgfAjAKlF03zhmx5VaQUsdJlloB_oUIxWzbvSeJ6zT60Yc5iBNKfYO_K9ffMtKo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdehkedgtdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggugfgjsehtke
    ertddttdejnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucggtffrrghtthgvrhhnpeeuheekheelffefieduteefkeejffdvueehjeejffehle
    dugfetkedvleekudduvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
    ihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:gvf9YljjW7EnvvfiLy2AkRO63oubNesj8BD6yTMLstCjdXX_NBQZaQ>
    <xmx:gvf9YtCgxDPUAOgJ-_lEAF_CyU6LeeeoSS_YnOZc-pvZX4HJ0WfVAQ>
    <xmx:gvf9YuL02dNbBLMblIGi35HSyGX42l6TD30J6mF1uYaFtTxPNAnNKg>
    <xmx:gvf9Ygq8Ue4Qi-wzxeqa6vIb2fquM8QA9JszMyzGSNgwJVmhCsgttg>
Feedback-ID: i787e41f1:Fastmail
Date: Thu, 18 Aug 2022 10:25:35 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <Yv33fx1J/hQXTtSk@kroah.com>
References: <OSZP286MB1910B2AA75597E9B1724117EAA6D9@OSZP286MB1910.JPNP286.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <OSZP286MB1910B2AA75597E9B1724117EAA6D9@OSZP286MB1910.JPNP286.PROD.OUTLOOK.COM>
Subject: Re: [oss-security] Linux kernel: stack-out-of-bounds in profile_pc

On Thu, Aug 18, 2022 at 05:41:30AM +0000, 黄 晓 wrote:
> Hello:
>       
>       I found a bug through the syzkaller fuzz tool, you need to set CONFIG_KASAN=y, the crash information is displayed as out-of-bounds reading, I am weak and unable to analyze the harm of this bug.
> The bug program cannot be reproduced stably and needs to be run multiple times.

It would have been helpful to notify the developers and maintainers of
this code that there is an issue.  They will not see a random email on
the oss-security mailing list as they are not subscribed here.

To find who is responsible for this code, use the get_maintainers.pl
script in the kernel tree.  The output for it for this problem is:

$ ./scripts/get_maintainer.pl arch/x86/kernel/time.c
Thomas Gleixner <tglx@linutronix.de> (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT))
Ingo Molnar <mingo@redhat.com> (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT))
Borislav Petkov <bp@alien8.de> (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT))
Dave Hansen <dave.hansen@linux.intel.com> (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT))
x86@kernel.org (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT))
"H. Peter Anvin" <hpa@zytor.com> (reviewer:X86 ARCHITECTURE (32-BIT AND 64-BIT))
linux-kernel@vger.kernel.org (open list:X86 ARCHITECTURE (32-BIT AND 64-BIT))

Also, this issue seems to require root permissions (i.e. write
permissions on the kernel profiler) in order to be triggered.

Hope this helps,

greg k-h
