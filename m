Received: (qmail 32326 invoked by uid 550); 6 Oct 2023 17:38:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32167 invoked from network); 6 Oct 2023 17:38:42 -0000
Date: Fri, 6 Oct 2023 19:38:34 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20231006173834.GA11017@openwall.com>
References: <20231001191303.GA8910@openwall.com> <20231005055957.GB12482@1wt.eu>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005055957.GB12482@1wt.eu>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] "Linux Kernel security demistified"

Hi Willy,

On Thu, Oct 05, 2023 at 07:59:57AM +0200, Willy Tarreau wrote:
> On Sun, Oct 01, 2023 at 09:13:03PM +0200, Solar Designer wrote:
> > I wonder whether the kernel documentation could, however, be encouraging
> > rather than discouraging (as it currently is) about issue reporters
> > themselves contacting linux-distros after a fix is ready.  I wonder if a
> > patch like that would be accepted?
> 
> Just as a quick heads up on this, I discussed with Greg there and proposed
> to send a patch proposal to rework that part to take into account your now
> relaxed rules. My goal is to let the reporter decide on their own, and let
> them decide what they want to do after checking the linux-distros rules.

This sounds just right to me.  Thank you!

> There could be a good motivation for some reporters to go there because a
> number of them are first-timers who are seeking a Curriculum Vitae Enhancer
> (CVE) ID that s@k.o doesn't deal with. But I also want to remind (I know I
> may sound like a scratched record) that it's not because some may report
> there that distros will magically be aware of all security issues, given
> that those arriving on s@k.o are really a tiny portion and many more bugs
> are fixed without anyone having a security look on them.

Of course.  What makes these reports special is that the reporters often
intend to make them public as security issues, sometimes have exploits.

> I'm just too short of time for now, having to catch up with what I left
> for the 3 days of KR2023, but it's on my todo list to propose a patch to
> Greg. I'm having reasonable hopes that we can end up with something
> smoother in the near future.

Sounds great.

Please keep me and Vegard Nossum <vegard.nossum@oracle.com> CC'ed on the
patch submission.

Thanks,

Alexander
