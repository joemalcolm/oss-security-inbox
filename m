Received: (qmail 28471 invoked by uid 550); 25 Aug 2022 13:32:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31776 invoked from network); 25 Aug 2022 13:20:30 -0000
Date: Thu, 25 Aug 2022 15:20:21 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20220825132021.GA27469@openwall.com>
References: <CAF73F=1+-eOEqUsuqG=uUdD1o2oa+iYQoPxkygqG+foMNwSo6Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAF73F=1+-eOEqUsuqG=uUdD1o2oa+iYQoPxkygqG+foMNwSo6Q@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux Kernel use-after-free write in netfilter

On Tue, May 31, 2022 at 10:00:32AM +0100, EDG EDG wrote:
> A use-after-free write vulnerability was identified within the
> netfilter subsystem
> which can be exploited to achieve privilege escalation to root.
> 
> In order to trigger the issue it requires the ability to create user/net
> namespaces.
> 
> This issue has been fixed within the following commit:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/net/netfilter?id=520778042ccca019f3ffa136dd0ca565c486cedd
> 
> The issue was previously confirmed on the latest linux master (commit
> 143a6252e1b8ab424b4b293512a97cca7295c182) and we have confirmed it can be
> exploited for privilege escalation on Ubuntu 22.04 (Linux kernel
> 5.15.0-27-generic).
[...]
> # POC Code
[...]
>     printf("should have triggered KASAN\n");

While the message above included PoC code, there's now also a blog post
and GitHub repo with a full exploit:

https://blog.theori.io/research/CVE-2022-32250-linux-kernel-lpe-2022/
https://github.com/theori-io/CVE-2022-32250-exploit

"In this post, we have shown the process of exploiting CVE-2022-32250.
We were able to leak KASLR and overwrite modprobe_path by utilizing the
mqueue functions, and as a result, we successfully gained root
privileges in Ubuntu 22.04."

Alexander
