Received: (qmail 30609 invoked by uid 550); 23 Jul 2024 19:24:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28140 invoked from network); 23 Jul 2024 19:23:23 -0000
Date: Tue, 23 Jul 2024 21:23:10 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240723192310.GA23154@openwall.com>
References: <Zo61nFk8VulWf7_J@michel-fedora-PC198L6J> <Zo7mU_N9joNTZ4gV@itl-email> <Zo759RRNseuva6zO@aeon> <Zo8fJWNFia9y2BS8@michel-fedora-PC198L6J>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zo8fJWNFia9y2BS8@michel-fedora-PC198L6J>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] linux-distros application for CentOS Project's Hyperscale SIG

Hi,

I've finally reviewed the links and re-read the thread.  Looks like
we're OK to proceed with adding CentOS Project's Hyperscale SIG as a
linux-distros member.

Michel, please e-mail me off-list with PGP keys for all of you who need
to be subscribed for Hyperscale.  I also need to know who will be
managing this subscription on your end (informing me of any changes in
who's to stay subscribed).

On Wed, Jul 10, 2024 at 06:54:13PM -0500, Michel Lind wrote:
> All three of us are Fedora developers - but AIUI, we will not and can not use
> membership here to contribute Fedora patches - until the embargo is
> over.
> 
> For Hyperscale itself we plan to use the head start to have local builds
> ready to go, and commit and do a public build as soon as the embargo is
> over; if it needs collaboration we can use private Git repos and E2EE
> private chats to discuss the fix among ourselves.
> 
> This is, to the best of my knowledge, similar to how AlmaLinux handles
> embargoed security issues - the fix is ready to go but is only made
> available once the embargo is lifted.
> 
> Now - wearing our Fedora hats, we certainly would try and help get this
> fixed in Fedora once the embargo is over (as we've done before) - and
> knowing a CVE is going to be made public would certainly help (e.g.
> trying to make sure one of us is around) - but we won't be participating
> in the list wearing our Fedora hat, or discuss embargoed issues with
> people not on the list.

This understanding is correct.  The membership and embargoed info is
only for the specific distro "except with the reporter's explicit
approval".  This exception means that you may occasionally ask whoever
reported the issue to linux-distros for permission to use the
information e.g. also for preparing a fix for Fedora even though you're
subscribed for Hyperscale.  To avoid miscoordination, please keep such
requests also CC'ed to the list.  Uses of this exception have been very
rare so far, and it is expected that you wouldn't use it often, or else
it'd make more sense to discuss the additional distro becoming a member.

> > I am curious what this could mean for Fedora Asahi Remix [0], as the
> > applicants maintain both distros.
> > 
> > Is there interest in the Asahi SIG applying as well?
> > 
> > I heartily endorse the applicants membership request and appreciate
> > their work. Hooray for ARM \o/
> 
> So... if this works for Hyperscale, we could potentially discuss with
> other Fedora developers about having Fedora itself be represented in
> linux-distros. Something to bring up at Flock! There's already some
> discussion of this in the Fedora Security Matrix room w.r.t. last week's
> OpenSSH CVE.

FWIW, Fedora's fix for CVE-2024-6387 was quite timely as-is:

commit dcbca7b947cf82c30d6f477a26efd2f765204fe6
Author:     Gordon Messmer <gordon.messmer@gmail.com>
AuthorDate: Mon Jul 1 20:49:16 2024 -0700
Commit:     Gordon Messmer <gordon.messmer@gmail.com>
CommitDate: Tue Jul 2 00:48:16 2024 -0700

    Patch 9.6p1 for CVE-2024-6387

* Mon Jul 01 2024 Gordon Messmer <gordon.messmer@gmail.com> - 9.6p1-12
- Patch 9.6p1 for CVE-2024-6387

On one hand, this confirms that Fedora cares.  On the other, for an
issue with a trivial patch, I don't know if Fedora could have done much
or anything more to prepare.

OpenSSH 9.8 released on July 1 also fixed "Logic error in ssh(1)
ObscureKeystrokeTiming", which became CVE-2024-39894 by July 3:

https://www.openwall.com/lists/oss-security/2024/07/03/6

Per upstream, this issue affects "9.5 through 9.7 (inclusive)", so I
guess Fedora's package based on 9.6p1 is vulnerable.  There doesn't
appear to be a fix in the package yet.  I see this is being tracked in:

https://bugzilla.redhat.com/show_bug.cgi?id=2295615

which is assigned to Dmitry Belyavskiy, who is also the maintainer of
the OpenSSH package in RHEL and CentOS Stream.  RHEL is not affected and
the issue is low severity, so will probably take a long while to fix in
Fedora via Red Hat.  Maybe something the community could do quicker?
This is not directly related to possible linux-distros membership; this
issue wasn't even on linux-distros.

Alexander
