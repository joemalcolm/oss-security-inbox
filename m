X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1445" "Tuesday" "9" "June" "2015" "14:26:39" "+0300" "Solar Designer" "solar@openwall.com" "<20150609112639.GA20540@openwall.com>" "27" "Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" nil nil nil "6" "2015060911:26:39" "[oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" (number mark "        solar@openwa Jun  9   27/1445  " thread-indent "\"Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption\"\n") "<20150606113057.GA23470@openwall.com>" ("<20150606113057.GA23470@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9493 invoked by uid 550); 9 Jun 2015 11:26:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9473 invoked from network); 9 Jun 2015 11:26:48 -0000
Message-ID: <20150609112639.GA20540@openwall.com>
References: <20150606113057.GA23470@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150606113057.GA23470@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 9 Jun 2015 14:26:39 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption
To: oss-security@lists.openwall.com

On Sat, Jun 06, 2015 at 02:30:57PM +0300, Solar Designer wrote:
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

Upon a closer look, it appears that this is in fact the impact Red Hat
had in mind as well.  I was not reading closely enough.  The "Doc Text"
field at https://bugzilla.redhat.com/show_bug.cgi?id=1202855 says:

"It was found that the Linux kernel's implementation of vectored pipe
read and write functionality did not take into account the I/O vectors
that were already processed when retrying after a failed atomic access
operation, potentially resulting in memory corruption due to an I/O
vector array overrun."

So we're on the same page regarding "I/O vector array overrun" (rather
than I/O data overrun) being the security issue here.

Alexander
