Received: (qmail 18234 invoked by uid 550); 18 Aug 2025 02:28:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16157 invoked from network); 18 Aug 2025 02:27:53 -0000
Date: Mon, 18 Aug 2025 04:27:17 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>,
	Marco Benatto <mbenatto@redhat.com>
Message-ID: <20250818022717.GA25008@openwall.com>
References: <20250529171556.GA9260@localhost.localdomain> <20250603040528.GA12667@openwall.com> <CAOGQQ29wZe_Z8J5go4JZyM=Xc6ku-ton7xc6iqpwYaTUQ=VCmw@mail.gmail.com> <20250605041645.GA27217@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250605041645.GA27217@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Local information disclosure in apport and systemd-coredump

Hi,

There are a couple of recent blog posts on this issue:

Oracle, August 4, 2025:
https://blogs.oracle.com/linux/post/analysis-of-cve-2025-4598

CIQ, August 15, 2025:
https://ciq.com/blog/the-real-danger-of-systemd-coredump-cve-2025-4598/

The Oracle blog post describes the vulnerability and illustrates it with
some diagrams.  The CIQ one (which I wrote) demonstrates the severity
through direct exploitation (two asciinema recordings with explanation).

On Thu, Jun 05, 2025 at 06:16:45AM +0200, Solar Designer wrote:
> I see https://access.redhat.com/security/cve/CVE-2025-4598 now correctly
> states NetworkManager is "Not affected" (could as well omit it?), but
> incorrectly states that RHEL9's systemd is also "Not affected" (whereas
> I've just confirmed that it is indeed affected).

This has since been corrected to say, among other things, that systemd
in RHEL 9 and 10 is "Affected".

> Also, as it relates to severity scores for this issue, I think your CVSS
> vector/score of 4.7 is reasonable - maybe only Attack Complexity should
> be reduced to Low, but other than that can't argue with CVSS even if the
> numeric score ends up lower than it is for less important issues.

Or maybe we can argue with this CVSS vector/score a bit.  Red Hat's is:

CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N/A:N score 4.7

but could it reasonably by up to:

CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:C/C:H/I:N/A:N score 7.1

The changes are:

Access Complexity from High to Low because once the exploit is written
and tuned a bit, it just works reliably and quickly across a wide
variety of systems.  There's nothing complex in running it and getting
password hashes spewed on the terminal within seconds.

Privileges Required from Low to None because ability to run the exploit
locally may be already implied by Access Vector being Local, and no
other privileges are required on a default RHEL 9 install.  However, I
am not sure about this one as it'd also need to be consistent with how
other issues are scored by the same party, and PR:L appears typical.

Scope from Unchanged to Changed because while the vulnerability is in
systemd, its exploitation exposes other programs' data.

What would be correct for Privileges Required and Scope per FIRST?  Any
expert opinions?

Anyway, at CIQ we're now using an internal override of the scoring for
this issue to CVSS 7.1 + Important + exploit available (for EL 9 only).
Just so that it comes up high enough on our priority lists for getting
it fixed in 9.x LTS, etc.  Red Hat may want to do similar if the low
scoring is what prevented proper prioritization of fixing this so far.

> However, I think the threat impact of Moderate should be increased to
> Important.  Your current justification is:
> 
> > This flaw was rated as having a severity of Moderate due to the
> > complexity to exploit this flaw. The attacker needs to setup a way to
> > win the race condition and have an unprivileged local account to
> > successfully exploit this vulnerability.
> 
> However, due to Vegard Nossum's newgrp ns_last_pid trick the race is
> quick to win.  Moreover, the below attack on daemons is even easier:
> 
> On Thu, May 29, 2025 at 05:17:08PM +0000, Qualys Security Advisory wrote:
> > Last-minute update: while working on these vulnerabilities, we
> > eventually realized that systemd-coredump does not specify %d (the
> > kernel's per-process "dumpable" flag) in /proc/sys/kernel/core_pattern;
> > consequently a local attacker can crash (with kill(SIGSEGV) for example)
> > root daemons that fork() and setuid() to the attacker's uid, gain read
> > access to the resulting core dumps, and therefore to the root daemons'
> > memory. For example, we wrote a trivial proof of concept that dumps the
> > memory of OpenSSH's sshd-session, systemd's sd-pam, and the cron daemon,
> > and obtained secret information such as half of sshd's private ed25519
> > host key, password hashes from /etc/shadow, other users' crontabs, ASLR
> > addresses, stack canaries. This second attack (against root daemons) is
> > powerful, different from the first attack (against SUID programs), and
> > can certainly be further improved; and other secrets can certainly be
> > obtained from other daemons, but this is left as an exercise for the
> > interested reader.
> 
> These easier attacks may also be why you'd lower CVSS Attack Complexity.
> 
> This issue is something that will in fact be used as a step in local
> privilege escalation attacks in the wild, except maybe on systems with
> known lower-hanging fruit.

So far I'm aware of interest by pentesters.

Alexander
