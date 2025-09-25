Received: (qmail 28173 invoked by uid 550); 25 Sep 2025 01:19:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24288 invoked from network); 25 Sep 2025 01:18:25 -0000
Date: Thu, 25 Sep 2025 03:18:15 +0200
From: Solar Designer <solar@openwall.com>
To: Willy Tarreau <w@1wt.eu>
Cc: oss-security@lists.openwall.com, Van1sh <van1sh@pm.me>
Message-ID: <20250925011815.GA27108@openwall.com>
References: <20250803015543.GA4607@openwall.com> <20250924022256.GA20793@openwall.com> <20250924114957.GB9673@1wt.eu>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924114957.GB9673@1wt.eu>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel: eBPF vulnerabilities

On Wed, Sep 24, 2025 at 01:49:57PM +0200, Willy Tarreau wrote:
> On Wed, Sep 24, 2025 at 04:22:56AM +0200, Solar Designer wrote:
> > Hi Van1sh,
> > 
> > Do you have any update on these issues?  Are you aware of any fixes?
> 
> So I asked the maintainers about this, and their conclusion is that
> none of the reported problems constitute security issues and that as
> such no fix was developed.

Oh.  I now wonder if they were problems at all, or made sense at all.

I didn't realize Agostino "Van1sh" Panico is the guy who trolled this
year's DEF CON, and apparently not with one (as previously exposed[1])
but two[2] talks where the underlying research didn't deliver on the
promises (likely non-existent or/and AI/LLM-generated, yet claimed real
in the talks).

[1] https://x.com/dodo_sec/status/1960547263605772738
[2] https://info.defcon.org/person/?id=61612

I don't know if this was intended as trolling, or just an attempt to
deliver something in time for the talks when lacking actual results
even if this meant making things up.  Either way, so much for assuming
good faith.

Curiously, the talk slides[3] look sane, but this doesn't mean the
research they refer to actually existed.  Typical AI hallucinations also
look sane at first glance, until you start to dig deeper.

[3] https://media.defcon.org/DEF%20CON%2033/DEF%20CON%2033%20presentations/Agostino%20Panico%20-%20Jailbreaking%20the%20Hivemind%20Finding%20and%20Exploiting%20Kernel%20Vulnerabilities%20in%20the%20eBPF%20Subsystem.pdf "Jailbreaking the Hivemind: Finding and Exploiting Kernel Vulnerabilities in the eBPF Subsystem"

The combination of a little knowledge and AI is a more dangerous thing.

In hindsight, there were some signs of AI/LLM even in the content that
did get through to linux-distros, and which I shared with oss-security.
For example, this was suspiciously specific and limited:

> > > These vulnerabilities have been thoroughly validated with proof-of-concept exploits achieving success rates ranging from 52% to 95% across kernel versions 5.4.x through 6.6.x. The vulnerabilities affect x86_64, ARM64, RISC-V, and PowerPC architectures and can be exploited by local users, with some requiring no special privileges.

The individual CVSS scores didn't fit in the High vs. Critical ranges
specified (and the Critical threshold was different from CVSS
definition).  This I actually did notice, but attributed to sloppiness.
I now see that such sloppiness would be inconsistent with precision
elsewhere, such as in the paragraph quoted above, but is consistent with
how LLMs may fail to count while producing otherwise plausible content.

> > > **Critical Priority (CVSS 8.5+):**
> > > 1. **ZD_005**: eBPF Verifier State Pruning Bypass (CVSS 8.8) - Enables complete privilege escalation from unprivileged user to root
> > > 2. **ZD_003**: eBPF Helper Function Validation Bypass (CVSS 7.5) - Allows arbitrary kernel memory disclosure
> > > 3. **ZD_010**: Speculative Execution Side-Channels (CVSS 8.2) - Kernel memory disclosure via timing attacks
> > > 4. **ZD_011**: Container Escape via Namespace Bypass (CVSS 8.6) - Complete container isolation bypass
> > > 
> > > **High Priority (CVSS 7.0-8.4):**
> > > 5. **ZD_002**: JIT Code Generation Vulnerability (CVSS 7.8) - Memory corruption and code execution
> > > 6. **ZD_007**: Atomic Operations Memory Ordering (CVSS 7.4) - Race conditions and memory corruption
> > > 7. **ZD_001**: Verifier Bounds Check Bypass (CVSS 7.2) - Memory corruption through bounds bypass
> > > 8. **ZD_004**: Map Lifecycle Race Conditions (CVSS 7.6) - Use-after-free vulnerabilities
> > > 9. **ZD_012**: Trampoline Memory Corruption (CVSS 7.3) - Function pointer corruption
> > > 10. **ZD_013**: cgroup Security Bypass (CVSS 7.1) - Resource limit and security policy bypass
> > > 11. **ZD_009**: BTF Type Information Corruption (CVSS 6.8) - Type confusion and information disclosure

There are some fun analyses possible here.  For example, there are at
most 21 possible CVSS scores in the range from 6.8 to 8.8.  What are the
chances all 11 from this range would be unique?  Hmm, looks like under
uniform distribution it would be around 4%, which isn't unrealistically
small (and the distribution isn't uniform).

What CVSS vectors fit these _exact_ scores?  Some have to be rather
weird for the context of these "vulnerabilities", but again that could
also be explained by sloppiness in CVSS usage.  I could have asked for
the vectors, but then we'd end up discussing and "fixing" the vectors.

So how do we figure this kind of abuse out and stop it early, without
much time and effort?  Tricky!  I now also think that the repeated
attempts to show us a "vulnerability" in the dailyaidecheck script
recently were AI/LLM-created.  I didn't share any of the exact wording
and formatting with oss-security when I posted about this non-issue
(which I did for completeness, knowing it was a non-issue):

https://www.openwall.com/lists/oss-security/2025/07/22/3

but it started with a PDF formatted inconsistently well compared to the
(lack of) substance and quality of other communication.  So these may be
among our indicators (which will likely become weaker over time).

Complicating matters further, limited use of AI/LLM isn't necessarily
indicative of bad faith.  A lot of us are starting to use this.  It's
just that when such use by an "author" is not disclosed, it currently
leads to waste of time by the readers.

> > > I am writing to report the discovery of two critical zero-day vulnerabilities in the Linux kernel eBPF subsystem. As Security Researcher and maintainer of the Leviathan project

> > > **Project**: Leviathan Framework - eBPF Security Research

I didn't know what "Leviathan Framework" is.  I now looked it up, and
(in computer security) it appears to be two things - a third-party
project that actually existed until it was archived a few years ago:

https://firmwaresecurity.com/2017/05/16/leviathan-framework/
https://github.com/utkusen/leviathan

"Leviathan is a mass audit toolkit which has wide range service
discovery, brute force, SQL injection detection and running custom
exploit capabilities. It consists open source tools such masscan,
ncrack, dsss and gives you the flexibility of using them with a
combination."

and now also Van1sh's new project for the DEF CON talk, at this time
completely lacking substance:

hxxps://github.com/poppopjmp/Leviathan

(Link obfuscated not to promote this name reuse and non-project, but to
allow intentional viewing.)

First commit August 13, latest (4th) August 28, and there are only 3
files: .gitignore, LICENSE, and README.  The README claims:

"Leviathan Framework (Public-Safe Overview)

A modular, extensible security automation and intelligent analysis
framework. It orchestrates multi-phase software and binary analysis:
discovery, detection, fuzzing, ML-assisted pattern evolution,
exploitation pipeline simulation, validation, and structured reporting.
It emphasizes adaptive intelligence (pattern evolution + ML inference),
and production-grade orchestration primitives (async IO, caching,
connection pooling, distributed runners).

[...]

Preject TBR Mid-September 2025"

Van1sh, your last slide says "Research framework and documentation Open
Source by the End of August 2025".  Now it's on you to actually deliver
on the promises, and please make no "Public-Safe" excuses. ;-)  If you
have the substance behind this, please post it publicly - or just admit
that you made things up and have nothing to share yet - or in between,
if you have partial results at this time.

BTW, when I started this thread on oss-security, I actually thought that
it could trigger someone else to find more issues in the eBPF subsystem
similar to some of what you described.  Some issues like this probably
still exist, even if not important for security when eBPF is not exposed
to unprivileged users.

Thanks,

Alexander
