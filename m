X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2618" "Thursday" "18" "March" "2021" "10:19:31" "-0700" "Kurt H Maier" "khm@sciops.net" nil "54" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       khm@sciops.n Mar 18   54/2618  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25839 invoked by uid 550); 18 Mar 2021 17:19:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25821 invoked from network); 18 Mar 2021 17:19:44 -0000
Date: Thu, 18 Mar 2021 10:19:31 -0700
From: Kurt H Maier <khm@sciops.net>
To: oss-security@lists.openwall.com
Message-ID: <YFOLo/QrlgIrFotJ@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
 <YFNCtWmsYrtYQeEJ@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YFNCtWmsYrtYQeEJ@kroah.com>
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On Thu, Mar 18, 2021 at 01:08:21PM +0100, Greg KH wrote:
> 
> But none of that takes into account for the backporting of commits into
> the stable tree, you need a different tool for that, which many of us
> have our own.  If you use that you will see that the above commit really
> is in lots of fixed kernel trees:
> 
> $ id_found_in 3d63b7e4ae0dc5e02d28ddd2fa1f945defc68d81
> 3.16.61 3.18.115 4.4.140 4.9.112 4.14.54 4.17.5 4.18

It's not really Red Hat's fault that there are six hundred "stable"
kernel versions, which each change approximately weekly.  It's generally
not worth tracking, and it would not be sane to expect Red Hat to seek 
or announce CVEs for git branches they don't maintain.

> > Since this issue was reported to us,  identified as a security flaw,
> > and was fixed in the upstream, we decided to assign a CVE.
> 
> But then you announce that CVE to the community with no context or
> information which only causes us to have to do lots of extra work.

They should have included the details which they later added, but I
can't even remember the last time Red Hat reported a kernel
vulnerability which contained enough information to satisfy you, so I
wouldn't really blame them if they gave up trying to please you.

> If it's Red Hat's goal to get some people in the Linux kernel community
> mad at them, it's working well.  If it's Red Hat's goal to somehow help
> the community out with this type of announcement, it's not working at
> all.  You failed to site the fix, when it was, who did the fix, who
> found the fix, and where it was actually fixed in, all things that
> people here actually would like to know.

Some people in the Linux kernel community seem to get mad as a hobby,
and measure their success by volume of email sent about it.  Those of
us who administer Red Hat systems generally find the level of detail
sufficient and I for one appreciate Rohit's announcements.  This one
could have been better, I agree.

Since MITRE set about destroying the CVE assignment process, reporting
of CVE assignments has been optional and to be frank we're lucky to get
this much these days.

> So, what really is your goal here?

What's yours?  You don't seem to run RHEL, so why get bent out of shape
if they slip up while reporting a CVE assignment?  I guess more 
accurately, why get bent out of shape *every time* they report a CVE
assignment?  Is it possible for you to just stop, so those of us who
find value in the reports don't have to page through all the complaining
in order to read it?  Or is oss-security just doomed to the "greg is mad
at the email" cycle forever?

khm
