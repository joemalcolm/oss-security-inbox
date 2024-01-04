Received: (qmail 3961 invoked by uid 550); 4 Jan 2024 10:23:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3943 invoked from network); 4 Jan 2024 10:23:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1704363888; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=on29loicd+1e3cI9H0PokuziOc2PQO2HRqeIF2gUwfY=;
	b=wtXRDNeknns03yA4xIJG5al/vCeb1ZrUQYSR4CJQyMUcS9ZJ11yWTN8x+xpUQlbKZGUuEb
	/9fMpLYtXZHAgBHjt1/I0CNzeEIPd28FjZgenDXrzXiuIuo5M8fbmnI4aAASRzynL5oQWG
	TwXHR4bvkSOV6BRlkB0rDQfgk0ttmRo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1704363888;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=on29loicd+1e3cI9H0PokuziOc2PQO2HRqeIF2gUwfY=;
	b=nxx13qfF+mSgM+DrjZAA2t2n1eKNYpkRvsV//Q3+wjPjnY83/pbzezOD0+g0nxO/l/YVQR
	kMHxo7U6qVH6YuAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1704363888; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=on29loicd+1e3cI9H0PokuziOc2PQO2HRqeIF2gUwfY=;
	b=wtXRDNeknns03yA4xIJG5al/vCeb1ZrUQYSR4CJQyMUcS9ZJ11yWTN8x+xpUQlbKZGUuEb
	/9fMpLYtXZHAgBHjt1/I0CNzeEIPd28FjZgenDXrzXiuIuo5M8fbmnI4aAASRzynL5oQWG
	TwXHR4bvkSOV6BRlkB0rDQfgk0ttmRo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1704363888;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=on29loicd+1e3cI9H0PokuziOc2PQO2HRqeIF2gUwfY=;
	b=nxx13qfF+mSgM+DrjZAA2t2n1eKNYpkRvsV//Q3+wjPjnY83/pbzezOD0+g0nxO/l/YVQR
	kMHxo7U6qVH6YuAA==
Date: Thu, 4 Jan 2024 11:24:46 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZZaHb6VD8pBjxDLr@kasco.suse.de>
References: <ZVc0QDRY04pR81cs@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QdVGnym2pqf/esA+"
Content-Disposition: inline
In-Reply-To: <ZVc0QDRY04pR81cs@kasco.suse.de>
Authentication-Results: smtp-out1.suse.de;
	none
Subject: Re: [oss-security] hplip: security issues in `hpps` program due to
 fixed /tmp path usage in prnt/hpps/hppsfilter.c

--QdVGnym2pqf/esA+
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Date: Thu, 4 Jan 2024 11:24:46 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] hplip: security issues in `hpps` program due to
 fixed /tmp path usage in prnt/hpps/hppsfilter.c

On Fri, Nov 17, 2023 at 10:37:04AM +0100, Matthias Gerstner wrote:
> There is currently no upstream fix available for this issue and this
> publication happens after 90 days of attempted coordinated disclosure,
> but upstream did not react to my report.

I was just informed that upstream release 3.23.12 released on 2023-11-30
silently fixes this issue. The fix is based on the patch that I posted
on this list.

Best Regards

Matthias

--QdVGnym2pqf/esA+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmWWh28ACgkQFMQFyXGS
NVPEAhAAgs0cdhHI/ou6816qPMfcPuDstTZdZ7OMSwskQrCpcGaoQfEswtnUXMTI
Ifbkh0boNyEK5PkQ2WQRC/ap783Om/XvH3sFVkf/sYj+stposAPY2LdX7ojJIif0
lafVju4w1XhL08ywNVBa+0hRueg9zWoe/NkogfM3yzBpuFkEWmINdldh5gOYJMLh
qdtQIxqvYt6P5okjKZFD2CkJH/Zz1w/GYCoOEvlof1CMt/dfbaQUrHWdiHNBK8CU
UkKVQgCxhv+ohYqs5cRzz4ALcBStIkcbo0IY98viAN9WQjYXSvI5azgHNo5oVe7R
hQmhHNvQxqLxoc26+W2xYfVLghYuFzlD3rfPkw2fsb4uTawEucWe6WF5Kfpf6MDL
HNl/5D3H6XJciANMBMfsPydLGGH+RTH0MaNQJrFacfqAIlihqgn/XYezGhkBa7Uz
kzFlbxpce1xLerCzvNsCim7YXkggKD8NqDInvoshqsRCgtTx0Z9krwGk2N/rO+ZG
GLj/i87yruLQvEo3LsyhT2hQEDjBDrSR5mRAta7d58rwRUDTR3um5+bhKfUQ7ynI
JyN2nJzcqSb36a9D7URqRd8zKEJhaH9KvzKIagjFZl4HRoOBbxWzzqAxjGT4SsYo
V5mO+Xusl7K2WP5vj8+ObTlfbysbkZoUiulrWQbdQHtUa0eZDSc=
=hFuN
-----END PGP SIGNATURE-----

--QdVGnym2pqf/esA+--
