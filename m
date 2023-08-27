Received: (qmail 7854 invoked by uid 550); 27 Aug 2023 19:57:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7833 invoked from network); 27 Aug 2023 19:57:21 -0000
Date: Sun, 27 Aug 2023 21:57:07 +0200
From: Willy Tarreau <w@1wt.eu>
To: oss-security@lists.openwall.com
Cc: Vegard Nossum <vegard.nossum@oracle.com>, Jiri Kosina <jkosina@suse.cz>,
        Donald Buczek <buczek@molgen.mpg.de>,
        Greg KH <gregkh@linuxfoundation.org>
Message-ID: <ZOuqk2+3EMBV3pPy@1wt.eu>
References: <20230825222359.GA10424@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230825222359.GA10424@openwall.com>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

Hi Alexander,

On Sat, Aug 26, 2023 at 12:23:59AM +0200, Solar Designer wrote:
> In terms of (linux-)distros list policy, what can we do here?  Accept up
> to 7 days since fix is ready and thus accept arbitrarily long embargoes
> and more likely have issues "requiring" such embargoes brought to the
> list?  BTW, for CPU microarchitectural issues, that would probably need
> to be for the full distros list, not limited to Linux, and from what I
> know disclosure timelines for such issues may be 3 to 12+ months.

Please note that delays are not specific to hardware issues. We've had
to work maybe 3 months with a reporter on a randomness problem that
allowed to some extents to guess TCP ports and sequence numbers, and it
required us to imagine various approaches that shouldn't break TCP, and
iterate with the researchers who studied them, tested them before getting
back to us with "it still isn't sufficient". It was a long and painful
one, nobody remained idle, yet it was really needed to get to the end of
it before publishing anything. Further, the researchers asked us to keep
some details on hold for a while because they were preparing a paper, and
this is also something to keep in mind (some of them depened on this,
though we must not accept that it drags for too long).

As such I think that it's not a good solution to anything to require a
disclosure before a fix is ready. Actually there can be one exception:
when no more progress is being made. I don't think I would personally be
shocked by saying that a discussion that remained inactive for 7 days
leads to publication, it would sufficiently put the pressure on all parties
not to let it cool rot. And difficult issues generally don't stay inactive
for more than a few days.

> As to publishing PoCs/exploits, this is already mitigated by the Linux
> kernel documentation edit making it less likely (but far from
> impossible) that people would send stuff to linux-distros without being
> aware of the policy.  We could further mitigate this issue by allowing
> up to 30 days (but perhaps suggesting at most 7 days?)

I don't think maintaining pressure on the reporter regarding the need
for publishing reproducers is doing any good. It should be up to the
reporter to say "please keep this confidential". We've had many of
these on s@k.o, and it's perfectly understandable. Knowing that they
must be very careful about what they share because it will be published
is a big constraint, whether it's in terms of code quality, authorization
from an employer or customer, code that was blatantly copy-pasted from
another exploit just to help with testing, etc. All of this is useful
for those trying to fix the problem and do not strictly need to be
published, so it's pointless to add pressure on the reporter regarding
this.

Just my two cents,
willy
