Received: (qmail 22341 invoked by uid 550); 2 Oct 2023 20:21:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22002 invoked from network); 2 Oct 2023 20:21:18 -0000
Date: Mon, 2 Oct 2023 22:21:06 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Kyle Zeng <zengyhkyle@gmail.com>
Message-ID: <20231002202106.GA17010@openwall.com>
References: <CADW8OBs19JEt7NekWaCuwQh=b90Kt1gDeXApuRXJX7YU0vmBKQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADW8OBs19JEt7NekWaCuwQh=b90Kt1gDeXApuRXJX7YU0vmBKQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [CVE-2023-42754] null pointer dereference in Linux kernel ipv4 stack

On Mon, Oct 02, 2023 at 12:53:20PM -0700, Kyle Zeng wrote:
> when the skb is rerouted through ipvs, its skb->dev is NULL. Then the
> following `dev_net` call, which accesses `dev->nd_net`, becomes null
> pointer dereference.

When reporting issues like this, please always note the privileges
required for attack.  For the example above, it appears to be
CAP_NET_ADMIN within the namespace:

static int
do_ip_vs_set_ctl(struct sock *sk, int cmd, sockptr_t ptr, unsigned int len)
{
[...]
	if (!ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN))
		return -EPERM;

I guess other possibilities for triggering this issue (if any) have
similar requirements.

Thanks,

Alexander
