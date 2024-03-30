Received: (qmail 3790 invoked by uid 550); 30 Mar 2024 22:01:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7986 invoked from network); 30 Mar 2024 21:48:06 -0000
Authentication-Results: ext-mx-out013.mykolab.com (amavis);
 dkim=pass (4096-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	in-reply-to:content-disposition:content-type:content-type
	:mime-version:references:message-id:subject:subject:from:from
	:date:date:received:received:received; s=dkim20160331; t=
	1711835278; x=1713649679; bh=mPuQYkh4fTyuox24bbr/AwirSjs8uPoCdJW
	7XQ5wfYI=; b=c9j1xJW47lkiGIU1/ZEps5YBLMGS48AY9zjHcp+Me+DvQ25gLkJ
	MLvD+/WvNmoLM/j2bmbVLq8MQ862pxOaPqV1aCXI0c31TxfoRDg4Kb88YKl4WFL7
	FXThGw99eWnvVwlrLnWF/36FLfoKMhd/R6iWiIvYVWuS+mb9JlofgFUmSHNy7lRm
	dXosuamL2jlTgsZ76HYk6O6pk+mvyXVbBhZtr7LeQGvJ2IF9txIDzoJ7w8R9DAVI
	RWP7izBKvLkVxh60PGID3qs76SmT0W2WH2V9bSuB1xWe30IFCzb6CaIs35lJYa5F
	XjiRVSAR3qGes7VqSjIxbuZ11R3vjwH2AKuweKvE6mqOtMQHVsolt/Ry2pudnDfR
	AWQAczQT5HTWqpmXuaKXI+6en7NTqyMwcT+zGqsL9R4NU5OQg4mDbUaUmGLDfKCU
	G+HuA8mBWfkgVid+OxsqurPiIC8BlENiDIPQ9rhp5dQCEcNIMXPoW7BXyoOZF7Dg
	wlcV6k86Dc+RLsPiayMoLw2qX+1ErskltoaR0G8UobclwgvkjYyJnK3XZV6dcftN
	nTSM4HSgN1NRGKBeBJ7ZIC2wrGuxIhcWZcPMAHLskeiGQfDr1ma5qpe+B3GqZHjE
	Sq3BatCnbR3prMyhgo003m6hNIqZXvNLIxDh1R758EHyrxrKeULvrERw=
X-Virus-Scanned: amavis at mykolab.com
Date: Sat, 30 Mar 2024 22:47:56 +0100
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Message-ID: <ZgiIjO-5bBBiSzAR@nihonium>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <20240330194850.cxzmp654onm5q7ds@awork3.anarazel.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240330194850.cxzmp654onm5q7ds@awork3.anarazel.de>
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise

* Andres Freund <andres@anarazel.de> [2024-03-30 20:48]:
> On 2024-03-29 08:51:26 -0700, Andres Freund wrote:
> > The prior section explains that RSA_public_decrypt@got.plt was redirected to
> > point into the backdoor code. The trace I was analyzing indeed shows that
> > during a pubkey login the exploit code is invoked:
> > 
> >             sshd 1736357 [010] 714318.734008:          1  branches:uH:      5555555ded8c ssh_rsa_verify+0x49c (/usr/sbin/sshd) =>     5555555612d0 RSA_public_decrypt@plt+0x0 (/usr/sbin/sshd)
> > 
> > The backdoor then calls back into libcrypto, presumably to perform normal authentication
> > 
> >             sshd 1736357 [010] 714318.734009:          1  branches:uH:      7ffff7c137cd [unknown] (/usr/lib/x86_64-linux-gnu/liblzma.so.5.6.0) =>     7ffff792a2b0 RSA_get0_key+0x0 (/usr/lib/x86_64-linux-gnu/libcrypto.so.3)
> > 
> > 
> > I have not yet analyzed precisely what is being checked for in the injected
> > code, to allow unauthorized access. Since this is running in a
> > pre-authentication context, it seems likely to allow some form of access or
> > other form of remote code execution.
> 
> FWIW, RSA_public_decrypt is reachable, regardless of server configuration,
> when using certificate based authentication.  

Does "regardless of server configuration" mean the server doesn't have to
actually *enable* certificate-based authentication for it to be reachable, just
the client providing a certificate?

> Whether the key type is allowed is only verified after already verifying it
> (sshkey_from_blob_internal()->cert_parse()->sshkey_verify()). Whereas for
> normal pubkey auth, first the key type is checked, then the key id is checked
> against authorized_keys, and only then the key is verified (which also reaches
> sshkey_verify()).

- Fay
