X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3001" "Sunday" "2" "February" "2020" "15:10:30" "+0000" "Al Viro" "viro@zeniv.linux.org.uk" "<20200202151030.GO23230@ZenIV.linux.org.uk>" "55" "Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)" "^Cc:" nil nil "2" "2020020215:10:30" "[oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)" (number mark "        viro@zeniv.l Feb  2   55/3001  " thread-indent "\"Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)\"\n") "<20200202122211.GA10285@openwall.com>" ("<20200128214809.GA27151@openwall.com>" "<20200128235022.GA30755@openwall.com>" "<20200202122211.GA10285@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5290 invoked by uid 550); 2 Feb 2020 20:30:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20172 invoked from network); 2 Feb 2020 15:10:42 -0000
Message-ID: <20200202151030.GO23230@ZenIV.linux.org.uk>
References: <20200128214809.GA27151@openwall.com>
 <20200128235022.GA30755@openwall.com>
 <20200202122211.GA10285@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200202122211.GA10285@openwall.com>
Cc: oss-security@lists.openwall.com,
	Salvatore Mesoraca <s.mesoraca16@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Andrew Morton <akpm@linux-foundation.org>
Date: Sun, 2 Feb 2020 15:10:30 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
Reply-To: oss-security@lists.openwall.com
Sender: Al Viro <viro@ftp.linux.org.uk>
Subject: Re: [oss-security] Linux kernel: user-triggerable read-after-free
 crash or 1-bit infoleak oracle in open(2)
To: Solar Designer <solar@openwall.com>

On Sun, Feb 02, 2020 at 01:22:11PM +0100, Solar Designer wrote:

> If I understand correctly (but I'm not confident!), this time it's just
> a crash.  I am not going to request another CVE ID because the security
> impact is unclear to me (perhaps an Oops with some resources held?)

Well, it won't be dereferencing anything freed - if we are in RCU mode,
we have observed (with sufficient barriers) an earlier value of ->d_inode
of the same dentry after rcu_read_lock(), and freeing of inodes that
ever had been anyone's ->d_inode is guaranteed to be RCU-delayed.  So
we can see NULL there, but any non-NULL will be a yet-to-be-freed
struct inode.

IOW, we can hit NULL pointer derefs there (with small offsets) and the
values we try to fetch are not pointers themselves.  We can't hit
iomem or anything of that sort; if the attacker has managed to mmap
something at virtual address 0, they can get garbage into dir_uid and
dir_mode, but that'll only get may_create_in_sticky() produce a wrong
value and since they'd been able to rmdir the parent, they controlled
what may_create_in_sticky() would've produced anyway.

As for the resources held...  Not in open(2) case (we are not holding
any locks at that point); some driver calling filp_open() with some
locks held is theoretically possible, but I doubt that it's a viable
attack.  And if attacker can play silly buggers with e.g. directory
a driver loads firmware from, we have a much worse problem.  Triggering
that in coredump... not sure; you'll probably get some stuck threads,
can't tell for certain how much would be possible to get pinned down
that way.

> The kernel uses many complicated conventions these days (for performance
> reasons), up to the point where it's difficult even for the most active
> upstream developers to make bug-free changes and to review proposed
> changes.  A lot of context needs to be considered and a lot of potential
> pitfalls kept in mind.

do_last()/lookup_open()/atomic_open() is the single worst place in fs/namei.c
in terms of complexity, and one of the worst places anywhere in VFS.  It
needs to be cleaned up; FWIW, the tentative cleanups I have in the local
tree (hadn't published that branch yet) get it somewhat saner.  Incidentally,
do_last() in there did get those fetches right.  Not a deliberate fix -
it's just that 'dir' got buried in open_last_lookups(), so there was no
temptation to try and use that pathway to the fields we want to read.

Still not the final variant - I want to take may_open()/vfs_open()/ima_file_check()
out of scope of mnt_want_write()/mnt_drop_write() pair, provided that I can
prove correctness of such massage; got sidetracked by other stuff last
few days...
 
> Thanks to @grsecurity for at-mentioning me on the tweet pointing to the
> above commit.  I was otherwise out of the loop this time.  That's fine,
> but since I did bring the previous set of issues in here, I felt I also
> needed to post this follow-up.

My apologies; should've Cc'd you on that one.
