Received: (qmail 9299 invoked by uid 550); 10 Jul 2025 13:59:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32252 invoked from network); 10 Jul 2025 06:11:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tleilax.io; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1752127900; x=1752214300; bh=Qbsvu9AIJF
	2BXQjJMfwvoUY2Uh2fHqRH8WTP5PIPmGo=; b=fm6oip9lML/KxnIUfZJzHnPHub
	fXPQjsvAW4PAYjSxbKnbPShK/3ld6fE0qxD2M3XyAQcJpl7fxJTPhDqH8VoFBQe0
	BaDsNpwliwRBBmWn2IYlMO/zSz2DHz3ngiaTJ5AKlXgaITjzH6mQQOHnP+CJVFNh
	XcPwlYZ2qirNWgXiIIM3TnEYXc5LmTn+HzXKbaEGvQrJ2+PfsNLRsWWFhSix1crt
	mqTWaaRMyJKR0s3eEfmoW9uUbl6k680JXB+qgEOE6HHqb9pTQJt0mkPYZy5N0Cij
	eL9l9IHAgujU3H8/PawkT2RfgDUb6chVqHLa5OYHO+7sGL8sRnnGRt252ugw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1752127900; x=1752214300; bh=Qbsvu9AIJF2BXQjJMfwvoUY2Uh2fHqRH8WT
	P5PIPmGo=; b=j/DxyAU4xpYQz8NJHtwhE6ggP0+GtPZMB4Ryq356WDgUUj3mKUY
	DKICK9/lQMGUFnUuFnEgg/qylcPCgpmj63Cz8w0ie4M651LISzdVFLfMEJ67eGVt
	VVwN5HImNf7StxiwdSTIrpBewUQ9EKldt2m/IQuD9augMBnkqt3YzHTL8nkMkrH0
	BVic53B/6mPc28qTJ3kumJaKdI1QyxPeOmFh5hUxY0hwxGC5l66HuaeREEksc52b
	71+VwQRxgW46/J0eu3buxoYsO1KIWR/BeSifp1pncTZLoPRxFYJdB+VqDZI9BjjP
	aBHzn+qiN/b9raLZsGnLlZ4T1GAnJQVxS6g==
X-ME-Sender: <xms:m1lvaFv2NvdUbFEK3y-mP2uQpR2uvFtDXp7FdhLt_cAq3RCeMPfsaA>
    <xme:m1lvaOfClvHVWtnuln1wLxTpvx87lQziEVMxgy-5vq2ipUbeWkNZnXeidi0At5eW8
    qMSKYhCBNddTF1MVA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdefleeilecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepofggfffhvffkufgtgfesthejredtredttd
    enucfhrhhomhepfdggihhntggvnhhtuceuvghrghdfuceoghhvsgesthhlvghilhgrgidr
    ihhoqeenucggtffrrghtthgvrhhnpefgieejiefflefhhfehgffhffeuheetkefhtdefje
    ejvdejlefhledtieektdfhvdenucffohhmrghinheprghnvhhilhhsvggtuhhrvgdrtgho
    mhdpghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepghhvsgesthhlvghilhgrgidrihhopdhnsggprhgtphhtthhopedu
    pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslh
    hishhtshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:m1lvaCHBfkuFkD7GS22vQiHpAJ70Vwbr4yG1U2tHuM5GJ2_H8TqELA>
    <xmx:m1lvaHnWDFDcNeILN6FYnSe2DyIcUepY-Fff30gwhW1Gz-PWHKBu4g>
    <xmx:m1lvaHL0XgWTVjjl7OAVHSENLmBcX0In8y9brpZT6IFWaYN3s9ZJrA>
    <xmx:m1lvaAaKI92DjYJ0e8hmq1OAJpf4i8KtJkT-G9QgFpABXz12IrVoHA>
    <xmx:nFlvaJW_r1aaoUPetz3jNNTGvP8_gnyjv8bKNzecaGHhvk4enmHuOe1c>
Feedback-ID: i39064883:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: Tf378896132e1f8bb
Date: Thu, 10 Jul 2025 08:11:19 +0200
From: "Vincent Berg" <gvb@tleilax.io>
To: oss-security@lists.openwall.com
Message-Id: <fa0c0468-0215-484e-865c-a1aef6701edf@app.fastmail.com>
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Release of pqcscan

After reading oss-security for years I finally felt I may have something to contribute. I want share the public release of pqcscan.

What is it? It is a dedicated scanner to test SSH and TLS services for their support of Post-Quantum Cryptographic algorithms. It's released under 2-clause BSD license so it seems it would fit here just fine.

Why? Given the push of big players in the industry (Cloudflare, Google etc) on PQC support, as well as upcoming regulatory requirements (see [2]), it seemed to me a good idea to try and improve tooling on this.

I'm sure there's tons of space for other options as well (specific filter options to tlsscan, nmap nse scripts etc), but wanted to throw my hat in the ring and hopefully get some useful feedback, feature requests or bugs of people.

A bit more context on it and some scan results of the top 10k domains can be found at [1].  The code and binary releases can be found at [2].

Thanks for your attention to this matter,
Vincent

[1] https://www.anvilsecure.com/blog/scanning-for-post-quantum-cryptographic-support.html
[2] https://github.com/anvilsecure/pqcscan
