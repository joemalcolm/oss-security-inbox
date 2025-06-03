Received: (qmail 22466 invoked by uid 550); 3 Jun 2025 03:00:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21739 invoked from network); 3 Jun 2025 03:00:47 -0000
Date: Tue, 3 Jun 2025 04:59:19 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Muhammed =?utf-8?B?SMO8c2Ft?= Alzeyyat <hussamalzeyyat@gmail.com>,
	Attila Szasz <szasza.contact@gmail.com>
Message-ID: <20250603025919.GA11183@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Linux kernel: HFS+ filesystem implementation issues, exposure in distros

Hi,

Muhammed Hüsam Alzeyya, CC'ed here, (kind of) brought an issue in the
Linux kernel's HFS+ filesystem implementation to s@k.o and linux-distros
at once.  This is against both Linux kernel's and linux-distros' current
instructions, which ask to "notify the kernel security team first, wait
for the fix, and only then notify linux-distros or oss-security".  The
message didn't actually get through to linux-distros for a technical
reason, but a reply quoting its portion did.  I promptly sent a reply to
Muhammed (CC'ing linux-distros) to explain the situation and ask a few
questions, but got no reply.  I saw no further communication on this.
(I also checked our server logs, and as far as I can tell there were no
further rejected/filtered messages from Muhammed's address, neither to
linux-distros nor to my address.)  I am now bringing this to
oss-security for the sake of transparency and not to make an exception,
as well as possibly to have a discussion of the general issues.

There was another issue in the same driver publicized a few months ago,
with a lot of detail on its exploitation (and the exploit itself):

https://ssd-disclosure.com/ssd-advisory-linux-kernel-hfsplus-slab-out-of-bounds-write/

The above post is very lengthy.  I'll quote just some pieces below:

> SSD Advisory - Linux kernel hfsplus slab-out-of-bounds Write
> March 18, 2025
> SSD Secure Disclosure technical team
> Vulnerability publication
> 
> Summary
> This advisory describes an out-of-bounds write vulnerability in the Linux kernel that achieves local privilege escalation on Ubuntu 22.04 for active user sessions.
> 
> Credit
> An independent security researcher working with SSD Secure Disclosure.
> 
> Vendor Response
> Ubuntu has released the following advisory and fix: https://ubuntu.com/security/CVE-2025-0927
> 
> Affected Versions
> Linux Kernel, up to 6.12.0
> Ubuntu 22.04 with Linux Kernel 6.5.0-18-generic
> 
> CVE
> CVE-2025-0927

>  * Attila Szasz <szasza.contact@gmail.com>
>  * @4ttil4sz1a
>  *
>  * Exploit for hfs+ slab out of bounds write
>  * targeting Linux kernel 6.5

So I'm also CC'ing Attila Szasz here.

The kernel security team ended up rejecting the CVE:

https://lore.kernel.org/linux-cve-announce/2025033057-CVE-2025-0927-1436@gregkh/T/#u

> Filesystem bugs due to corrupt images are not considered a CVE for any
> filesystem that is only mountable by CAP_SYS_ADMIN in the initial user
> namespace. That includes delegated mounting.

However, Ubuntu fixed the issue in many of their kernels, with note:

> While the upstream kernel developers don't consider exploitable
> corrupted filesystem images to be a security issue, Ubuntu ships with a
> polkit rule allowing console users to automount removable media, so we
> do want to fix this issue for our users.

An issue here is that "allowing console users to automount removable
media" is a high risk, especially if upstream doesn't intend the code to
be robust and secure against corrupt or malicious filesystem images.
Maybe there should at least be an allow-list of filesystem types, which
would be focused on filesystems most commonly used on removable media?

Another issue is the disconnect on what's CVE-worthy between upstream
and the distro.  This will keep coming up.  Maybe a solution for such
cases is to assign CVEs against the distro rather than against upstream?

The linux-cve-announce thread above suggests that upstream may assign
CVEs to filesystem implementation issues for corruptions that pass fsck.
So theoretically a way for a distro to avoid relying on robustness and
security of kernel code beyond what upstream cares about would be to
force fsck before mounting a filesystem.  However, doing that even for
filesystems that claim to be clean (as it would be required for
security) is impractical.  Also, would the CVEs (and eventual fixes) be
against (for) the kernel or fsck then?

Anyway, now the current report by Muhammed is for another issue in
almost the same place.  While Attila's was an out of bounds write, the
new one is reported as an out of bounds read.  So its security relevance
is not obvious even on systems like Ubuntu that expose this code for
attack.  This depends on what's done with the value read out of bounds.

Below is the portion of Muhammed's message that got to linux-distros:

> Re: VULNERABILITY REPORT: Out-of-Bounds Read in HFS+ Filesystem's hfsplus_bnode_read Function

On Sun, May 25, 2025 at 01:30:18PM +0800, Muhammed Hüsam Alzeyya wrote:
> ## Summary
> 
> A buffer overflow vulnerability exists in the Linux kernel's HFS+
> filesystem implementation. Specifically, the vulnerability is located in
> the `hfsplus_bnode_read` function in `fs/hfsplus/bnode.c`. When handling an
> HFS+ filesystem, this vulnerability allows reading beyond the bounds of an
> allocated memory region. The issue is triggered when the kernel attempts to
> delete a file on a specially crafted HFS+ filesystem, which can lead to
> memory corruption, information leakage, and potential privilege escalation.

> ## Affected Environments
> 
> This vulnerability affects:
> - Linux kernel 6.15.0-rc2 (confirmed)
> - Potentially earlier versions that include the HFS+ filesystem
> implementation
> - Any system that allows mounting of HFS+ filesystems, especially if
> untrusted users can provide filesystem images

Alexander
