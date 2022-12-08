Received: (qmail 17600 invoked by uid 550); 8 Dec 2022 16:01:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15973 invoked from network); 8 Dec 2022 16:00:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
  t=1670515206; x=1702051206;
  h=from:to:cc:subject:references:date:in-reply-to:
   message-id:mime-version;
  bh=uZt9FDPyGpeMgirEaYToW81GcKPBxSxydsE89IilZUM=;
  b=edm/Ys1hO594pKo3jLLisb07SY4HZO2rQ0bp5Ml45tZspAgz5QXjV7q5
   fkd4s38Ajqnlfd0LkGu/s6SRiUCDMO6ej5WomKsRLa4sMuAD9VxD+UQWs
   lHQ3bMpn0/zogW6BiVMjGIM77JmVvWGQkVGqwMRqujwhbOOuOsBRpK254
   Q=;
X-IronPort-AV: E=Sophos;i="5.96,227,1665446400"; 
   d="scan'208";a="1081611174"
From: Pratyush Yadav <ptyadav@amazon.de>
To: Xen.org security team <security@xen.org>
CC: <xen-announce@lists.xen.org>, <xen-devel@lists.xen.org>,
	<xen-users@lists.xen.org>, <oss-security@lists.openwall.com>, "Xen.org
 security team" <security-team-members@xen.org>
References: <E1p2ZhW-0005Xe-FG@xenbits.xenproject.org>
Date: Thu, 8 Dec 2022 16:59:44 +0100
In-Reply-To: <E1p2ZhW-0005Xe-FG@xenbits.xenproject.org> (Xen org security
	team's message of "Tue, 06 Dec 2022 15:17:42 +0000")
Message-ID: <mafs0lenhlwcv.fsf@dev-dsk-ptyadav-1c-37607b33.eu-west-1.amazon.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Xen Security Advisory 424 v1 (CVE-2022-42328,CVE-2022-42329) -
 Guests can trigger deadlock in Linux netback driver


Hi,

I noticed one interesting thing about this patch but I'm not familiar
enough with the driver to say for sure what the right thing is.

On Tue, Dec 06 2022, Xen.org security team wrote:

[...]
>
> From cfdf8fd81845734b6152b4617746c1127ec52228 Mon Sep 17 00:00:00 2001
> From: Juergen Gross <jgross@suse.com>
> Date: Tue, 6 Dec 2022 08:54:24 +0100
> Subject: [PATCH] xen/netback: don't call kfree_skb() with interrupts disabled
>
> It is not allowed to call kfree_skb() from hardware interrupt
> context or with interrupts being disabled. So remove kfree_skb()
> from the spin_lock_irqsave() section and use the already existing
> "drop" label in xenvif_start_xmit() for dropping the SKB. At the
> same time replace the dev_kfree_skb() call there with a call of
> dev_kfree_skb_any(), as xenvif_start_xmit() can be called with
> disabled interrupts.
>
> This is XSA-424 / CVE-2022-42328 / CVE-2022-42329.
>
> Fixes: be81992f9086 ("xen/netback: don't queue unlimited number of packages")
> Reported-by: Yang Yingliang <yangyingliang@huawei.com>
> Signed-off-by: Juergen Gross <jgross@suse.com>
> Reviewed-by: Jan Beulich <jbeulich@suse.com>
> ---
>  drivers/net/xen-netback/common.h    | 2 +-
>  drivers/net/xen-netback/interface.c | 6 ++++--
>  drivers/net/xen-netback/rx.c        | 8 +++++---
>  3 files changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/xen-netback/common.h b/drivers/net/xen-netback/common.h
> index 1545cbee77a4..3dbfc8a6924e 100644
> --- a/drivers/net/xen-netback/common.h
> +++ b/drivers/net/xen-netback/common.h
> @@ -386,7 +386,7 @@ int xenvif_dealloc_kthread(void *data);
>  irqreturn_t xenvif_ctrl_irq_fn(int irq, void *data);
>
>  bool xenvif_have_rx_work(struct xenvif_queue *queue, bool test_kthread);
> -void xenvif_rx_queue_tail(struct xenvif_queue *queue, struct sk_buff *skb);
> +bool xenvif_rx_queue_tail(struct xenvif_queue *queue, struct sk_buff *skb);
>
>  void xenvif_carrier_on(struct xenvif *vif);
>
> diff --git a/drivers/net/xen-netback/interface.c b/drivers/net/xen-netback/interface.c
> index 650fa180220f..f3f2c07423a6 100644
> --- a/drivers/net/xen-netback/interface.c
> +++ b/drivers/net/xen-netback/interface.c
> @@ -254,14 +254,16 @@ xenvif_start_xmit(struct sk_buff *skb, struct net_device *dev)
>  	if (vif->hash.alg == XEN_NETIF_CTRL_HASH_ALGORITHM_NONE)
>  		skb_clear_hash(skb);
>
> -	xenvif_rx_queue_tail(queue, skb);
> +	if (!xenvif_rx_queue_tail(queue, skb))
> +		goto drop;
> +
>  	xenvif_kick_thread(queue);
>
>  	return NETDEV_TX_OK;
>
>   drop:
>  	vif->dev->stats.tx_dropped++;

Now tx_dropped is incremented on packet drop...

> -	dev_kfree_skb(skb);
> +	dev_kfree_skb_any(skb);
>  	return NETDEV_TX_OK;
>  }
>
> diff --git a/drivers/net/xen-netback/rx.c b/drivers/net/xen-netback/rx.c
> index 932762177110..0ba754ebc5ba 100644
> --- a/drivers/net/xen-netback/rx.c
> +++ b/drivers/net/xen-netback/rx.c
> @@ -82,9 +82,10 @@ static bool xenvif_rx_ring_slots_available(struct xenvif_queue *queue)
>  	return false;
>  }
>
> -void xenvif_rx_queue_tail(struct xenvif_queue *queue, struct sk_buff *skb)
> +bool xenvif_rx_queue_tail(struct xenvif_queue *queue, struct sk_buff *skb)
>  {
>  	unsigned long flags;
> +	bool ret = true;
>
>  	spin_lock_irqsave(&queue->rx_queue.lock, flags);
>
> @@ -92,8 +93,7 @@ void xenvif_rx_queue_tail(struct xenvif_queue *queue, struct sk_buff *skb)
>  		struct net_device *dev = queue->vif->dev;
>
>  		netif_tx_stop_queue(netdev_get_tx_queue(dev, queue->id));
> -		kfree_skb(skb);
> -		queue->vif->dev->stats.rx_dropped++;

... but earlier rx_dropped was incremented.

Which one is actually correct? This line was added by be81992f9086b
("xen/netback: don't queue unlimited number of packages"), which was the
fix for XSA-392. I think incrementing tx_dropped is the right thing to
do, as was done before XSA-392 but it would be nice if someone else
takes a look at this as well.

> +		ret = false;
>  	} else {
>  		if (skb_queue_empty(&queue->rx_queue))
>  			xenvif_update_needed_slots(queue, skb);
> @@ -104,6 +104,8 @@ void xenvif_rx_queue_tail(struct xenvif_queue *queue, struct sk_buff *skb)
>  	}
>
>  	spin_unlock_irqrestore(&queue->rx_queue.lock, flags);
> +
> +	return ret;
>  }
>
>  static struct sk_buff *xenvif_rx_dequeue(struct xenvif_queue *queue)

--
Regards,
Pratyush Yadav



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Jonathan Weiss
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879



