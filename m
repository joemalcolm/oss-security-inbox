X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1345" "Wednesday" "15" "April" "2020" "16:03:29" "+0200" "Michal =?iso-8859-1?Q?Such=E1ne?==?iso-8859-1?Q?k?=" "msuchanek@suse.de" "<20200415140329.GC25468@kitsune.suse.cz>" "30" "[oss-security] Re: CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts" nil nil nil "4" "2020041514:03:29" "[oss-security] Re: CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts" (number mark "U       msuchanek@su Apr 15   30/1345  " thread-indent "\"[oss-security] Re: CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts\"\n") "<2ff92392-30ec-d5c4-84c9-e6ba24f6b154@linux.ibm.com>" ("<2ff92392-30ec-d5c4-84c9-e6ba24f6b154@linux.ibm.com>") nil nil nil nil nil nil nil "[oss-security] Re: CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can cause DoS on POWER9 KVM hosts" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1493 invoked by uid 550); 15 Apr 2020 14:21:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28222 invoked from network); 15 Apr 2020 14:03:43 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 15 Apr 2020 16:03:29 +0200
From: Michal =?iso-8859-1?Q?Such=E1nek?= <msuchanek@suse.de>
To: Andrew Donnellan <ajd@linux.ibm.com>
Cc: oss-security@lists.openwall.com,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Message-ID: <20200415140329.GC25468@kitsune.suse.cz>
References: <2ff92392-30ec-d5c4-84c9-e6ba24f6b154@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ff92392-30ec-d5c4-84c9-e6ba24f6b154@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Re: CVE-2020-11669: Linux kernel 4.10 to 5.1: powerpc: guest can
 cause DoS on POWER9 KVM hosts

On Wed, Apr 15, 2020 at 10:52:53PM +1000, Andrew Donnellan wrote:
> The Linux kernel for powerpc from v4.10 to v5.1 has a bug where the
> Authority Mask Register (AMR), Authority Mask Override Register (AMOR) and
> User Authority Mask Override Register (UAMOR) are not correctly saved and
> restored when the CPU is going into/coming out of idle state.
> 
> On POWER9 CPUs, this means that a CPU may return from idle with the AMR
> value of another thread on the same core.
> 
> This allows a trivial Denial of Service attack against KVM hosts, by booting
> a guest kernel which makes use of the AMR, such as a v5.2 or later kernel
> with Kernel Userspace Access Prevention (KUAP) enabled.
> 
> The guest kernel will set the AMR to prevent userspace access, then the
> thread will go idle. At a later point, the hardware thread that the guest
> was using may come out of idle and start executing in the host, without
> restoring the host AMR value. The host kernel can get caught in a page fault
> loop, as the AMR is unexpectedly causing memory accesses to fail in the
> host, and the host is eventually rendered unusable.

Hello,

shouldn't the kernel restore the host registers when leaving the guest?

I recall some code exists for handling the *AM*R when leaving guest. Can
the KVM guest enter idle without exiting to host?

Thanks

Michal
