Received: (qmail 28488 invoked by uid 550); 5 Jun 2025 04:17:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27669 invoked from network); 5 Jun 2025 04:16:59 -0000
Date: Thu, 5 Jun 2025 06:16:45 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>,
	Marco Benatto <mbenatto@redhat.com>
Message-ID: <20250605041645.GA27217@openwall.com>
References: <20250529171556.GA9260@localhost.localdomain> <20250603040528.GA12667@openwall.com> <CAOGQQ29wZe_Z8J5go4JZyM=Xc6ku-ton7xc6iqpwYaTUQ=VCmw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOGQQ29wZe_Z8J5go4JZyM=Xc6ku-ton7xc6iqpwYaTUQ=VCmw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Local information disclosure in apport and systemd-coredump

Hi Marco,

On Tue, Jun 03, 2025 at 07:20:25PM -0300, Marco Benatto wrote:
> > Meanwhile, Red Hat confirms RHEL 9 and 10 are affected, and curiously
> > lists not only systemd, but also NetworkManager and rpm-ostree among
> > affected packages - I wonder why?
> 
> This was brought to my attention and I was checking it here. For the
> NetworkManager I could check
> that our manifest caught that because the NetworkManager lists systemd
> as a bundled 'provides'.
> This happens because NetworkManager seems to use parts of
> systemd-network internally, I'll fix the information on
> our page as in fact this flaw *does not* affect NetworkManager at all.
> 
> I'll try to further look into the rpm-ostree case as well.

Thank you very much!

I see https://access.redhat.com/security/cve/CVE-2025-4598 now correctly
states NetworkManager is "Not affected" (could as well omit it?), but
incorrectly states that RHEL9's systemd is also "Not affected" (whereas
I've just confirmed that it is indeed affected).

Also, as it relates to severity scores for this issue, I think your CVSS
vector/score of 4.7 is reasonable - maybe only Attack Complexity should
be reduced to Low, but other than that can't argue with CVSS even if the
numeric score ends up lower than it is for less important issues.
However, I think the threat impact of Moderate should be increased to
Important.  Your current justification is:

> This flaw was rated as having a severity of Moderate due to the
> complexity to exploit this flaw. The attacker needs to setup a way to
> win the race condition and have an unprivileged local account to
> successfully exploit this vulnerability.

However, due to Vegard Nossum's newgrp ns_last_pid trick the race is
quick to win.  Moreover, the below attack on daemons is even easier:

On Thu, May 29, 2025 at 05:17:08PM +0000, Qualys Security Advisory wrote:
> Last-minute update: while working on these vulnerabilities, we
> eventually realized that systemd-coredump does not specify %d (the
> kernel's per-process "dumpable" flag) in /proc/sys/kernel/core_pattern;
> consequently a local attacker can crash (with kill(SIGSEGV) for example)
> root daemons that fork() and setuid() to the attacker's uid, gain read
> access to the resulting core dumps, and therefore to the root daemons'
> memory. For example, we wrote a trivial proof of concept that dumps the
> memory of OpenSSH's sshd-session, systemd's sd-pam, and the cron daemon,
> and obtained secret information such as half of sshd's private ed25519
> host key, password hashes from /etc/shadow, other users' crontabs, ASLR
> addresses, stack canaries. This second attack (against root daemons) is
> powerful, different from the first attack (against SUID programs), and
> can certainly be further improved; and other secrets can certainly be
> obtained from other daemons, but this is left as an exercise for the
> interested reader.

These easier attacks may also be why you'd lower CVSS Attack Complexity.

This issue is something that will in fact be used as a step in local
privilege escalation attacks in the wild, except maybe on systems with
known lower-hanging fruit.

Alexander
