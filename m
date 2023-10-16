Received: (qmail 14028 invoked by uid 550); 16 Oct 2023 15:01:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13932 invoked from network); 16 Oct 2023 15:01:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1697468449; x=1697554849; bh=cv
	fapWpqXVRBBJkNdxFLC+eTloj/HQJivIGU+jWR/h0=; b=ZgKzk7SKQ1OZw5HdpW
	u8rUsVFd2oyyqaUGtelW/MpivKchfWuI6yzNpThe3bW5rPmEsOVEl/X6q1JUF21Z
	RBCydfpK10jUu+X7hjlPOYmU4Y1may+gt4S1Vs66n9mJoGPwSHUXpFMxJYElCc8N
	jQCNHlW0/j6HxOD/KiPSu/TCEbAUuFAEtCgRe7WXYzawDcbbCDyK+NeX1fUy2BR4
	8LtOBVnpfg2lz9aFho+yENxVbexa9DFTpXrKqHLsDprKfQePgQrccChdeD8f27cq
	ZAaNkU7E5dWmvXt4gdlSHnrpeX/vfLg4GZuW2GU2ncGxuk89cydFmrlsr6/xa3nA
	9oHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697468449; x=1697554849; bh=cvfapWpqXVRBB
	JkNdxFLC+eTloj/HQJivIGU+jWR/h0=; b=YI0lY5yyeEEsh9qQvOASm+ag14tbd
	uaRlYjJiXkyZ9+xCALdOFuhYe+ct4KZiMRHn+d2FpfYZ1q2EgSf+tU+8HUgQ8yme
	0kwPTvqSGs6Lz7rYJdO7vWGSmWXchsNL6Bu1aO8XoPy4Xr1+ksDKBrUBRJ2DkMuO
	yokrp9pOSvWaMQ8K1VZoM4ZpYsO+OYXA7IRoWeyAvuUCqxDJL4riyUKqgDzrcDoa
	S9yPl4RDX6o89e1L7+OHvJIE//0SBCZuarkt5AuK2oiiIlGPB0PAVE077ynT2Ylv
	6pT5RmduYogIKksLp8yPsTR1zW7VCcJM04Ixx+NYtkcCTGehyBBUVQH/w==
X-ME-Sender: <xms:IVAtZWU5h7CXDA99B1-o5vaVG0zJWucU6-CjRW9ITU_tTXTrGOej0Q>
    <xme:IVAtZSlKNm5iRYSgenRxbGHAyZyDMDUOi5h-xz83ewUXdrczcu-Z2vir-cgBvNYI8
    tZz2dCAhUzECA>
X-ME-Received: <xmr:IVAtZabB6pY7VFaCg6Uqt7VDoIbjGeVQjr8Nc6-cjDINJKbWeCadCJhsG64>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjedtgdektdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:IVAtZdUD2-nyDpwdiMP52RkPRNiW-FUqr4HRe2fvjc1JoY36q_R3ow>
    <xmx:IVAtZQnEUdJa7U7DIw8OGWm69afBUrZiPed64bSa8zIS8K_S1EvUfw>
    <xmx:IVAtZScqIwoDikvmPO0BtGkAcJLhgqoPTghQVaVgwVDMNL9Q-9iPCg>
    <xmx:IVAtZXst1IGnvEFf52KxMiFWCrKH-Cqz2bWwRW_WhnUZh7CbaOeakg>
Feedback-ID: i787e41f1:Fastmail
Date: Mon, 16 Oct 2023 16:54:35 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2023101639-setback-dullness-d185@gregkh>
References: <ZSyUUSF_-3YbT14k@workstation>
 <20231016080850.GF10758@suse.de>
 <ZSzx4s49HaeHFd/e@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSzx4s49HaeHFd/e@jumper.schlittermann.de>
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Mon, Oct 16, 2023 at 10:18:42AM +0200, Heiko Schlittermann wrote:
> Marcus Meissner <meissner@suse.de> (Mo 16 Okt 2023 10:08:50 CEST):
> > Regardless of your viability of subscription status I think we also
> > (sadly) have to consider current geopolitical issues here.
> 
> No, we should not consider anything else than technical/security
> restrictions here.

No one is outside of the laws of the countries they reside in, sorry.

> And adhere the spirit of Free and Open Source (as far as I understand it),
> that there is no instance that can judge about political, ethical,
> religious issues. Free means free. Open means open.

And laws mean laws.  Remember, this is not an "open" issue, it is
"participating in a closed list issue" here.

good luck!

greg k-h
