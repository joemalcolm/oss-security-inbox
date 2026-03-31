Received: (qmail 5408 invoked by uid 550); 31 Mar 2026 16:31:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18427 invoked from network); 31 Mar 2026 07:29:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metaways.de; s=dkim;
	t=1774942145;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=G2N/79PqJ228zybYSxVkSGOMDhtPlhNn6md2ucL+DIQ=;
	b=bFSJfXyRSt/CfqRkRQPgMg6Sjaw6x42VO24U0fDuCaN1cMu+NIyYG5d0qlZPOXH8Ky4FUN
	5m/ITZCO8iegHsWngNBsXGz2+cZnv/mUUNchcdNEY47D3A7XMkXNkwvApbVjyM+wNgUC98
	j8U5eN+fGLzlqBu7gmarbCg7+R6xGbM=
Message-ID: <9530f382c403e04ed2644422de46beba48c28ceb.camel@metaways.de>
From: Michael =?ISO-8859-1?Q?Stra=DFberger?= <m.strassberger@metaways.de>
To: oss-security@lists.openwall.com
Date: Tue, 31 Mar 2026 09:29:05 +0200
Autocrypt: addr=m.strassberger@metaways.de; prefer-encrypt=mutual;
 keydata=mQINBGYVNR4BEACz0Rd3qS6I9k9JpTlG1GVaQpBkrzMC5eLlQ+LdS89Nv05v+0xIN/68d
 dn1h8nwr386T17k96DN5lUbrSSqP85j2nZj1cldCvoPsk6KX0r+zLKNN8osdFb/QKaAeAoKt22qGd
 pxoQ6OfOVQIUC8IGMgcH4vLqiRV+MI+VteYZ+A50Fbf3aUsiLBIGlk/R5Mn9fjKeTlaa0nJYNq1Pj
 O/cTAjBPsqEJDdr0bK6xACGib9bxV9gzJyGMcEuH18ncMgTFhUXHtbKAHw7tg0ELUp2zEt0B+zC06
 5TkXHmzhBc8kRkio+dB+3W0bNwiwVu1ovagFcbcKIvGArYTqdpTSOD2KWxN5I/p42JS3PyrqZBll5
 fOZmsea1Y+pbMbJpfAfaWFrJVM4lH3utMsPWLWGi1BOWvbpVX0WzWJ8Z3+4Oaq9Og20PFvl4nRbNq
 jy6LTxuL16j670G4qpZPvrQcq4m5UzGkUnL2w5yTyGvqpc2k33mUhZHdJA1D/FX1eLf1187ZTwxrf
 +EDxd6/3fOEOm04BgnAoZs1+C7Rl7QkI06lQwjgtd8iTg1jRc0yRPmFCbqmLNl1k5t4i3Z/AUYXB4
 w/jRCtHyMwwM8fsDz/WmJ8U946GaNAbPl+iZcvcWYl3c7SOCIPoZpoRw2I5UazkIbal6pjZcocRNr
 8b6kGDXBJKV3QARAQABtDFNaWNoYWVsIFN0cmHDn2JlcmdlciA8bS5zdHJhc3NiZXJnZXJAbWV0YX
 dheXMuZGU+iQJRBBMBCgA7FiEETgrNRSoOW19c/s0983pDvbf0q1QFAmYVNR4CGwMFCwkIBwICIgI
 GFQoJCAsCBBYCAwECHgcCF4AACgkQ83pDvbf0q1TpRw//enaEGlmqi9Ti3O5SsrG5wglESUENRFmT
 JnPRmoIpqRl5Prk6J2kD/fiH7TdCwOt5KoPNNAE0wjUiO/G37TGYlTpZeIgoj8r8BbHy/jsC5fo70
 Z+yf4VgFDk7Lg5qz0co1QdAv1+MpS935sbLqkG1uBwZhNRnBSGNQIpHoQW8NefHhxwvQLSRu7CFf3
 wb9OXgDpHttmcx6VaknJC8BE6l0EonCm24iZ3M8rbsl3wifVFBVLp4uV9FlYp83ciM2bbtNWmRFbZ
 L7p9vZFg5mBKbNGcBo2SHrgTplkZIHFl3D2pOlaP+bwWw94HPmg9O3e2o+KX6dpA3e5fR3F38Yu1+
 q4Rz1x1k41rr9LftBBeYRr/6KsmRYxyLSsojfRpgnSQyTAjygU/C+60K7edYIcylmkcCbTfeeqPMj
 IB7dIAjPwJ6FBlLemYaRp/SyBqKTAdplmCJOOEF7n5r3mIuNym5Dv73QHnR+nEuVKHniz1SVNwGEp
 LcIbzo3ECOy+yiXrG/vMnsegmbjE/tBHcXXxQAYgImY32MxKo+rtl1MY9hbK8fR5Y5ZOQomqiEcfd
 HEZqtnyd7c3dNXJeRkAZCZcqrRrOniO6jBLFbMkO3IE371rLfTzKUWsyfB6SNbZjF8lg0FOWxsytm
 P2+rT17Crz8toe5jdP4WW34yIvFFyq392ns=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
Subject: [oss-security] Axios Supply-Chain Attack [v1.14.1] [0.30.4] --> plain-crypto-js
 [4.2.0][4.2.1]

Hello OSS-Security,

since I haven't seen yet a post about this: There was a Supply Chain
attack targeting the npm package- axios.

Axios is a widely spread and used Javascript library. Some more
discussions are happening in a github Issue [0]

=46rom HackerNews[1]:

> Users who have Axios versions 1.14.1 or 0.30.4 installed are=C2=A0
> required to rotate their secrets and credentials with=C2=A0
> immediate effect, and downgrade to a safe version=C2=A0
> (1.14.0 or 0.30.3). The malicious versions, as well as=C2=A0
> "plain-crypto-js," are no longer available for download from
> npm.
> With more than 83 million weekly downloads, Axios is one of the
> most widely used HTTP clients in the JavaScript ecosystem across
> frontend frameworks, backend services, and enterprise applications.
> "This was not opportunistic," Kurmi added. "The malicious dependency
> was staged 18 hours in advance. Three separate payloads were pre-
> built for three operating systems. Both release branches=C2=A0
> were=C2=A0hit=C2=A0within 39 minutes. Every trace was designed to self-
> destruct."

There exists a great write-up from  @joe-desimone
joe-desimone with a script to check if your machines are compromised
[2]

Some other OSS software that have automatic dependency updates of
semver fix releases may have executed the install payload in their CI
worker. One quick example i've found is Authelia [3]

I would guess there might be more auto-merge Pipeline that have
executed the payload.

Sadly we'll see those attacks now more often :(

Kind Regards
Michael


[0] https://github.com/axios/axios/issues/10604
[1]
https://thehackernews.com/2026/03/axios-supply-chain-attack-pushes-cross.ht=
ml#:~:text=3DUsers%20who%20have,is%20as%20follows%20%2D
[2]
https://gist.github.com/joe-desimone/36061dabd2bc2513705e0d083a9673e7
[3] https://github.com/authelia/authelia/pull/11597
