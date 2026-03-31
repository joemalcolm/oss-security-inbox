Received: (qmail 13415 invoked by uid 550); 31 Mar 2026 04:03:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11351 invoked from network); 31 Mar 2026 04:03:29 -0000
Date: Tue, 31 Mar 2026 06:03:17 +0200
From: Solar Designer <solar@openwall.com>
To: Sandipan Roy <saroy@redhat.com>
Cc: oss-security@lists.openwall.com, Paolo Bonzini <pbonzini@redhat.com>,
	denis.pilipchuk@oracle.com, bkov@amazon.com, fgriffo@amazon.com,
	Yogesh Mittal <ymittal@redhat.com>,
	Mauro Matteo Cascella <mcascell@redhat.com>
Message-ID: <20260331040317.GA31713@openwall.com>
References: <CAJ33NAWbTShcWk04-Nu+eeUtkkXOWbXM-nNb64xtwp=gN6dUmA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ33NAWbTShcWk04-Nu+eeUtkkXOWbXM-nNb64xtwp=gN6dUmA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] KVM shadow EPT stale rmap use-after-free

Hi,

On Mon, Mar 30, 2026 at 11:34:02AM +0530, Sandipan Roy wrote:
> Alexander Bulekov(bkov@amazon.com) and Fred Griffoul (fgriffo@amazon.com)
> reported a use-after-free in KVM's shadow paging code.

Thank you all for finding and handling this issue, including bringing it
to oss-security.

Sandipan Roy first brought this to linux-distros on March 10, writing:

On Tue, Mar 10, 2026 at 04:03:41PM +0530, Sandipan Roy wrote:
> The reporters and maintainers have agreed on an embargo until Sunday
> March 29, 2026, 16:00 UTC. The Linux kernel security team did not object
> to extending the embargo period past the documented limit of 14 calendar
> days

to which I replied:

On Thu, Mar 12, 2026 at 06:04:33PM +0100, Solar Designer wrote:
> We have a problem here: we also have a 14 days maximum on linux-distros,
> and no one asked us whether we'd be willing to make an exception.  As
> linux-distros list admin, if asked in advance, I would object to this.
> More precisely, I'd have asked to delay notification to linux-distros
> until no more than 14 days remain until embargo end.
>
> But what's done, is done.

So here I am acknowledging the policy violation and explaining how it
happened and why I let it happen.  With a precise planned public
disclosure date/time only moderately in excess of the usual maximum, and
with many other stakeholders involved, I felt it would be
counter-productive to insist on public disclosure after at most 14 days
per the policy.

Looking at distros list statistics, we previously let the 14 days be
exceeded to a similar extent a year ago, in March 2025.  Here's my
explanation of that previous occasion (also related to Linux kernel):

https://www.openwall.com/lists/oss-security/2025/04/01/6

Here are the statistics (until end of February - I'll add March likely
in mid-April like I usually do):

https://oss-security.openwall.org/wiki/mailing-lists/distros/stats

The maximum we had since mid-2023 when Linux Foundation sponsorship
started is a little over 20 days, so just like we had this time.  This
maximum was reached 3 times in these almost 4 years.  The rest of cases
are at most 15.5 days (on one occasion; the rest are below 15).  Prior
to mid-2023, things were occasionally a lot worse as I wasn't keeping
track of list statistics like I do now.

Alexander
