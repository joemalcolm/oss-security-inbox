X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2484" "Friday" "20" "January" "2017" "21:39:41" "+1100" "Harshula" "harshula@redhat.com" "<1484908781.11949.37.camel@redhat.com>" "65" "Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" "^Cc:" nil nil "1" "2017012010:39:41" "[oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel" (number mark "        harshula@red Jan 20   65/2484  " thread-indent "\"Re: [oss-security] CVE REQUEST: linux kernel: process with pgid zero able to crash kernel\"\n") "<20170120082635.GB28326@kroah.com>" ("<1484880112.11949.24.camel@redhat.com>" "<20170120082635.GB28326@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26238 invoked by uid 550); 20 Jan 2017 10:45:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23802 invoked from network); 20 Jan 2017 10:39:59 -0000
Message-ID: <1484908781.11949.37.camel@redhat.com>
In-Reply-To: <20170120082635.GB28326@kroah.com>
References: <1484880112.11949.24.camel@redhat.com>
	 <20170120082635.GB28326@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Fri, 20 Jan 2017 10:39:48 +0000 (UTC)
Cc: Jesse Hertz <Jesse.Hertz@nccgroup.trust>,
        Wade Mealing
 <wmealing@redhat.com>
Date: Fri, 20 Jan 2017 21:39:41 +1100
From: Harshula <harshula@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE REQUEST: linux kernel: process with pgid
 zero able to crash kernel
To: oss-security@lists.openwall.com, Greg KH <greg@kroah.com>

Hi Greg,

On Fri, 2017-01-20 at 09:26 +0100, Greg KH wrote:
> On Fri, Jan 20, 2017 at 01:41:52PM +1100, Harshula wrote:
> > Hi Folks,
> > 
> > Red Hat Product Security has been notified of a kernel vulnerability
> > that a local attacker can exploit to crash/panic the kernel and cause a
> > denial of service.
> > 
> > This was reported to Red Hat by Jesse Hertz (CC'd) (reproducer:
> > rt411016):
> > 
> > "A process that is in the same process group as the ``init'' process
> > (group id zero) can crash the Linux 2 kernel with several system calls
> > by passing in a process ID or process group ID of zero. The value zero
> > is a special value that indicates the current process ID or process
> > group. However, in this case it is also the process group ID of the
> > process."
> > 
> > I've been testing whether RHEL is vulnerable and found the following:
> > 
> > * Upstream/mainline is not vulnerable
> 
> Is this true for the mainline kernel tree that RHEL 6 was based on?
> 
> > * RHEL 7 is not vulnerable
> > * RHEL 6 is vulnerable
> > * RHEL 5 is partially vulnerable
> 
> So this is only due to a specific set of patches that were added to RHEL
> 6 and RHEL 5 yet never made it upstream?  I ask as we want to make sure
> some of the older LTS mainline kernels might be affected and it would be
> good to ensure they are not.

Good questions, I had not looked at it from a mainline timeline
perspective.

1) Mainline kernels containing patches [a], [b] and [c] are not
vulnerable.

2) The vulnerability is *NOT* due to non-upstream patches that went
into RHEL 5 and/or 6.

3) I suspect some older LTS mainline kernels that branched off
mainline/upstream at around the same time as RHEL 6 would be
vulnerable. Check if the data structure fields, corresponding to the
initialization changes in patch [a], [b] and [c], are initialized the
same way in the LTS mainline kernels you maintain.

4) For any RHEL 5 vintage LTS mainline kernels, see if task_struct's
thread_group field is not initialised. If so, it is likely partially
vulnerable and could do with a strong dose of patch [c].

Regards,
Harshula

[a] https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/com
mit/?id=f106eee10038c2ee5b6056aaf3f6d5229be6dcdd

[b] https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/com
mit/?id=f20011457f41c11edb5ea5038ad0c8ea9f392023

[c] https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/com
mit/?id=fa2755e20ab0c7215d99c2dc7c262e98a09b01df
