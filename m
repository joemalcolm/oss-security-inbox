Received: (qmail 20200 invoked by uid 550); 6 Aug 2022 19:10:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20020 invoked from network); 6 Aug 2022 19:10:27 -0000
Date: Sat, 6 Aug 2022 21:10:22 +0200
From: Solar Designer <solar@openwall.com>
To: "?????????(??????)" <zhangziming.zzm@antgroup.com>
Cc: oss-security <oss-security@lists.openwall.com>
Message-ID: <20220806191022.GA10830@openwall.com>
References: <adc61777-4814-4426-9d6d-2a2af6d09426.zhangziming.zzm@antgroup.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <adc61777-4814-4426-9d6d-2a2af6d09426.zhangziming.zzm@antgroup.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2022-1972: out-of-bound write in Linux netfilter subsystem leads to local privilege escalation

On Thu, Jun 02, 2022 at 10:21:36AM +0800, ?????????(??????) wrote:
> An out-of-bound write vulnerability was identified within the
> netfilter subsystem
> which can be exploited to achieve privilege escalation to root.
> 
> In order to trigger the issue it requires the ability to create user/net
> namespaces.
> 
> this vulnerability comes from commit(
> https://github.com/torvalds/linux/commit/f3a2181e16f1dcbf5446ed43f6b5d9f56c459f85)
> 
> This issue has been fixed within the following commit:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=fecf31ee395b0295f2d7260aa29946b7605f7c85

[...]

> =*=*=*=*=*=*=*=*=  Credit  =*=*=*=*=*=*=*=*=
> ziming zhang(@ezrak1e) from Ant Group Light-Year Security Lab

Apparently, this vulnerability was also independently discovered by
Arthur Mongodin during an internship at Randorisec, who blogged about it
on June 13 here:

https://randorisec.fr/yet-another-bug-netfilter/

and posted an infoleak PoC here:

https://github.com/randorisec/CVE-2022-1972-infoleak-PoC

Alexander
