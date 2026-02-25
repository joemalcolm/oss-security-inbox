Received: (qmail 19484 invoked by uid 550); 25 Feb 2026 16:42:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14261 invoked from network); 25 Feb 2026 07:42:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dorfdsl.de;
	s=default; t=1772005357;
	bh=CL6zt5d2FykIMfg9Yvnj26g1qwAxBYRA5aM1mkcDnKg=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=v+qUubhprxWzQd7GgfrvH/TMpwEBRf/eA3au5M+P1XTga2SUYRd5dXpH+7NdU8PV4
	 0ucfKhnilS1UglhATJckN1TfCwuVMzHErYQPxBoYx2+XvYG4eG0/EUNGtW+jfLX5A9
	 FQ7tJ7X6CqckOfNBr68euC9xrhGj7tJapi7A3jxlAi8dmr9XhgrQrrvRcTmx/WdYN0
	 PFOCXPnldyfcVL09rECpBFP9iuoFj1oFo/u8CHlMHIA8qJOTxuabFyEPYCW+ZOV6m1
	 iRSMzq0e3VfUvBbJWxnq3bfopbwUJ636Hs5PzNeEcKNFAn795nUAjRcIqPocEj4vzX
	 nwc0AOJxowDtg==
Date: Wed, 25 Feb 2026 08:42:35 +0100
From: Marco Moock <mm@dorfdsl.de>
To: oss-security@lists.openwall.com
Message-ID: <20260225084235.288d26d1@dorfdsl.de>
In-Reply-To: <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
	<20260206172730.GA12303@unix-ag.uni-kl.de>
	<877bso8mhf.fsf@josefsson.org>
	<20260224011702.27987-1-justin.swartz@risingedge.co.za>
	<B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
	<27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; i686-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: Telnetd Vulnerability Report

On 24.02.2026 05:05 kf503bla@duck.com kf503bla@duck.com wrote:

> Who uses telnet anyway? It's deprecated. Everyone uses ssh for any
> kind of remote access.

In certain situations telnet is still being used, because it is
supported on a wide range of systems, regardless of key (exchange)
algorithms or hash algorithms.

It can also be used in conjunction with a secured tunnel (e.g. stunnel
or IPsec) to provide a mechanism against eavesdropping.
