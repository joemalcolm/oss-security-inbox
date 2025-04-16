Received: (qmail 10107 invoked by uid 550); 16 Apr 2025 22:59:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3902 invoked from network); 16 Apr 2025 19:05:46 -0000
Authentication-Results: srv1.dorfdsl.de; none (SPF check N/A for local 
   connections -  client-ip=2a01:170:118f:2:a6aa:e95c:e6ea:a981; 
   helo=[IPv6:2a01:170:118f:2:a6aa:e95c:e6ea:a981]; 
   envelope-from=mm@dorfdsl.de; receiver=<UNKNOWN>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dorfdsl.de;
	s=default; t=1744830336;
	bh=Knz8Nha5FFFKo3YgDUbVcxzrcSppWZ2Ep+swUI7Tz1A=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=RQm3M2DK1785Z3eVOHPLoAm7dDTitxpDucUr+UFWI8zrvTVPp1IHUk4sZG0l5jpb7
	 FJNfbIkXABsgMUXaSMCti5PenuOWJsKpVeLQqdGrT1r7eOad1AN+zCm5CaOpILYDUp
	 09QICYes707I3xyNUgWGUer1VPCK2hhDt2pgUezxGWHyT8ARcds2AO9Qd5hVBaLDBI
	 Cu9V6PQaB8XiKEabdGjRrZD187Xd28JpyUvF9ZMWOjLQcFJB4BKUp75wZ55appw0+7
	 xdWTyN719s/nZ1tCz1+xSEdDROhnNT8f04G79PQgY3naimNSwFHwvkbSCY2dZr4buN
	 IUYT7InP147Kw==
Date: Wed, 16 Apr 2025 21:05:35 +0200
From: Marco Moock <mm@dorfdsl.de>
To: oss-security@lists.openwall.com
Message-ID: <20250416210535.5173a7ef@ryz.dorfdsl.de>
In-Reply-To: <ebb379a4-03d6-491f-9e93-fc724f597a81@web.de>
References: <ebb379a4-03d6-491f-9e93-fc724f597a81@web.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE program averts swift end

Am 16.04.2025 um 16:57:20 Uhr schrieb Rolf Reintjes:

> any comments on this?:
> 
> https://www.csoonline.com/article/3963190/cve-program-faces-swift-end-after-dhs-fails-to-renew-contract-leaving-security-flaw-tracking-in-limbo.html

I don't see a real use-case for such databases - especially if they
consume that much money. I subscribe to the security mailing lists or
newsgroups for the operating systems and software I use and install new
versions immediately - if possible automated.


-- 
kind regards
Marco

Send unsolicited bulk mail to 1744815440muell@cartoonies.org
