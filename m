Received: (qmail 5974 invoked by uid 550); 27 Jul 2024 19:59:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5956 invoked from network); 27 Jul 2024 19:59:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722110381; x=1722715181; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=giJXZoe+gqCZ1z6v0gNt/FvdjZAglLMDmGYMv8nholc=;
        b=HxhV2K8d2rKTU5sfrQUhssCj5JkfW+IwkixcL9XJ9B5VTl7clY0Q3oaAT5u0satALo
         XmOvR+SqMxHfgbEvF69//REqq82wayzuuaiixK2nBr+Bvu3qqjs8Iwxf/etXobfuoTj/
         saqLZL+Xs9HF/9sC4E6V4jOjAOAHWJIMZzirV0XaRnb3WqsRUnfQNZowSrrZzj50L78D
         oF+6yAIGYqieNeIaCDfrpRXN6bz2OqwqCXe9+Y5IZWP5grVI7oDtgle5BZFaDbsV1eJC
         vkf7ytJ0SJO+ieYgxEwk8MtjbjdMbEtCFEaQXIq1CGw8WoWgRDWeT+nVDM0oZep3B+Op
         jO/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722110381; x=1722715181;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=giJXZoe+gqCZ1z6v0gNt/FvdjZAglLMDmGYMv8nholc=;
        b=KD+rN0RbtdMiUfk5hx35VBt3mrVmyfauiv1E84Q6v3ZK1NDtmp/rtx6IpLbGLAraQN
         axzC4xazc0W/KB1modXbkjYbHZj5KHfr9L5nIIM3ec+nXTXQUwwBJqgrtNZB3n+VYVeZ
         MbyKSP9vB1+YqyR4ck7KlhVOMHd4KJxSWngMdPMWdNuBZhHmBfvOqOocrAR03fGve3/A
         zrGtZ5bYpQiUSkKXNII5Z+lr03y4Pi+VgW4zYvFt56iNMidGzrG7Wd4+beT19PcqNofR
         E1BepsbpP/nkPf1S91guK9fQPL0zx7yAmXH8TD8d4Qzp+33QHB3umTp2pqQDYegs1bW1
         YvLQ==
X-Gm-Message-State: AOJu0Yw+1LazrFC0/bKxUbFEAmFqG6fhegPQ8pIN69gPEgEG+DP/vssC
	sCMJUjDJhs25af4Dzcz1ukFy/rFFdzKuEJrL9MHTzwifOvkF9WtIsk7bJoXn
X-Google-Smtp-Source: AGHT+IEXqPY7gNAYjcUBwz6tzEMQ8wrEdS/JpVML+JqpyNLFLaEd/eL6jCxTIHCCXThMcGVwEk4znA==
X-Received: by 2002:a5d:6d09:0:b0:367:9621:6fa with SMTP id ffacd0b85a97d-36b5d2cbd69mr2720797f8f.37.1722110381050;
        Sat, 27 Jul 2024 12:59:41 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 27 Jul 2024 21:59:38 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Dongli Zhang <dongli.zhang@oracle.com>
Message-ID: <ZqVRqu8NTnfCwsx4@eldamar.lan>
References: <9C169F9F-D2C0-40F9-92B2-5FBDEBDD4FDE@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9C169F9F-D2C0-40F9-92B2-5FBDEBDD4FDE@oracle.com>
Subject: Re: [oss-security] linux kernel: virtio-net host dos

Hi,

On Wed, Jul 24, 2024 at 05:23:47PM +0000, John Haxby wrote:
> Hello,
> 
> We recently have discovered a Denial-of-Service (DoS) attack issue that 
> a KVM guest VM using virtio-net can crash the Linux host by sending a 
> short packet (i.e.  size < ETH_HLEN). The packet may traverse through 
> vhost-net, macvtap and vlan without any validation/drop. When this 
> packet is presented to mlx5 driver on the host side, the host panic 
> happens, since mlx5_core assumes the frame size is always >= ETH_HLEN.
> 
> Patches have been posted to netdev with the following cover letter.
> I'll post the commit IDs when I have them.
> 
> jch
> 
> ~~~
> 
> Message-Id: <20240724170452.16837-1-dongli.zhang@oracle.com>
> Date: Wed, 24 Jul 2024 10:04:50 -0700
> From: Dongli Zhang <dongli.zhang@oracle.com>
> To: <netdev@vger.kernel.org>
> Subject: [PATCH net 0/2] tap/tun: harden by dropping short frame
> 
> This is to harden all of tap/tun to avoid any short frame smaller than the
> Ethernet header (ETH_HLEN).
> 
> While the xen-netback already rejects short frame smaller than ETH_HLEN ...
> 
>  914 static void xenvif_tx_build_gops(struct xenvif_queue *queue,
>  915                                      int budget,
>  916                                      unsigned *copy_ops,
>  917                                      unsigned *map_ops)
>  918 {
> ... ...
> 1007                 if (unlikely(txreq.size < ETH_HLEN)) {
> 1008                         netdev_dbg(queue->vif->dev,
> 1009                                    "Bad packet size: %d\n", txreq.size);
> 1010                         xenvif_tx_err(queue, &txreq, extra_count, idx);
> 1011                         break;
> 1012                 }
> 
> ... the short frame may not be dropped by vhost-net/tap/tun.
> 
> This fixes CVE-2024-41090 and CVE-2024-41091.

The respective upstream commits are:

CVE-2024-41090:
https://git.kernel.org/linus/ed7f2afdd0e043a397677e597ced0830b83ba0b3

CVE-2024-41091:
https://git.kernel.org/linus/049584807f1d797fc3078b68035450a9769eb5c3

FWIW, they were as well backported to current stable series: 6.10.2,
6.9.12, 6.6.43, 6.1.102, 5.15.164, 5.10.223 and 5.4.281.

Regards,
Salvatore
