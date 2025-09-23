Received: (qmail 5254 invoked by uid 550); 23 Sep 2025 16:43:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27997 invoked from network); 23 Sep 2025 16:33:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sudo.ws; s=selector2;
	t=1758645174; h=from:from:reply-to:subject:subject:date:date:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FWCVpGuOcao8yH8v2sLpUWUWQiTb7yGBNyu/mTMUChA=;
	b=GbYilix1tUqVtZsO4ndm0Ap3LWh4FEki3eWqxCPa+DUAugozjplQEwNjbObq+v63bZKT7L
	es8GwLfj3ZXwU0RrAC0Qx5GL1mF8eW1TqZfTB+dtZ6cF9ZdwHtEnAtYdppQ5H54z/7cQQ8
	Ux/FvpGGN1y70I9JGd3Wgs3g83+cMNPFzm3NvVxYWAram1P74E2w7WllmrlH87LSlkzGsx
	2wGVLlpj9TvMLTmoGOjVtXCaWA+SfzqeffUgC8rjZTOkNThqWqIOooh+URTTwU2F73I0e8
	evHdNiWC2NqSowBXhZpMf3HMnYinHwHVpUmoKni0C8QtZiDFFZauSSrUZlUTTw==
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
To: Solar Designer <solar@openwall.com>
cc: oss-security@lists.openwall.com, openssh@openssh.com,
    "Tol,
    Caner" <mtol@wpi.edu>,
    "Adiletta, Andrew" <ajadiletta@wpi.edu>,
    "Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>
In-reply-to: Your message of "Tue, 23 Sep 2025 05:21:13 +0200."
             <20250923032113.GA14348@openwall.com>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org> <20250923032113.GA14348@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <15763.1758645174.1@xerxes.sudo.ws>
Date: Tue, 23 Sep 2025 10:32:54 -0600
Message-ID: <b2b076fc072ddd87@millert.dev>
Subject: Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

On Tue, 23 Sep 2025 05:21:13 +0200, Solar Designer wrote:

> FWIW, this paper was brought to oss-security back then, and I've added
> CC's to this reply based on that message:
>
> https://www.openwall.com/lists/oss-security/2023/12/21/9
>
> The only CVE I see in the paper itself is CVE-2023-42465 for sudo, which
> upstream (and some distros) fixed.  Was it perhaps more serious for sudo
> (actually exposed in real-world setups)?  Also CC'ing Todd for sudo.

I don't think it was particularly serious for sudo.  The attack was
only against passwd-based authentication, not PAM.  As such it
didn't really affect modern systems.

The interesting thing, to me anyway, was that it shows how a
single-bit flip can affect security-relevant functions with a boolean
return value.  In contrast, a function that returns 0 on success
and -1 (or other negative values) on error can be safer as long as
the caller checks for success (0) instead of error (-1).

For sudo I chose to use return values where a large number of bits
need to be flipped during the policy evaluation.  However, the
interface between the sudo front-end and the policy module still
uses a 0/1/-1 return value so it's not clear how effective this
actually is.

 - todd
