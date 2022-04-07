Received: (qmail 11972 invoked by uid 550); 7 Apr 2022 08:36:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11689 invoked from network); 7 Apr 2022 08:35:47 -0000
Date: Thu, 7 Apr 2022 10:35:43 +0200
From: Solar Designer <solar@openwall.com>
To: kangel <kangel@zju.edu.cn>
Cc: oss-security@lists.openwall.com, pgn@zju.edu.cn, qiuhao@sysec.org,
	Pedro Sampaio <psampaio@redhat.com>, pbonzini@redhat.com
Message-ID: <20220407083543.GA16833@openwall.com>
References: <657e93b4.3cced.18001ce5999.Coremail.kangel@zju.edu.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <657e93b4.3cced.18001ce5999.Coremail.kangel@zju.edu.cn>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel: x86/kvm: null-ptr-deref in kvm_dirty_ring_push

On Thu, Apr 07, 2022 at 10:15:42AM +0800, kangel wrote:
>     We found a null-ptr-deref in the kvm module which can lead to DoS. This flaw is in kvm_dirty_ring_push in virt/kvm/dirty_ring.c. The linux kernel version is 5.17.0-rc8. We would appreciate a CVE ID if this is a security issue.

Further in the linux-distros thread, this got assigned CVE-2022-1263,
however is this really a security issue - in other words, is a security
boundary crossed in triggering the bug?  I think it is not, and if so
the CVE ID should probably be rejected.  From the PoC:

> 		res = syscall(__NR_openat, 0xffffffffffffff9cul, "/dev/kvm", 0ul, 0ul);

In fact, also in the linux-distros thread it was promptly agreed that
this doesn't need an embargo - perhaps precisely because of no security
relevance?  If so, that should have been said explicitly, so a CVE ID
wouldn't be assigned (it was by another person).

Alexander
