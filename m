X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4024" "Tuesday" "30" "May" "2017" "18:50:15" "+0200" "Solar Designer" "solar@openwall.com" "<20170530165015.GA4884@openwall.com>" "87" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Date:" nil nil "5" "2017053016:50:15" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        solar@openwa May 30   87/4024  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28004 invoked by uid 550); 30 May 2017 16:50:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27835 invoked from network); 30 May 2017 16:50:21 -0000
Message-ID: <20170530165015.GA4884@openwall.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com> <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk> <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com> <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com> <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 30 May 2017 18:50:15 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function
To: oss-security@lists.openwall.com

Hi all,

Kurt CC'ed me, implying I should comment.  So I will.

I think Daniel is mostly right about the technical aspects of the issue.
For most setups, it's non-security.

Roee Hay brought the below related issue to the distros list on May 16:

http://www.openwall.com/lists/oss-security/2017/05/23/16

I didn't participate in the discussion about it on distros as others
appeared to be handling it OK'ish (within list policy).  In that
discussion, Jason A. Donenfeld asked about init=/bin/sh, to which Roee
Hay replied:

| Great question! I think your point is perfectly valid, however please note that at least for the late AOSP boot/recovery images, the rootfs has contains a very limited set of binaries (see next). Moreover, a bootloader vuln could theoretically give you partial control only over the kernel cmdline (e.g. 'init=' and such are filtered, but 'lp=' is not).
| 
| Nexus 6:
| shamu:/ # ls -la /sbin
| adbd  healthd  slideshow ueventd  watchdogd
| 
| Nexus 6P:
| angler:/ # ls /sbin
| adbd  healthd  ueventd  watchdogd

This might or might not be a valid point, but I think handling the issue
via the distros list (and thus with an embargo) was wrong.  It would
have been better to have this discussion (if we must) on oss-security
right away, rather than only now when a second related issue is brought
in here later same month.

Going forward, I think I should insist that such mostly non-security and
minor issues be made public right away.  Unfortunately, this will be
spammy to oss-security, like this thread maybe was, but we do have a
policy to bring everything from distros to oss-security eventually
anyway, and I do not want to introduce my own judgement on what's a
security issue vs. not, especially in cases where opinions vary as we've
seen in this thread.

Luckily, the latest issue that started this thread wasn't ever on the
distros list.  That's an improvement.

On Tue, May 30, 2017 at 09:36:22AM -0600, Kurt Seifried wrote:
> Red Hat is only associated with this in so far as I happen to work for Red
> Hat and I typically do the CVE assignments on the distros@ list (where this
> issue was initially reported).

I guess Daniel might be associating the other side's arguments with Red
Hat's because Florian was posting from a redhat.com address.  I have no
idea whether Florian actually spoke on behalf of Red Hat or not, but
either way I think the focus on Red Hat is excessive - e.g., in the
distros list thread on the previous issue, another distro vendor
inquired about the proposed public disclosure date, implying they also
might care.  A better summary would be: understanding & opinions vary.

> > Sorry for thinking that this should be about something more than
> > padding CVs and marketing materials.
> 
> I suggest then you take this up with the original researcher if you're
> worried about people padding their CVs.

I am not happy about judging other people (especially as I could be
wrong) nor moderating the list based on such criteria.  It's irrelevant
what someone's motivation is.(*)  It's relevant whether the messages are
valuable, which I admit is questionable here.  Sometimes things get
way too spammy such as in message wording or count.  In this thread,
we're probably above the message count that this topic is worth.

(*) While motivation is irrelevant to list moderation, it is
nevertheless relevant to processes in this and related communities,
which might affect software security.  It may also be relevant to risks
from individual security issues, such as when some issues are first
sold to a bug bounty program and are only made public when there's
upstream fix.  But I digress.

> This discussion isn't
> productive/helpful and I suggest you take it off list.

To me, it looks like the discussion had already ended, even if without
people getting on the same page, by the time Kurt posted.  I can only
confirm that, yes, we should probably end this thread here unless
someone has something entirely new to add.

Alexander

P.S. What a waste of time.
