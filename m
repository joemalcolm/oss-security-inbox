X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2193" "Thursday" "16" "April" "2020" "14:02:57" "+1000" "Paul Mackerras" "paulus@ozlabs.org" "<20200416040257.GA10545@blackberry>" "45" "[oss-security] Re: CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts" nil nil nil "4" "2020041604:02:57" "[oss-security] Re: CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts" (number mark "U       paulus@ozlab Apr 16   45/2193  " thread-indent "\"[oss-security] Re: CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts\"\n") "<20200415140329.GC25468@kitsune.suse.cz>" ("<2ff92392-30ec-d5c4-84c9-e6ba24f6b154@linux.ibm.com>" "<20200415140329.GC25468@kitsune.suse.cz>") nil nil nil nil nil nil nil "[oss-security] Re: CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7552 invoked by uid 550); 16 Apr 2020 06:29:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3430 invoked from network); 16 Apr 2020 04:03:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
	t=1587009780; bh=RfMzDVHhSOkRGer9enMmRPIrJPGTabhenoE57XBRplo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AfiuIEeXFvIe8wFjG/xyTF+rwG4k8RcCcDd1KP5PjRIcTbDoPKzOi4VkoXYkLj3pL
	 t6cIP1yCaTX98i03dU1zj9BG6hMVwzERjPSw8RpnkqtXTR4/Rz/beD4qmq3fQrZH2+
	 ViLGsAIenrmjXCAUHZ/gC6wgL6wP3ZRBzcLesehMxIlFL81bfnluHLBQp99JSO0+hw
	 VlmtMgNnsN6D9je7O3LTxZqfcSILCa3rm8G4HVwLgD7ztg6re2a+TgcS7xR6KNPXgP
	 SeRgIT9r9RGzqYCRGC/V3OZ5KpsNoeUtOt6Uf1TKTR7cR5xexPpHAdUF8WeKnPaQSq
	 QvVcGPc/4fyKg==
Date: Thu, 16 Apr 2020 14:02:57 +1000
From: Paul Mackerras <paulus@ozlabs.org>
To: Michal =?iso-8859-1?Q?Such=E1nek?= <msuchanek@suse.de>
Cc: Andrew Donnellan <ajd@linux.ibm.com>, oss-security@lists.openwall.com,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Message-ID: <20200416040257.GA10545@blackberry>
References: <2ff92392-30ec-d5c4-84c9-e6ba24f6b154@linux.ibm.com>
 <20200415140329.GC25468@kitsune.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200415140329.GC25468@kitsune.suse.cz>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can
 cause DoS on POWER9 KVM hosts

On Wed, Apr 15, 2020 at 04:03:29PM +0200, Michal Suchánek wrote:
> On Wed, Apr 15, 2020 at 10:52:53PM +1000, Andrew Donnellan wrote:
> > The Linux kernel for powerpc from v4.10 to v5.1 has a bug where the
> > Authority Mask Register (AMR), Authority Mask Override Register (AMOR) and
> > User Authority Mask Override Register (UAMOR) are not correctly saved and
> > restored when the CPU is going into/coming out of idle state.
> > 
> > On POWER9 CPUs, this means that a CPU may return from idle with the AMR
> > value of another thread on the same core.
> > 
> > This allows a trivial Denial of Service attack against KVM hosts, by booting
> > a guest kernel which makes use of the AMR, such as a v5.2 or later kernel
> > with Kernel Userspace Access Prevention (KUAP) enabled.
> > 
> > The guest kernel will set the AMR to prevent userspace access, then the
> > thread will go idle. At a later point, the hardware thread that the guest
> > was using may come out of idle and start executing in the host, without
> > restoring the host AMR value. The host kernel can get caught in a page fault
> > loop, as the AMR is unexpectedly causing memory accesses to fail in the
> > host, and the host is eventually rendered unusable.
> 
> Hello,
> 
> shouldn't the kernel restore the host registers when leaving the guest?

It does.  That's not the bug.

> I recall some code exists for handling the *AM*R when leaving guest. Can
> the KVM guest enter idle without exiting to host?

No, we currently never execute the "stop" instruction in guest context.

The bug occurs when a thread that is in the host goes idle and
executes the stop instruction to go to a power-saving state, while
another thread is executing inside a guest.  Hardware loses the first
thread's AMR while it is stopped, and as it happens, it is possible
for the first thread to wake up with the contents of its AMR equal to
the other thread's AMR.  This can happen even if the first thread has
never executed in the guest.

The kernel needs to save and restore AMR (among other registers)
across the stop instruction because of this hardware behaviour.
We missed the AMR initially, which is what led to this vulnerability.

Paul.
