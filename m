Received: (qmail 3433 invoked by uid 550); 30 Mar 2024 19:49:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3391 invoked from network); 30 Mar 2024 19:49:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anarazel.de; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1711828132; x=1711914532; bh=QAeH4UtVzC
	m8mMyvdEi98Zw0ZfMwcjPLSVpIlJDxhNI=; b=YQZgLDvz3HJnNRcro1KLhByxJ8
	yAiyM18yZmKrgjVxC4khwl2ISW3UQNKcl37q0H3tbuqRslVGj712t+qTWiu+6YjG
	Hdm+ilT2McqtvROrSokjAZdpWPFi/MwcDISfYAPf81NLKcsEQa3Z1itChdtt/Ch0
	NwNw+qh/nPELtvDGTMuZNujQr8T1xb2sO7HV0NOiolgu0ecBYl00k9oxSXnqXr41
	WpD5zphZkjua14FTRwZJ0IMbI/oTnpDkTETCqwiSrvH4I5pjnu+A2gzUIcX+/3wZ
	Ca4RoKDiAWKZGqHKmF29IDhbMq1NpvRLjaN0tyCjJUIj33uJiaREXdZSkDYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711828132; x=1711914532; bh=QAeH4UtVzCm8mMyvdEi98Zw0ZfMw
	cjPLSVpIlJDxhNI=; b=HhUvSpSnrmEH4TzmwwWb9/3+tLBzjXxklaVpikk4gFxU
	yiFeUla9VABR/WcRhbBGo66MDAHYBVxxU6Nj8k4nya6uPkEdtUc3+iKxRQAF8hnF
	W+n1N0Nep5kySqBhsPJq2drjDe7jPMfChMvy9RToyG9cjCxqONTTEa3OaovpCxFG
	/LzLM9pB3AgxGNdq4Go8qQxUA6f3AwhOOO0guIdq8b5LXiYxc4+23i+CQ7p9v9AL
	Fch1Y68hWOlYuA+8MoDfjWsXOH5ZW4PX8XjSGLyv5vKMDLkbWy4f6a8VAMr6vD+w
	yFBqI0CFfZbW3pNZ303ftIIu+XoLTC9C8p5e61gCCw==
X-ME-Sender: <xms:pGwIZrkonqfu2oiSZc5zod8sMMKHT3MUl6qR7IVYhzJBtURpqz5V-g>
    <xme:pGwIZu2ob7dCXdRhHCUggBdeO_xDDCfDNRo7sh2wDydW1THE66KnRbNOroUKRCTQo
    -BMHcYY2rIRzZE2uw>
X-ME-Received: <xmr:pGwIZhozLKQnyMlRLea88j8emsvnaNzX_H9fdkXjsAqdBnZQI1UDtIr7xggBA_wVicN4mvQt1qmSH5jYZtTZpuppyGAYItOQDghFOO4w1TCHjFoUhHL3NcVRTghm>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvhedguddtjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpeetnhgurhgvshcuhfhrvghunhguuceorghnughrvghssegr
    nhgrrhgriigvlhdruggvqeenucggtffrrghtthgvrhhnpedukefhkeelueegveetheelff
    ffjeegleeuudelfeefuedtleffueejfffhueffudenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvshesrghnrghrrgiivghlrdguvg
X-ME-Proxy: <xmx:pGwIZjmKlokg-6klveEP934gLmGYyzgIMMxmjWJlGxbyEOsqTBAOrQ>
    <xmx:pGwIZp3UF-z62Z5ITh_AGxTb7cG5OATUcnCDoTd1S8htfeJx2he1BA>
    <xmx:pGwIZisxzZaIoI1ChrPn8ZW6Ul1iGo98cMPnlq1zPq5wF9dppIHDUQ>
    <xmx:pGwIZtUizJ_SjUVKCvaTePE5e0xYRzvmq0-9qTeUZsaVLqkxZhey9A>
    <xmx:pGwIZm_Zfk6vJCdcmhEbNF2TVmeTx5KN9Mnu2wmT21Rtjx4Wz6bbqg>
Feedback-ID: id4a34324:Fastmail
Date: Sat, 30 Mar 2024 12:48:50 -0700
From: Andres Freund <andres@anarazel.de>
To: oss-security@lists.openwall.com
Message-ID: <20240330194850.cxzmp654onm5q7ds@awork3.anarazel.de>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

Hi,

On 2024-03-29 08:51:26 -0700, Andres Freund wrote:
> The prior section explains that RSA_public_decrypt@got.plt was redirected to
> point into the backdoor code. The trace I was analyzing indeed shows that
> during a pubkey login the exploit code is invoked:
> 
>             sshd 1736357 [010] 714318.734008:          1  branches:uH:      5555555ded8c ssh_rsa_verify+0x49c (/usr/sbin/sshd) =>     5555555612d0 RSA_public_decrypt@plt+0x0 (/usr/sbin/sshd)
> 
> The backdoor then calls back into libcrypto, presumably to perform normal authentication
> 
>             sshd 1736357 [010] 714318.734009:          1  branches:uH:      7ffff7c137cd [unknown] (/usr/lib/x86_64-linux-gnu/liblzma.so.5.6.0) =>     7ffff792a2b0 RSA_get0_key+0x0 (/usr/lib/x86_64-linux-gnu/libcrypto.so.3)
> 
> 
> I have not yet analyzed precisely what is being checked for in the injected
> code, to allow unauthorized access. Since this is running in a
> pre-authentication context, it seems likely to allow some form of access or
> other form of remote code execution.

FWIW, RSA_public_decrypt is reachable, regardless of server configuration,
when using certificate based authentication.  Whether the key type is allowed
is only verified after already verifying it
(sshkey_from_blob_internal()->cert_parse()->sshkey_verify()). Whereas for
normal pubkey auth, first the key type is checked, then the key id is checked
against authorized_keys, and only then the key is verified (which also reaches
sshkey_verify()).

Greetings,

Andres Freund
