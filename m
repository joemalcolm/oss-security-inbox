Received: (qmail 28484 invoked by uid 550); 22 May 2022 19:21:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28401 invoked from network); 22 May 2022 19:21:15 -0000
Date: Sun, 22 May 2022 21:19:52 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20220522191951.GA21330@openwall.com>
References: <20220515162740.GA20526@openwall.com> <YoKiGWAX4E/mbGWB@kroah.com> <1be21670-921c-9f0a-d99c-a9f6fd02b9b2@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1be21670-921c-9f0a-d99c-a9f6fd02b9b2@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

Hi,

Thank you all for the helpful replies in this thread.  Here's my summary
of what was said so far:

As seen from replies by Jason and Greg, I didn't make the distinction
between my suggested options 0 and 2 clear enough.  They were:

> 0. Do nothing specific - let things work or fail on their own.

> 2. Strictly enforce the policy as it is - and be in conflict with Linux
> kernel security team, and handle fewer issues via linux-distros.

Let me clarify.  As I wrote, after the disagreement in February, "the
handling was hectic - indeed, people felt discouraged from enforcing the
policy."  So by option 0 I referred to the loose (non-)enforcement we've
had since February until now, and by option 2 to enforcement at least as
strict as we had before February.

Although I wouldn't necessarily have the list's future decided by a
majority vote, I counted something like 4.5 votes for relaxing the list
policy to accommodate (at least) Linux kernel community's workflow:

Igor Seletskiy
> My vote would be for #1

Anthony Liguori
> make this policy specific to changes under security@vger.kernel.org embargo

Greg KH
> So if you all could just modify the rules to be something like,
> "embargos are not broken when changes are posted in public, or accepted
> into public trees, unless the changes or discussions around them turn
> out to disclose the security related issue."

Dan Carpenter
> What I wish we had is a private way to tell maintainers "You may want to
> pick up a patch."  It has to be private.

Vegard Nossum
> As a distribution, our preference is to see sources/patches and binaries
> released simultaneously by both upstream and distributions. [...]
> 
> However, barring that option, our preference would be to adjust the
> linux-distros list policy as proposed (option 1/Greg KH's proposal).

and 1 vote for preserving the current policy:

Jason A. Donenfeld
> So I think maybe your option (0) makes sense? Enforce the policy, which
> has worked well enough for a long while now.

A few of you also said the linux-distros list is still valuable, and no
one said otherwise.

I think now we need to come up with a specific edit to the policy, and I
think the exception should ideally be limited to Linux kernel issues
currently/recently handled with the kernel's security team involved.
Ideally, we'd also manage to simplify rather than further complicate the
policy - a goal inconsistent with granting only a limited exception?

A number of other related issues were brought up as well, including by
Jason A. Donenfeld, Seth Arnold, Thadeu Lima de Souza Cascardo, and
Vegard Nossum.  From a practical perspective, it looks like Vegard
Nossum and maybe Thadeu Lima de Souza Cascardo intend to propose changes
to the kernel's Documentation/admin-guide/security-bugs.rst:

On Fri, May 20, 2022 at 10:14:07AM +0200, Vegard Nossum wrote:
> I'll respond a bit later with a slightly more detailed option that also
> includes potential modifications to the in-kernel documentation as
> displayed on kernel.org.

Alexander
