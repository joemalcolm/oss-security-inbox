X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3031" "Tuesday" "22" "March" "2016" "23:58:39" "+0300" "Solar Designer" "solar@openwall.com" "<20160322205839.GA30835@openwall.com>" "58" "Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" "^Date:" nil nil "3" "2016032220:58:39" "[oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" (number mark "        solar@openwa Mar 22   58/3031  " thread-indent "\"Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption\"\n") "<20150609112639.GA20540@openwall.com>" ("<20150606113057.GA23470@openwall.com>" "<20150609112639.GA20540@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24549 invoked by uid 550); 22 Mar 2016 20:58:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24531 invoked from network); 22 Mar 2016 20:58:45 -0000
Message-ID: <20160322205839.GA30835@openwall.com>
References: <20150606113057.GA23470@openwall.com> <20150609112639.GA20540@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150609112639.GA20540@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 22 Mar 2016 23:58:39 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption
To: oss-security@lists.openwall.com

On Tue, Jun 09, 2015 at 02:26:39PM +0300, Solar Designer wrote:
> On Sat, Jun 06, 2015 at 02:30:57PM +0300, Solar Designer wrote:
> > The possibility of "struct iovec *iov" going out of range and the
> > subsequent out of bounds metadata accesses feel much more severe than
> > the out of bounds accesses to actual data in the userspace.
> > "iov->iov_base += copy;" and "iov->iov_len -= copy;" might then be
> > corrupting kernel memory.  It feels relatively unimportant what the
> > resulting values of iov_base and iov_len will be for their intended
> > purpose, since we use copy_from_user() / copy_to_user() on them anyway.
> > It feels more important that these "+=" and "-=" operators directly
> > modify individual words in kernel memory, albeit only slightly(?) out of
> > bounds of the original iov array.  So maybe it's this risk that needs
> > to be evaluated further.
> 
> Upon a closer look, it appears that this is in fact the impact Red Hat
> had in mind as well.  I was not reading closely enough.  The "Doc Text"
> field at https://bugzilla.redhat.com/show_bug.cgi?id=1202855 says:
> 
> "It was found that the Linux kernel's implementation of vectored pipe
> read and write functionality did not take into account the I/O vectors
> that were already processed when retrying after a failed atomic access
> operation, potentially resulting in memory corruption due to an I/O
> vector array overrun."
> 
> So we're on the same page regarding "I/O vector array overrun" (rather
> than I/O data overrun) being the security issue here.

Apparently, this vulnerability is being used to root older Android
devices, and as a result it has just been fixed for older Android:

https://source.android.com/security/advisory/2016-03-18.html

"Google has become aware of a rooting application using an unpatched
local elevation of privilege vulnerability in the kernel on some Android
devices (CVE-2015-1805).  For this application to affect a device, the
user must first install it.  We already block installation of rooting
applications that use this vulnerability - both within Google Play and
outside of Google Play - using Verify Apps, and have updated our systems
to detect applications that use this specific vulnerability.

To provide a final layer of defense for this issue, partners were
provided with a patch for this issue on March 16, 2016.  Nexus updates
are being created and will be released within a few days.  Source code
patches for this issue have been released to the Android Open Source
Project (AOSP) repository."

The advisory above includes a bit more information, including links to
AOSP commits, but no information on how the vulnerability is exploited,
nor even the names of the "rooting applications".

I heard of this from a tweet by @DaveManouchehri, asking for "the APK
(or name) of the app that's exploiting CVE-2015-1805" - unfortunately, I
have no answer.

The primary reason I am posting this is so that other distros know the
vulnerability was apparently shown to be exploitable.

Alexander
