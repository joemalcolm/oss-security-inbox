Received: (qmail 9355 invoked by uid 550); 7 Jun 2025 15:07:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9317 invoked from network); 7 Jun 2025 15:07:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749308846;
	bh=MXupNV4lVWXAAdgdSV4KkntydJVGC65ke+kbCoWLkJg=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ZBjh9PZmJoIgdtAxP1ksBgO1e5Fj/SdkpqxYYtz22ez0gECteKJ6SkXAQJd88FiLM
	 m9M6RnNLb85wuo7E1vqjqPPFt9EHGrsS3Ah2t3R7S8UgkqgMN6aI7OfkyGNZ7KLU8P
	 gkPBF1ngG1mvAfF5gECoSlmkw1lSIt24GHHm52nCB7DIKL/MwY/NOIEr0o0Syu7rDb
	 /3LdRt9e+TGurexhJ1CdJCEEdulny37KEzxn7hvWjELc5p0XrPCnNQOknnQWsOFQtX
	 UJjE8c3X3l9jsyWNObhAIVAmQg1DfyaoVOxWE0juoC7d5mWeX9U3kFD96nwktJ/Ttt
	 fUW9uQnu3AbQQ==
Date: Sat, 7 Jun 2025 11:07:24 -0400
From: Sasha Levin <sashal@kernel.org>
To: Bastian Blank <bblank@thinkmo.de>, oss-security@lists.openwall.com
Message-ID: <aERVrO2dSuY-S9OY@lappy>
References: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
 <2025060713-aloe-decency-a74c@gregkh>
 <aEROmObEfB-k2IW7@lappy>
 <20250607145307.owt2hpb3xkqsdxjt@shell.thinkmo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20250607145307.owt2hpb3xkqsdxjt@shell.thinkmo.de>
Subject: Re: [oss-security] Re: Re: Linux kernel: HFS+ filesystem
 implementation, issues, exposure in distros

On Sat, Jun 07, 2025 at 04:53:07PM +0200, Bastian Blank wrote:
>On Sat, Jun 07, 2025 at 10:37:12AM -0400, Sasha Levin wrote:
>> The scope, which I assume was quoted from
>> https://www.cve.org/PartnerInformation/ListofPartners/partner/Linux also
>> lists cve@kernel.org as the right email to contact.
>
>This page also links as step one to
>https://www.kernel.org/doc/html/latest/process/security-bugs.html, which
>does _not_ list cve@kernel.org anywhere.

Hrm... Have you read through the doc?

>> Note that this isn't just a technicality: for example, I'm a member of
>> cve@k.o, but *NOT* of security@k.o.
>
>But it already reached the right organisation.  Did security@k.o respond
>with a referal?

security-bugs.html which you've linked contains information about the
CVE process and answers your question:

	CVE assignment

	The security team does not assign CVEs, nor do we require them
	for reports or fixes, as this can needlessly complicate the
	process and may delay the bug handling. If a reporter wishes to
	have a CVE identifier assigned for a confirmed issue, they can
	contact the kernel CVE assignment[1] team to obtain one.

	[1] https://www.kernel.org/doc/html/latest/process/cve.html

-- 
Thanks,
Sasha
