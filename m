Received: (qmail 15761 invoked by uid 550); 23 Sep 2025 03:21:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15456 invoked from network); 23 Sep 2025 03:21:20 -0000
Date: Tue, 23 Sep 2025 05:21:13 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: openssh@openssh.com, "Tol, Caner" <mtol@wpi.edu>,
	"Adiletta, Andrew" <ajadiletta@wpi.edu>,
	"Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>,
	"Todd C. Miller" <Todd.Miller@courtesan.com>
Message-ID: <20250923032113.GA14348@openwall.com>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

Hi Damien and the OpenSSH team,

Thank you for bringing this up, and sharing your stance on this issue so
clearly and comprehensively.

Below are some extra thoughts and questions.  I am not arguing with your
judgment here; I actually agree with you.

On Mon, Sep 22, 2025 at 02:35:08PM +1000, Damien Miller wrote:
> A few people have asked about CVE-2023-51767, which proportedly is an
> "authentication bypass via row hammer attack" in OpenSSH sshd. This
> CVE is bogus.
> 
> It is based on this paper "Mayhem: Targeted Corruption of Register and
> Stack Variables" by Adiletta, et al.
> https://arxiv.org/pdf/2309.02545

FWIW, this paper was brought to oss-security back then, and I've added
CC's to this reply based on that message:

https://www.openwall.com/lists/oss-security/2023/12/21/9

The only CVE I see in the paper itself is CVE-2023-42465 for sudo, which
upstream (and some distros) fixed.  Was it perhaps more serious for sudo
(actually exposed in real-world setups)?  Also CC'ing Todd for sudo.

> Firstly, we do not consider it to be the application's responsibility
> to defend against platform achitectural weaknesses. We're happy
> to adopt platform measures (e.g. toolchain defences) where it is
> possible to do so, but fundamentally it is the platform's job to
> provide a coherent execution environment. If we collectively start to
> blame applications for platform failures, then there would be little
> end to the redundant defensive checks applications would need to
> implement.

Perhaps the way is to assign one CVE per platform weakness, which
applications may then refer to as providing hardening against.  In this
case, Mayhem could get one CVE.

We similarly have shared CVEs for some protocol issues, e.g. many
projects are happily referring to one shared CVE for the HTTP/2
"MadeYouReset" DoS attack:

https://www.openwall.com/lists/oss-security/2025/08/16/1

Some others got their own CVEs for their instances of the problem, but
they didn't have to.

> On this attack specifically, the paper claims "We demonstrate the
> power of the findings by applying the techniques to bypass SUDO
> and SSH authentication", but they appear to have achieved this in
> only highly contrived and unrealistic circumstances where they have
> either modified the software under test or run the attack with root
> privileges to dramatically simplify the attack.
> 
> Per section 6.1 - "we used signals to make sure the programs were
> synchronised". However, it is not possible to signal a privileged
> process without the attacker already holding privilege on the
> target system. An attack that requires root privileges to attack a
> root-privileged process isn't a demonstration of a vulnerability.
> 
> It appears the researchers need this additional synchronisation
> to both grow the window in which the variable was available for
> attack and to arrange the physical memory layout to be in a known
> and attackable configuration (section 4.1). This too is unrealistic
> in the context of sshd, where each connection is handled by a
> separately-executed sshd process, with a completely unique address
> space. Again, fine control over the address space of the sshd process
> (such as that suggested by section 4.1) can only be exerted with
> preexisting privilege by the attacker.

This sounds convincing.

> This attack is not feasible under conditions remotely approximating
> the real world. It certainly doesn't warrant a CVSS score of 7.0 and
> in my opinion no CVE should have been issued at all for it.

CVSS base score is generally a poor indicator of overall severity of a
vulnerability as it mostly considers attack vector and risk impact, but
not risk probability.

> We communicated our concern that the researchers were overstating
> their findings when we were informed of this work, but this feedback
> was not reflected in the final paper or in the subsequent CVE.
> 
> Unfortunately, at no stage of the CVE issuance process was OpenSSH
> contacted about this advisory either. This seems pretty suboptimal as
> a process.
> 
> Posting this for the record and in the hope that someone will help
> get the CVE disputed.

Red Hat CNA offered help with this further in the thread, so I hope it
will be taken care of.

CVEs and process aside, I do find the Mayhem research exciting, even if
not applicable in the real world in this specific instance.

I also worry about risk of software bugs that a simple 0/1 flag may be
more susceptible to than e.g. magic values would be.  Maybe we can
identify a reasonable level of defensive programming without going for
slippery slope ("little end to the redundant defensive checks", as you
correctly write) and without slapping CVEs on applications.

I am especially concerned about process exit codes used to decide on
granting or denying access.  This is why we use 32-bit magic values in
pam_tcb communication with its helper program tcb_chkpwd (since 2002 if
not earlier).  I am concerned that upstream Linux-PAM pam_unix
communication with its unix_chkpwd relies on the exit code alone.  Not
so much because it may be an attractive target for Mayhem (I am
surprised the paper does not mention process exit codes?) but primarily
because some other system component (perhaps a library or the kernel)
may also trigger a process exit with some code (and there are only 256
to choose from).  That would be a vulnerability introduced by that other
component (and so a CVE against it), but the effect is the same.

Thanks again,

Alexander
