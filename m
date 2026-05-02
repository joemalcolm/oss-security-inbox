Received: (qmail 13526 invoked by uid 550); 2 May 2026 21:44:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13488 invoked from network); 2 May 2026 21:44:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	linuxpenguins.xyz; h=cc:content-type:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1777758241; x=
	1777844641; bh=M+xVNHXawLOQJG+PQWNIhMxpuTKErh/Y+L/xa5urRRU=; b=n
	SRWCtBUo01IP6W/7WovzmNQgmshZZ2LbMHe0lO3+mmxzykWiiRLcmkaHR4eKexU6
	QWKAA4yvOr2zMJ7tBPfvFnW8CGvs2ZA6kml3fGM5nibusE9h1op4M8Ob9TL9/W8R
	IDNnUb/dUY+JyXInbe9KU5JH8CdDikruxS3Qycj1Jsb+ymdjWFnmwsXh+Vg+PbBx
	xtteIUZIo8pZIfPMgz4odnLzZiVaU1qL6tcFtK6/haMm9oQ3LC+PXWx8HQNYbgov
	VXVDD58XkjmGARwqQFK4k09Sd4uvHfDdj/U+JMFsqJoq09wxyd3xgeWaexrQEcNC
	+f5AaaFqIwHTMyRo+gs8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1777758241; x=1777844641; bh=M+xVNHXawLOQJG+PQWNIhMxpuTKErh/Y+L/
	xa5urRRU=; b=vDTi4/wAPm8s9ItGliX+/gfkMwLnmvW6Wxl1ogNxL/f+3OttBs3
	M7AiuMCISaTE+d64XNhodmZq9RoINMHGBmSyVUC2/dhRuKbNnwhYRAze9RJ8Jp49
	RIgOcCZscWLNIMBkWvI0zmyOslIBOtciDftBwP/Kpgxj313fofuaOei6FVjC/U/Y
	oJz1gkj1EpES91XtEk1kzZIvNjQ39zqGJ//40aCIboglrJBf215x/5v8W3gu2eHA
	G3oNfNkarS8QZ6WIN7209at18MNi69AQzbpBd3RRy8WZZJNawOGzVLdf8e3pxDu5
	tz5BoM1fwFjffqDPf7VKYDtQGbYvd5O4lpg==
X-ME-Sender: <xms:IHD2aXsZIGN9gLuNElfg9X9VXGKebOgBcwknxec4Ybe_piyIydPJsA>
    <xme:IHD2afZvk9mBLZ6WQUvTpvhdQVBgo8pqLJlUHLn2lCIDkN-vU3xxvPeImCv1hMAn1
    qbvuXahdvHB1K3a1aaI1M5XZiA-356_eoDa2OjU__LzuUcDkDvMr6TV>
X-ME-Received: <xmr:IHD2aQYbSCFDS1C5AT4U8jSqllBPl4TXCLLxBVrdFClkzwtITfSmDEbwq6tEWnTt03HALQpYy75QRnWykG3hnwLtdCoEE3vRS5fL2R5C>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdelgedulecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecufghrlhcuvffnffculdefhedmnecujfgurhephffvufgjfh
    ffkfggtgesthdtredttddttdenucfhrhhomhepuehrihgrnhcuofgrhicuoegsrhhirghn
    sehlihhnuhigphgvnhhguhhinhhsrdighiiiqeenucggtffrrghtthgvrhhnpeekueffge
    ffhfdtleekkeegiedvheeiudeuueeutdeihfdugfelgfevtdeiueelleenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegsrhhirghnsehlihhnuh
    igphgvnhhguhhinhhsrdighiiipdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhp
    ohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfi
    grlhhlrdgtohhm
X-ME-Proxy: <xmx:IHD2abVm-Hm6bbshuxUzhg7hjpJWnfcpzGG59is3DiytOBTV3jLFmw>
    <xmx:IHD2aX1OC2E5vBKmuGAculKraV2CbnapmA1hJrpEry2tQoXFzi1e2Q>
    <xmx:IHD2aSamO_0NNYEPNGBMYmw4DFMVvMQ0gxt4DCpOK3UQ7uBxjOzoqQ>
    <xmx:IHD2aarrspfS0I1VD8qtZSpgA1XF3Gf48sm2yTPAZnreXHW4ZVzGIg>
    <xmx:IXD2aQkDsFeaoLdy9Px5Q7KT265G-dBRML9n1wirMcN-hlMR2uoQOtgU>
Feedback-ID: i377146fc:Fastmail
From: Brian May <brian@linuxpenguins.xyz>
To: oss-security@lists.openwall.com
In-Reply-To: <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan>
 <2026043026-treat-devotion-23d7@gregkh>
 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
 <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
 <20260501165221.27420-1-justin.swartz@risingedge.co.za>
 <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
Date: Sun, 03 May 2026 07:43:56 +1000
Message-ID: <87qzntmqqr.fsf@linuxpenguins.xyz>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: CVE-2026-31431: CopyFail: linux local
 privilege scalation

Reid Sutherland <reid@thirddimension.net> writes:

> I'm assuming any thoroughly qualified platform engineer compiles the
> host kernel without module support.  At least, that needs to make a
> comeback, bring back applying grsec patches and make menuconfig..

Kernel modules here are good, not bad. If everything was compiled into
the kernel it would be harder to solve this sort of security issue.

In this case, it often just meant disabling the module that often wasn't
even loaded.  The only exception was if I tested the vulnerabilty before
hand :-). Even then, easy to unload the module and disable it.

But I heard some enterprise kernels came with the code compiled into the
kernel, and these required a kernel command line option and a reboot to
fix.

Of course, maybe there is the argument that only the things you need
should be enabled; but this would be a lot harder for distros to keep
everyone happy. Maybe an argument for building your own custom kernels
not relying on distro kernels.
-- 
Brian May @ Linux Penguins
