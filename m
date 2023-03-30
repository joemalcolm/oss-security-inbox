Received: (qmail 14101 invoked by uid 550); 30 Mar 2023 14:29:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15562 invoked from network); 30 Mar 2023 14:08:39 -0000
Date: Thu, 30 Mar 2023 14:08:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1680185307; x=1680444507;
	bh=xCU5fEHc3G/9YSXbd7ZnlVlKsN6ilss43LIolfXwCAw=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=eqaj/LijgyIeF0XTsQ4POHmkYzSSSw18URlaqiLX3u1L7kfxiSUIKEgTY1TfJQ0IV
	 chwvFD5K/C/VLaliKaF372cJ/uojgf1swrHVSLTc7TxAviFKh1yQQMxMFImu6XiRFA
	 W7HbBuTch2d4mH/KlmBTGoT8MudFcQ2rcmoPk/4/CtGD6mDCzy+BZ3+Vl5zrcqEhDM
	 cHeGv5jEe74nXFefYOghcdxTtCKiIUY+wGfrSZq5OUIc+u5PxeZHGL/cyvblgPL3Oa
	 zEUhJ5UgF18SPgWl1iiylgz7wcEKzkV5YJm5/ewOS9TKL7CoTW5Is/6wY3SsldD1FZ
	 +SOCnihD2RRXA==
To: oss-security@lists.openwall.com
From: Jordan Glover <Golden_Miller83@protonmail.ch>
Message-ID: <jwJLRnVfw9qn5wsHzRxO4mCtkAMJs9l7didEzdt2C9UBuFA7Td4ERwLG_9ZVtCy2SyomGMnZAgYJfJAjXhubHz07SaIQwTLmJemznO-W4CM=@protonmail.ch>
In-Reply-To: <ZCSQiSn/4nRls/e+@tautology.pseudorandom.co.uk>
References: <20230329133450.GK21675@suse.com> <ZCSQiSn/4nRls/e+@tautology.pseudorandom.co.uk>
Feedback-ID: 3367390:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] polkitd service user privilege separation

On Wednesday, March 29th, 2023 at 9:24 PM, Simon McVittie <smcv@debian.org>=
 wrote:


> polkitd can only be either trusted or untrusted, we can't have it both
> ways. I think the main thing that's wrong here is the documentation that
> claims that the privilege separation is meaningful.
>=20
> smcv

Is it valid conclusion that polkitd would be better of just running as root=
? That would clear any possible confusion. Or are there advantages of runni=
ng it as separate "trusted" user?

Jordan
