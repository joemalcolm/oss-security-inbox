X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2157" "Sunday" "2" "February" "2020" "13:22:11" "+0100" "Solar Designer" "solar@openwall.com" "<20200202122211.GA10285@openwall.com>" "45" "Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)" "^Cc:" nil nil "2" "2020020212:22:11" "[oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)" (number mark "        solar@openwa Feb  2   45/2157  " thread-indent "\"Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)\"\n") "<20200128235022.GA30755@openwall.com>" ("<20200128214809.GA27151@openwall.com>" "<20200128235022.GA30755@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24199 invoked by uid 550); 2 Feb 2020 12:22:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24081 invoked from network); 2 Feb 2020 12:22:20 -0000
Message-ID: <20200202122211.GA10285@openwall.com>
References: <20200128214809.GA27151@openwall.com> <20200128235022.GA30755@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200128235022.GA30755@openwall.com>
User-Agent: Mutt/1.4.2.3i
Cc: Al Viro <viro@zeniv.linux.org.uk>,
	Salvatore Mesoraca <s.mesoraca16@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Andrew Morton <akpm@linux-foundation.org>
Date: Sun, 2 Feb 2020 13:22:11 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)
To: oss-security@lists.openwall.com

On Wed, Jan 29, 2020 at 12:50:22AM +0100, Solar Designer wrote:
> On Tue, Jan 28, 2020 at 10:48:10PM +0100, Solar Designer wrote:
> > I intend to request a CVE ID and post it as a follow-up to this thread.
> 
> "Use CVE-2020-8428."
> 
> > Al Viro found and analyzed the security impact of and fixed a bug in
> > Linux 4.19+ where open(2)'s eventual call to may_create_in_sticky() was
> > "done when we already have dropped the reference to dir" and thus with
> > dir (a "struct dentry" pointer) being potentially stale and potentially
> > pointing to reused memory.
> 
> > The bug was introduced with commit 30aba6656f61 and first included in
> > Linux 4.19.  Al fixed it with commit d0cb50185ae9 two days ago, and the
> > fix is already in Linux 5.5 and Greg KH is getting it into stable.

Turns out the fix in d0cb50185ae9 introduced a regression, now found
with syzkaller and fixed:

https://syzkaller.appspot.com/bug?extid=190005201ced78a74ad6
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6404674acd596de41fd3ad5f267b4525494a891a

If I understand correctly (but I'm not confident!), this time it's just
a crash.  I am not going to request another CVE ID because the security
impact is unclear to me (perhaps an Oops with some resources held?)

My sentiment this time:

While embarrassing, it's good to know that this sort of bug (unlike the
previous one) is promptly detected by a fuzzer, and thus has a short
lifetime.  While ideally there would be no bugs in the first place,
realistically I wish more bugs would be discovered and fixed so quickly.

The kernel uses many complicated conventions these days (for performance
reasons), up to the point where it's difficult even for the most active
upstream developers to make bug-free changes and to review proposed
changes.  A lot of context needs to be considered and a lot of potential
pitfalls kept in mind.

Thanks to @grsecurity for at-mentioning me on the tweet pointing to the
above commit.  I was otherwise out of the loop this time.  That's fine,
but since I did bring the previous set of issues in here, I felt I also
needed to post this follow-up.

Alexander
