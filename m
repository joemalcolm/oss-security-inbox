Received: (qmail 7424 invoked by uid 550); 6 Jun 2025 02:25:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3333 invoked from network); 6 Jun 2025 02:24:52 -0000
Date: Fri, 6 Jun 2025 04:24:48 +0200
From: Solar Designer <solar@openwall.com>
To: Attila Szasz <szasza.contact@gmail.com>
Cc: oss-security@lists.openwall.com,
	Muhammed =?utf-8?B?SMO8c2Ft?= Alzeyyat <hussamalzeyyat@gmail.com>
Message-ID: <20250606022448.GA718@openwall.com>
References: <20250603025919.GA11183@openwall.com> <705c9747-27f1-4988-98bb-568db4e7cd74@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <705c9747-27f1-4988-98bb-568db4e7cd74@gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Re: Linux kernel: HFS+ filesystem implementation issues, exposure in distros

On Tue, Jun 03, 2025 at 12:38:11PM +0200, Attila Szasz wrote:
> I believe I’ve already shared my main thoughts on this topic on LKML. The
> discussion between Vyukov and Ts’o is particularly insightful. As I
> mentioned earlier, it's worth remembering that unprivileged mounting via
> user namespaces was seriously considered for even block filesystems before,
> but it was ultimately deemed too difficult—largely due to economic
> constraints rather than purely technical ones.
> 
> That said, there are four points I still feel are worth adding:
> 
> 1) Maintainers may have missed this, but regardless of the rejected CVE,
> their CVE automation tooling seems to have picked up the fix as a regular
> patch. It included an ASAN report with the "out-of-bounds" keyword, so
> there is now (again) a CVE for my finding:
> 
> https://lore.kernel.org/linux-cve-announce/2025050117-CVE-2025-37782-7cc2@gregkh/
> 
> NVD may not yet realize it, but CVE-2025-37782 and CVE-2025-0927 refer
> to the same bug.

Thank you, and I'm sorry my bringing you into this thread resulted in
the new CVE for the bug you found getting rejected.

> 2) I haven’t looked into the new report in detail, but I can easily 
> imagine
> that there are still issues—e.g., bad reads—even without touching
> extended attributes, just by interacting with the other B-trees. Since
> the filesystem is no longer orphaned, the new maintainers should be able
> to assess the report's validity and its actual impact. It probably has
> less severity, but that remains to be seen.

Muhammed, whether a vulnerability or not, what you found is a robustness
issue, so should probably be reported to the appropriate public mailing
lists for the Linux kernel and the filesystem.  Did you report it that
way in the end?  Can you share a link to that/those posting(s), please?
Thank you!

> 3) The mismatch in CVE criteria between upstream and downstream distros is
> a real issue. During the handling of my case, a certain CNA rule was
> repeatedly cited—without being specified—which led to CVE-2025-0927,
> initially allocated for Canonical Ubuntu Linux, being reassigned under
> kernel.org’s CNA. I understand that MITRE's rules around CNA territories 
> and
> ownership were originally designed to distribute workload and filter out
> noise, but they should be revisited as they can be ambiguous and 
> misinterpreted.
> Especially in cases where one CNA’s product embeds another’s. According 
> to my
> experience, this creates more confusion than clarity.

Yes, this appears problematic.  I think a distro got to be able to
assign a CVE against their whole product or a component they have
without this implying upstream is also affected or agrees the issue is a
vulnerability, as long as they make it very clear that the CVE is for
their specific usage of the component.  As you wrote in:

https://lore.kernel.org/lkml/6191c255-84cc-4721-91d1-1884472989f7@gmail.com/

> The CVE was originally filed for Ubuntu Linux ;)
> Namely, cpe:2.3:o:canonical:ubuntu_linux.
> 
> It was moved to kernel.org CNA territory due to some politics,
> then it was rejected on the same day the bug was fixed upstream.
> 
> Since then, I saw Canonical folks mention that they wanted to
> allocate a new one but needed to obfuscate the description so it no
> longer sounds like a kernel bug.
> 
> Which, incidentally, is not quite true either, it *is* a kernel bug.
> 
> Since then I checked, and 5.4 LTS (any<=5.6) had been vulnerable without
> the need to ever mount an untrusted/malformed FS just by systematically
> corrupting a vanilla fs's B-trees with normal operations.

Wow.

To be fair, a kernel bug does not imply a kernel vulnerability, which I
assume is the point the kernel CNA is making by rejecting the CVE.

But them precluding Ubuntu from acknowledging their distro vulnerability
by having a CVE against Ubuntu feels inappropriate anyhow.

Where you write "obfuscate", I wrote "make it very clear that the CVE is
for their specific usage of the component".  Maybe that's the way to go.

> 4) I think the whole product vs component thing is part of the Cyber
> Resilience Act anyway, and embedded product manufacturers and entities
> maintaining distros will likely have to comply with at least the class I
> requirements, so it probably makes sense to work towards some alignment
> regarding process until the deadline actually kicks in. Just an idea.

I'm not familiar with the CRA, so cannot comment on this point for real,
but it sounds about right.

Alexander
