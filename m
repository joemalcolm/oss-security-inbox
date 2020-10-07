X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["977" "Wednesday" "7" "October" "2020" "09:31:40" "+0200" "Greg KH" "greg@kroah.com" "<20201007073140.GA340590@kroah.com>" "26" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100707:31:40" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       greg@kroah.c Oct  7   26/977   " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<871ribhxyi.fsf@canidae.wired.pri>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005124358.GA806250@kroah.com>" "<CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>" "<20201006083708.GA14390@kroah.com>" "<871ribhxyi.fsf@canidae.wired.pri>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3934 invoked by uid 550); 7 Oct 2020 07:31:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3903 invoked from network); 7 Oct 2020 07:31:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=aOjMMsTt9IYs6cTsLtvtE0yvHwH
	ZfbfcIPGkCMttOR4=; b=ivPhepQa6My6kmVeUvVjE7bau4MdJmuUnP4mqu3j3PO
	jjDUd9fAQLRmXom/Qy79fJWzG75sbUlPtr8sFuxgmffl1LDnj7gu1YLsj+GKCHkL
	r8HqSwpN304Ttv9fjeEd5D5/UjV6W18iGwTCEP64iex/xI99bojVsOA+aIVufMjN
	mV79Pi6iWR3MsEDYbhLBQfxzGNjkUfFfpHm37Jl5gvCn3MYQr0Ks12+ZSokI4Kto
	JSqpF7R8gfBt5esOSNL33wcbsUeaJxaTvJLzInusIyVlP0O5wLCglH/uQVgPRNlk
	Ko/WB5k9C7mPTXYEMyNBhFMO5McFgS4+HUT+FeXKh6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=aOjMMs
	Tt9IYs6cTsLtvtE0yvHwHZfbfcIPGkCMttOR4=; b=OchIGO/C+j3+0jgwiA7QDc
	7aKZ+v7EKjCJn5R680AEhNzmKxjDi6O0IISeGvgc9108NqwCcfnHW9/9mT2QEEBQ
	+dvBYQMN3ez0jexTGT8tOxZDqQ3L/8v2hQW4ybMg9KA40noZQerKfzGjn40c5I6+
	is2hDNDoMFFwfD/LMW0IeBKYwWRrl/COCixoox5oMG2ZS+AL9lAoradkaJaxfu9t
	MEq3xnvsJhdisu762i0cEIwexC+9dlCPJ4FEOJLrDXy1+8x12nnsBTM45dRIES7A
	k+mMKivd03Isvk21CdM+hgSTH783ezAzhSnJzY2kxWbh45S8tR7ycszhvNCCYTqA
	==
X-ME-Sender: <xms:sG59X1u5sFK7tbnnBiZGvHU88YrR5RvFhP6jPBDFinLsSyNG2x_CzQ>
    <xme:sG59X-fJoA2pq7GwmpQ6v_tomph9mui1562fnzz37tryRnVwiCXzBsB9yqBDi-WCn
    h1k1rT_ivBe6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrgeehgdduvddtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnheptdefvdehgeeihfekhfetheelveeigfeffeelgfevtdejhf
    ekieektdegfefhudehnecuffhomhgrihhnpehlfihnrdhnvghtnecukfhppeekfedrkeei
    rdejgedrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:sG59X4zZL61CraiBOtrnvFkTbE000UnvZQOJ3Rqjr_E1KNpay0BmsA>
    <xmx:sG59X8PUxvTPCPlZJBupjglc5V9LW6sYfFRVMbp06V3lYyk0IQYEDw>
    <xmx:sG59X1-N11XBHoS0D4FLGrlMW4ZGpP27OTtGTlqbb7cVb2cQQkgHaA>
    <xmx:sG59X4LUXkcpw3GxZ4Y480XzbHeuL-0GdRJmERuIh5o6o7-Hi-F05g>
Date: Wed, 7 Oct 2020 09:31:40 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20201007073140.GA340590@kroah.com>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
 <20201005124358.GA806250@kroah.com>
 <CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>
 <20201006083708.GA14390@kroah.com>
 <871ribhxyi.fsf@canidae.wired.pri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871ribhxyi.fsf@canidae.wired.pri>
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop
 and/or mobile market?

On Wed, Oct 07, 2020 at 08:00:05AM +1100, Brian May wrote:
> 
> Android devices typically require a forked version of the Linux kernel.

That is due to SoC support, not an Android-specific issue at all.

You can run Android code just fine on mainline kernels, if you have
proper hardware support merged upstream.  This has been true for many
years now.

> I believe they are slowly moving to reduce the changes required by
> merging them mainline, but not sure how that is progressing right now.

See the lwn.net articles from the Plumbers conference for the past few
years as to the status of that effort.  Last I looked, it was a handful
of out-of-tree patches for a few things that upstream did not want to
take, but Android still had to support for backwards-compatibility
issues.  Nothing major at all, odds are your favorite Linux distro
kernel has more changes in it :)

And all of those changes are public and can be easily audited if you so
desire.

thanks,

greg k-h
