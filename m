X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1524" "Tuesday" "18" "September" "2018" "07:54:57" "-0700" "Davidlohr Bueso" "dave@stgolabs.net" "<20180918145457.GM3902@linux-r8p5>" "20" "[oss-security] Linux kernel: potential local priviledge escalation bug in vmacache code" nil nil nil "9" "2018091814:54:57" "[oss-security] Linux kernel: potential local priviledge escalation bug in vmacache code" (number mark "U       dave@stgolab Sep 18   20/1524  " thread-indent "\"[oss-security] Linux kernel: potential local priviledge escalation bug in vmacache code\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14147 invoked by uid 550); 18 Sep 2018 15:09:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23941 invoked from network); 18 Sep 2018 14:55:11 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 18 Sep 2018 07:54:57 -0700
From: Davidlohr Bueso <dave@stgolabs.net>
To: oss-security@lists.openwall.com
Message-ID: <20180918145457.GM3902@linux-r8p5>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Linux kernel: potential local priviledge escalation bug in vmacache code

Hi,

A potential local priviledge escalation bug was reported in the vmacache code dealing with 32-bit sequence number overflows, introduced in v3.16 by 6b4ebc3a9078 (mm,vmacache: optimize overflow system-wide flushing). The change introduces a "fastpath" which skips the invalidation on overflows for single threads (mm_users == 1), which can lead to a use-after-free. As reported:
`
 [A starts as a singlethreaded process]
A: create mappings X and Y (in separate memory areas far away from other allocations)
A: perform repeated invalidations until current->mm->vmacache_seqnum==0xffffffff and current->vmacache.seqnum==0xfffffffe
A: dereference an address in mapping Y that is not paged in (thereby populating A's VMA cache with Y at seqnum 0xffffffff)
A: unmap mapping X (thereby bumping current->mm->vmacache_seqnum to 0)
A: without any more find_vma() calls (which could happen e.g. via pagefaults), create a thread B
B: perform repeated invalidations until current->mm->vmacache_seqnum==0xfffffffe
B: unmap mapping Y (thereby bumping  current->mm->vmacache_seqnum to 0xffffffff)
A: dereference an address in the freed mapping Y (or any address that isn't present in the pagetables and doesn't correspond to a valid VMA cache entry)

This is fixed in 7a9cdebdcc17 (mm: get rid of vmacache_flush_all() entirely), by converting it to a 64-bit counter and not dealing with overflows anymore; which also makes the code simpler and removes rarely-run code in core kernel paths.

So a win-win altogether.

Thanks,
Davidlohr
