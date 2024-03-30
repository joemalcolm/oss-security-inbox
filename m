Received: (qmail 1434 invoked by uid 550); 30 Mar 2024 19:32:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1400 invoked from network); 30 Mar 2024 19:32:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anarazel.de; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1711827161; x=1711913561; bh=wWbbLq83Xh
	j6uAyJDFw914BR6NpqCLns44snlYKdXIs=; b=cSK+eeUdKlJOlhEd4rLnxQgLy3
	uA4leUsBKkNO6UFmkOGoe4YEfN7MWZASb4+1KBxmEUAkNi5Zrh7QGNnxEsyrZmrr
	1xRPZN0IAKKokA8t0YI/dUsg5oIoZp+AqbyRwV2jqpzNLTPy1uhr5UpqIhXUs/HK
	k/BR9l50/zvMs/ZksnYuCZe2kKHYOfsnim4rEwS3DvALVcNdA1FPto/Z6BWN5lkz
	C6znxeHCH2r2jluvwGV/Dq0bk3h9WapRyK1ioJK5p2QuTScq7kkrzmO3OGSIThOi
	agRAQV5cZBoft7s3cc734vXiIiquGbhuBJ1ztAIEI5fIL6BAZxeZ6iYXvO9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711827161; x=1711913561; bh=wWbbLq83Xhj6uAyJDFw914BR6Npq
	CLns44snlYKdXIs=; b=vwJBaUZtGygVEgYDTEgruSroBm4xceT5NW5rqGAR680b
	mrmCfQ8FDLdkDz/Fd0nQyrrCHt9FXypa0EVuoa0rp9hxuKn9VorM8+yuRmt8iemD
	bbgQaxFlZ36wakYlUk5XG07DVBV2NKgk3ysQ6F87gsO5wNownLEPbMCl11ZW3YoH
	otTaUukwzItJZ7YaRovebMKYXCfy0wW9lHbtsBmIa0Scu4ko5bHDe0FBK3AVhx9I
	pRmIE6CaZ111utfOcxw9hJ0npobsgqyTozuQO88O4C5er37lJcA8S80ZoOwgp7rg
	af8Zx7ECFtOyexWkNc787PztjTior3IoU+Coyqi7NA==
X-ME-Sender: <xms:2WgIZvX97G-S67nv0yQP4IzMAmP3E_SbxbQ4eM1346fT7goTyQBelQ>
    <xme:2WgIZnlb5G8X3POOuAeai-OHBrhMOzzO34839yr7hu6XFT9hoNrMzexpyEM2eNJWx
    NAA5BsBIpXWy7uT8A>
X-ME-Received: <xmr:2WgIZrYAVgeJUDWB4P72yxIo8-Q0lTqddvdJPj5t7-OzlhkzIpo_jjcA6TtRvw4nhTrfQyENRn_Lg-TSxTZJgZ65g1NQqYQwneKG7qb2Pqtft-dxnuMRrKALQEbp>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvhedguddtfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpeetnhgurhgvshcuhfhrvghunhguuceorghnughrvghssegr
    nhgrrhgriigvlhdruggvqeenucggtffrrghtthgvrhhnpedukefhkeelueegveetheelff
    ffjeegleeuudelfeefuedtleffueejfffhueffudenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvshesrghnrghrrgiivghlrdguvg
X-ME-Proxy: <xmx:2WgIZqU97SQDZ4H-EyuywInTJsHUbcqu-8d9Vz-QRqPeWiq_WO6ibQ>
    <xmx:2WgIZplBxQRXAa2izzPm-yLUBq9l7cvHvtw0_znFVGUXOllZ1oNuCw>
    <xmx:2WgIZncA3-jUYIChuei4onv04atAtCMCfS7q0oDPbOzrWnsBNBFFFg>
    <xmx:2WgIZjGur5M11MqeVzDMI0BnOFpAtsoTvialFz1rFKpC_cLUm4PnGQ>
    <xmx:2WgIZos-IqkONiLzFkSSYFh06Xqm3DaZX20FJEXm-k5tWy9Lxa9cAQ>
Feedback-ID: id4a34324:Fastmail
Date: Sat, 30 Mar 2024 12:32:39 -0700
From: Andres Freund <andres@anarazel.de>
To: oss-security@lists.openwall.com
Message-ID: <20240330193239.qrsjg44dufit7gnz@awork3.anarazel.de>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

Hi,

On 2024-03-29 08:51:26 -0700, Andres Freund wrote:
> To be able to resolve symbols in libraries that have not yet loaded, the
> backdoor installs an audit hook into the dynamic linker, which can be observed
> with gdb using
>   watch _rtld_global_ro._dl_naudit
> It looks like the audit hook is only installed for the main binary.

This is one aspect I've, somewhat surprisingly, not seen discussed.  From what
I can tell the rtld-audit infrastructure significantly weakens -z now -z
relro, by making it fairly easy for something loaded earlier to redirect
symbols in later libraries / the main binary.

Purely anecdotaly, I've not seen much use of rtld-audit. It's not implemented
in other linux libc implementations like musl, afaict.  Is it time to retire
rtld-audit, or at least to allow applications to opt out of it?

Greetings,

Andres Freund
