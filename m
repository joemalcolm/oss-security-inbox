Received: (qmail 11623 invoked by uid 550); 30 Mar 2024 22:01:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11572 invoked from network); 30 Mar 2024 22:01:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anarazel.de; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1711836093; x=1711922493; bh=+g9LWsTdGL
	klPTCoSf4zH1Vt4nJuCCOGrVaRIjWog3s=; b=Y8+uLPElG2eylWXtGu0pHG5YX0
	rIusvrIsvkAkd4Bi3kZwyNpHI/aQwTpHs6sVrekDeveju6xuTSJFrOJAmij94cBf
	flMPh3k7xlCaMqWvFC9aytite4zGKTau3mTwn+NN+GDhlc0K3yAP/0IB3dNNyGxZ
	tZ0bqpSNr6OzIid3F4z7l7N/H121kAyjKomN2JhJ5ImfyseVpyEJQ2KS+58Qc+ou
	kbEeLcgSLHuRKjY4MHI4W4kl9Q3hyQtOOH9AEWPY2y7UAuwkjyZEgC7qzz1eUfwX
	MtCDAlZjKqQAUkQOdR2k3uSk+wc4umeMyQUXN7Xy/Yu7TUUje2BFS7bCVrWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711836093; x=1711922493; bh=+g9LWsTdGLklPTCoSf4zH1Vt4nJu
	CCOGrVaRIjWog3s=; b=uCR8xdydQ7cQeH9/3dyFyP13RMiZT9XxNJldO+480PQ+
	3HefneGsPre9Ik4pmMQC3Sz73KmzJ68weyZDY/AyTvvL71QKuKnsl/KWBvCf3Yl9
	sN+RcTA5jMX5EKEIrtl+meMcyOJlHMxn+BiPT5eDVjqcfk1uZIE2+bIsRkovjMzN
	Fs19LmevreAqn0n3+BSW+XxDiBbRGzZqmoXZUHLqCpWkrEC2t7/WlBYgzzBC5S43
	NwhvX5+wi4ufshCReROmGaIKVrPWpeaYkHpKIG8R0hnYt/q8q8RAvYDYLNv82UzM
	VoPgp8OWoGF67vUd/iewAqJqignb/wjTQsouUhaZOw==
X-ME-Sender: <xms:vYsIZuzqJ0vV6_z2ggadFUO8wHWXLR7fPmJeQmKArtOV0AClKXcoeg>
    <xme:vYsIZqQqlV6JLD8M40o7gKSI5BbSt5Ih_sxumBJeV2OTMfmzhTRsOSNI4L5AZHcOk
    gGyk4C-XFaGQeafBQ>
X-ME-Received: <xmr:vYsIZgXYYsgPHsKQzyzAFk548WfwoOY3WScaaVKNNzjiJzeZlJI42CEhSzKsIQHAQUnv549kquHoSXNNOBW7g4W7WBxSJ5b2y4ST1j7d8Dniz3L6MUEhcag4LG7f>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvhedgudefgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpeetnhgurhgvshcuhfhrvghunhguuceorghnughrvghssegr
    nhgrrhgriigvlhdruggvqeenucggtffrrghtthgvrhhnpeeffeelveevkedthfeiffejgf
    ekvdfhvdevgeeijeffveeuueegkeejteeutdetjeenucffohhmrghinhepfihikhhisgho
    ohhkshdrohhrghdpmhhinhgurhhothdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvshesrghnrghrrgiivghlrdguvg
X-ME-Proxy: <xmx:vYsIZkjkqd-Bvbnh8DxQL4SfINUWcxpBKW5hX0hP9xvJ3CdqlQ9Hyg>
    <xmx:vYsIZgCnEv0XBwLxaLkQgVj9sPVZflYhFQMdGZ_g9POXc9Gziw62yg>
    <xmx:vYsIZlK34fcqne-12ELtLtaN0iOvxPKjd_e0physX9uhAP2zZXIRRg>
    <xmx:vYsIZnBLBOQQu1xjRt-IdHEdOki2ZnHxv9VMlDQRm0n_KXqutib2sA>
    <xmx:vYsIZroQ77SoxeQU48tvKVY0myDrgTee3HvDyOEcxHmYce8Xew5lYA>
Feedback-ID: id4a34324:Fastmail
Date: Sat, 30 Mar 2024 15:01:31 -0700
From: Andres Freund <andres@anarazel.de>
To: oss-security@lists.openwall.com
Message-ID: <20240330220131.apxz26ieckj27vnd@awork3.anarazel.de>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <20240330194850.cxzmp654onm5q7ds@awork3.anarazel.de>
 <20240330214617.fzevnlz4nrqvgbwp@sym.noone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240330214617.fzevnlz4nrqvgbwp@sym.noone.org>
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise

Hi,

On 2024-03-30 22:46:17 +0100, Axel Beckert wrote:
> On Sat, Mar 30, 2024 at 12:48:50PM -0700, Andres Freund wrote:
> > FWIW, RSA_public_decrypt is reachable, regardless of server configuration,
> > when using certificate based authentication.
>              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> 
> Wait, do you really mean SSH keys verified by certificates issued by a
> (usually internal, SSH-specific) certificate authority (CA) for a key?
> 
> See e.g.
> https://en.wikibooks.org/wiki/OpenSSH/Cookbook/Certificate-based_Authentication
> what certificate-based authentication in SSH actually means.
> 
> From my experience certificate-based SSH authentication (i.e. those
> algorithms with *-cert-* in their names) is rather rare, while simple
> public key authentication (where you just put your according pubkey
> into .ssh/authorized_keys) is very common.
> 
> Can you clarify if you really meant that solely certificate based
> authentication (with certificates issued by a CA) triggers that code
> path or if you actually meant all sorts of public key based
> authentication in general?

I meant CA based auth - but note that, from what I can tell, you don't need to
have it set up on the server side or anything. You might not even be able to
disable it. If the client sends a signed key, the signature is loaded and
verified before approved algorithms are checked.

This seems suboptimal regardless of the backdoor issue, so I opened an
enhancement request for openssh: https://bugzilla.mindrot.org/show_bug.cgi?id=3675

I might be misreading the code around some of the details, but I did
experimentally verify that an rsa signature is verified without CA auth being
configured.

Greetings,

Andres Freund
