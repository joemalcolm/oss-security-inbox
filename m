Received: (qmail 27771 invoked by uid 550); 24 Jul 2023 17:41:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27747 invoked from network); 24 Jul 2023 17:41:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1690220497;
	bh=pGcpvH7KuAAc7Myj2UgR0JCb0CPw2X4KYyJt2iwSx7Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type;
	b=p9Dkf7nYCP43ELKFXnXeqlTBZUBCmswF4/KC05Bx2RGQ8WeGhE2+uL9dXxisYNEeo
	 FoRZfurXxpM+JKzc7hZJtIz1hxpzHcBC/i8zh9dPhVhY94TfrYOQsw7rdZ+ZpDGv+W
	 PXwplgIM1RhzwEaDG5lvtYMFDCgMp2B0XDZQsmZm67RYF8x0TEsxQjkgJjRWqBfQ23
	 WIcLhHCwA3mBR9/gCXNrJ7yoPTfXA9N2uOJUvwzLN/a6RE5t1I6n5iSHo6owCE+Cl5
	 MEEu4NYhoOrbpbOyMJytE/LzIdY2w4PyHn12os/YGFtLAV0XEFIgmGdzBsIo58m5Ji
	 WzsNFmrieIx8A==
Message-ID: <43f83e16-e492-4540-b34d-d2b51da2bb74@canonical.com>
Date: Mon, 24 Jul 2023 13:41:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-CA
To: oss-security@lists.openwall.com
References: <ZL6Kgih+pRaeA2e/@thinkstation.cmpxchg8b.net>
From: Marc Deslauriers <marc.deslauriers@canonical.com>
In-Reply-To: <ZL6Kgih+pRaeA2e/@thinkstation.cmpxchg8b.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2023-20593: A use-after-free in AMD Zen2
 Processors

Hi,

There seems to be confusion regarding which is the correct commit:

Your blog post says it's 0bc3126c9cfa0b8c761483215c25382f831a7c6f which is for 
family 17h.

This post says it's b250b32ab1d044953af2dc5e790819a7703b7ee6 which is for family 
19h.

I assume the 17h family one is the correct one?

Thanks,

Marc.



On 2023-07-24 10:28, Tavis Ormandy wrote:
> Hello, this is CVE-2023-20593, a use-after-free in AMD Zen2 processors.
> 
> Yes, you read that right :)
> 
> This includes at least the following products:
> 
> - AMD Ryzen 3000 Series Processors
> - AMD Ryzen PRO 3000 Series Processors
> - AMD Ryzen Threadripper 3000 Series Processors
> - AMD Ryzen 4000 Series Processors with Radeon Graphics
> - AMD Ryzen PRO 4000 Series Processors
> - AMD Ryzen 5000 Series Processors with Radeon Graphics
> - AMD Ryzen 7020 Series Processors with Radeon Graphics
> - AMD EPYC 7002 Series Processors
> 
> I've written a blog post with a detailed description of this bug,
> it's available here:
> 
> https://lock.cmpxchg8b.com/zenbleed.html
> 
> # Background
> 
> The vector register file (RF) is a resource shared among all tasks on
> the same physical core. The register allocation table (RAT) keeps track
> of how RF resources are assigned and mapped to named registers. However,
> no RF space is needed to store a register with a zero value - a flag
> called the z-bit can simply be set in the RAT.
> 
> # Vulnerability
> 
> If the z-bit is set speculatively, then it would not be sufficient to
> unset it again on branch misprediction. That's because the previously
> allocated RF space could have been reallocated between those two events.
> That would effectively be a UaF.
> 
> We have discovered that this really can happen under certain specific
> conditions. Specifically, an instruction that uses merge optimization, a
> register rename, and a mispredicted VZEROUPPER instruction must enter
> the FP backend simultaneously.
> 
> # Impact
> 
> The practical result here is that you can spy on the registers of other
> processes. No system calls or privileges are required.
> 
> It works across virtual machines and affects all operating systems.
> 
> I have written a poc for this issue that's fast enough to reconstruct
> keys and passwords as users log in.
> 
> # Solution
> 
> AMD have released a patch for this issue available here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/?id=b250b32ab1d044953af2dc5e790819a7703b7ee6
> 
> There is a software workaround, you can set the chicken bit DE_CFG[9].
> This may have some performance cost, and the microcode update is
> preferred.
> 
> It is not sufficient to disable SMT.
> 
> # Credit
> 
> This bug was discovered by Tavis Ormandy of Google Information Security.
> 
> 

