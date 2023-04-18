Received: (qmail 10184 invoked by uid 550); 18 Apr 2023 01:25:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10163 invoked from network); 18 Apr 2023 01:25:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1681781115;
	bh=NLZQz83HHZUiPBum+Xbn3NruQsxqlkQWGj5mFjUq73s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=cBnC5HBaFHHd3+gBTER+5RrgvoQsPomyiWM0xib1G/Cg8pw87TVULLg+Mx/Lq6Jim
	 tsD6J69JUBL7q7+lgctnNYMBPbvGxAz2H805TpkqKX8chIUE//fw2yHyZlS4LGYUv5
	 Y4ABHC6QCbQpuM74pidAUxb7Ncx4/TYzzLTnOd1tyM4wyLWqM9DiW1t1OQLRKbMnyY
	 JxiTCrO7SmUDKmHM36I+6LlWbaFcn0LByF8QU2sullC9VX3INHGCGJCeCrXbJEkiA/
	 lkEiaXdxyULng3nzU9sIhbeXAUoeaLz9Al/D4TEqCpmyVFY7LAApLR/f2CjHaFOMc6
	 zSyR4LxNyWsKQ==
Date: Tue, 18 Apr 2023 01:25:13 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Olivier Lamy <olamy@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20230418012513.GF1655348@millbarge>
Mail-Followup-To: Olivier Lamy <olamy@apache.org>,
	oss-security@lists.openwall.com
References: <9cf178b1-ac5a-111c-0784-622d3743845d@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bGR76rFJjkSxVeRa"
Content-Disposition: inline
In-Reply-To: <9cf178b1-ac5a-111c-0784-622d3743845d@apache.org>
Subject: Re: [oss-security] CVE-2023-28158: Apache Archiva privilege
 escalation

--bGR76rFJjkSxVeRa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 29, 2023 at 11:29:40AM +0000, Olivier Lamy wrote:
> https://archiva.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2023-28158
> https://issues.apache.org/jira/browse/n/a

Hello Olivier, thanks for contacting the oss-security mail list about this
security issue in an Apache project.

I'd like to suggest that your email would be far more useful if
it included some details like affected versions: ideally, when a
vulnerability was introduced, and definitely, when it was fixed, if a
fix is available. Best would be a direct link to a patch in a source
control system, or attaching the patch directly.

This particular email has very few details and no references for a fix so
it is very difficult for anyone to take concrete actions.

Here's two recent postings that are far easier for downstream distributors
and consumers alike to use:
https://www.openwall.com/lists/oss-security/2023/04/04/1
https://www.openwall.com/lists/oss-security/2023/03/21/3

I'd like to encourage Apache to use these as inspiration for future
oss-security postings.

Thanks

--bGR76rFJjkSxVeRa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmQ98XUACgkQ8yFyWZ2N
LpdE8gf4kkBnk7HkOuy6C8eqLB/gG2GNK2HhQJAR1PaN5/wH0MaQ13ZG2OXErxG5
LwAbsfNNbKptoe9ZK+DPFMNgT9TyTEA1YS5dwdDUpflxi6Ok1jZjSacu3grE7ibi
XDZFAvEScGFC3Ylx94EXNkW0GaS4IBp5G2JNn6BeNm8ACILfovYACwcDSn++nkaU
NoRtz5MlmHBudrxlloV8Xv1hACogG5VrByMQy9D5mSlLXOu4siCnla7NjH3dhIva
7tXEsNHzMEbVuv/8kMueZJUQyE0Ji4lEtLOwqjhzSKcORvT9V7bzI1034sdjL6bG
bHRfSbJrgnUjIDMQfRhqfTc6ew8Y
=HHCW
-----END PGP SIGNATURE-----

--bGR76rFJjkSxVeRa--
