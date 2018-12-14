X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3038" "Friday" "14" "December" "2018" "16:21:25" "+0100" "Solar Designer" "solar@openwall.com" "<20181214152125.GA25196@openwall.com>" "52" "Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" "^Cc:" nil nil "12" "2018121415:21:25" "[oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" (number mark "        solar@openwa Dec 14   52/3038  " thread-indent "\"Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)\"\n") "<20181214132723.GA27168@grsecurity.net>" ("<CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>" "<20181212142415.GA11037@openwall.com>" "<da9e29c39fae03caa21b6fa915009b4f7f2ec0cf.camel@debian.org>" "<20181214130755.GA24633@openwall.com>" "<20181214132723.GA27168@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7929 invoked by uid 550); 14 Dec 2018 15:22:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7314 invoked from network); 14 Dec 2018 15:21:47 -0000
Message-ID: <20181214152125.GA25196@openwall.com>
References: <CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com> <20181212142415.GA11037@openwall.com> <da9e29c39fae03caa21b6fa915009b4f7f2ec0cf.camel@debian.org> <20181214130755.GA24633@openwall.com> <20181214132723.GA27168@grsecurity.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181214132723.GA27168@grsecurity.net>
User-Agent: Mutt/1.4.2.3i
Cc: Jann Horn <jannh@google.com>
Date: Fri, 14 Dec 2018 16:21:25 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)
To: oss-security@lists.openwall.com

On Fri, Dec 14, 2018 at 08:27:24AM -0500, Brad Spengler wrote:
> I really wish such statistics would stop being cited as evidence of anything,
> since the ingrained bias of CVE allocation (which is generally not done by
> upstream itself, and is instead mostly done by the distros for issues that
> affect their older kernels) inherently changes the range of conclusions that
> can be reached.  These statistics and the "5 year lifetime" of Linux kernel
> bugs are simply myths.  The original "5 year lifetime" analysis was wrong
> from the start and already pointed out back then
> (https://lwn.net/Articles/410674/), but people continue to cite it.
> 
> Garbage in, garbage out -- can we please stop feeding this pseudo-science?

I thought you'd say something like this.  Thanks.  What I did here is
try and show that even using this biased data we see that sufficiently
old kernels aren't affected by most vulnerabilities that are found and
fixed in latest mainline kernels.

As I understand, you think that overall the data is biased towards more
CVEs for old and long-living bugs than for newer and short-living bugs.
Correct?  If so, and if this assumption is in fact correct, then my use
of the biased data is also correct.

But then, I just realized that Kees put the 3 critical issues separately
on that illustration, and we can't tell from it whether or not any of
those would fall in the 67 to 82 time range that I used to focus on most
recently found issues.  Also, I chose the start of this range at 67
specifically based on visible reduction in issues affecting 3.10.  In
practice, if one were to decide on using a certain base kernel version
at a given moment, they wouldn't have the hindsight that we have now.
So my 1/8 figure is probably an underestimate (of what would be inferred
from this biased data in an unbiased manner, ouch), but even with these
corrections it does appear even from this data that older kernels are
affected only by a minority of issues that are assigned CVEs, and need
less frequent security patches.

Are we in agreement on this conclusion?

> On Fri, Dec 14, 2018 at 02:07:55PM +0100, Solar Designer wrote:
> > Slide 5 is in fact more relevant: it's an illustration showing
> > "critical & high CVE lifetimes" against kernel versions.  Per this
> > illustration, we can see that my example of 3.10 (as RHEL7's base
> > kernel) is hit by many low-numbered issues, but is hit by only two in
> > the 67 to 82 range, which is 1/8 or 12.5% of issues found that recently.
> > This is consistent with what I said about it having needed to mature
> > "for a few years and a few hundred revisions" after RHEL7 was first
> > released.  I think it became mature enough just recently.  It didn't
> > feel mature enough to me when I ran Trinity for a few days (with many
> > restarts) on a RHEL7-derived system two years ago.  I hope those crashes
> > have since been rediscovered with superior fuzzers allowing for easy
> > reproduction, and patched.  We've seen major improvement in fuzzing.

Alexander
