Received: (qmail 3778 invoked by uid 550); 22 Sep 2025 15:57:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5287 invoked from network); 22 Sep 2025 04:35:32 -0000
Date: Mon, 22 Sep 2025 14:35:08 +1000 (AEST)
From: Damien Miller <djm@mindrot.org>
To: oss-security@lists.openwall.com
cc: openssh@openssh.com
Message-ID: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
x-ms-reactions: disallow
X-Scanned-By: MIMEDefang 2.75 on 130.102.79.58
Subject: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

Hi,

A few people have asked about CVE-2023-51767, which proportedly is an
"authentication bypass via row hammer attack" in OpenSSH sshd. This
CVE is bogus.

It is based on this paper "Mayhem: Targeted Corruption of Register and
Stack Variables" by Adiletta, et al.
https://arxiv.org/pdf/2309.02545

Firstly, we do not consider it to be the application's responsibility
to defend against platform achitectural weaknesses. We're happy
to adopt platform measures (e.g. toolchain defences) where it is
possible to do so, but fundamentally it is the platform's job to
provide a coherent execution environment. If we collectively start to
blame applications for platform failures, then there would be little
end to the redundant defensive checks applications would need to
implement.

On this attack specifically, the paper claims "We demonstrate the
power of the findings by applying the techniques to bypass SUDO
and SSH authentication", but they appear to have achieved this in
only highly contrived and unrealistic circumstances where they have
either modified the software under test or run the attack with root
privileges to dramatically simplify the attack.

Per section 6.1 - "we used signals to make sure the programs were
synchronised". However, it is not possible to signal a privileged
process without the attacker already holding privilege on the
target system. An attack that requires root privileges to attack a
root-privileged process isn't a demonstration of a vulnerability.

It appears the researchers need this additional synchronisation
to both grow the window in which the variable was available for
attack and to arrange the physical memory layout to be in a known
and attackable configuration (section 4.1). This too is unrealistic
in the context of sshd, where each connection is handled by a
separately-executed sshd process, with a completely unique address
space. Again, fine control over the address space of the sshd process
(such as that suggested by section 4.1) can only be exerted with
preexisting privilege by the attacker.

This attack is not feasible under conditions remotely approximating
the real world. It certainly doesn't warrant a CVSS score of 7.0 and
in my opinion no CVE should have been issued at all for it.

We communicated our concern that the researchers were overstating
their findings when we were informed of this work, but this feedback
was not reflected in the final paper or in the subsequent CVE.

Unfortunately, at no stage of the CVE issuance process was OpenSSH
contacted about this advisory either. This seems pretty suboptimal as
a process.

Posting this for the record and in the hope that someone will help
get the CVE disputed.

-d
