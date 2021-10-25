X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1332" "Monday" "25" "October" "2021" "22:18:54" "+1100" "Michael Ellerman" "mpe@ellerman.id.au" nil "40" "[oss-security] Linux kernel: powerpc: KVM guest can trigger host crash on Power8 " nil nil nil "10" nil nil (number mark "U       mpe@ellerman Oct 25   40/1332  " thread-indent "\"[oss-security] Linux kernel: powerpc: KVM guest can trigger host crash on Power8 \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: powerpc: KVM guest can trigger host crash on Power8 " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5691 invoked by uid 550); 25 Oct 2021 11:24:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3208 invoked from network); 25 Oct 2021 11:19:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
	s=201909; t=1635160739;
	bh=q2w+1Ixl2mryFLxgvQRnX8bXQAX4fFunUvPWxhDUOcQ=;
	h=From:To:Cc:Subject:Date:From;
	b=X9OuwhtqadHhk7tjAZIg6c6ioV4Xduz445XgQXBPGVu9ijCScrlkNdlND6fYEHv9F
	 K1YPjkiba1QM3n7v+xDUxaNp4orCLXweMmMoGDtjrrV0VwevbEe/4z/gVIxivINVi1
	 JDIyNbOEWf52IWim9R3zSY2OPJWlHy7pnWRdYVAciz+N50g7puFU+zOzjj1WN69U+I
	 0deHyhlgfz0v8TwGC0fNxGYoA38x3tojyhCHZcb2xkOBWrS7ItS/y0IEeg9uwtaS66
	 Eh3KNmSYIFYjnWAh2hfwh14tyfjIdrEu9vIv5auqqM0byqn/mPBvvtSJftuAsZo0rh
	 8lm1AZVwpJmVw==
From: Michael Ellerman <mpe@ellerman.id.au>
To: oss-security@lists.openwall.com
Cc: linuxppc-dev@lists.ozlabs.org
Date: Mon, 25 Oct 2021 22:18:54 +1100
Message-ID: <87pmrtbbdt.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Linux kernel: powerpc: KVM guest can trigger host crash on Power8 

The Linux kernel for powerpc since v5.2 has a bug which allows a
malicious KVM guest to crash the host, when the host is running on
Power8.

Only machines using Linux as the hypervisor, aka. KVM, powernv or bare
metal, are affected by the bug. Machines running PowerVM are not
affected.

The bug was introduced in:

    10d91611f426 ("powerpc/64s: Reimplement book3s idle code in C")

Which was first released in v5.2.

The upstream fix is:

  cdeb5d7d890e ("KVM: PPC: Book3S HV: Make idle_kvm_start_guest() return 0 if it went to guest")
  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cdeb5d7d890e14f3b70e8087e745c4a6a7d9f337

Which will be included in the v5.16 release.

Note to backporters, the following commits are required:

  73287caa9210ded6066833195f4335f7f688a46b
  ("powerpc64/idle: Fix SP offsets when saving GPRs")

  9b4416c5095c20e110c82ae602c254099b83b72f
  ("KVM: PPC: Book3S HV: Fix stack handling in idle_kvm_start_guest()")

  cdeb5d7d890e14f3b70e8087e745c4a6a7d9f337
  ("KVM: PPC: Book3S HV: Make idle_kvm_start_guest() return 0 if it went to guest")

  496c5fe25c377ddb7815c4ce8ecfb676f051e9b6
  ("powerpc/idle: Don't corrupt back chain when going idle")


I have a test case to trigger the bug, which I can share privately with
anyone who would like to test the fix.

cheers
