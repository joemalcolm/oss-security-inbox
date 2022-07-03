Received: (qmail 24248 invoked by uid 550); 3 Jul 2022 16:05:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24100 invoked from network); 3 Jul 2022 16:05:14 -0000
Date: Sun, 3 Jul 2022 18:05:08 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Hugues ANGUELKOV <hanguelkov@randorisec.fr>
Message-ID: <20220703160508.GA17310@openwall.com>
References: <20220702193746.GA12948@openwall.com> <20220702215539.GA14413@openwall.com> <YsDMw8o0g0IjrwzK@itl-email> <20220703125516.GA15346@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220703125516.GA15346@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel: Netfilter heap buffer overflow in nft_set_elem_init

Proposed fix by the maintainer:

https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=7e6bc1f6cabcd30aba0b11219d8e01b952eacbb6

netdev thread leading to there starts here:

https://lists.openwall.net/netdev/2022/07/02/86

> ----- Forwarded message from Hugues ANGUELKOV <hanguelkov@randorisec.fr> -----

> One of our collaborators at RandoriSec, Arthur Mongodin found a 
> vulnerability within the netfilter subsystem during his internship.
> Successful exploitation of this bug leads to a Local Privilege 
> Escalation (LPE) to the `root` user, as tested on Ubuntu server 22.04 
> (Linux 5.15.0-39-generic).
> This vulnerability is a heap buffer overflow due to a weak check and has 
> been introduced within the commit 
> [fdb9c405e35bdc6e305b9b4e20ebc141ed14fc81](https://github.com/torvalds/linux/commit/fdb9c405e35bdc6e305b9b4e20ebc141ed14fc81), 
> it affects the Linux kernel since the version 5.8 and is still present 
> today.

The fix commit above says it Fixes an older commit from 2015
(7d7402642eaf), but the bug was likely only exposed later, by the 2020
commit referenced in RandoriSec's message above.  Quoting from:

https://patchwork.ozlabs.org/project/netfilter-devel/patch/20220702191029.238563-1-pablo@netfilter.org/

   Insufficient validation of element datatype and length in
   nft_setelem_parse_data(). At least commit 7d7402642eaf updates
   maximum element data area up to 64 bytes when only 16 bytes
   where supported at the time. Support for larger element size
   came later in fdb9c405e35b though. Picking this older commit
   as Fixes: tag to be safe than sorry.

> The vulnerable code path can be reached if the kernel is built with the 
> configuration `CONFIG_NETFILTER`, `CONFIG_NF_TABLES` enabled.
> To exploit the vulnerability, an attacker may need to obtain an 
> unprivileged user namespace to gain the capability `CAP_NET_ADMIN` 
> (`CONFIG_USER_NS` and `CONFIG_NET_NS` enabled, and 
> `kernel.unprivileged_userns_clone = 1`).

Another scenario is the attacker having (or gaining by other means)
"root" access inside a pre-existing container with CAP_NET_ADMIN.  This
does not require unprivileged user namespaces as the container may have
been started by host root.

> we can 
> suggest the August, 15th 2022 as a potential date for public disclosure.

FWIW, an embargo this long wouldn't have been accepted by linux-distros.
The latest this issue could be disclosed publicly is July 15th.

Alexander
