Received: (qmail 8086 invoked by uid 550); 7 Jun 2025 14:37:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7768 invoked from network); 7 Jun 2025 14:37:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749307034;
	bh=spaMdXgTPtk2idk0rTLT3DUS4JVuOtkhygyHTXZBRyQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q7bsfS65DFqZykCuqqUlrr1i1n1r5MRsJ8JRVg1LhyKgCPzxJnYcCfnCOMCNF0Sc8
	 DlhEFjbzRvrYgJCRR1XyW2b4iDeK2F0F0ViyTiZhHgXqXDcbXusW/tb18Z/1z1BlE6
	 JR3jaNFwa/clYvwqxSYV1qfjoj5StozNu3pAf+H3LGllIrGmkA2EgFR+zdZHxXyYd9
	 ofvEDOlXTfaBFMSwX/iuKW9flROuamMK3vU+WzedZ/GTtkvTZmbYUhj9tIywjlmEx5
	 Dlm5D6PLnuEhHxgUKRE3fkOQvMxV6wt8mLHS1eFKGJXdTrEY0IjaOHoTmCwvq3OrK7
	 3o1JHqBwmDgig==
Date: Sat, 7 Jun 2025 10:37:12 -0400
From: Sasha Levin <sashal@kernel.org>
To: oss-security@lists.openwall.com
Cc: eschwartz@gentoo.org
Message-ID: <aEROmObEfB-k2IW7@lappy>
References: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
 <2025060713-aloe-decency-a74c@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <2025060713-aloe-decency-a74c@gregkh>
Subject: Re: [oss-security] Re: Re: Linux kernel: HFS+ filesystem
 implementation, issues, exposure in distros

On Sat, Jun 07, 2025 at 10:17:08AM +0200, Greg KH wrote:
>On Fri, Jun 06, 2025 at 06:00:09PM +0200, Attila Szasz wrote:
>> I don't see how Canonical Product Security is a bad actor here for caring
>> about the actual security of downstream users and acting in a timely
>> manner about an issue that they considered to impact Ubuntu Linux,
>> correctly.
>>
>> Canonical has a scope of
>> "All Canonical issues (including Ubuntu Linux) only."
>>
>> kernel.rg has a scope of
>> "Any vulnerabilities in the Linux kernel as listed on kernel.org, excluding
>> end-of-life (EOL) versions."
>>
>> Both of them were contacted.
>
>For the record, the CNA for kernel.org was NOT contacted here at all for
>this issue.  You sent a message to security@kernel.org, NOT
>cve@kernel.org.  security@k.o has nothing to do with CVE assignments and
>is NOT responsible for the kernel.org CNA.  Our documentation should
>state this very clearly, if not, we will be glad to update it where
>needed, just let us know.

The scope, which I assume was quoted from
https://www.cve.org/PartnerInformation/ListofPartners/partner/Linux also
lists cve@kernel.org as the right email to contact.

Note that this isn't just a technicality: for example, I'm a member of
cve@k.o, but *NOT* of security@k.o.

The first I learned of this issue was your Linkedin post[1] after this
was already assigned a CVE from Canonical.


[1] https://www.linkedin.com/posts/attila-sz%C3%A1sz-086abb122_ssd-advisory-linux-kernel-hfsplus-slab-out-of-bounds-activity-7307735032729690113-Y8uY

-- 
Thanks,
Sasha
