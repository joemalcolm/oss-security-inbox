Received: (qmail 1705 invoked by uid 550); 1 Mar 2025 16:49:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23837 invoked from network); 1 Mar 2025 12:39:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seestieto.com;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1740832751; x=
	1740919151; bh=4zuOewigR5dqwOaGE9WVzHHQ78Q8qKtCD5G4qd3o9ag=; b=I
	p0K1Ka6sS61x3/WJSS8dv9OIlrn7SRaQJ8Zv4A9ZSXFb84wAY+R40oYuFvhoOIl1
	TPJyoMU4aWxjKKneE5uH/O1fE0iowhKlbU6Hy32xG+TR/qNhcFJUwgVhCLDHd3V5
	UB6Zstz3bQ8rCBc7gAjzcci7jl+1BB4z324rn0FIUkciplkMi9q1KNANOrp+/QeM
	OXmv1/4TZ7Hwet8eV+Hhgg42pVVZOHa6m8xMijB348JREdjUsVtDFVAru+UiPRqG
	mwnwK/8FJ2Vl5coiP/uEyCDl6dHoPrKie2vimDqJkFcUGMgvmAgXlb4sz5I01fWh
	MtcteNC2eKzDwyElXRHRg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1740832751; x=1740919151; bh=4zuOewigR5dqwOaGE9WVzHHQ78Q8qKtCD5G
	4qd3o9ag=; b=xOFXtzpaUt2j7cDnZROtk62nap0ymf+a4TOAHmMKY0KCoHIljCX
	Refgkgu/dFIYX/PJTj0A6RTMB2nHfDQED5KK2bLaaMLtUQuZYOfbKSNCAD57ZNKr
	bnB5yoL3oB5pBPlBqf8BVTtItmb9ehV+8fx5izgs3waqMcBdX8J34qQlpHUGlpi4
	5ckvPaEepB3rr5Ulwas7Vbihvsj0XG/dpgtARm/o01Wp6PJ1RkEuLv+2r6JTCupp
	CinWU9hlagqNtZifkNzeaiv/WiT8fA0sUE8RWsv5LkD529P1dPnSyA82ntbJytk8
	Wmt2UiOBigQvSkyq60cBuzIUR9+vf52AuzQ==
X-ME-Sender: <xms:7__CZ_YglS7oWU8KHt6mw-OiEcI9LdSIznIa7Xp281sRefmi-hC45Q>
    <xme:7__CZ-Yo2s8udbfEyN10sTrA2NReB_RkKVCX-dhhNDolBRSR0MtDgPqE4HFF6W-QK
    DomeeJhEQ-a-w>
X-ME-Received: <xmr:7__CZx9mCqDzvkBjrDiksGT1ZoASFEfVT1XPe9ZLEBqWtw1nmRfgrhiaUBbolV-bXkqvJiIGPva5kAet-bE_3hw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdelfeefudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpefhvfevufgjfhffkfgfgggtsehttdertddtredt
    necuhfhrohhmpefjvghnrhhikhcutehhlhhgrhgvnhcuoehprggslhhosehsvggvshhtih
    gvthhordgtohhmqeenucggtffrrghtthgvrhhnpeelueeguddtvddukeeukeduleffudfh
    leetffffgfetvdefveelgfffjedugfejhfenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehprggslhhosehsvggvshhtihgvthhordgtohhmpdhn
    sggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqd
    hsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhmpdhrtghpthhtohep
    mhgrnhhikhhulhhinhesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:7__CZ1rBpMeNSyL-8yhJI5G_5KuehNay52mgh2gcSD65bMxEI7bGTQ>
    <xmx:7__CZ6rzGI59Fxo2jmQ1LQURs4nCA_S2PlQLwWqylOaw_4wy606oKg>
    <xmx:7__CZ7QXKXmf78M0USqZ_NX_r29bOZUHVAnFRuKpI5oIXGdkzSFKSA>
    <xmx:7__CZyphWOYbUVsA3ncDyro66ugtim0CQ9ySzAWTqsvSE9k8VKdEuA>
    <xmx:7__CZ9U_sUK9gIMZ9bT0GJDEQklT9g69aAF_-pVRkW2XQuDevFOqH591>
Feedback-ID: i8ea641e4:Fastmail
From: Henrik Ahlgren <pablo@seestieto.com>
To: Max Nikulin <manikulin@gmail.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <5215a75e-e20c-46f3-adca-471b04e1dbab@gmail.com> (Max Nikulin's
	message of "Thu, 27 Feb 2025 22:27:27 +0700")
References: <a80334d5-1e6d-4303-a3b2-4f5a92344e24@oracle.com>
	<5215a75e-e20c-46f3-adca-471b04e1dbab@gmail.com>
Date: Sat, 01 Mar 2025 14:39:06 +0200
Message-ID: <874j0d7wnp.fsf@noux.seestieto.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: GNU Emacs 30.1 released with 2 CVE fixes

Max Nikulin <manikulin@gmail.com> writes:

>>> - Disable auto-completion features in untrusted .el files
>>> - UPDATE: Also set enable-local-eval to nil
>
> It should work, however it is rather drastic measure that may cause
> inconvenience.

I wanted to point out an interesting aspect of Emacs file local
variables. It may be surprising to some that including `-*-
eval:(foobar-mode) -*-` at the beginning of a file will happily evaluate
the specified function, regardless of whether it is an "actual" minor
mode created with `define-minor-mode'. The only requirement is that the
name ends with "-mode."

This raises some questions about potential security implications. While
I'm not certain how relevant this is or in what scenarios it could be
exploited (if an attacker can define a new function, it's obviously
game-over no matter what), it certainly feels concerning. Some users may
expect the `-mode` convention to apply solely to well-known, built-in
minor modes in Emacs, not for instance the user's own custom Lisp.

