Received: (qmail 7899 invoked by uid 550); 21 May 2026 18:26:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3477 invoked from network); 21 May 2026 18:26:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779387957; x=1779992757; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/3ItwptmhSh9pL7Q7Jheo4IVDc858m5qoyuQ8saG5MQ=;
        b=XBSKwWwzv2Dfid5uMiiiPR1ufGp/1z4zQdt+H2nvFXAA85MekuDVuDUuCSmx9k/0zb
         ypkyLbha47hjeSxoh8CVLWUhNAawp2eAOvoS9bJtHSGTEX6ntGSMNJkjT+WgO8jkcObg
         PKKNXs24MWS8taJbhJBpXfg8jAsfa7K0yezy9CAt6unvf9dyMWw1olyJxgi8dIcOhdx4
         W3UNe/n0IPqr4hoUiEEfMcxrEhzppPiQMK+3QIwse4qlQzw56uHqJXLnMOENFFrKCh7Y
         psDHGsWDp8mi1GquELy0KplJIq7DpXE1mvpg0Q18jA7cmaZ2Hd12w7Fa4g6TVS564Wjp
         2+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779387957; x=1779992757;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/3ItwptmhSh9pL7Q7Jheo4IVDc858m5qoyuQ8saG5MQ=;
        b=Jmlao5BWI+SkPe7B9AHHhaAn3m4Czpa/s07XptDwktIzqB1W6fr/SagYZyzaHlL+0H
         BqXkb76Xk6fXEsM0uYsSnsbe3BAIC5h+l4nxFsoEfYehs/jJ82BLhbiweoHszOhM5nMJ
         0mjxyhsg5pwzQaWs4mM2lZGfKsy4G38wXSy4M3idFwh7ARle+w/D1uiRXIsgTCqFr3XM
         /KFAQ7hMzDe1XZDXoVxRJTnEy3ZvSFwx7twEeNf9xcYFGgLCaXQOBc+UsB5lm/e/VP2G
         6Qt/jK8P7f3Y4ZA5xwHQAjyfPWSKjTGxbYC8jlYhnllopCgxS7rN9LqCPJGEAY2IlQNQ
         6wyQ==
X-Gm-Message-State: AOJu0YyTRGaZJykHSh0jIqjfn2uCjp+WPRksTG483xE41G04ea/X2OnI
	yVx26KYophQWqU82s2ghya7NO5DpPFGabTgNZWaOVfVVO87yEtmI8uCD
X-Gm-Gg: Acq92OHQcdXQQZg1KHz0Y87fhrPBpEkSkMqu2O1VTAmQzHLlcd7l7IeErtkBHayES5L
	kHJ8AXHNt1GVE1KZc0M+bfBob/ZoZuFXyPkqmyc1kVIB9su58wuPpAADEm8hBknarBOVD63X1vO
	S7Z443NMVt5nbghHUyK1CukkuIpw3igb5jl3EAPgiZrauuvY2PBZHgBgO5dHyhQE3iiGvDGOtic
	tng5BcCxtgA6vHlqteDXlIxqbWGwparCgiSjoq3uo6nh8cSRR4x8J2+jwLz7zwXePOiCRkht+Vk
	nrM8Jso0w/EDLecVghRFwMW8vLvux+1pZRsxRbXk/1zV7shEgea5HGMCYRtNHkxKsnP0GKnLXfJ
	twW2VaRC4JuNJ67/L1fmN6LXT7zp4j2I+zuSsgNmXsRnMIIgmQh93hsoRq2/mSCO26bt5x8DmRo
	YQc2RmFcr8D/ezR2tqvXrt78r3EK5bXKMRQxWcAFX3vyoxZ25ZY6sD7g==
X-Received: by 2002:a17:90b:3882:b0:366:132:fda7 with SMTP id 98e67ed59e1d1-36a6771a702mr354318a91.10.1779387957333;
        Thu, 21 May 2026 11:25:57 -0700 (PDT)
Date: Fri, 22 May 2026 03:25:54 +0900
From: Hyunwoo Kim <imv4bel@gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,
	Sultan Alsawaf <sultan@kerneltoast.com>, imv4bel@gmail.com
Message-ID: <ag9OMvUP7tEWWEma@v4bel>
References: <agXllSDnfFBIo7xh@eldamar.lan>
 <ag8-rm91DYcl7uxz@v4bel>
 <20260521180641.GA29282@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260521180641.GA29282@openwall.com>
Subject: Re: [oss-security] Linux =?utf-8?Q?kernel?=
 =?utf-8?Q?=3A_Dirty_Frag_variants_=E2=80=94?= fix merged into netdev

On Thu, May 21, 2026 at 08:06:41PM +0200, Solar Designer wrote:
> Hi,
> 
> On Fri, May 22, 2026 at 02:19:42AM +0900, Hyunwoo Kim wrote:
> > With the help of several maintainers and developers, a v5 patch
> > resolving the "publicly disclosed" Dirty Frag variants other than the
> > CVE-2026-46300 (fragnesia) variant has been merged into netdev:
> > https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=48f6a5356a33dd78e7144ae1faef95ffc990aae0
> > 
> > Separately, the patch resolving CVE-2026-46300 alone has been split
> > into its own patch:
> > https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=f84eca5817390257cef78013d0112481c503b4a3
> 
> Thank you very much Hyunwoo Kim for staying on top of this and focusing
> on fixing the issues.  Such a contrast from what some others are doing.

This is a bug class I understand well, so I intend to keep an eye on it
going forward.

> 
> > This 48f6a5356a33 patch addresses four "publicly disclosed" variants:
> > 
> > 1. https://lore.kernel.org/all/agRhFtawP06hWyRa@v4bel/  (2026-05-13)
> > 2. https://lore.kernel.org/all/agSx78pXBFCdn08p@v4bel/  (2026-05-13)
> > 3. https://lore.kernel.org/all/agVpIsaSherjHTYg@sultan-box/  (2026-05-14)
> 
> Variant 3 above was found (and exploit generated) by Sultan Alsawaf, my
> colleague at CIQ, with use of "Claude Opus 4.6 (1M context)" with "hands
> tied since we didn't yet have the cybersecurity bypass." (the quotes are
> in Sultan's words)

His work was genuinely important. He precisely caught something that 
could easily have been missed.

> 
> > 4. https://github.com/v12-security/pocs/tree/main/fragnesia-5db89c99566fc  (2026-05-15)
> > 
> > Note that the fourth PoC was confirmed to be blocked as well by the v3
> > fix (skb_gro_receive) [1] that resolves the third PoC,
> 
> This matches Sultan's analysis.  It may be that the rediscovery by V12
> was based on Sultan's public posting on the issue (including exploit).
> I called them out on this in their Twitter thread and got no reply.
> 
> > and the v4 [2] and v5 [3] changes address potential issues.
> > 
> > As long as the in-place path in esp remains, further variants of this
> > kind are expected to be found in the esp module. As mentioned
> > previously, I recommend keeping the mitigation in place for the time
> > being.
> 
> As a maybe better mitigation, can we somehow make in-place / zero-copy
> runtime configurable, and not only for esp?

A generic mechanism would require careful trade-off analysis, and I 
don't yet have a good idea for it.

That said, at least for the networking stack, it looks likely that 
the root cause will be addressed going forward:
https://lore.kernel.org/all/20260514163802.1d49d7cb@kernel.org/


Best regards,
Hyunwoo Kim
