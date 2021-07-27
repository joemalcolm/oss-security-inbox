X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1348" "Tuesday" "27" "July" "2021" "10:46:14" "+1000" "Michael Ellerman" "mpe@ellerman.id.au" nil "37" "[oss-security] Re: Linux kernel: powerpc: KVM guest to host memory corruption" nil nil nil "7" nil nil (number mark "U       mpe@ellerman Jul 27   37/1348  " thread-indent "\"[oss-security] Re: Linux kernel: powerpc: KVM guest to host memory corruption\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: powerpc: KVM guest to host memory corruption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15708 invoked by uid 550); 27 Jul 2021 10:10:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1317 invoked from network); 27 Jul 2021 00:46:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
	s=201909; t=1627346779;
	bh=9Ngvnk/KaSiH9PtAbbUjpuSC8Mf0FxRg7kOKlrs9ZOI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=ire/ZMXQ31CRLukuxOOp1Lir5CBQxP+hTYJo5zUe+FxZ2lvE8jEVtVgbPXFQLZxb1
	 pi5uSsy9DuKAIn6ohaHIFBLFSNWGoqICdSKt2pj8QOml5HG5iddB/4h1PK6xTV9iGI
	 vlBI9tgvc6ntet5ieZkJXSXC48B3iRcII8qFSE0YurDGV2XXTGyhRzYxvM3E/6G5I4
	 Pg2X6FBSswzuTvDRhgANrhrIMSLwtSBRwnzNR9/yPnSNDGQoMK2Rm9p7JiZSufD7WC
	 1zlSeQMR5ar9aTm3q4jBQqriUqiS/wrC7uDIPhumJvsVrpKIXR9p7877XmbGTFwdoW
	 7L/a6jsxI8Opw==
From: Michael Ellerman <mpe@ellerman.id.au>
To: oss-security@lists.openwall.com
Cc: linuxppc-dev@lists.ozlabs.org
In-Reply-To: <87im0x1lqi.fsf@mpe.ellerman.id.au>
References: <87im0x1lqi.fsf@mpe.ellerman.id.au>
Date: Tue, 27 Jul 2021 10:46:14 +1000
Message-ID: <87eebk1t49.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Linux kernel: powerpc: KVM guest to host memory corruption

Michael Ellerman <mpe@ellerman.id.au> writes:
> The Linux kernel for powerpc since v3.10 has a bug which allows a malicious KVM guest to
> corrupt host memory.
>
> In the handling of the H_RTAS hypercall, args.rets is made to point into the args.args
> buffer which is located on the stack:
>
> 	args.rets = &args.args[be32_to_cpu(args.nargs)];
>
> However args.nargs has not been range checked. That allows the guest to point args.rets
> anywhere up to +16GB from args.args.
>
> The guest does not have control of what is written to args.rets, it is always (u32)-3,
> because subsequent code does check nargs. Additionally the guest will be killed as a
> result of the nargs being out of range, so a given guest only has a single shot at
> corrupting memory.
>
> Only machines using Linux as the hypervisor, aka. KVM or bare metal, are affected by the
> bug.
>
> The bug was introduced in:
>
>     8e591cb72047 ("KVM: PPC: Book3S: Add infrastructure to implement kernel-side RTAS calls")
>
> Which was first released in v3.10.
>
> The upstream fix is:
>
>   f62f3c20647e ("KVM: PPC: Book3S: Fix H_RTAS rets buffer overflow")
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f62f3c20647ebd5fb6ecb8f0b477b9281c44c10a
>
> Which will be included in the v5.14 release.

This has been assigned CVE-2021-37576.

cheers
