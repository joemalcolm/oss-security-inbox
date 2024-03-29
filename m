Received: (qmail 28647 invoked by uid 550); 29 Mar 2024 21:53:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28610 invoked from network); 29 Mar 2024 21:53:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anarazel.de; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1711749210; x=1711835610; bh=1m/IhYUzSn
	CQS1sRYFMXGbchkRj4xtzjxp8uKOaib9w=; b=Km+QvpQCiAtiev8aAU6bg4RfAU
	xsr6j5KaLAw/K0YHwzKycO3qLwhWGTisPtlaE6HPquqJf/x8bFCwtNWenr44baCT
	jBbbylxsxw6Vu4hAOLLpE7BurEh22H3Nw3tI5Pugl00bfIMP/EYdOOtZc4Y2oY6f
	NduwKLUyoZmZBbua2zCOuGkJFm6DMX0QhPFFadsbuhu2kNv6fDlbfnZv+5qWDYNo
	Crz7AcssxDfPJx8CM5WOSW1jR0BZYXuB0iNSGGwBHoEUvt0jL3njfzenpHvT9+VT
	dJif0n29dcY1S3lfxQEPqMTi+mCxkRzXd2EQwMjFw0zLpbvrlhrewcj0B83Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711749210; x=1711835610; bh=1m/IhYUzSnCQS1sRYFMXGbchkRj4
	xtzjxp8uKOaib9w=; b=poXplp5ZudhQ4xPv3BLtVXcz8ugUP9AkCX2CWtwYFTdI
	eyqRrvL58ixXk53gsJE+7cLaGuZN4UNPIkqbkp9WsoTXSqqgb2bwByXNaEmYYtPa
	Ttomazh8UEcXeocgMlYdhfnkQv/1glbBJaHcb2l5FG1VYQiBlHnVF2GlKkbPWsab
	llgmT6hfh7FivLwS1mWx60SSpaonLs0lr7c5etv3VhvbtbKJhN2+1gBKm/73GGFW
	d/puwD4Kp2lxCwPCeZ/nNt9IpNlxbsiLEt/VQOXborEeEDJ3OxN6aqb4aYti0JOn
	JIOq+nVa6cbt2w+Q/MsJMUiuCAf1wt2y5fjktReepw==
X-ME-Sender: <xms:WjgHZqyVuqUA4i6aPk3ksAxUIe1XH4zo-Z2V-GczNOLqy_-_UFag8g>
    <xme:WjgHZmRecJ3DjV7rH-PKZSlEHLMx7w0cUQ0FzRCSUempmBQ6GT1A4oHGxPP2BZWjC
    soiI0ct_KYV_AIS9Q>
X-ME-Received: <xmr:WjgHZsVgNrHaKxl22mds90rhCo5pvdyW5vHvJx3ZMphCa-Jqv1T1iYrF7_9AC0-sGuEAUmAnQE3q4QgD6hjiKHWh9M43EvviN2ugkBkI_COdExIwdej6jggQTnM5>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvvddgudehiecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpeetnhgurhgvshcuhfhrvghunhguuceorghnughrvghssegr
    nhgrrhgriigvlhdruggvqeenucggtffrrghtthgvrhhnpedukefhkeelueegveetheelff
    ffjeegleeuudelfeefuedtleffueejfffhueffudenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvshesrghnrghrrgiivghlrdguvg
X-ME-Proxy: <xmx:WjgHZgiel59qqmkD2bj6_KCMgzzbW1pESsXWUW3G1acnCYGGaTp6ig>
    <xmx:WjgHZsA9LQekImo_dNceoHjfyegqiieaM_tdrzwaChBMPBjZAVekbg>
    <xmx:WjgHZhJnpKGKyeL1jceWQgtvMOwCKhXiAB56R4v5lRE-hZJ-EslftQ>
    <xmx:WjgHZjCgz5rOyOuTXh_RCXjj2nR3kk0EvNJ9_WFHt01pegdjsWuE3w>
    <xmx:WjgHZnrx4h0thUMn2EYBXjnJVFzBA_aZmOc59o67h43iq4-wLKP0Hw>
Feedback-ID: id4a34324:Fastmail
Date: Fri, 29 Mar 2024 14:53:29 -0700
From: Andres Freund <andres@anarazel.de>
To: oss-security@lists.openwall.com
Message-ID: <20240329215329.mgpj6hjbk4hdxcwr@awork3.anarazel.de>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io>
 <20240329211052.GA2470@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240329211052.GA2470@openwall.com>
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

Hi,

On 2024-03-29 22:10:52 +0100, Solar Designer wrote:
> On Fri, Mar 29, 2024 at 07:55:48PM -0000, Tavis Ormandy wrote:
> > Thanks Andres, amazing work!
>
> Certainly, thank you very much Andres!  Many others have helped in
> various ways as well, all of this is appreciated.
> ...
> 4. More findings were still being made and the wording of Andres'
> posting improved per private feedback.

Indeed! I should really have called this out more explicitly. I'll blame
nervousness and having had only a single coffee.  Thanks a lot to all that
helped!

And sorry all for releasing this just before what for many is a holiday
weekend.

Greetings,

Andres Freund
