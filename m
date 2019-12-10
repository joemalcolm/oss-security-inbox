X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1954" "Tuesday" "10" "December" "2019" "12:09:22" "-0600" "Tyler Hicks" "tyhicks@canonical.com" nil "51" nil "^Date:" nil nil "12" nil nil (number mark "U       tyhicks@cano Dec 10   51/1954  " thread-indent "\"Re: [oss-security] CVE-2019-19338 Kernel: KVM: export MSR_IA32_TSX_CTRL to guest - incomplete fix for TAA (CVE-2019-11135)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-19338 Kernel: KVM: export MSR_IA32_TSX_CTRL to guest - incomplete fix for TAA (CVE-2019-11135)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11824 invoked by uid 550); 10 Dec 2019 18:09:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11800 invoked from network); 10 Dec 2019 18:09:37 -0000
Message-ID: <20191210180921.GA23197@elm>
References: <nycvar.YSQ.7.76.1912101658430.54987@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YSQ.7.76.1912101658430.54987@xnncv>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Tue, 10 Dec 2019 12:09:22 -0600
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-19338 Kernel: KVM: export
 MSR_IA32_TSX_CTRL to guest - incomplete fix for TAA (CVE-2019-11135)
To: oss-security@lists.openwall.com

On 2019-12-10 17:10:40, P J P wrote:
>   Hello,

Hello!

> Transaction Asynchronous Abort (TAA) h/w issue, which affects Intel CPUs, is
> mitigated in two ways. One is by disabling Transactional Synchronisation
> Extensions (TSX) feature of the CPU. And second is by clearing the affected
> Store/Fill/Load port architectural buffers, which may hold sensitive
> information bits.
> 
> It was found that the current kernel fixes don't completely fix TAA issue
> for guest VMs. When a guest is running on a host CPU affected by TAA (ie.
> TAA_NO=0) but not affected by MDS issue (ie MDS_NO=1), to mitigate TAA
> issue, guest was to clear the affected buffers by using VERW instruction
> mechanism. But when MDS_NO=1 bit was exported to the guests, it did not
> quite use the VERW mechanism to clear the affected buffers.
> 
> This issue affects guests running on Cascade Lake CPUs, which are affected
> by the TAA (ie. TAA_NO=0) issue, but are not affected by the MDS (ie.
> MDS_NO=1) issue.
> 
> It requires that host has 'TSX' enabled.
> 
> Upstream patches:
> -----------------
>   -> https://git.kernel.org/linus/cbbaa2727aa3ae9e0a844803da7cef7fd3b94f2b
>   -> https://git.kernel.org/linus/c11f83e0626bdc2b6c550fc8b9b6eeefbd8cefaa
>   -> https://git.kernel.org/linus/b07a5c53d42a8c87b208614129e947dd2338ff9c
> 
> Another option: Export MDS_NO=0 to guests when TSX is enabled
>   -> https://git.kernel.org/linus/e1d38b63acd843cfdd4222bf19a26700fd5c699e

If this commit, which was part of the initial set of mitigation patches
for TAA, is a valid option then I'm not understanding how there was an
incomplete fix.

Is the CVE assignment specifically for a distro kernel that didn't
include commit e1d38b63acd8 ("kvm/x86: Export MDS_NO=0 to guests when
TSX is enabled")?

Tyler

> 
> 'CVE-2019-19338' is assigned by Red Hat Inc.
> 
> Thank you.
> --
> Prasad J Pandit / Red Hat Product Security Team
> 8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D
> 
