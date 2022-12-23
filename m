Received: (qmail 30623 invoked by uid 550); 23 Dec 2022 14:04:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30602 invoked from network); 23 Dec 2022 14:04:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671804267;
	bh=AofUqtvWAb7p4sJGAPzg/l1qpcyTPnI9JB9qdpTvQHU=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=BMzLVJ/BKAAcXMrs5Xu0HQwAqB8Vf9T0uUEP+nNSdpI6VpWssn5XOHcCHxXZOxIVP
	 WU8sxK836cCL3EmzWDpDRRk+l7E00+g+ikzTSY9GaFbqgLRryHCLBRSD30ZwaB+f67
	 egVZwhUStpxhnJbX1PxIRrBbSRq09igce5rX73fXxmRwfYPyt0xrmT0WMcxaTC/BAp
	 zeDmJdieuW9EFhGcuxC6rDPzq4Fw4xNwvCwpYpy5Uf+A0I/McXZDwDyAumPrh6upu0
	 /AyYJpkcQgAs4kUwTJMCi5xy10MCuSpAt3/Xuzu7CmQM28k4w6UGFV6+nEUbLnHAcr
	 Yq3t5iBXs6XSA==
Date: Fri, 23 Dec 2022 09:04:25 -0500
From: Sasha Levin <sashal@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <Y6W1aSG2z5mBJDu8@sashalap>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org>
 <Y6VTdO608VUE38Ke@kroah.com>
 <20221223081727.GB2404@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20221223081727.GB2404@suse.de>
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

On Fri, Dec 23, 2022 at 09:17:28AM +0100, Marcus Meissner wrote:
>Not sure why they do not like you, but to be very clear anyone else can
>requests CVEs for the kernel, (except the blacklisted drivers/staging/ area).

For CVEs assigned (earlier this month) to issues in drivers/staging,
what would be the process to remove the assignment or mark them as
invalid?

-- 
Thanks,
Sasha
