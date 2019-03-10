X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2704" "Sunday" "10" "March" "2019" "19:14:20" "+0100" "Solar Designer" "solar@openwall.com" "<20190310181420.GA29155@openwall.com>" "58" "Re: [oss-security] Linux kernel: OOB R/W in SNMP NAT module (CVE-2019-9162); virtual address 0 mappable (CVE-2019-9213)" "^Cc:" nil nil "3" "2019031018:14:20" "[oss-security] Linux kernel: OOB R/W in SNMP NAT module (CVE-2019-9162); virtual address 0 mappable (CVE-2019-9213)" (number mark "        solar@openwa Mar 10   58/2704  " thread-indent "\"Re: [oss-security] Linux kernel: OOB R/W in SNMP NAT module (CVE-2019-9162); virtual address 0 mappable (CVE-2019-9213)\"\n") "<CAG48ez3JJ_+smFw9H8Fv2t2Rv0qNKrgBEp1hsfYL0BF16VWnNg@mail.gmail.com>" ("<CAG48ez3JJ_+smFw9H8Fv2t2Rv0qNKrgBEp1hsfYL0BF16VWnNg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: OOB R/W in SNMP NAT module (CVE-2019-9162); virtual address 0 mappable (CVE-2019-9213)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28249 invoked by uid 550); 10 Mar 2019 18:15:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28030 invoked from network); 10 Mar 2019 18:14:48 -0000
Message-ID: <20190310181420.GA29155@openwall.com>
References: <CAG48ez3JJ_+smFw9H8Fv2t2Rv0qNKrgBEp1hsfYL0BF16VWnNg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG48ez3JJ_+smFw9H8Fv2t2Rv0qNKrgBEp1hsfYL0BF16VWnNg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Sun, 10 Mar 2019 19:14:20 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: OOB R/W in SNMP NAT module (CVE-2019-9162); virtual address 0 mappable (CVE-2019-9213)
To: Jann Horn <jannhorn@googlemail.com>

On Tue, Mar 05, 2019 at 10:02:49PM +0100, Jann Horn wrote:
> virtual address 0 is mappable via privileged write() to /proc/*/mem
> https://bugs.chromium.org/p/project-zero/issues/detail?id=1792
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0a1d52994d440e21def1c2174932410b4f2a98a1
> https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.20.14
> https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.27
> https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.105
> https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.9.162

I think this is a big deal because (near-)NULL pointer dereferences are
a more common bug class than mmap_min_addr bypasses (like this one bug
is), so given that a combination of both is needed for a worse-than-DoS
exploit we should reasonably treat mmap_min_addr bypasses and not NULL
pointer dereferences as the actual vulnerabilities.

https://access.redhat.com/security/cve/cve-2019-9213 currently lists
RHEL 5, 6, 7 as "Under investigation" (and only RHEL7's kernel-alt as
"Affected"), but per my quick look I'd expect RHEL 5 & 6 to be safe from
this (/proc/*/mem write() not yet enabled) and RHEL 7 to be vulnerable
(already has /proc/*/mem write(), although something else _might_ save
it from being vulnerable).

Upstream introduced /proc/*/mem write(2) support in 2.6.39, in 2011:

https://lwn.net/Articles/433326/

A related vulnerability that this exposed was found and fixed in 2012:

https://www.openwall.com/lists/oss-security/2012/01/18/1
https://git.zx2c4.com/CVE-2012-0056/about/
https://lwn.net/Articles/476947/

In its aftermath, a sysctl to (dis)allow /proc/*/mem read and/or write
was proposed:

https://lwn.net/Articles/476832/

Apparently, this idea was promptly dropped:

https://www.openwall.com/lists/kernel-hardening/2012/01/31/1

not to pollute the "kernel." sysctl namespace with various security
hardening and legacy feature knobs like this.  Unfortunately, it looks
like no alternative was proposed.  Perhaps this should be revisited.

Also, I think that a way to enforce mmap_min_addr regardless of any
process privileges should be introduced - perhaps as yet another sysctl
under some appropriate namespace, and/or a kernel configuration option.

Yes, having this kind of enforcement by default will break dosemu, but
that's legacy software that hardly anyone still uses (especially now
that we have dosbox and CPUs powerful enough for it).  We even already
have kernel configuration options CONFIG_VM86 and
CONFIG_MODIFY_LDT_SYSCALL.  Maybe it'd make sense to tie the default for
the mmap_min_addr enforcement sysctl to CONFIG_VM86, or would that be
unintuitive?  A topic for LKML.

Alexander
