X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2450" "Saturday" "25" "March" "2017" "01:10:57" "+0100" "Solar Designer" "solar@openwall.com" "<20170325001057.GA31046@openwall.com>" "67" "Re: [oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race" "^Cc:" nil nil "3" "2017032500:10:57" "[oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race" (number mark "        solar@openwa Mar 25   67/2450  " thread-indent "\"Re: [oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race\"\n") "<CANn89iK-7r3KozC4K1rmWpJ1jM-bhBqessUrkg8HoftnjOks5g@mail.gmail.com>" ("<20170324202714.GA29241@openwall.com>" "<CAAeHK+yrE7+BZztHVn-2jKgLqgzgbBEa4VWCO8SL45oD0nRxEw@mail.gmail.com>" "<CANn89iK-7r3KozC4K1rmWpJ1jM-bhBqessUrkg8HoftnjOks5g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1742 invoked by uid 550); 25 Mar 2017 00:14:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30017 invoked from network); 25 Mar 2017 00:11:13 -0000
Message-ID: <20170325001057.GA31046@openwall.com>
References: <20170324202714.GA29241@openwall.com> <CAAeHK+yrE7+BZztHVn-2jKgLqgzgbBEa4VWCO8SL45oD0nRxEw@mail.gmail.com> <CANn89iK-7r3KozC4K1rmWpJ1jM-bhBqessUrkg8HoftnjOks5g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANn89iK-7r3KozC4K1rmWpJ1jM-bhBqessUrkg8HoftnjOks5g@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: Eric Dumazet <edumazet@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	James Morris <jmorris@namei.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Patrick McHardy <kaber@trash.net>, netdev <netdev@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Vasily Kulikov <segoon@openwall.com>
Date: Sat, 25 Mar 2017 01:10:57 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race
To: oss-security@lists.openwall.com

On Fri, Mar 24, 2017 at 03:21:06PM -0700, Eric Dumazet wrote:
> Looks easy enough to fix ?

Oh.  Probably.  Thanks.  Need to test, but I guess you already did?

> diff --git a/net/ipv4/ping.c b/net/ipv4/ping.c
> index
> 2af6244b83e27ae384e96cf071c10c5a89674804..ccfbce13a6333a65dab64e4847dd510dfafb1b43
> 100644
> --- a/net/ipv4/ping.c
> +++ b/net/ipv4/ping.c
> @@ -156,17 +156,18 @@ int ping_hash(struct sock *sk)
>  void ping_unhash(struct sock *sk)
>  {
>         struct inet_sock *isk = inet_sk(sk);
> +
>         pr_debug("ping_unhash(isk=%p,isk->num=%u)\n", isk, isk->inet_num);
> +       write_lock_bh(&ping_table.lock);
>         if (sk_hashed(sk)) {
> -               write_lock_bh(&ping_table.lock);
>                 hlist_nulls_del(&sk->sk_nulls_node);
>                 sk_nulls_node_init(&sk->sk_nulls_node);
>                 sock_put(sk);
>                 isk->inet_num = 0;
>                 isk->inet_sport = 0;
>                 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);
> -               write_unlock_bh(&ping_table.lock);
>         }
> +       write_unlock_bh(&ping_table.lock);
>  }
>  EXPORT_SYMBOL_GPL(ping_unhash);

FWIW, in Pavel's original implementation for 2.4.32 (unused), this was:

static void ping_v4_unhash(struct sock *sk)
{
	DEBUG(("ping_v4_unhash(sk=%p,sk->num=%u)\n", sk, sk->num));
	write_lock_bh(&ping_hash_lock);
	if (sk->pprev) {
		if (sk->next)
		       sk->next->pprev = sk->pprev;
		*sk->pprev = sk->next;
		sk->pprev = NULL;
		sk->num = 0;
		sock_prot_dec_use(sk->prot);
		__sock_put(sk);
	}
	write_unlock_bh(&ping_hash_lock);
}

Looks like the erroneous optimization (not expecting concurrent activity
on the same socket?) was introduced during conversion to 2.6's hlists.

So far this cursed function had 3 bugs, two of them security (including
this one) and one probably benign (or if not, then effectively a subset
of this bug as it performed some unneeded / stale debugging work before
acquiring the lock), with all 3 introduced in forward-porting.  Maybe
the nature of forward-porting activity makes people relatively
inattentive ("compiles with the new interfaces and still works? must be
correct"), compared to when writing new code.

Anyhow, I share some responsibility for this mess, for having advocated
this patch being forward-ported and merged back then.  I still like
having this functionality and its userspace security benefits... but I
don't like the kernel bugs.

Alexander
