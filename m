X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["709" "Wednesday" "29" "January" "2020" "00:50:22" "+0100" "Solar Designer" "solar@openwall.com" "<20200128235022.GA30755@openwall.com>" "16" "Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)" "^Cc:" nil nil "1" "2020012823:50:22" "[oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)" (number mark "        solar@openwa Jan 29   16/709   " thread-indent "\"Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)\"\n") "<20200128214809.GA27151@openwall.com>" ("<20200128214809.GA27151@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23859 invoked by uid 550); 28 Jan 2020 23:50:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23752 invoked from network); 28 Jan 2020 23:50:30 -0000
Message-ID: <20200128235022.GA30755@openwall.com>
References: <20200128214809.GA27151@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200128214809.GA27151@openwall.com>
User-Agent: Mutt/1.4.2.3i
Cc: Al Viro <viro@zeniv.linux.org.uk>,
	Salvatore Mesoraca <s.mesoraca16@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 29 Jan 2020 00:50:22 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: user-triggerable read-after-free crash or 1-bit infoleak oracle in open(2)
To: oss-security@lists.openwall.com

On Tue, Jan 28, 2020 at 10:48:10PM +0100, Solar Designer wrote:
> I intend to request a CVE ID and post it as a follow-up to this thread.

"Use CVE-2020-8428."

> Al Viro found and analyzed the security impact of and fixed a bug in
> Linux 4.19+ where open(2)'s eventual call to may_create_in_sticky() was
> "done when we already have dropped the reference to dir" and thus with
> dir (a "struct dentry" pointer) being potentially stale and potentially
> pointing to reused memory.

> The bug was introduced with commit 30aba6656f61 and first included in
> Linux 4.19.  Al fixed it with commit d0cb50185ae9 two days ago, and the
> fix is already in Linux 5.5 and Greg KH is getting it into stable.

Alexander
