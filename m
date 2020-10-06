X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1386" "Tuesday" "6" "October" "2020" "10:37:08" "+0200" "Greg KH" "greg@kroah.com" "<20201006083708.GA14390@kroah.com>" "41" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100608:37:08" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       greg@kroah.c Oct  6   41/1386  " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005124358.GA806250@kroah.com>" "<CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19757 invoked by uid 550); 6 Oct 2020 08:37:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19739 invoked from network); 6 Oct 2020 08:37:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=l0qAtElD6mLpY0Fw/anLfV+FEFm
	hUh97CzcznRu6Bkk=; b=y9vrXR08tun3b5GP3vqkmaxC0/07qCX6t6EaAMPjL+s
	zPWLSINW31lYjVAO3dP1Lv4QrLRsO7ihwLSICK5rjGnhWZF4ynE53ZvJ4DOCBkPU
	Xt4dZw8B17we+qubbf6xlAN3TmiG1HpXYX8WApO2/jWIy4kt8sNwm8ZvxoVXKOQh
	LckSqGk+/W+fsQ8JEKfu/WZwZXUvMgtj4gxsz6lScTYglFh4bQG5ZxxmLggA3hNm
	G64iTA8FStnuehgl/gbqMM6lMeCXyErDZjz0jEcyfaskqM6uqptA2f3HDBMhwL5B
	ZT1JhOBR8lAyS0uW4d8yyg/rm022+s8K1g97JCf3C7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=l0qAtE
	lD6mLpY0Fw/anLfV+FEFmhUh97CzcznRu6Bkk=; b=GNjLG2DSANjRjd6c/OLt2+
	thKk+V9MAhia1ImG7LGXUzUjczbNFPlvXJDYHcKMAeVgIUSnfiDtRliwudY8Pim4
	UwF8CWUgM923YWjDxeVZKIKkP1rU+a8cTm8RGqMbr+tOsD+SST1g71/knyrO6H/z
	G6yBmTzD3ci+U+CARJbPtccqx97Av1z+maXDnutkTCGMApF9Nm2wdfIs50bk8bBZ
	T6KlHVyggQrGX+SQM1dOUyNeBRnG9TxmhaIKB19il+Nl3swTS1ZWttv2gpJ6ngZC
	dfOR+CJKadQBEUWErHgk3dRVI65KgUFatxKPEG9z36EWOVKbDRWTtq8FPEgf8mvQ
	==
X-ME-Sender: <xms:tyx8X6seC8EGhMrRpiyz_M2rdndMazhZN5lF8i2ehdEgfIta3-0taw>
    <xme:tyx8X_fM4wZdN_c1nAYnGJqfOf6rK0d2Fb9D0zeOFDMBm74imylV7RBTCfqtgcwSN
    TDr9nR0pObIyw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrgeeggddthecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepifhrvghgucfm
    jfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuggftrfgrthhtvghrnhepjeeuteekle
    fgveefuddttdejhffgffehudejuefhheevjedvkeduudeftdehleeunecuffhomhgrihhn
    pehthhgvrhgvghhishhtvghrrdgtohhmnecukfhppeekfedrkeeirdejgedrieegnecuve
    hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehk
    rhhorghhrdgtohhm
X-ME-Proxy: <xmx:tyx8X1yHOLbOpXihNyQmj8LP6XBpL4NcRUNDBBhD6r1H7rdIDC3DQA>
    <xmx:tyx8X1O2YTWS0C-phR1VgWGGTip0fPBeToSEtWHpv7FVfhbjlLHLKA>
    <xmx:tyx8X6_3MM-ZJKPWpuA59LrC5otL7xEGf45rY9HsvypSJ9L9YT6iFw>
    <xmx:tyx8X_Gz9HUFN_5bGtq2P49VFAwMmFDAKPhZePjV83GsW506ZBgMJA>
Date: Tue, 6 Oct 2020 10:37:08 +0200
From: Greg KH <greg@kroah.com>
To: Georgi Guninski <gguninski@gmail.com>
Cc: oss-security@lists.openwall.com, itz@very.loosely.org
Message-ID: <20201006083708.GA14390@kroah.com>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
 <20201005124358.GA806250@kroah.com>
 <CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop
 and/or mobile market?

On Tue, Oct 06, 2020 at 11:29:34AM +0300, Georgi Guninski wrote:
> On Mon, Oct 5, 2020 at 3:44 PM Greg KH <greg@kroah.com> wrote:
> >
> 
> >
> > "if"?  You do know the market share of Linux-based mobile phones, right?
> > Last I looked, it made the Linux server market quantity a rounding error :)
> >
> 
> AINL!
> 
> Android Is Not Linux!

<pedantic>

Linux is a kernel.  And also commonly used as a name to describe a
system running that kernel, to make it easier for people to talk about,
and discuss overall.

Android runs on, and requires at this point in time, the Linux kernel,
so one can say that Android is a successful implementation of Linux on
mobile devices.  It's also widely successful, so much so that it dwarfs
any other installed Linux system out there by orders of magnitude.  So
why ignore it as a valid Linux system?

The fact that I can run a userspace based on a "traditional" Linux
system (like Debian), on an Android device, with no file conflicts, is a
great engineering success, don't you think?

</pedantic>

> https://www.theregister.com/2015/06/17/debian_chromium_hubbub/
> Chrome, Debian Linux, and the secret binary blob download riddle
> Browser snuck proprietary voice-snoop code into distro

I don't understand the question here, that was something over 5 years
ago.  How is that relevant for "mobile devices" that run Linux today?

thanks,

greg k-h
