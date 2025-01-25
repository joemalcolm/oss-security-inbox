Received: (qmail 22044 invoked by uid 550); 25 Jan 2025 07:00:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22014 invoked from network); 25 Jan 2025 07:00:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1737788407; x=1737874807; bh=YLJHHUHxQj
	gx36lFii79la4e33/PC+BkMMCwQwphlMM=; b=jQZyDtCC0an+nEUjK/uONDj1vn
	iaaCE9FhpZm3gHC3FJ2o7PNpMCVLariVPidM9kmrt38pXsAvmrbZVIxVC4XhECsJ
	EVFYfy6PsCwsyG2T75zhxnOSCU9sqp8gSn0krG3PuIvDXgm+1EguAF8KMMNvZPOd
	lk5nEqZnuGUY21V22ri0ldE9DSme3HLT/6k3HiPyjSh/kROEm3uGKQ/vJ9ZiO95Z
	sSNk77cilRxqAD18z9Q8Pkvtdl8QYeY5HQUj0z8yfkeYhc1RZGxamrLqVeJENwXD
	ItblCM+WskcfEqlfJ9qoPvnjL8YjgNApMO2aKulXnXnYmTW6AiE6h+mmCOSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1737788407; x=1737874807; bh=YLJHHUHxQjgx36lFii79la4e33/PC+BkMMC
	wQwphlMM=; b=UoIN2t5WTVqtUBOlV+eOGsfvITkAuFoo+HSRK61FRUvDKjQIpwx
	518Vmemk6D9mM3AlTwqc05hMdnPN6PeVAhgVr6Z9/9R1zkeTg/Nsx/lTXEbIqJu2
	K4UOVh47gMbI/b2QR2KaEWUbQFi3q+RLbf8ocuU2HwMs5eUOAgSOWWmyaTsw3Kxt
	wnIskbuMrxrnmVg8Ei78681zQhypsOxN7F4a/kX2/HLwl7nIy29kuOKprM5sKhJL
	S1DEsVEBCFHai7pvdwFwY9P12Naz0RcFnfdx2RfBrDczV45Xl4zaR4PDqUbSQLKo
	ZlTJ8jyTXi3A4HEyygjb8hCrUdPHM3yO1NQ==
X-ME-Sender: <xms:9ouUZ-8cr11-0ttEPMWo42Blfe4U-0zbUeY_1ZCjJOThsEszgJePcA>
    <xme:9ouUZ-sn2G2nG675XAYQObAk4Y3yUpy4E_aVsJuKuh-PC5aBx_G3HPQN5YNgtar0h
    7bAAfbjnY-jeQ>
X-ME-Received: <xmr:9ouUZ0B56obK6IBAz4adDr9gQ_W9KrF-xEEW_VzYrGqJv8as1xCH6OVywcneTNpnYaJ_Yp-lr10Tl7FUcad9m9nK3tzvRBTipFVlAQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudejgedgieejfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghg
    sehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeefgeduheegvefhgfeftefgle
    fgvdeuhffhffefteevudelleejteeuhfefudffjeenucffohhmrghinhepnhhouggvjhhs
    rdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epghhrvghgsehkrhhorghhrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhm
    thhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvg
    hnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:94uUZ2eMqKZOWPHQwbcuOSy6ghYUWTckal-FjT76n84SC-MlaIErLw>
    <xmx:94uUZzMWIGH9Q9nGYRVvn-KPjaV8RHaDuwCYsnjk51vMkvrrHzxXpg>
    <xmx:94uUZwnihWADIq2ViuxKGFiOHxnor1_SSN6rL7Us7sBHNERkgTeNNA>
    <xmx:94uUZ1vl_gJtxSsIBpnqFK5YUAyzSvJHp1G2qleSxcUqpGhk5CitLg>
    <xmx:94uUZ8aWFhLzRJJhhMMNaIbZ9USUMpFRoUJmtvs9fi8NGB2K645JJC4j>
Feedback-ID: i787e41f1:Fastmail
Date: Sat, 25 Jan 2025 08:00:04 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2025012512-likely-strainer-4e6d@gregkh>
References: <Z4__rJ3_SmmtEIsG@netmeister.org>
 <0a34f769-2a8d-4726-b9d7-6238ec3846e7@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0a34f769-2a8d-4726-b9d7-6238ec3846e7@oracle.com>
Subject: Re: [oss-security] Node.js EOL CVEs: CVE-2025-23087, CVE-2025-23088,
 CVE-2025-23089

On Fri, Jan 24, 2025 at 10:55:39AM -0800, Alan Coopersmith wrote:
> Their reasons for this are detailed on the blog post at:
> https://nodejs.org/en/blog/vulnerability/upcoming-cve-for-eol-versions
> including getting CVE scanners to report EOL versions as vulnerable even
> if no existing CVE specifically says that they are.
> 
> While I can understand their reasoning, I can just imagine the noise if
> every project started issuing CVE's for every version that reaches EOL.

I think that's a great idea for projects to start doing (especially ones
that are a CNA which I recommend all open source projects become.)

And as for "noise", I think that will just be a "drop in the bucket" of
the overall CVE assignment numbers these days as just how many different
software versions are going EOL each month?

thanks,

greg k-h
