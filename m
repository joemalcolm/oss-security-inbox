Received: (qmail 17410 invoked by uid 550); 30 Apr 2026 01:16:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9780 invoked from network); 30 Apr 2026 01:14:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1777511674; bh=sxKJA3MKJHCejNi72GgE8yLw3pDIJxKMVlQTZiFAg3I=;
	h=Date:From:To:Subject:Reply-To:References:In-Reply-To;
	b=DXwBVKk8X68Bb5vHz0iVwxhsuEp05fULU8EHp0K/buVu+XgzAY1JO2mKFgOFdrgpp
	 gl2Q1wx3R7LT5zjk3Q4Ov90qmaq0RYk1+TJ353YoUyHSJ1hCk8Lj1R9MATmTy65GGE
	 PBF2nbwUqrAjSnEP9JFMAy4Da0RJmMkIb8dlTCOM=
Date: Wed, 29 Apr 2026 21:14:34 -0400
From: Zube <Zube@panix.com>
To: oss-security@lists.openwall.com
Message-ID: <afKs-tphZDvl3GIX@panix.com>
References: <afJorKIje4O6dXbH@netmeister.org>
 <871pfxpf0v.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871pfxpf0v.fsf@gentoo.org>
Times-Square: Two Math Terms
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

> > # echo "install algif_aead /bin/false" > /etc/modprobe.d/disable-algif.conf
> > # rmmod algif_aead 
> 
> Brad Spengler has been pointing out that this won't work on a few common
> enterprise kernels where CONFIG_CRYPTO_USER_API_AEAD=y (rather than m).

An initial test of adding:

initcall_blacklist=algif_aead_init

to the kernel command line and rebooting seems to block the exploit.

Cheers.
