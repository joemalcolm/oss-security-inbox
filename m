Received: (qmail 1877 invoked by uid 550); 6 Jun 2025 01:49:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26482 invoked from network); 6 Jun 2025 01:49:32 -0000
Date: Fri, 6 Jun 2025 03:49:14 +0200
From: Solar Designer <solar@openwall.com>
To: Vegard Nossum <vegard.nossum@oracle.com>
Cc: oss-security@lists.openwall.com,
	Qualys Security Advisory <qsa@qualys.com>
Message-ID: <20250606014914.GA423@openwall.com>
References: <20250529171556.GA9260@localhost.localdomain> <20250603040528.GA12667@openwall.com> <8d61536b-717a-444a-9649-fe6898b04e8e@oracle.com> <20250605033141.GA26733@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250605033141.GA26733@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Local information disclosure in apport and systemd-coredump

On Thu, Jun 05, 2025 at 05:31:41AM +0200, Solar Designer wrote:
> On Tue, Jun 03, 2025 at 10:16:52AM +0200, Vegard Nossum wrote:
> > newgrp: fix potential string injection
> > 
> > Since newgrp is setuid-root, any write() system calls it does in order
> > to print error messages will be done as the root user.
> > 
> > Unprivileged users can get newgrp to print essentially arbitrary strings
> > to any open file in this way by passing those strings as argv[0] when
> > calling execve(). For example:
> > 
> >     $ setpid() { (exec -a $1$'\n:' newgrp '' 
> > 2>/proc/sys/kernel/ns_last_pid & wait) >/dev/null; }
> >     $ setpid 31000
> >     $ readlink /proc/self
> >     31001

> This general issue in the Linux kernel is indeed not new:
> 
> https://www.openwall.com/lists/oss-security/2012/02/08/2
> https://www.openwall.com/lists/kernel-hardening/2012/02/10/1
> 
> As I recall, grsecurity's fix already available by the time was to have
> globally unique exec_id's and compare against those before allowing
> procfs file access.

> As described by Jason A. Donenfeld and Djalal Harouni back then, this
> flavor of confused deputy attacks is even more usable for reading the
> target SUID/SGID/setcap process info, such as for ASLR bypass, which
> doesn't require unusual permissions on the corresponding special files.
> Has this aspect been addressed in upstream Linux at all?  I'm sorry I
> haven't been following this since 2012.

I tried to refresh my memory on this and found that Djalal Harouni
attempted to upstream this sort of fix in March 2012:

https://www.openwall.com/lists/kernel-hardening/2012/03/10/

and got some feedback/criticism from Linus Torvalds and a few others in
the next couple of days.  Then the thread proceeds into another related
topic ("CLONE_PARENT shouldn't allow to set ->exit_signal" by Oleg
Nesterov, which I see actually got in, and "Potentially this change
allows to kill self_exec_id/parent_exec_id", which are an earlier
mechanism of non-unique IDs originating from my -ow patches) and ends on
March 18.  So nothing further happened, it seems?

Alexander
