X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2960" "Saturday" "6" "June" "2015" "21:32:07" "+0300" "Solar Designer" "solar@openwall.com" "<20150606183207.GA2107@openwall.com>" "51" "Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" nil nil nil "6" "2015060618:32:07" "[oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" (number mark "        solar@openwa Jun  6   51/2960  " thread-indent "\"Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption\"\n") "<20150606113057.GA23470@openwall.com>" ("<20150606113057.GA23470@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18054 invoked by uid 550); 6 Jun 2015 18:32:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18028 invoked from network); 6 Jun 2015 18:32:13 -0000
Message-ID: <20150606183207.GA2107@openwall.com>
References: <20150606113057.GA23470@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150606113057.GA23470@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 6 Jun 2015 21:32:07 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption
To: oss-security@lists.openwall.com

On Sat, Jun 06, 2015 at 02:30:57PM +0300, Solar Designer wrote:
> However, it's trickier than that, since iov traverses over the multiple
> struct iovec's and may eventually be what wasn't actually a struct iovec
> in the caller.  This requires that iov->iov_len become exactly zero at
> least one extra time.  If iov->iov_len becomes zero on
> "iov->iov_len -= copy;" then pipe_iov_copy_to_user() either returns
> success or proceeds to the next iteration of the loop.  In the former
> case, there's no fault at this time.  In the latter case, there might be
> a fault on the next iteration, in which case the caller will retry
> pipe_iov_copy_to_user() with the original iov pointer.  The function
> will then hit an extra !iov->iov_len (that's been zeroed by its previous
> invocation) and perform iov++ an extra time.

Actually, there may be multiple zero iov->iov_len's left by the previous
invocation, as part of its normal processing.  (Moreover, the fix that
went into RHEL5 appears to rely on this.)  So achieving this condition
is not tricky at all.

The trickier part is getting the second invocation to proceed beyond
where the first one failed, perhaps via mapping the page from another
thread to avoid the fault.  And there's no overrun until the second
invocation proceeds beyond that point, because all of the iov->iov_len's
up to that point are zero.  So there doesn't appear to be a way to
trigger any overrun without winning a race first.

> The possibility of "struct iovec *iov" going out of range and the
> subsequent out of bounds metadata accesses feel much more severe than
> the out of bounds accesses to actual data in the userspace.
> "iov->iov_base += copy;" and "iov->iov_len -= copy;" might then be
> corrupting kernel memory.  It feels relatively unimportant what the
> resulting values of iov_base and iov_len will be for their intended
> purpose, since we use copy_from_user() / copy_to_user() on them anyway.
> It feels more important that these "+=" and "-=" operators directly
> modify individual words in kernel memory, albeit only slightly(?) out of
> bounds of the original iov array.  So maybe it's this risk that needs
> to be evaluated further.

"struct iovec iovstack[UIO_FASTIOV];" on the stack of do_readv_writev()
looks like an attractive target.  To attack it, writev() may be invoked
with iovcnt = UIO_FASTIOV (or less, but that's suboptimal), which is 8.

However, whether or not the attack will proceed more than one element
beyond iovstack[] appears to depend on previous content of the stack
beyond that array.  That old stack data needs to be successfully
interpreted as iov_base and iov_len pairs, with copy_from_user() not
failing, for the loop to proceed further.  None of this feels
impossible, and maybe off-by-one is enough to achieve arbitrary code
execution.  These are just some extra hurdles, and at this time it is
not reliably known (to me) to which extent the issue is exploitable.

Alexander
