Received: (qmail 16104 invoked by uid 550); 6 Jun 2025 01:22:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9539 invoked from network); 6 Jun 2025 01:21:40 -0000
Date: Fri, 6 Jun 2025 03:20:27 +0200
From: Solar Designer <solar@openwall.com>
To: Zbigniew =?utf-8?Q?J=C4=99drzejewski-Szmek?= <zbyszek@in.waw.pl>
Cc: oss-security@lists.openwall.com,
	Qualys Security Advisory <qsa@qualys.com>
Message-ID: <20250606012027.GA31670@openwall.com>
References: <20250529171556.GA9260@localhost.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250529171556.GA9260@localhost.localdomain>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Local information disclosure in apport and systemd-coredump

Hi Zbigniew,

On Thu, May 29, 2025 at 05:17:08PM +0000, Qualys Security Advisory wrote:
> - always take account of the kernel's per-process "dumpable" flag (the
>   %d specifier), in every code path, to decide whether a non-root user
>   should be given read access to a core dump or not;

Thank you for fixing the issue in systemd, and for sharing patches with
linux-distros.  I have a question on those.  Since this is now public,
let's discuss this in the public oss-security thread.

In your message to linux-distros, you shared these two patches:

0001-coredump-get-rid-of-_META_MANDATORY_MAX.patch
0003-coredump-also-stop-forwarding-non-dumpable-processes.patch

So it looks like you omitted patch number 2.  Yet to me that omitted
patch would have been the most important part of the fix.  Was this
omission inadvertent, or am I missing some reason to skip that patch?

I think it's these 3 commits (as they appear in the main branch, and I
see equivalent ones are also in v257-stable and v256-stable):

commit 8fc7b2a211eb13ef1a94250b28e1c79cab8bdcb9
Author: Zbigniew Jędrzejewski-Szmek <zbyszek@in.waw.pl>
Date:   Mon May 5 15:48:40 2025 +0200

    coredump: also stop forwarding non-dumpable processes
    
    See the comment in the patch for details.
    
    Suggested-by: Qualys Security Advisory <qsa@qualys.com>

commit 0c49e0049b7665bb7769a13ef346fef92e1ad4d6
Author: Zbigniew Jędrzejewski-Szmek <zbyszek@in.waw.pl>
Date:   Tue Apr 29 14:47:59 2025 +0200

    coredump: use %d in kernel core pattern
    
    The kernel provides %d which is documented as
    "dump mode—same as value returned by prctl(2) PR_GET_DUMPABLE".
    
    We already query /proc/pid/auxv for this information, but unfortunately this
    check is subject to a race, because the crashed process may be replaced by an
    attacker before we read this data, for example replacing a SUID process that
    was killed by a signal with another process that is not SUID, tricking us into
    making the coredump of the original process readable by the attacker.
    
    With this patch, we effectively add one more check to the list of conditions
    that need be satisfied if we are to make the coredump accessible to the user.
    
    Reportedy-by: Qualys Security Advisory <qsa@qualys.com>
    
    In principle, %d might return a value other than 0, 1, or 2 in the future.
    Thus, we accept those, but emit a notice.

commit 49f1f2d4a7612bbed5211a73d11d6a94fbe3bb69
Author: Zbigniew Jędrzejewski-Szmek <zbyszek@in.waw.pl>
Date:   Mon May 26 12:04:44 2025 +0200

    coredump: get rid of _META_MANDATORY_MAX
    
    No functional change. This change is done in preparation for future changes.
    Currently, the list of fields which are received on the command line is a
    strict subset of the fields which are always expected to be received on a
    socket. But when we add new kernel args in the future, we'll have two
    non-overlapping sets and this approach will not work. Get rid of the variable
    and enumerate the required fields. This set will never change, so this is
    actually more maintainable.
    
    The message with the hint where to add new fields is switched with
    _META_ARGV_MAX. The new order is more correct.

Alexander
