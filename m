Received: (qmail 11356 invoked by uid 550); 3 Oct 2023 20:12:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10000 invoked from network); 3 Oct 2023 20:12:17 -0000
Date: Tue, 3 Oct 2023 22:12:13 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: kvm@lore.kernel.org, devel@sel4.systems,
	"Xen.org security team" <security-team-members@xen.org>
Message-ID: <20231003201212.GA24599@openwall.com>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org> <ZROMd1GCpD8uDtbE@itl-email>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZROMd1GCpD8uDtbE@itl-email>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) - x86/AMD: Divide speculative information leak

On Tue, Sep 26, 2023 at 09:59:19PM -0400, Demi Marie Obenour wrote:
> These detailed security advisories are one of the things I love about
> Xen.  It's hard to trust a hypervisor (KVM) that will not issue them,
> for then one has no way to know if a particular problem got fixed.

I concur.  I'd appreciate security advisories from the KVM project.

> I'm CCing KVM here to make sure they have a fix.  From their Git commit
> history, I am almost certain that seL4 does not.  I'm CCing the seL4
> developers to alert them of this and suggest that the x86 port be
> removed or at least have a big warning.

I strongly oppose removal of a port/support for a certain architecture
just because some implementations of it are/were problematic.  Adding a
warning is fine.

Alexander

P.S. Demi Marie, please note that oss-security list content guidelines
explicitly discourage CC'ing other lists(*), and Xen advisories are
already stretching this.  In this reply, I am still CC'ing many of what
you had CC'ed as I am following up on your specific points relevant to
those lists, but in general let's be more careful about this.

(*) Because we may then get off-topic follow-ups from there, especially
if CC'ing project user lists or high-volume lists like LKML.  In this
specific case, we're lucky so far.
