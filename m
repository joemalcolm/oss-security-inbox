Received: (qmail 9864 invoked by uid 550); 6 Jun 2025 03:02:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7733 invoked from network); 6 Jun 2025 03:02:48 -0000
Date: Fri, 6 Jun 2025 05:02:39 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Attila Szasz <szasza.contact@gmail.com>,
	Muhammed =?utf-8?B?SMO8c2Ft?= Alzeyyat <hussamalzeyyat@gmail.com>
Message-ID: <20250606030239.GA897@openwall.com>
References: <20250603025919.GA11183@openwall.com> <b379213c-55d1-4564-90aa-591edf3097c7@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b379213c-55d1-4564-90aa-591edf3097c7@gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel: HFS+ filesystem implementation issues, exposure in distros

Re-added CC: Attila, Muhammed

On Mon, Jun 02, 2025 at 11:38:30PM -0400, Demi Marie Obenour wrote:
> On 6/2/25 22:59, Solar Designer wrote:
> > The kernel security team ended up rejecting the CVE:
> > 
> > https://lore.kernel.org/linux-cve-announce/2025033057-CVE-2025-0927-1436@gregkh/T/#u
> > 
> >> Filesystem bugs due to corrupt images are not considered a CVE for any
> >> filesystem that is only mountable by CAP_SYS_ADMIN in the initial user
> >> namespace. That includes delegated mounting.
> 
> If nothing else, this can be used to bypass UEFI Secure Boot.

Good point.

So is arbitrary unsigned code execution in the kernel (locked down
against it) generally out of scope of kernel CVE assignment?

For practical purposes, I think there's major difference between UEFI
Secure Boot bypasses that let you run arbitrary code without logging in
(especially if you can bypass TPM-based disk encryption in this way) vs.
post-login (doesn't violate TPM-based disk encryption's security model).

> > An issue here is that "allowing console users to automount removable
> > media" is a high risk, especially if upstream doesn't intend the code to
> > be robust and secure against corrupt or malicious filesystem images.
> > Maybe there should at least be an allow-list of filesystem types, which
> > would be focused on filesystems most commonly used on removable media?
> 
> Which ones would you include?

I was thinking those commonly seen on pre-formatted flash media, but
maybe that doesn't cover a large enough fraction of use cases.

> > Another issue is the disconnect on what's CVE-worthy between upstream
> > and the distro.  This will keep coming up.  Maybe a solution for such
> > cases is to assign CVEs against the distro rather than against upstream?
> 
> This is the only option I can see kernel.org being okay with, but it

Apparently, they were not OK with it this time.  I don't know why not.

> doesn't solve the underlying problem.  kernel.org's view of what is
> (and is not) a vulnerability in a filesystem is severely out of touch
> with what distros actually do, and that includes security-conscious
> distros like ChromiumOS.

If distros could have CVEs for "Linux HFS+ filesystem only as exposed
for attack in certain distros, not a vulnerability in upstream Linux",
maybe that would be fine.

> > The linux-cve-announce thread above suggests that upstream may assign
> > CVEs to filesystem implementation issues for corruptions that pass fsck.
> > So theoretically a way for a distro to avoid relying on robustness and
> > security of kernel code beyond what upstream cares about would be to
> > force fsck before mounting a filesystem.  However, doing that even for
> > filesystems that claim to be clean (as it would be required for
> > security) is impractical.  Also, would the CVEs (and eventual fixes) be
> > against (for) the kernel or fsck then?
> 
> Why is it impractical?  Performance?

Yes, I was thinking primarily performance.  Then also UI in case fsck
finds any issues, but this can be taken care of.  Then there are some
fsck-only vulnerabilities.

Finally, the fsck approach wouldn't solve the secure boot bypass aspect,
as fsck could be bypassed by root (and that's how it should remain).

OTOH, is there other significant security impact?  As I understood, on
Ubuntu a privileged logged in user could use this bug to obtain root.
However, is that user perhaps privileged enough to also sudo to root by
default?  So is this only a bypass of the need to re-enter the user's
password for sudo?  That sudo from user to root is only a nominal
protection mechanism anyway, more against inadvertent mistakes than
against malicious attacks.

> There are three filesystems that *must* be secure against malicious
> images to avoid very serious problems:
> 
> 1. FAT32, as this is used by the UEFI System Partition and
>    so must be mounted by every UEFI-based system.
> 2. F2FS, as this is used by Android for its writable storage.
> 3. ext4, as this is used by ChromiumOS for its writable storage.
> 
> In all three cases, a malicious filesystem image can be used to
> bypass secure boot.  UEFI secure boot is often considered quite
> weak and I tend to agree with this, but Android and ChromiumOS
> have very strong verified boot mechanisms and being able to break
> them is without question worthy of a CVE.  ChromeOS Security
> has confirmed that they do indeed consider "attacker corrupts
> writable storage to get code execution when the machine reboots"
> to be in scope for their threat model.
> 
> The only way I can think of to fix this issue is not technical,
> but organizational: somehow ensure that the burden of dealing
> with these bugs falls onto those who care about them, rather
> than on overworked filesystem maintainers.  Is there any way
> that this could reasonably be done?  Could the Android and
> ChromeOS security teams triage *and fix* bugs involving crafted
> images *without* the filesystem maintainers having to be
> involved?  Or is the solution for the parties who care about
> these vulnerabilities to completely reimplement the filesystems
> in Rust and/or using FUSE?

The filesystem maintainers would need to be involved to review and
approve/merge patches submitted by those who really care.  It is too
easy to introduce new bugs when you try and fix a bug without being
familiar with the subsystem's codebase.

Alexander
