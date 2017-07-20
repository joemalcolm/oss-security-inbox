X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["914" "Thursday" "20" "July" "2017" "12:42:42" "+0200" "Greg KH" "greg@kroah.com" "<20170720104242.GA21676@kroah.com>" "26" "Re: [oss-security] CoreOS membership to linux-distros (updated)" "^Date:" nil nil "7" "2017072010:42:42" "[oss-security] CoreOS membership to linux-distros (updated)" (number mark "        greg@kroah.c Jul 20   26/914   " thread-indent "\"Re: [oss-security] CoreOS membership to linux-distros (updated)\"\n") "<20170720041303.GA4266@gremlin.ru>" ("<9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>" "<20170720041303.GA4266@gremlin.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3166 invoked by uid 550); 20 Jul 2017 10:43:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3130 invoked from network); 20 Jul 2017 10:43:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=4LDj14Y3/1BD0Aiblv
	Xbkg1snIvnVEQKVf5AyBLaWjI=; b=nMibrSJX1uNDDM8fDk1Y2ZvTdPvT4sdTLR
	tzeHB2ccZb3QlGE/ZT4rd6ud4NLJF0bex8YAU/NxIA6/IMC70vz+qYDHpIlHaBcq
	baK5is8ScF1R8TVVYdiJ8Uy3d0M8gU/QU8MZc7GtOZCeq3IpEUBJXuEQRE2CiGQw
	mlUvR7zVCwW/wiMUcBsRR6pINdowiUePV7eYHvngt0j5/rUsuTWMcdw+3o68tbxt
	kwBAmK79BPG/TU+pCWhol/Hx2A0OQxaTTq+pHoF/p6aXDQF+QlmkGo0rJwflAiGr
	gGGFh/t+CYRGHe5FAwqpejbHALCxDm0Xy+y9aYAlRjcyMbCKmU+A==
X-ME-Sender: <xms:KYlwWWBaRvDCNkNE0NUlnAavuQtHKnTURjpfDQG86K8-9qnnowqJDQ>
X-Sasl-enc: Vah+p19Od1l1EieLDAwDc4Sh8LQgdXvsw1+9ieN96nGD 1500547369
Message-ID: <20170720104242.GA21676@kroah.com>
References: <9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>
 <20170720041303.GA4266@gremlin.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170720041303.GA4266@gremlin.ru>
User-Agent: Mutt/1.8.3 (2017-05-23)
Date: Thu, 20 Jul 2017 12:42:42 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CoreOS membership to linux-distros (updated)
To: oss-security@lists.openwall.com

On Thu, Jul 20, 2017 at 07:13:03AM +0300, gremlin@gremlin.ru wrote:
> On 2017-07-18 14:56:23 -0700, Euan Kemp wrote:
> 
>  > I???ve listed each criterion and why I think we, the Container
>  > Linux team at CoreOS, qualify.
>  >
>  >
>  >> 1. Be an actively maintained Unix-like operating system distro
>  >> with substantial use of Open Source components
>  > All components of the distro are open source, as are all the
>  > tools used to build it.
> 
> Prior to any decision to be made, I'd ask you to show the kernel
> patch which you use to avoid escaping from the container to host
> system (Docker allows such escape, OpenVZ does not). Could you,
> please, show it?

All of CoreOS's kernel patches are public, here's their latest branch:
	https://github.com/coreos/linux/tree/v4.12.2-coreos

But what does a specific kernel patch have to do with linux-distro's
membership requirements?

confused,

greg k-h
