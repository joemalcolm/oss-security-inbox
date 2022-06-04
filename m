Received: (qmail 10104 invoked by uid 550); 4 Jun 2022 20:04:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9959 invoked from network); 4 Jun 2022 20:03:36 -0000
Date: Sat, 4 Jun 2022 22:03:32 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Marian Rehak <mrehak@redhat.com>, EDG EDG <edg.bugs@gmail.com>
Message-ID: <20220604200332.GA25072@openwall.com>
References: <CAF73F=1+-eOEqUsuqG=uUdD1o2oa+iYQoPxkygqG+foMNwSo6Q@mail.gmail.com> <YpmqzUDjfezUapEo@eldamar.lan>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YpmqzUDjfezUapEo@eldamar.lan>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux Kernel use-after-free write in netfilter

On Fri, Jun 03, 2022 at 08:31:41AM +0200, Salvatore Bonaccorso wrote:
> On Tue, May 31, 2022 at 10:00:32AM +0100, EDG EDG wrote:
> > A use-after-free write vulnerability was identified within the
> > netfilter subsystem
> > which can be exploited to achieve privilege escalation to root.
> > 
> > In order to trigger the issue it requires the ability to create user/net
> > namespaces.
> > 
> > This issue has been fixed within the following commit:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/net/netfilter?id=520778042ccca019f3ffa136dd0ca565c486cedd
> > 
> > The issue was previously confirmed on the latest linux master (commit
> > 143a6252e1b8ab424b4b293512a97cca7295c182) and we have confirmed it can be
> > exploited for privilege escalation on Ubuntu 22.04 (Linux kernel
> > 5.15.0-27-generic).

> FTR, this was assigned CVE-2022-1966 by Red Hat:
> https://bugzilla.redhat.com/show_bug.cgi?id=2092427 .
> 
> There is though as well now
> https://www.cve.org/CVERecord?id=CVE-2022-32250 . I have asked MITRE
> to possibly reject the later one.

Also, as Linus added to the private thread, the fix commit is now in:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=520778042ccc

> Just a note to say for anybody tracking the progress of this that the
> fix is in my tree now as commit 520778042ccc ("netfilter: nf_tables:
> disallow non-stateful expression in sets earlier")
>  
>                  Linus

Alexander
