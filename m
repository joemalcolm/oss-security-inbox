Received: (qmail 32374 invoked by uid 550); 1 May 2026 03:22:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30163 invoked from network); 1 May 2026 03:21:56 -0000
Date: Fri, 1 May 2026 05:21:46 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: contact@theori.io
Message-ID: <20260501032146.GA31617@openwall.com>
References: <afJorKIje4O6dXbH@netmeister.org> <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan> <2026043026-treat-devotion-23d7@gregkh> <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com> <2026043018-drinkable-flinch-632b@gregkh>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2026043018-drinkable-flinch-632b@gregkh>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation

Hi Greg,

Thank you for commenting on this.

On Thu, Apr 30, 2026 at 06:52:15PM +0200, Greg KH wrote:
> On Thu, Apr 30, 2026 at 03:17:45AM -0400, cyber security wrote:
> > That is very terrifying, is it is 10.0 score?
> 
> There is a score in the CVE entry, does that not show up properly for
> people somehow?

It does.  I guess someone top-posting a one-liner couldn't have bothered
to check before posting or just wanted to share the emotions or provoke
a discussion of CVSS scoring.  Luckily, your reply actually adds value:

> This was one of the few CVE ids that we have provided a score for, why
> people ignored that is confusing.  You should contact your distro if you
> are paying for support to find out why this happened as it should have
> been covered by your support contract.

That's interesting perspective.  I just went to see whether a distro
vendor could reasonably use this as a signal to prioritize this CVE fix.
Here's what I did (after looking with my eyes to see the pattern first):

git clone https://git.kernel.org/pub/scm/linux/security/vulns.git
cd vulns
git log | grep -B3 'Add CVSS' | grep -c 'Apr 25 .* 2026'

This says 168.  That's how many CVEs your team (this time, Sasha Levin)
kindly scored on Saturday, April 25.  So ~4 days prior to this one CVE
making the news, ~2 days of which were the weekend.  This CVE got a CVSS
score of 7.8.  The rest of the 168 got scores from 7.1 to 9.8.  By the
score alone, this one really does not stand out.  To me, this is usual
noise, with little signal in there.

Now, your team's message may be: distros can't possibly fix all kernel
CVEs, not even those you provide high CVSS scores for, and especially
not quickly enough, other than by staying with mainline or upstream
stable/longterm kernels.  Is this your actual and only message - not
that distros should have magically seen the needle in the haystack?

The scoring reasoning for this CVE does not hint at its severity and the
threat being imminent.  It's as obscure as most of the rest of 168 are
(which for most of them is probably a result of actually not having
exploitability and impact analysis).

I understand not wanting to draw attention to a CVE that wasn't fully
disclosed by the researchers yet, but you can't simultaneously say that
_this_ was the heads-up to distros - it wasn't.

Please don't get me wrong, I appreciate the extra effort your team is
taking to process some kernel bugs as CVEs and even to score them.  I
understand that with so many, quality can't be perfect.

It's just that instead of drowning in the CVE/CVSS noise, we need a
high-quality signal for CVEs that matter the most.  Things that would
certainly have been CVEs even prior to Linux CNA setup.  They may not
score the highest per CVSS, but in many cases - like in this one - your
team has the knowledge that an issue is to become high-profile, so a
timely direct heads-up to linux-distros would be appreciated.  Where by
"timely" I mean, say, a week (and never more than 14 days) before
planned full public disclosure.  We don't normally like to sit on
semi-embargoed issues with public fixes, but we did introduce an
exception for "Linux kernel issues concurrently or very recently handled
by the Linux kernel security team" specifically to accommodate the way
your team works.

How does this sound to you?

Of course, I recognize that in this case the decision not to notify
Linux distros is partially with the researchers.  While the current
instructions from both the kernel and linux-distros do make this
somewhat discouraging and difficult for researchers (which is really
unfortunate), the possibility is there.  For linux-distros, we have:
"For Linux kernel issues, you must notify the kernel security team
first, wait for the fix, and only then notify linux-distros or
oss-security (depending on whether the information is still private or
already public, as well as on issue severity)."  In this case, _some_
information was still private even when the fix was public, and severity
could have justified special handling.

Related to the above, I recall this recent experience and statement by
Qualys (in context of another Linux kernel issue):

https://www.openwall.com/lists/oss-security/2026/03/12/6

Specifically, this paragraph they wrote:

> Although contacting the linux-distros list has been clearly beneficial
> (they have thoroughly reviewed and tested the patches, and were able to
> prepare their kernel updates beforehand), we have reached the conclusion
> that it has become increasingly difficult to coordinate the disclosure
> of kernel vulnerabilities with both groups (the Linux kernel security
> team and the linux-distros list), because they have very different
> policies. From now on, we will coordinate the disclosure of kernel
> vulnerabilities with the Linux kernel security team only. We also
> apologize in advance for this.

With the researchers at Qualys feeling that way, I can't really blame
other researchers for essentially doing the same as Qualys say they're
going to start doing.

While not blaming, I do feel there can still be cases where a carefully
timed notification to linux-distros would work well.

Thanks,

Alexander

Oh, and here's the vulns repo CVSS score commit for this CVE:

commit cb9d133eed6ab823b8fdefdc10600189aa69a107
Author: Sasha Levin <sashal@kernel.org>
Date:   Sat Apr 25 07:35:42 2026 -0400

    CVE-2026-31431: Add CVSS 3.1 score (7.8 HIGH)
    
    CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
    
    AV:L -The vulnerable algif_aead path is reached through local
        AF_ALG socket syscalls: socket, bind, setsockopt, accept, sendmsg,
        and recvmsg. It is not directly reachable from remote network
        packets.
    AC:L -A local attacker can construct the AF_ALG AEAD request,
        choose buffer layout, AAD/tag lengths, and invoke recvmsg directly.
        Any race or SGL layout condition is attacker-controlled from the
        same process.
    PR:L -Creating and using AF_ALG AEAD sockets requires only an
        unprivileged local user on systems with CRYPTO_USER_API_AEAD
        enabled. The traced socket, bind, setsockopt, accept, sendmsg, and
        recvmsg paths do not require CAP_SYS_ADMIN or other real root
        privileges.
    UI:N -No victim interaction is needed once the attacker has local
        code execution. The attacker can open and drive the AF_ALG socket
        entirely through syscalls.
    S:U -The issue remains within the kernel/user crypto API security
        authority and does not cross a VM, IOMMU, or separate sandbox
        boundary. This is a standard local kernel attack surface.
    C:H -The removed in-place AEAD design used user-writable RX
        scatterlists as crypto source data and chained TX tag pages,
        creating a plausible decryption/authentication bypass for data
        protected by secret AEAD keys. Under the required uncertainty rule,
        this is scored as high confidentiality impact.
    I:H -The bug undermines AEAD authenticity by allowing source data
        used by the crypto operation to diverge from the data originally
        submitted and authenticated. This can allow forged or corrupted
        plaintext/ciphertext results, so integrity impact is high.
    A:H -The vulnerable path builds complex chained scatterlists from
        attacker-controlled local buffers and related AF_ALG fixes show
        these paths can lead to scatterwalk NULL dereferences and kernel
        panics. A local attacker can repeatedly trigger the operation, so
        availability impact is high.
    
    Signed-off-by: Sasha Levin <sashal@kernel.org>
