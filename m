Received: (qmail 18061 invoked by uid 550); 6 Jan 2025 18:19:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18036 invoked from network); 6 Jan 2025 18:19:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1736187552; x=1736273952; bh=Ii380zx5+I
	BFhDrIgNLinl5REKdb4nI3iEDVcJO5rH4=; b=mjtqgpmJP51Fz6n2xlVJTDdPEG
	gT0Pb6ca50MYkWgaLqZ8atV58XjqAb2jradnKzdWFTDlqI7QgNNTepnjnJ4CepSV
	KolXIFSIsF1bhFIuzcwsKhnVBKXHKFcVZ99agZhBarmf4cI+kST9MzNPey6baq/F
	35UPgRLMac9EMyMnO0gIJjQrzz02Wb+SED7wVKpzcPsyHVd2Qn2nzouR+Zf/DSqV
	iW2L3c5GbPmrnNv0DC0gjrZZug9tWtGj+jvNYsp0fb8ydUyQOswYCilBoXEAP17L
	V9ZXA9yuDeoM3MBsuDie1chc6IcYhEtQZrmntc5Gh401cvCOACabR8lVJmNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1736187552; x=1736273952; bh=Ii380zx5+IBFhDrIgNLinl5REKdb4nI3iED
	VcJO5rH4=; b=nEdE89Ax1Uwjt2QPf7+IKxClkOqXwGB2toqQ+5gCChu7C1X0dhD
	125WYa0GWF73+Jz8BEGc+EpX5zih6zo2onTel8IQ6UQ2o12RXVDiGi8U7TY1aKuC
	NpN92ZES7CV0cBzqHagRKqupc69pMx05rzU1ctd7yLCoNdED8Hzkfd77bEinVATo
	7I/5jfY9oZNvb9BiwB25tT4/sZhK2V3lk6ppl723dYx8AmPQIrV1PfrgpSclUjBA
	rGfSRa8p/QPC/snbD0Q628cVCpSx0jnCwtPTiXX1204DJJL4BgjRqYUo+y2zbXlJ
	2SO97GczLIsud1c68EecKgDIWy3u5HzD68A==
X-ME-Sender: <xms:nx58Z39HeXv2rUd2uag5VS-8XJFa1s2WFxnsNnG0lpy64zAEeRtn6A>
    <xme:nx58Zzun6dthRosG2imRLgGOCFWSvV7nk_Bk4frsdCk3dU0C-5FjblXmMQIwMQTl7
    FTwFhLHAIYtUw>
X-ME-Received: <xmr:nx58Z1COf9pBNm5vyNqPBUsaSB-cGXGn9NorykO0c2wtYD6kHCW98L9_qlx-lbcJJJsYazzVbupahsnmYP8VEYpl6sgMVoIwWEwOnQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudegtddguddutdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghg
    sehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpefgteefffetvdffledtgeduud
    etffdutdduveefvedtueegueeggfeiteehfeetfeenucffohhmrghinhepghhithhhuhgs
    rdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epghhrvghgsehkrhhorghhrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhm
    thhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvg
    hnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:nx58Zzfkzngg3AB_PUCT0q2THHb7cNg3IW_XCZN0q8_JvQ7EMagFow>
    <xmx:nx58Z8NZGKKudfy3hWSZehwEJC6ja2vOr4LM_HM9JqsjH_1AgXPolg>
    <xmx:nx58Z1kGrj_6RoKTPsf6WI7s-D6YrGGKcy4korFVJ-GYRTrPokMT-A>
    <xmx:nx58Z2s7dvFBevn3Nv1obkSfP13u_WTl4L8mPTC9tLVGdMTMg1JrLw>
    <xmx:oB58Z1a83dfUSy2632y3LuFKdduuusrCcSmLsnXBhzOX8So-S43xPEcg>
Feedback-ID: i787e41f1:Fastmail
Date: Mon, 6 Jan 2025 19:19:08 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2025010626-unhearing-dealmaker-27de@gregkh>
References: <ALcAqQAMIghdG5uEpB93rap6.1.1736154109674.Hmail.241270009@hdu.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ALcAqQAMIghdG5uEpB93rap6.1.1736154109674.Hmail.241270009@hdu.edu.cn>
Subject: Re: [oss-security] Linux: general protection fault in __vmx_vcpu_run
 with nested virtualization

On Mon, Jan 06, 2025 at 05:01:49PM +0800, Linfeng Sun wrote:
> Hello list,
> 
> A bug has been detected in the Linux kernel's nested virtualization implementation, which 
> can lead to a general protection fault in __vmx_vcpu_run when running a higher 
> version L1 hypervisor kernel on an L0 host kernel version predating the following 
> commit: https://github.com/torvalds/linux/commit/45779be5ced626db836e612e0dc638a1601abcf2

For those wanting to understand this, that means that any kernel version
from release of:
	3.17
to the following releases:
	4.9.331 4.14.296 4.19.262 5.4.220 5.10.150 5.15.75 5.19.17 6.0.3 6.1
is vulnerable, and anything newer than that (i.e. any kernel newer than
August of 2022) is just fine.

Hopefully everyone here is running a kernel newer than August of 2022,
but hey, who knows!

hope this helps,

greg k-h
