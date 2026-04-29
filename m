Received: (qmail 31934 invoked by uid 550); 29 Apr 2026 22:35:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31915 invoked from network); 29 Apr 2026 22:35:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	linuxpenguins.xyz; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to; s=fm3; t=1777502123; x=1777588523; bh=+C67H1JopNunjB4TtmOSG
	n8oMqn7PLiJz8+RRiuFZ1c=; b=BpWw02F+WCEXuguyRcMhbHBKaSoYu3N4XGnrC
	64heWeNEEgXTTZVGQWda6Q3XmwogmoAy1aBjj5Qh2LspyQsekLDPJaY5JNnsXOfA
	Ddx00CdMOOfj2eoyC6dC703IEYhGvBQoXI02HYcgXcfxiu71TlMepcd5EY3gSrhY
	T4TjgmWrspr/2Par0oEC+gdrq0ORO6lLFOV3wN8vuUBlsUL85neUvm1XG+Ah9ND8
	ydLdIH699yW8QoEYmBa6hkG3q7YbWdYy2RZbe9Z1b/rk0tkKFjxmFGIpvCc1zrCi
	vEStH6Zube2XTnygXPLxAbsv6VFFsAI1NAfkbMhsM2OfbTwXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1777502123; x=1777588523; bh=+
	C67H1JopNunjB4TtmOSGn8oMqn7PLiJz8+RRiuFZ1c=; b=nRwa1h8Sz+yQ12ssG
	Tn07D0HxcS+P8pXciwCMZhhQh22SV/lnpCBW731cPLMcaG1TGO2I/U+Pri8oDcDT
	jaNg64UEYztaihAWvFCvCJcs5aPwywgnRGK+liVFQvW2Lsk6TPheZ/E9dUEwpTpq
	Z8YHPkV5Q6SOPIMoNH0FSmGphIzX5i1M1nNFr/8jZfXhjliUHnw97vHx3/10HEPm
	Wx9REmMk9PTpdrp1nxJNNms52ImOpvfqnZmHALJm1ujXGs+Y2sFn4gQRFpHS1A0L
	wRZ15W7tkj65MYqsqtAjFWjYjgW7wVg3OJ+Js9Xl2XbbMVXncJ3wSyXb6JCVsTor
	zdhhw==
X-ME-Sender: <xms:q4fyaVtwYBGZR9TMcddLgbDFbxQHQKmSTrmOjrxV_kgOCcBKq1jrKA>
    <xme:q4fyaVathS96YuoTTM0AzZASmYUVErHVWOboa2c6zXoKouw4UVOXhDkPXmfKAKHcW
    O4wp9H6UUWQkbjmz-CndvqfTm3K5Wn9P2Hyr4gXwPwdpFiOD4sxz7s>
X-ME-Received: <xmr:q4fyaeZ8EDG5vn5oxwjMLTAfg4NLEFHVhuJhpRwwy8tpRaxKJ3yho97JgOg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekheeihecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecufghrlhcuvffnffculdefhedmnecujfgurhephffvufgjfh
    ffkfggtgfgsehtqhertddttdejnecuhfhrohhmpeeurhhirghnucforgihuceosghrihgr
    nheslhhinhhugihpvghnghhuihhnshdrgiihiieqnecuggftrfgrthhtvghrnhepfeduge
    fhiedugeeiveeludektdeludfhkefhgeffvdehtdejiefhuedukedtkeffnecuffhomhgr
    ihhnpehsfihttghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepsghrihgrnheslhhinhhugihpvghnghhuihhnshdrgiihiidpnhgs
    pghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqsh
    gvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:q4fyaRVTubQSCE_r2C8ku6CFj12IxeQW0tcRXkhHSfrc1shaIUx1Mg>
    <xmx:q4fyaV0zDuKh2TLBqoRQenkbWgb9OpW4OarsWQyn-QIc8AMY_htKlQ>
    <xmx:q4fyaYZZmMMiW31heKToNO7Yoww0CK0Gio2ir-FS6nkA2w6yd5JbVw>
    <xmx:q4fyaYqL0_JkrKX559lb_o6sM-9v7wjwvzsqH40wCVWV2XZ5qWOx-w>
    <xmx:q4fyaWlYLN5R-YW_TOyohEmzv9sxU8dFP5NGeY4Pq9BW5LB3AWlmRSnB>
Feedback-ID: i377146fc:Fastmail
From: Brian May <brian@linuxpenguins.xyz>
To: oss-security@lists.openwall.com
In-Reply-To: <dc97be31-0762-4a91-a1ad-6795abaab8a9@foolishgames.com>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <dc97be31-0762-4a91-a1ad-6795abaab8a9@foolishgames.com>
Date: Thu, 30 Apr 2026 08:35:18 +1000
Message-ID: <87340d2y55.fsf@linuxpenguins.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

Lucas Holt <luke@foolishgames.com> writes:
> At a minimum, if you're going to go public, use your AI to include a=20
> possible patch too.=C2=A0 Don't just drop work on a random person because=
 you=20
> got to find it first.=C2=A0 That's not cool.

Need to be careful here; simple patches that look good can in fact be
hiding serious security issues.

Thinking of the September 2006 Debian openssl issue here.

https://research.swtch.com/openssl
--=20
Brian May @ Linux Penguins
