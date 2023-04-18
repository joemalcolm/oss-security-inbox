Received: (qmail 19539 invoked by uid 550); 18 Apr 2023 01:26:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18419 invoked from network); 18 Apr 2023 01:26:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1681781177;
	bh=1+38gdf9NnaNZjj1icsAf/TtDBxJ2XT04A3GkNV15D8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=qY5hx9FLs1iuiJAS7PIuSm1+8ljUUXG6nWxLQ7uNc5v86c82ehD6bX7UqDl9onxFg
	 LLhB/HzXMJmUiZbNVPpVWHI7B/Y/TcN9dVR+kRxxCeDjcZkYa73zmjJZuFF50shawk
	 qAdEEuNRiuR6Vlw9bQAzWynJc8fMA1+hwHbwgQzHzmxBQnq+XQGqQHBomCiTP5R2HS
	 HFW/VN2G7Cp22I5XRSGKGtSOUF2fdqtfwszM8khzvcwonb7AdjGNdqmRNWh/LiLrWN
	 WDDLFTNyG2Ptv+sK4KhA5mURVrVsahNz9xzIB1JtuG7CZFjMyk7bUGXyI/JVITm5l2
	 cbPH/NQ/bARlQ==
Date: Tue, 18 Apr 2023 01:26:15 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Benoit Tellier <btellier@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20230418012615.GG1655348@millbarge>
Mail-Followup-To: Benoit Tellier <btellier@apache.org>,
	oss-security@lists.openwall.com
References: <b25b13ef-81bb-4d59-930d-a566659f8b2f@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7uYPyRQQ5N0D02nI"
Content-Disposition: inline
In-Reply-To: <b25b13ef-81bb-4d59-930d-a566659f8b2f@apache.org>
Subject: Re: [oss-security] CVE-2023-26269: Apache James server: Privilege
 escalation through unauthenticated JMX

--7uYPyRQQ5N0D02nI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 31, 2023 at 05:28:03AM +0000, Benoit Tellier wrote:
> https://james.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2023-26269

Hello Benoit, thanks for contacting the oss-security mail list about this
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


--7uYPyRQQ5N0D02nI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmQ98bcACgkQ8yFyWZ2N
LpePiwf/Tkq4xJJ//aXkg8acslL61esl6eAGRjhzKarFMA93Mr0xXtvJed8YviCk
oBbJk7ga8W/5CAvNJ8+8U7YZnvNow46d9kF3O+GMPwKp8d0BZo+2J5T00O6qFhiL
RC7fMPJ+ZJJ0yxIgZuHqkR9fr4JaUQ9hfcxtJatqFnDLSgctpYN3pz9Aa/yBjagd
dqmRd8MPEU9dZFNUkRiSYHhTM2Yr8DR1hi424GNS5bPfmd3KSkxp+khkzeqP7tMo
a7DbF6Mk6sPoFKi5duHYReyOvl9D0lGDvrhem9eE8FjlJXr7d4Ie1OlfVnw6m4aH
M/GjAZsol2O2fW/JWBtmpfKyHxrx4w==
=53JO
-----END PGP SIGNATURE-----

--7uYPyRQQ5N0D02nI--
