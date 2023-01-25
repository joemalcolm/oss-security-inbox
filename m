Received: (qmail 27984 invoked by uid 550); 25 Jan 2023 19:51:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16215 invoked from network); 25 Jan 2023 19:34:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674675285;
	bh=RVD6zNB9jAZzH+QZaXRTEjvf9hNPVVwpLPe8i29qcJs=;
	h=Date:From:To:Subject:From;
	b=S1vKxMwwKqMwEC9xpfEb7lBAmRCUvabXD8MX46cNkLO5ifyNXu0KTGW7cdH5VKFva
	 GOgO75S/FI4H5FGv9E/MhjMtVETsJDrobRNvgP86Uc4tYfA5jl8RgIeyUnFFxuCC2p
	 Ad/BGrPPfA012zGF0ZOVBpyJBMHEEBfnxjJZK2R1g1O6isup1pJEf4sx6DUtTCFFhD
	 e7q65m6vIN6gfREVVRYXNd0ph59T0gbj6Uz9PO+ZgGCr63dy9naEZ3SBZMlAUQxzrl
	 g0n5whAv/hyG1fo+0GqINmT4MtwUGv1GBIp0e9J8A1PjY1iHXlW89H/hAPdx7kqyeq
	 Vosr3Fpa/W0Yg==
Date: Wed, 25 Jan 2023 11:34:43 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <Y9GEU0G9N5etu+H3@sol.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] Data operand dependent timing on Intel and Arm CPUs

Hi,

I'd like to draw people's attention to the fact that on recent Intel and Arm
CPUs, by default the execution time of instructions may depend on the data
values operated on.  This even includes instructions like additions, XORs, and
AES instructions, that are traditionally assumed to be constant-time with
respect to the data values operated on.

For details, see the documents from each CPU vendor:

	Intel: https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/best-practices/data-operand-independent-timing-isa-guidance.html
	Arm: https://developer.arm.com/documentation/ddi0601/2020-12/AArch64-Registers/DIT--Data-Independent-Timing

... as well as the following discussion on the Linux Kernel Mailing List:

	https://lore.kernel.org/lkml/YwgCrqutxmX0W72r@gmail.com/T/#u

Non-constant-time instructions break cryptographic code that relies on
constant-time code to prevent timing attacks on cryptographic keys -- i.e., most
cryptographic code.  This issue may also have a wider impact on the ability of
operating systems to protect data from unprivileged processes.

For Intel, processors with Ice Lake and later are affected by this issue.

The fix for this issue is to set a CPU flag that restores the old, correct
behavior of data-independent timing: DIT on Arm, and DOITM on Intel.

Linux v6.2 will enable DIT on Arm, but only in the kernel.  Without any
additional patches, userspace code will still get data-dependent timing by
default.  See https://git.kernel.org/linus/01ab991fc0ee5019

No patch has been merged to enable DOITM on Intel processors.  Thus, as-is, it's
not really possible to safely execute cryptographic algorithms on Linux systems
that use an Intel processor with Ice Lake or later.  (I'd guess that the same is
true for other operating systems too; Linux is just the one I'm looking at.)  To
fix this issue, I've proposed a Linux kernel patch that enables DOITM globally:
https://lore.kernel.org/lkml/20230125012801.362496-1-ebiggers@kernel.org

I consider this issue to be a CPU security vulnerability; it shares many
characteristics with other CPU security vulnerabilities such as Meltdown and
Spectre.  However, Intel and Arm do not seem to consider it to be a security
vulnerability.  No CVEs seem to have been assigned yet.

- Eric
