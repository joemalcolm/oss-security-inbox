Received: (qmail 1240 invoked by uid 550); 3 Nov 2022 18:15:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1220 invoked from network); 3 Nov 2022 18:15:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sciops.net; s=20210706;
	t=1667499215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=R47DerD3P1wUfUri+gBDmJginokAeQfIaShPoBNkJQs=;
	b=bdCS3PiZQh5DQ9v4Pxb0Yzgs2WBvOlWD+RhfWjsr4Km2pZvc7HbtkIbMtPZ8CmNX4ekTj7
	p1+JQejUb0Pz03FAhtEOiCxINZpk698Tc9vvFX8CASuhKsJoHdq/aBuDx1ipC73LzxuNzC
	Ig4QuNgnIV0F4VdGKGrPLn4jK4cqC48=
Date: Thu, 3 Nov 2022 11:13:35 -0700
From: Kurt H Maier <khm@sciops.net>
To: oss-security@lists.openwall.com
Message-ID: <Y2QEz7/6u65wE4cd@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20221101170833.GA10470@openwall.com>
 <20221102150921.3ab3f2d0@computer>
 <Y2K1yOB7748iGI2P@wopr>
 <tk0n6j$10pr$1@ciao.gmane.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <tk0n6j$10pr$1@ciao.gmane.io>
Subject: Re: [oss-security] Re: OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

On Thu, Nov 03, 2022 at 03:36:51PM -0000, Tavis Ormandy wrote:
> 
> Hanno and I have contributed months of programmer time on openssl
> research and produced a ton of CRITICAL/HIGH issues over the years, not
> to mention nss, gnutls, etc. What you're looking at isn't Monday-morning
> quarterbacking on an unrelated list - this is active prolific opensource
> security researchers discussing their opensource security work on the
> opensource security mailing list :)

I'm aware of your and Hanno's work.  In the past it has not appeared
ex-post-facto in response to a thread where someone is trying to guess
which programming language theory would squash the bug.  That's why I'm
expressing confusion.  Feel free to ignore me.

khm

