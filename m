Received: (qmail 17837 invoked by uid 550); 21 May 2022 15:48:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17639 invoked from network); 21 May 2022 15:48:07 -0000
Date: Sat, 21 May 2022 17:47:59 +0200
From: Solar Designer <solar@openwall.com>
To: Norbert Slusarek <nslusarek@gmx.net>
Cc: oss-security@lists.openwall.com, peterz@infradead.org
Message-ID: <20220521154759.GA15268@openwall.com>
References: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2022-1729: race condition in Linux perf subsystem leads to local privilege escalation

Norbert,

On Fri, May 20, 2022 at 10:14:36PM +0200, Norbert Slusarek wrote:
> this is an announcement for a recently reported vulnerability (CVE-2022-1729) in the perf subsystem
> of the Linux kernel. The issue is a race condition which was proven to allow for a local privilege
> escalation to root on current kernel version >= 5.4.193, but the bug seems to exist since kernel
> version 4.0-rc1 (patch fixes the commit to this version).
> Fortunately, major Linux distributions often restrict the use of perf for unprivileged users by
> setting the sysctl variable kernel.perf_event_paranoid >= 3, effectively rendering the
> vulnerability harmless.
> 
> The patch can be found at
> https://lkml.kernel.org/r/20220520183806.GV2578@worktop.programming.kicks-ass.net
> 
> Details
> -------
> 
> The following syscall order triggers the bug:

Thank you for bringing this to oss-security and for including the detail
on triggering and exploiting the issue.

Since you shared actual exploit code on linux-distros, you're supposed
to also post that to oss-security within 7 days of your first posting
above, so by or on May 27.  Do you intend to?

I realize this is one of the aspects that not everyone is happy about.
It helps against linux-distros and its subscribers' mailboxes becoming
stockpiles of unpublished exploits, and it lets those in the larger
community also test their fixes, general mitigations, and/or detection
tools in the same ways that linux-distros members could and without
extra effort to recreate exploits.  However, it also makes it easier to
exploit the vulnerabilities on unpatched systems in the wild, and it
could go against wishes of specific exploit authors or policies of their
employers.

Alexander
