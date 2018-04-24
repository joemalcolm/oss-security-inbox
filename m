X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2192" "Tuesday" "24" "April" "2018" "15:48:02" "-0700" "David Rientjes" "rientjes@google.com" "<alpine.DEB.2.21.1804241538200.28739@chino.kir.corp.google.com>" "67" "[oss-security] CVE-2018-1000200 (Linux): Bad memory access on oom kill of large mlocked process" nil nil nil "4" "2018042422:48:02" "[oss-security] CVE-2018-1000200 (Linux): Bad memory access on oom kill of large mlocked process" (number mark "U       rientjes@goo Apr 24   67/2192  " thread-indent "\"[oss-security] CVE-2018-1000200 (Linux): Bad memory access on oom kill of large mlocked process\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16274 invoked by uid 550); 24 Apr 2018 23:46:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28568 invoked from network); 24 Apr 2018 22:48:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:subject:message-id:user-agent:mime-version;
        bh=dzfIx2WCkOyLdhSKZHOJrgvS1lireUSYXXDggBaP79c=;
        b=SJRzZ17LG0ND7G62jfcZPjPhV3PpmxOITkpxr8c70ZMKB5D69+yyBPbZ21nYrK5lBR
         Vy1/5I7IeHio3az0dtQcuiJYiMzjYGmigVQnYZ8mnQCqfiNY0awfvOqVNtej34WAMzuO
         gEEZuD7oDXlP8GeGjdNVrxBAKj3QZUAQJtQ+LBTuQC+TLDV+s8WQvty+6eM085/vU1KZ
         5ZHrDbMlR7hge9uoaw80tVzgLYOkgPMIEgNc/907FuuByruHxe2/TOJ9518NTlxEWk/7
         FvPHw3YygOWKHJQXaOihb28pTihKf5XqUOIK+1tgY+Zxk/hq9Eud0MiD0L3Xq3COuv8d
         ZsYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:user-agent
         :mime-version;
        bh=dzfIx2WCkOyLdhSKZHOJrgvS1lireUSYXXDggBaP79c=;
        b=tb9HFQY34+ChOv/v7osDfGpwCBLZ/zhTR6h7a97XRAVVUoj5xdQzQlSbXJ7bE88nrE
         6bHvFMa2jLPgwqWs1N7gPJBClNNimPpWdUAJXmlUHBWcKHupnACtdSq4M/vsbZgyh1mj
         Ui5EIInTbJLKwKs9glGCBHFCBYLbVBWxnfjGq3dkjmqCJkH2XP5oPnwiMH+HD8vzQ7+Y
         szSDEId6NOP3JuDsb0B7NSRHbo2mvjETZBQ/lFxjZZQ51v2XYhJa7GJPeOSTOmjJB+w/
         wTfxjNlX/+ykt/bOvuZoilfkV4D8M1TuMW9PmaQrCHBhVFt2H8lGx0h25byw7jm/wAeg
         xgEA==
X-Gm-Message-State: ALQs6tCNWcrFQCkCIDEcsmcGs6T+yAWBV84D3Hqb6vlI9Ltf4/gSoeBo
	G+ExRJlSxjG6kK6L4MyXasGFQmCSGtw=
X-Google-Smtp-Source: AIpwx4+upsD7sY6a1qVzIZDo02lqH0gtXZmbMDs231GAuzVGvBJ8AV0p3N1H6kXjpRZUcdbfjzwtoQ==
X-Received: by 10.101.72.1 with SMTP id h1mr19709289pgs.96.1524610083945;
        Tue, 24 Apr 2018 15:48:03 -0700 (PDT)
Date: Tue, 24 Apr 2018 15:48:02 -0700 (PDT)
From: David Rientjes <rientjes@google.com>
X-X-Sender: rientjes@chino.kir.corp.google.com
To: oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.21.1804241538200.28739@chino.kir.corp.google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: [oss-security] CVE-2018-1000200 (Linux): Bad memory access on oom kill of large
 mlocked process

Hi all,

Out of memory (oom) killing a process that has large spans of mlocked 
memory can result in a bad memory access or a NULL pointer dereference due 
to concurrent memory unmapping by the oom reaper kernel thread.

This affects Linux 4.14, 4.15, and 4.16.

It is much more likely on PowerPC where clearing a huge pmd results in
serialize_against_pte_lookup(), which forces all cpus out of idle.  All
architectures are vulnerable, however.

An example dereference:

Unable to handle kernel paging request for data at address 0x00000018
Faulting instruction address: 0xc000000000167ac0
Oops: Kernel access of bad area, sig: 11 [#1]
SMP NR_CPUS=256 NUMA PowerNV
NIP __lock_acquire
LR lock_acquire
Call Trace:
lock_acquire
_raw_spin_lock
follow_page_pte
munlock_vma_pages_range
exit_mmap
mmput
do_exit
do_group_exit
get_signal
do_signal
do_notify_resume

The issue arises from an oom killed process's final thread calling
exit_mmap(), which calls munlock_vma_pages_all() for mlocked vmas.  This
can happen synchronously with the oom reaper's unmap_page_range() since
the vma's VM_LOCKED bit is cleared before munlocking (to determine if any
other vmas share the memory and are mlocked).

The simple exploit is provided inline, below.  The amount of memory to be 
mlocked, MEM_LENGTH, must be large enough to trigger an oom kill.  There 
are two common ways to do that: (1) MEM_LENGTH exceeds all memory on the 
system, or (2) the exploit is attached to a memory control group (cgroup) 
that is limited to less than MEM_LENGTH.  Note that this has only been 
reproduced on PowerPC so far, due to the pmd clearing mentioned above but 
all platforms should be equally as vulnerable since the oom reaper kernel 
thread can race with munlock.

The proposed fix is https://marc.info/?l=linux-kernel&m=152460926619256.  
(Please note that key maintainers are currently at a conference, so review 
and merge may be delayed longer than normal.)

Thanks for your time.
---
#include <sys/mman.h>

#define MEM_LENGTH	(1UL << 30)

int main(void)
{
	void *ptr = mmap(0, MEM_LENGTH, PROT_WRITE,
		MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
	if (ptr == MAP_FAILED)
		return -1;

	return mlock(ptr, MEM_LENGTH);
}
