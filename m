Received: (qmail 17685 invoked by uid 550); 30 Jan 2024 22:59:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17661 invoked from network); 30 Jan 2024 22:59:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1706655686; x=1706742086; bh=XG37WM9WvS
	+iX3MGo3eqnCDLtJOhk9jv1RoYoZg7dyQ=; b=w5YJ+lbm5iK7GAIe6/w7U1mPrN
	tgGZhHH02rPxdq3dewJ32aOmn7h3Fb/o+39u/f2F681l+1D3vITF8ZZBpTyQnomC
	WXQqGz2B2QeVQpqwFtX8umoqlcFW9touey3boX1mWxq76mTZrLI/MyHRlyZAGjMN
	q3h4RGwcV1JvRWPXMxK5mahbw3MhSCEWs+J9aFHLCuGLxmy8RCfzWo4Txk8HLxlP
	PI3VHi3WNNsa82mzNZd+HEt0+43zTzpoIL4nbS+HLCYDBP8houmYtYZY7Fhk4yuo
	weHWJMM4bumAQ8po1AOJanUeyfBugiz1eckOQ9UaXc5dRrU8KJhVuokSr9mQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1706655686; x=1706742086; bh=XG37WM9WvS+iX3MGo3eqnCDLtJOh
	k9jv1RoYoZg7dyQ=; b=Phbe11zJlDZUk8pNO8kK2ccaJ5uI4KU+ga5mGVT6QmNY
	qhaeUaSBMyVifKYUG92tIHD8pVgAVsV5cYe1zEtEpoT8DNglM6cKojqMv+q+UWvM
	9YsqmbSOLe+8SUt2TUAphMtzJoGPPdDN0pPelJfGiEEXOPDMB6/D7wShlOfGtUqL
	Zc/0p+1tx5RZtIaEt2N3B+SzZQIEvvsjcoHohDXrR4o16A2IfuGNCwFBPAh/7+iB
	Lpa/Mq5nUcdx0UhE4Tvx+n3f5YTVKyScJgAK0yv+uT0JGp/I+zKmSxaXDCh08H83
	IYNV9Q/tShIwW2UUC+AKtm7bwonryNk1UvoR6ULauQ==
X-ME-Sender: <xms:xX-5ZdPOuZ1yVwuJ5YbAZ3GXzxjGfrbwwc6IKwJ5rl5f5zP9erwTPw>
    <xme:xX-5Zf-9aAQYJgMGMAUXH_koH8cksW_5jGNaNwve8th0VByQRhzl_nLjtxN6eYdlB
    e_IDnGoPst1Cg>
X-ME-Received: <xmr:xX-5ZcRXwDshghNTIkBykZEohh-houhg6kI9kOrSz1LsHPC4zJAWbqx7bYFf>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedtkedgtdegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:xn-5ZZviUmUiQ6T3UTgxI32B1HE2dKFEYqUSAAI8-gW241YolwXiag>
    <xmx:xn-5ZVeCCSk7y8qj63LPuIcGhmOPqZD5xVVDyAINPnxaDLaRsh6R_Q>
    <xmx:xn-5ZV1FQR8wUn5-JYbmkzIMybDkMdrFm_hvPjQWofVf4v1GxlEZRQ>
    <xmx:xn-5ZVGGK6sJfDTmS0JLqBKRQAF-86LzabiUrCJo16QIx-gFjxxuNg>
Feedback-ID: i787e41f1:Fastmail
Date: Tue, 30 Jan 2024 15:01:24 -0800
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2024013003-clubhouse-mauve-222b@gregkh>
References: <CAKLnGtR3cgHVQz0kTmGVJAaT4nKvSejAZvbMGONTe=f_e9fSYA@mail.gmail.com>
 <20240130142524.GA21216@openwall.com>
 <2024013010-jockey-kindred-c6cd@gregkh>
 <20240130214500.GA24892@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240130214500.GA24892@openwall.com>
Subject: Re: [oss-security] FWD: Kernel vulnerabilities CVE-2021-33630 &
 CVE-2021-33631

On Tue, Jan 30, 2024 at 10:45:00PM +0100, Solar Designer wrote:
> Thank you Greg for looking into these issues.  It's great that most
> longterm kernel trees appear already fixed.

I've taken the one remaining missing fix into the next round of kernel
releases, so all should be good now.

> For CVE-2021-33631 (the ext4 BUG), both the distro vendor's and NVD's
> CVSS input vectors specify AV:L/AC:L/PR:L/UI:N, which means the
> vulnerability can be triggered by a local system user at will and
> without additional privileges.  I'd say that deliberately getting the
> kernel to work on a corrupted filesystem requires at least one of:
> physical access (AV:P) or privileges on the system (PR:H) or user
> interaction (UI:R).  However, there's no way to encode this in one CVSS
> vector.  Also, in the physical access case, at least the availability
> impact typically does not apply (would be A:N).

The "interesting" thing here is that the project in question (the
kernel) does not consider "mounting a corrupted filesystem" as a real
attack vector at all.  There's been long discussions about it, the most
recent being last year on the kernel summit discuss mailing list, and at
the kernel summit itself.

So while CVSS might consider this a real issue, the developers of the
project itself do not.  The disconnect is one that drives people who use
sysbot tools to create fancy corrupted filesystem images with the goal
of getting a CVE for their CV, crazy on a weekly basis when the issues
they report get constantly ignored.

Good times :)

thanks,

greg k-h
