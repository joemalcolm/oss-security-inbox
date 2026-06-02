Received: (qmail 30387 invoked by uid 550); 2 Jun 2026 10:57:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30316 invoked from network); 2 Jun 2026 10:57:07 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1780397817; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=coPsXDS67wAFQKSfvTgK3b7zuQJUpdDm8k9znQ22FPI=;
	b=06qiwoLrcy2k4fy1o9143fznPpUXAuJLqdV4gZx3UpFXPaVRtmn/KUzK7e3EoRdJidp/2R
	69Txy7/CPidsn9CA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1780397817; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=coPsXDS67wAFQKSfvTgK3b7zuQJUpdDm8k9znQ22FPI=;
	b=k/b0PZMPwM4Q6oQNIiF/OOFWu9LYuDSCltM8KD99XznKi39jteAArwEYMpIMnUR/SHR0tK
	kXEH6eUi/RHYrFg37eU3JxHptNVSkZ0Yg2Dgz6o/h/5+esbi1tRmOwVK8LlXdRVyJ3NV75
	VqnX/koL0+Lvsg4jl81zTF8ADodRPR9GIZUk99Td/gm1S/y/INbmv72sKqaG5ZOc1MLS1+
	KLnN1Mdr9SIeu06KfFTtRhF7IYknplZgr3/DmpdY4bNcjXJvUqD1D50E0/RhGzp5hKFIKY
	1ofzLMu82VDgxscvOrHAeDOjN6oWVuU+wFtdQ9dVzWPW+mMoluuXX5EI2ROZEQ==
Date: Tue, 2 Jun 2026 11:56:57 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <ah62-ZU9c_cEa8f0@symphytum.spacehopper.org>
References: <CA+W5nyiFPweL5LDEKpUSJAo8NhKQz53o=d=9HBdHipQ7d0N3Mw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+W5nyiFPweL5LDEKpUSJAo8NhKQz53o=d=9HBdHipQ7d0N3Mw@mail.gmail.com>
Subject: Re: [oss-security] BIRD/BIRD2: stack buffer overflow in BGP AS_PATH
 mask matching, CVE pending

On 2026/06/02 10:07, Bakabaka_9 wrote:
> Tested affected:
> 
> - BIRD 2.16.2
> 
> Possibly affected:
> 
> - Other BIRD 2.x versions using the same AS_PATH mask matching
>   implementation.
> 
> Not affected:
> 
> - Unknown.
> 
> Fixed version
> =============
> 
> No fixed version is available at the time of this disclosure.

If you've only tried one version from April 2025, how can you can say
with certainty that it's not been fixed since then?

