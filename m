Received: (qmail 10221 invoked by uid 550); 29 Mar 2024 17:34:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32231 invoked from network); 29 Mar 2024 17:02:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anarazel.de; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1711732051; x=1711818451; bh=Z5jXD2JRWoyEXxsH5J46l
	7yIVhJocKYJlFugq6X2w00=; b=RclxRtIDjpFENIZDrAPh4JcANf3YjcSLE1Nmr
	oDPENuU9M3DxeZkMu4kKC0WOgH6CiUbz9oh9E0NE3JOQVR5V/ja8gjWUGUsUC8Kn
	CyzUJ/QfSUFoeBiOHcUSrZYjymdShJhgqYuAT4jUJmh2zQLsOV57DXIkgaDaoxy9
	IzQ+n5Rk29d0TvX5/r2FWHzBV2pFBd2uJxca8gG07EKR7O0jt6pQb8iutQdgo6N6
	ZZQexCbJQ6SuZPdYAYrNgEXUfxQj8oHG+hIxP7fz/XxqV+FDZR4kBEWltcnvYqNt
	xbSbZSbPkubTnjGrgGqulNNqD8MYL43GSu1aqIAfzsc3fLJ3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711732051; x=1711818451; bh=Z5jXD2JRWoyEXxsH5J46l7yIVhJo
	cKYJlFugq6X2w00=; b=PUf1P2FWZOBN1Zi7x/FGG9HeXuK2UBMJ+bBsUVFbh3aF
	WxnilxFMI0n21rgE56pYVFZ+A2OfVZAQ8cfdI0epY6FeukIyYNLJxRqxpeKlx4ps
	PZ3Rvl8+OTAOce1g/ccFuXZXX4pi+B0xFSkp3F39k4y+Ehj/TIBAPCil/GOmEBkd
	aP/LZoiVcg35ZAQYow/jchx9t8MifKfT81684OhzYHrLsIQI+XNUQ4O34b+NCkyu
	XQuvSCh6wRcNIQFwx6Hhl99b3K3vJyJ2wrbCALnGzBuA4d+NUgdy7dlz3xPSsm5g
	t+tecPTdUp5gVjauWV5p8c3U0l2NvAL3/TN0rsBowA==
X-ME-Sender: <xms:UvUGZr3sDUbLxwl6PNuNzhC9vHOK8jiBNfZgW-kdxYa0CHUobEuiaA>
    <xme:UvUGZqG20cLZwUUDLObLd9HdkUDoKP7ZBshgjgsWph8mSp0IKQ0ubnYGJBLQYtiXX
    WDHfeaKJz6wJstCSg>
X-ME-Received: <xmr:UvUGZr7AK0_3SEf3doHdelQqiwJon7khXeJpb7s1KvRj2Gfy0p4fGHKpYdQ48SIWp46Dzr9KztC5HM2N_ZyvR9Gd6hgtcOfmOVbXgjXcK5sCy6ZW0fEBNESt5KTf>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvvddgleekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhgurhgv
    shcuhfhrvghunhguuceorghnughrvghssegrnhgrrhgriigvlhdruggvqeenucggtffrrg
    htthgvrhhnpeetfffgudefgefgfeeltddvfedvvefghfdtledtgffhhefgvedthfefgffh
    keegleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvshesrghnrghrrgiivghlrdguvg
X-ME-Proxy: <xmx:UvUGZg0x17z7LF1LJwl6o2slQLwD5GmVaDD_c9m6jkbpG3G1qqn9Cw>
    <xmx:UvUGZuFU8Xft75faFL1EqhImSR4du1chjixqka7hfPK23Q7hDULQBw>
    <xmx:UvUGZh_mVcIf8Y1uD9PqU6I8AVCnxZwbL4E7iGZESph-5mL44ULQfw>
    <xmx:UvUGZrlmhGSA1VGSixsyPYMVqZNgG7YYG7c9BDn05OjfLCMAFpfhcA>
    <xmx:U_UGZgNxbEThK6xJWZlvasnVZ9I-_oJ16A890lOUUPk9ABKXp93-KA>
Feedback-ID: id4a34324:Fastmail
Date: Fri, 29 Mar 2024 10:07:29 -0700
From: Andres Freund <andres@anarazel.de>
To: oss-security@lists.openwall.com
Cc: Alex Gaynor <alex.gaynor@gmail.com>
Message-ID: <20240329170729.27sconsbpz55xo47@awork3.anarazel.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFRnB2UB4p9JHzq_PdibFUHvZdyjF-65Bj2kGuy5ZpG8JtOrNg@mail.gmail.com>
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

Hi Alex,

(I was not subscribed to oss-security and not CCed, so I only got your email
from the archive, not sure if I got the In-Reply-To etc right. Subscribed
now.)

> Thanks for writing this up. Just to make sure I understand the action
> item here: folks who are building their own xz, should switch to a
> release prior to 5.6.0, as those are the only ones known to be
> unaffected?

If you are building your own xz you might not be affected, due to either the
debian/ directory needing to exist, or $RPM_ARCH needing to be
set. Furthermore, if you build from git, rather than the distributed tarballs,
the backdoor code won't be injected into the build, even if present in the
repository. Similar if you build with cmake, I think.

However, I personally would still downgrade, even if likely not affected due
to the above.

Greetings,

Andres Freund
