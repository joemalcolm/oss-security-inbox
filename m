Received: (qmail 21902 invoked by uid 550); 19 Feb 2026 01:15:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20076 invoked from network); 19 Feb 2026 01:14:49 -0000
Date: Thu, 19 Feb 2026 02:14:38 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Raul Vega <raul.vega.dv@gmail.com>
Message-ID: <20260219011438.GA17271@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] MIT/Heimdal Kerberos credentials cache type FILE risks

Hi,

Raul Vega, CC'ed here, sent the below AI-generated message to
linux-distros on Feb 5, without disclosing the use of AI, yet correctly
set the public disclosure date to "2026-02-18 (14-day embargo per
linux-distros policy)" (or maybe the AI assistant did).  Unfortunately,
there was no further correspondence (in particular, I got no reply to my
reply, also included below), and Raul failed to bring this to
oss-security on time on his own, so I am now doing it for him.  And yes,
I consider this borderline abuse of the list, which is why my tone.

My summary of Raul AI's message is that Kerberos default_ccache_name
FILE is relatively unsafe compared to certain other possible kinds of
credentials cache supported via this setting, especially with respect to
local file inclusion vulnerabilities in other software such as web apps
running under the same user account.  The message suggests to use
KEYRING or KCM instead of FILE.

https://web.mit.edu/kerberos/krb5-1.22/doc/basic/ccache_def.html says
FILE is the default.  So it may be a case of unsafe default.  Can the
default reasonably be changed?  "KCM caches work by contacting a daemon
process", so will require this daemon to be running, and "KEYRING is
Linux-specific, and uses the kernel keyring support".  So maybe Linux
packages can use KEYRING by default?

In Heimdal, this setting is called default_cc_name, apparently with
default_ccache_name added as an alias for MIT compatibility a few years
ago.  I couldn't quickly find what the default for it is.

BTW, if this actually required pre-publication discussion, I'd have
insisted on bringing it from linux-distros to the full distros list,
since Kerberos is not Linux-specific (and predates Linux).

I'd appreciate follow-ups by those familiar with Kerberos (I'm not)
and/or its packaging.

Alexander

On Thu, Feb 05, 2026 at 10:24:03AM +0100, Raul Vega wrote:
> [vs] ADV-2026-005: Kerberos Credential Cache Lifecycle Failure and Bearer Token Theft
> Vulnerability Type: Semantic Design Flaw / Credential Dumping
> 
> Affected Components: MIT/Heimdal Kerberos, Linux Core Dump Handlers, /tmp Defaults
> 
> Researcher: Raul Vega del Valle
> 
> CVSS 3.1 Base: 7.8 (AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H)
> 
> CVSS 3.1 Chain: 10.0 (Critical) (When chained with RCE/LFI)
> 
> Public Disclosure Date: 2026-02-18 (14-day embargo per linux-distros policy)
> 
> Executive Summary: The Semantic Gap
> The core of this vulnerability is a semantic failure in object lifecycle management. While the Kerberos protocol is syntactically secure, current Linux implementations fail to semantically bound the identity token (bearer ticket) to the process lifetime.
> 
> By weaponizing the "Crash and Trash" scenario, an attacker can transform a transient authentication secret into a persistent forensic artifact. This allows an unprivileged local attacker???or a remote attacker via an RCE/LFI chain???to bypass Kerberos protocol guarantees and achieve complete network-wide identity theft.
> 
> Technical Analysis
> 1. File-System Persistence Vector
> Most Linux distributions default to the FILE: ccache type, storing tickets in /tmp/krb5cc_*.
> 
> The Design Flaw: These tickets are bearer tokens. Possession of the file is equivalent to possession of the identity.
> 
> Exploitation: An LFI (Local File Inclusion) vulnerability in a web application can be used to "pull the trash" from /tmp, granting the attacker a valid TGT (Ticket Granting Ticket) with a ~10-hour TTL.
> 
> 2. Memory Lifecycle Failure (Crash and Trash)
> When an application handling Kerberos authentication crashes, the system generates a core dump (if enabled).
> 
> The Semantic Gap: The credential remains in the heap or stack during the crash. Because many distributions do not restrict access to core dumps or leave them in unencrypted storage, these secrets become "trash" that is readily harvestable via standard string extraction.
> 
> Impact: This bridges the gap from a simple application crash (Availability) to a full authentication bypass (Confidentiality/Integrity).
> 
> The Grand Chain: The Case for CVSS 10.0
> While the individual components may be rated "High," the Semantic Addressing of this flaw creates a critical chain:
> 
> Entry (RCE/LFI): Attacker gains limited execution or read access via a library flaw (e.g., Axios SSRF or Undici CRLF).
> 
> Pivot (ADV-2026-005): Attacker provokes a crash or reads /tmp to dump the Kerberos ccache.
> 
> Escalation: The stolen ticket is replayed from the attacker's machine to access internal high-value targets (LDAP, S3 via IMDSv2, etc.).
> 
> Result: Total identity takeover across the infrastructure without triggering traditional "credential theft" alerts.
> 
> Actionable Remediations for Distributions
> Distributions are requested to evaluate the following systemic changes to their default configurations:
> 
> Restrict core_pattern: Ensure core dumps are directed to a secure, root-only directory by default.
> 
> Default to KEYRING:: Shift the default default_ccache_name in /etc/krb5.conf from FILE to KEYRING or KCM (Kerberos Credential Manager) to keep tickets in unswappable, process-bound kernel memory.
> 
> Enforce fs.suid_dumpable: Harden kernel parameters to prevent unprivileged dumping of sensitive processes.
> 
> Researcher: Raul Vega del Valle
> 
> PGP Fingerprint: [Your Fingerprint]

On Fri, Feb 06, 2026 at 10:06:18AM +0100, Solar Designer wrote:
> Hello Raul,
> 
> When you bring this to oss-security, please start by disclosing your use
> of AI to generate your message.  Yes, there's a reason why I am so
> confident, and I find it borderline abuse when you send AI-generated
> messages without such disclosure.  This is not the norm, at least not yet.
> 
> On Thu, Feb 05, 2026 at 10:24:03AM +0100, Raul Vega wrote:
> > Public Disclosure Date: 2026-02-18 (14-day embargo per linux-distros policy)
> 
> This is up to you, but personally and as linux-distros list admin I do
> not see the value in having this information under embargo.  You could
> as well post this to oss-security right away.  Just let us know of your
> decision on this.
> 
> What you describe reads like publicly known behavior of the software in
> question.  The novelty, if any, may be in combining those pieces into an
> attack, yet this sounds like public discussion material to me.
> 
> > Technical Analysis
> > 1. File-System Persistence Vector
> > Most Linux distributions default to the FILE: ccache type, storing tickets in /tmp/krb5cc_*.
> 
> What are the owners and permissions of those files?
> 
> > Exploitation: An LFI (Local File Inclusion) vulnerability in a web application can be used to "pull the trash" from /tmp, granting the attacker a valid TGT (Ticket Granting Ticket) with a ~10-hour TTL.
> 
> Would a web application have permissions to read the /tmp/krb5cc_* files?
> 
> > Because many distributions do not restrict access to core dumps
> 
> Which ones, for example?  And what do you mean by "do not restrict"?
> 
> > Actionable Remediations for Distributions
> > Distributions are requested to evaluate the following systemic changes to their default configurations:
> > 
> > Restrict core_pattern: Ensure core dumps are directed to a secure, root-only directory by default.
> 
> This is typical already.  However, you can commonly access your own
> coredumps.  Same with your own /tmp files.
> 
> So are you talking about potential restrictions within the same user
> account, so that sensitive information processed and available to the
> user previously does not remain available to the user for too long?
> 
> How exactly does fs.suid_dumpable come into play, then?  In other words,
> do your suggested attacks involve processes that are "dumpable" or/and
> those that are not?  Which ones?  Please be very specific.
> 
> I suggest that you clarify the above things in the public revision of
> your advisory.  As it is, it reads like a mix of sensible content with
> everything else an LLM "thought" is relevant, plus the sensationalism.
> 
> Thanks,
> 
> Alexander
