Received: (qmail 20126 invoked by uid 550); 9 Apr 2024 23:36:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20096 invoked from network); 9 Apr 2024 23:36:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anarazel.de; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1712705810; x=1712792210; bh=9+/U/NFBaB
	nnlaUjztB1VdOqLI+lTdQQ+gY70uGmQKc=; b=MOCmLkY8RvieZCYBvBITi8EOnd
	idLhw34ipomlWLNDEWTx0A4iNZP44ztsndO8XqE+NGTFkCi0BcMj0cV47qiojIr4
	J+tMf9Em1fHkDEhw1ZxPYQRwuuoCymdON/Le5/KuKy44VcRqqnNVLph+hbqLx7ni
	0eYNH+WaQS5GRFspwqjCGXhfvAMbYWNcXKR5TXAUd5kXIcpmSkV6pETr31QVIcqx
	BlhIGAN8gdLFU+Jm9+A9DimXz3tlTObgRi/77SeU9sIbAAotFBkWPw87fQkYK9Dd
	rF397xvhy5RzcYHGO1RDAGJcO+DkjvUoInMz0iPlaN+5kMBeC5ploQ7gTO2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1712705810; x=1712792210; bh=9+/U/NFBaBnnlaUjztB1VdOqLI+l
	TdQQ+gY70uGmQKc=; b=aMTjyNfyxob/DTrS4C96Nvwmj6q2I3SiyZY2zCEcdRgj
	O8tWHKGB4N8Xgn6I8bXfVMFLMjIu5eaKXz5uUsnLBaI2nscwvy+c9lh3HJwojv78
	Lkd0KftMTaP60uDho2DoGIixqP5A4GCxQDtnSIZ4oAIDMQGiFslUpAGl4UEL+qyA
	TiZ2Ylkh+AtLBbLbAcAH/CJ5axJniEr60w+j9UfTyT1N1/EaZUbrU3NG/N7+m7Nx
	ainJdH2QU11U0H23aI0XTgWD+QbB+tEl8VklPgivOa3dUKuX0XJrDiInQZ4Rr+uD
	E7XqU8pkRAmoUe1Msu3m/UX7/o8HZSm2Cl8hTdaQ/A==
X-ME-Sender: <xms:EdEVZqzt9koCYdUo6HOgj8QRGU91SMt2fv9ei4oYCR3msQ2jkvZJaw>
    <xme:EdEVZmTWMU8T0DGKs9V9KukoL4z87jLYR89eM-8o92Xry2TLIJ3sMCwkojA3jweEY
    SMuPTj0tVhYNz2Lsg>
X-ME-Received: <xmr:EdEVZsV4ZtKhcRRZeD0SDrvRmg46_Ea1o7dBf-fG7qFynHKJi3KUEA_eXNlUgwEe7SfRRs3dUCNDTU2F1P6Jx2VTc5dXyo6QzUjGDNhFed-wZvqrM57-8FigT-s_>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudehhedgvdefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomheptehnughrvghsucfhrhgvuhhnugcuoegrnhgurhgvshesrghn
    rghrrgiivghlrdguvgeqnecuggftrfgrthhtvghrnhepfeeghfefteeggfffkeejveelie
    eujefghfduudeikeegieeuueetgeeujeeuieeknecuffhomhgrihhnpehophgvnhifrghl
    lhdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegrnhgurhgvshesrghnrghrrgiivghlrdguvg
X-ME-Proxy: <xmx:EdEVZgjWoRal-6CeZDBgdNcMLiovlkehN1SxPbbunsErjkDizu-R5Q>
    <xmx:EdEVZsAV14S4Mo9LD02xmi2OjoI1eZxAwLA1hFPF3-g0TuXe72ZFrA>
    <xmx:EdEVZhJfBdt7WEn4_eBf2CWuSyh7Nnu_fPuMLxq31kMMoQ9szgFTdg>
    <xmx:EdEVZjA46cccSMQQUl6WJow9G8mlhgnDWzPMG6SumyUdE1Rmf_QEow>
    <xmx:EtEVZl6aSnHtTjGwVS12TLH9ESgV2UMuSMA7nUVEX8Zop_29HYczczId>
Feedback-ID: id4a34324:Fastmail
Date: Tue, 9 Apr 2024 16:36:48 -0700
From: Andres Freund <andres@anarazel.de>
To: oss-security@lists.openwall.com
Message-ID: <20240409233648.igiak63z7ep2nmco@awork3.anarazel.de>
References: <loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me>
 <42bf95dbef6e44d416c030ff6dad7b6806f54cbf.camel@sec.16bits.net>
 <6614BD70.8090200@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6614BD70.8090200@gmail.com>
Subject: Re: [oss-security] xz backdoor prevention using hosts.deny?

Hi,

On 2024-04-08 23:00:48 -0500, Jacob Bachmeyer wrote:
> I am not so sure about this.  The original discovery of this backdoor
> observed a slowdown in refusing a session for a nonexistent account using
> only SSH publickey auth, *not* SSH certificate auth.  Reports have also
> suggested that testing began after common botnet scans were observed to be
> causing sshd to use an inordinate amount of CPU time.  I doubt botnets are
> presenting certificates either.

> I am unsure how sshd would call RSA_public_decrypt in those situations,
> which suggests that the backdoor blob is more complex than we currently
> think.

The slow part of the backdoor is *not* when actually calling
RSA_public_decrypt(). It's the "initialization" of the backdoor, which happens
very early during sshd startup, well before reaching main().  Note how, in the
initial report, even "sshd -h" is slow if called in the right environment.

https://www.openwall.com/lists/oss-security/2024/03/29/4 :

> In fact, openssh does not need to be started as a server to observe the
> slowdown:
> 
> slow:
> env -i LANG=C /usr/sbin/sshd -h


> In fact, I would expect sshd to reject the connection without ever
> attempting to verify a signature if the requested account does not exist,
> yet a significant delay in that rejection led to the discovery of the
> backdoor.

See https://www.openwall.com/lists/oss-security/2024/03/30/37 for the path
leading to certification validation before certificate validity, users, etc
are checked.


Greetings,

Andres Freund
