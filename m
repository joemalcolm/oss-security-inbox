X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["842" "Thursday" "24" "March" "2022" "06:43:07" "+0100" "Petr =?utf-8?B?xaB0ZXRpYXI=?=" "ynezz@true.cz" nil "27" "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" "^Cc:" nil nil "3" nil nil (number mark "        ynezz@true.c Mar 24   27/842   " thread-indent "\"Re: [oss-security] zlib memory corruption on deflate (i.e. compress)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5469 invoked by uid 550); 24 Mar 2022 08:46:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22497 invoked from network); 24 Mar 2022 05:43:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=true.cz; s=xnet;
	t=1648100612; bh=9Nhy6ICF5zzE3cav3zecvbExcz7ZK70fVp6i87NUomE=;
	h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To;
	b=rNWJTX8DsCGkGEvLX7IvWqD1BgrGFP+5nHiM3pBjTpa73ws06jBWKPiJgDNNyPksD
	 NUOfvwfbHQprddcLh1cIbJHEnfMiNz3Jg8uL1/EOmzPZe/n/8b/Fxt1Lr7UpxmM4oZ
	 dAPcwU/n3MrG/OkuFP/Crz8c41ijri1JKvR1COno=
Message-ID: <20220324054307.GA74811@meh.true.cz>
References: <20220324034949.GA25415@thinkstation.cmpxchg8b.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220324034949.GA25415@thinkstation.cmpxchg8b.net>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
Cc: madler@alumni.caltech.edu
Date: Thu, 24 Mar 2022 06:43:07 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] zlib memory corruption on deflate (i.e. compress)
To: oss-security@lists.openwall.com

Tavis Ormandy <taviso@gmail.com> [2022-03-23 20:49:49]:

[ adding Mark to the Cc: loop ]

Hi,

> Greetings list, I was recently trying to track down a reproducible crash
> in a compressor. Believe it or not, it really was a bug in
> zlib-1.2.11 when compressing (not decompressing!) certain inputs.

thank you for letting us know!

> I reported it upstream, but it turns out the issue has been public since
> 2018, but the patch never made it into a release. As far as I know,
> nobody ever assigned it a CVE.
> 
> https://github.com/madler/zlib/commit/5c44459c3b28a9bd3283aaceab7c615f8020c531
> 
> As far as I can tell, no distros have picked this up.

It's mostly due to the fact, that AFAIK it has never hit the release. Mark,
would it be please possible to do another point release with that security
fix included? Thanks!

Cheers,

Petr
