Received: (qmail 9672 invoked by uid 550); 13 May 2026 15:41:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9648 invoked from network); 13 May 2026 15:41:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1778686884;
	 x=1778773284; bh=B1oPPLAOxjcI0tleO8THGgCG1MPVhiCLLkUKMLs6198=; b=
	izCrGbhcIOk45S3O1QGSiZCQcnPP/VhSSwq7TpYcNZPtJ0CRZd+5D8i7PRV9zcjW
	zgnagxpvZNE5d2SuLC1E2VusxQX98oOLgJcQGNYoe/86HHjPDYXO950/NRdkLzWI
	hK2mkJYCgmoUbsBwYsHUkUmxD0uUI8hLl46LwYYOd6JSwsASs5sDWkdMFhLQA/rz
	/UERQPZeMSxAYUgJW5x7IEWrNNQ1JBf9wn3ysJHU6aFxGYfHCfuh4zhf5msk1q0i
	eCL9cipRxlxFpGCdsLL/+tW1H7Mqo7oNohC3Bw8/vX1abzoBIdWqQx8Sf1pwA/4u
	fewgovnopSYoMWrruEUzdg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1778686884; x=1778773284; bh=B
	1oPPLAOxjcI0tleO8THGgCG1MPVhiCLLkUKMLs6198=; b=WpyKBnF1/yhKjN1dt
	VkdCTHC2m6ea17XXbJjJoeiJ9EE3pp/bIF/tJzqgX1/Al85NW7IViZ4yyiqhwWjd
	6KcZ/Tt1DU3hYKSud27TQCSQDt549P3aUzaUwvTgQHvk0TwwY4oyT5wDFQPv682X
	kMWvTLw6sfVvMdyK9FsAr5ey0s8GmrF72DTFpMcqEu4sZuhSIP/544EeGuzTzF4R
	Y7oZm/nK5aDQbas2OOf8/2dO4CeNzC62gfrwfizp2cAkqbdt7Z+rigv10FDbvUD1
	NEMANf//6TftLNBGGo/5FeRpSaGo11kAtavR5s/KeF4uDaMQvYsP7MOIUD8Q+dmc
	A6U4g==
X-ME-Sender: <xms:o5sEamHzTcdtcXDYeD4uqf279W8NR_z8ezaw0GQfWqmCCcq7yhqQvA>
    <xme:o5sEalQPIIhOY9orrNAsvIOKEKqKEXGxr9E1PrGNVjMtQxCS9QDMLGF_-bxhLM9pv
    13H3EQp-wfx9CazRd7Yn1r20iAFHihhf8i-fXsHJJDJNFuKVA>
X-ME-Received: <xmr:o5sEant8oqbnMrd_SH5MrRD479aURnVfuC6PwLVEiPvuK6-LT3Cr-9tj8XHa4OobCpGYrBg6MoVx96qiUd5Y3qo1hA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduvdehtdegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggugfgjsehtkeertd
    dttdejnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeeuheekheelffefieduteefkeejffdvueehjeejffehledugf
    etkedvleekudduvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhdpnhgspghrtghpthhtohepvddpmhhoug
    gvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhs
    rdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:o5sEasxtAfgT-IujRMh1BGtiPPULk92NlGtQUVmK6CCDUDMJwGWkDw>
    <xmx:o5sEap665dzPd-hMXpbZzzcVKwGaDEN2DY7YwPLb92IFOC9AaojTug>
    <xmx:o5sEauVg9DLC_9rOWFEDC7SgckOttJozKiG1ufurpm72cEYKORKANA>
    <xmx:o5sEat0HtV4cPp2Iu4oCVvWKQiuLu4OFrKYs58REmRTy8BJaZL6qlA>
    <xmx:pJsEavfvqp1kM3LUsnO4KbbLw_DO2-oMfRQRB1Wg4fgsi5azNvYG6_U9>
Feedback-ID: i787e41f1:Fastmail
Date: Wed, 13 May 2026 17:41:27 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2026051300-size-wifi-4a84@gregkh>
References: <8733zvfucm.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8733zvfucm.fsf@gentoo.org>
Subject: Re: [oss-security] Linux kernel LPE ("fragnesia", copyfail 3.0)

On Wed, May 13, 2026 at 11:59:37AM +0100, Sam James wrote:
> v12-security have disclosed "Fragnesia" [0]. Quoting their disclosure:
> > Fragnesia is a universal Linux local privilege escalation exploit,
> > discovered by William Bowling with the V12 team. Fragnesia is a member
> > of the Dirty Frag vulnerability class. This is a separate bug in the
> > ESP/XFRM from dirtyfrag which has received its own patch. However, it
> > is in the same surface and the mitigation is the same as for dirtyfrag.
> >
> > It abuses a logic bug in the Linux XFRM ESP-in-TCP subsystem to
> > achieve arbitrary byte writes into the kernel page cache of read-only
> > files, without requiring any race condition.
> 
> > The technique extends the page-cache write bug class that includes
> > Dirty Pipe: when a TCP socket transitions to espintcp ULP mode after
> > data has already been spliced from a file into the receive queue, the
> > kernel processes the queued file pages as ESP ciphertext. The AES-GCM
> > keystream byte at counter block position 2, byte 0 is XORed directly
> > into the cached file page. By selecting the IV nonce to produce a
> > desired keystream byte, any target byte in the file can be set to any
> > value — one byte per trigger invocation.
> >
> > The exploit builds a 256-entry lookup table mapping each possible
> > keystream byte to its corresponding nonce, then iterates over a
> > payload, firing the splice/ULP race for each byte that needs changing.
> > It writes a small position-independent ELF stub
> > (setresuid/setresgid/execve /bin/sh) over the first 192 bytes of
> > /usr/bin/su in the page cache, then calls execve("/usr/bin/su") to
> > obtain a root shell. The page cache modification is not backed to
> > disk; the on-disk binary is untouched.
> 
> page cache part being copyfail again [0], but the actual bug is more
> like dirtyfrag [2]. They've also provided a PoC [3] (attached).
> 
> There's a patch on netdev [4], not yet in that tree or in Linus's tree,
> therefore not in any stable kernels either.

For those that like to track these by CVE ids, CVE-2026-46300 has been
assigned for this issue.

hope this helps,

greg k-h
