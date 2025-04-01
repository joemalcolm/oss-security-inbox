Received: (qmail 26613 invoked by uid 550); 1 Apr 2025 18:19:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21602 invoked from network); 1 Apr 2025 18:18:37 -0000
Date: Tue, 1 Apr 2025 20:18:22 +0200
From: Solar Designer <solar@openwall.com>
To: Arthur Mongodin <amongodin@randorisec.fr>
Cc: oss-security@lists.openwall.com, hanguelkov@randorisec.fr,
	Davy Douhine <davy@randorisec.fr>,
	Matthieu Baerts <matttbe@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Message-ID: <20250401181822.GA25047@openwall.com>
References: <01a8e1bc-fc43-410b-90e2-41645b2e9f67@randorisec.fr>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01a8e1bc-fc43-410b-90e2-41645b2e9f67@randorisec.fr>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel: CVE-2024-57882 fix did not prevent data stream corruption in the MPTCP protocol

Hi,

Thank you Arthur for posting this.

I need to clarify a few things for the oss-security community.  First on
the disclosure process, then on the actual MPTCP subsystem issues,
including security aspects (two past CVEs and room for hardening).

I asked Arthur to post this to oss-security despite of the extra bug
having no known security impact because Arthur had mistakenly brought
this to linux-distros and we have a policy to bring all issues from
(linux-)distros to oss-security.

I consider this use of (linux-)distros a mistake for two reasons:

1. (linux-)distros is only for _embargoed_ _security_ issues.  It is
wrong to use it for a non-security issue, nor to have an embargo on a
non-security issue.

2. Our current "List policy and instructions for reporters" ask that
"For Linux kernel issues, you must notify the kernel security team
first, wait for the fix, and only then notify linux-distros or
oss-security (depending on whether the information is still private or
already public, as well as on issue severity)."  However, in this case
linux-distros and s@k.o were CC'ed at once, which is also something the
kernel's current Documentation/process/security-bugs.rst asks not to do.

I point this out for further occasions, not to complain.

Another difficulty with disclosure of this issue was that linux-distros'
14 days turned out not to be enough for the fix to not only be ready,
reviewed, and in mainline (which luckily happened in time), but for it
to also reach stable.  Yet we were asked to wait until it's in stable.

Arthur was temporarily unavailable to clarify security relevance or lack
thereof, so we assumed this could have been a security issue and we
didn't want another conflict with the kernel security team.  So I
reluctantly made an exception from linux-distros' 14 days maximum.  It's
the first time we exceeded 14 days by more than a fraction of a day
since September 2023.  I apologize for letting this happen.

On Tue, Apr 01, 2025 at 03:55:41PM +0200, Arthur Mongodin wrote:
> During previous research performed on the Linux kernel, we found a 
> vulnerability in the MPTCP subsystem which could lead to a privilege 
> escalation.
> This vulnerability has been fixed and CVE-2024-57882 has been assigned 
> to it.

In the linux-distros notification, Arthur also mentioned that they
managed to exploit CVE-2024-57882 "for a privilege escalation
that targets Fedora Workstation 39.  This exploit may works on all
distributions that allow unprivileged user namespaces and that is not
compiled with CONFIG_INIT_ON_{ALLOC,FREE}_DEFAULT_ON enabled."

So distros that have not yet patched CVE-2024-57882 may want to hurry up
to patch it now.  It's this older fix commit:

> The analyze of the patch 
> (https://web.git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=cbb26f7d8451fe56ccac802c6db48d16240feebd) 
> reveals that the root cause of the bug has been partially fixed.

and now it should be augmented with the new believed-non-security fix:

A reason CVE-2024-57882 may have stayed unpatched in a distro is it
could have been wrongly believed to be a NULL pointer dereference only
due to a specific crash reported by Syzbot.  In particular, Red Hat's
https://access.redhat.com/security/cve/CVE-2024-57882 currently shows
this crash, classifies the bug as "CWE-476: NULL Pointer Dereference",
and states "Will not fix" for RHEL9.  They'll need to reconsider.

> We submitted a fix that introduces an intermediate variable which has 
> been merged into the stable tree: 
> https://web.git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=2c1f97a52cb827a5f2768e67a9dddffae1ed47ab.

> Altough this is a corruption bug, we did not see any security impact 
> from this bug.

Another recent issue in MPTCP is CVE-2024-53122 divide-by-zero fixed by:

https://web.git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=ce7356ae35943cc6494cc692e62d51a734062b7d

(I use URLs consistent with what Arthur posted, but actually these are
mainline and not stable commits.  There are different commit hashes for
the various stable branch commits corresponding to these same fixes.)

While looking into these issues during the "embargo" for possible
patching by CIQ's kernel team for the Rocky Linux LTS kernels, I learned
a couple of things about exposure of the MPTCP subsystem:

1. There's the net.mptcp.enabled sysctl.  It is usually enabled by
default (e.g. on Fedora and Ubuntu, at least on older versions I've
checked), but is disabled by default on RHEL (and its downstreams).
This may have led Red Hat to believe that MPTCP is not exposed on RHEL
by default.  Their https://access.redhat.com/security/cve/CVE-2024-53122
states "By default, the MPTCP support is disabled in RHEL. This bug is
only applicable if enabled."

2. However, net.mptcp.enabled can be set from inside an unprivileged
net namespace, including by an exploit having just created such
namespace, regardless of its value on host in init or parent namespace.
So MPTCP _is_ exposed to local attacks even on RHEL by default, and Red
Hat may want to reconsider the statement above.

There's also room for hardening here.  Maybe net.mptcp.enabled shouldn't
be allowed to be set or shouldn't take effect in a namespace if it's not
enabled in the parent namespace?  Maybe it should become tri-state to
introduce a mode disabling it not only for the current, but also for
child namespaces?

Alexander
