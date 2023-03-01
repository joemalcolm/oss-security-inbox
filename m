Received: (qmail 17584 invoked by uid 550); 1 Mar 2023 15:47:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30197 invoked from network); 1 Mar 2023 15:11:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sudo.ws; s=selector2;
	t=1677683482; h=from:from:reply-to:subject:subject:date:date:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=R85Gcyw1kg9bF3UOw2GrGnv7kzZrcCMBIX+gcjK22F0=;
	b=bpd9cp4ctYoDwys290gBM2h+pCoJ0mJ6RYoV04PxM9mWShA0l6/eUf32RMHGizOAl7AfaX
	+tFJ66tQLcYNq9AVrsaJnpwndts8h4FJLdVMl1uSCc2S/XYyLk0EmYcGUKMivL0ZBqFCkj
	tzVKIpPAOQ+apikIo951FY+yLfWSe7RosH63WZMNrrjS74XjF4bWFQ4H57XCTd7McW04hf
	HSbuBCZretU/YrK0cViLLZ+dce0PW2G5/a/0wDzfvPX/bqPWF/KnWwt4PbDPAuxC2clDMH
	7y2SJL0N8wa0agKIa4a+zkw4FjajmN0RyYxofCbmvSmhaEVT0YzNWJwmDTj9xA==
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
To: oss-security@lists.openwall.com
In-reply-to: Your message of "Tue, 28 Feb 2023 19:55:43 -0600."
             <Y/6wnzgxs4K7zeYp@gentoo.org>
References: <6ce790cbffb04331@millert.dev> <Y/6wnzgxs4K7zeYp@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <90308.1677683482.1@xerxes.sudo.ws>
Date: Wed, 01 Mar 2023 08:11:22 -0700
Message-ID: <6ce7a5966d933724@millert.dev>
Subject: Re: [oss-security] sudo: double free with per-command chroot sudoers rules

On Tue, 28 Feb 2023 19:55:43 -0600, John Helmert III wrote:

> Has a CVE been requeested?

No, and I don't plan on requesting one.  As far as I can tell, this
doesn't actually affect any users.

 - todd
