Received: (qmail 22064 invoked by uid 550); 26 Sep 2023 13:00:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17496 invoked from network); 26 Sep 2023 12:55:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1695732930;
	bh=NN20T0hw/BlHmZOiu3E5/x32+bUuRJ7UK4FhTsvCdcY=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=JbBMMbd9YgVAz0N2Cmc2Q4uBtEQNQX+GcQZlYZOGQRNafTsVqglAJfDGU6y7AqicR
	 DWyOJV/tG/uAUOwWmbH3WDijEmltM9oZJwarYuyIz3KluUltPk9Ch+CPmZuMsjO/aW
	 NddkBM8yAXFZi9VWfgRgc4Rgc6jHdZcxT+T6At5LbCOW05ja0mXO7HunOJDx8vVb7U
	 XpBkFc+SHKTzZ5opQtwXkq3LUtDCL8f53QMu4C/AtHXsLvC1mDvddYoxfXD4g35EtI
	 39X5y5Q9KzThfSLnqsQ0Ym1zXIf4M4Rv55AK/B1Cj/yLoFCUZAuoMCDyxd27qodBax
	 4rRDl38tdzOpQ==
Date: Tue, 26 Sep 2023 09:55:26 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <ZRLUvitwwOp190UE@quatroqueijos.cascardo.eti.br>
References: <udifco$gpb$1@ciao.gmane.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <udifco$gpb$1@ciao.gmane.io>
Subject: Re: [oss-security] mutt 2.2.12 security update

On Sat, Sep 09, 2023 at 07:00:40PM -0000, Tavis Ormandy wrote:
> FYI, a mutt update that fixes a crash on header parsing:
> 
> http://lists.mutt.org/pipermail/mutt-announce/Week-of-Mon-20230904/000056.html
> 
> Tavis.
> 
> -- 
>  _o)            $ lynx lock.cmpxchg8b.com
>  /\\  _o)  _o)  $ finger taviso@sdf.org
> _\_V _( ) _( )  @taviso
> 

These are CVE-2023-4874 and CVE-2023-4875.

Cascardo.
