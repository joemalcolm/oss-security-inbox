Received: (qmail 7501 invoked by uid 550); 18 Aug 2023 00:20:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7481 invoked from network); 18 Aug 2023 00:20:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1692318046;
	bh=utvpDS5o8Vix478HBV0IkYvdH1PYOpdxOoVGxyPn5fo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=DqAzjned4V34iMUbvE+wF3ZihVIrE9QMugdD7m9JiuLPCptvQ7QyVpqkFJSCwFH+v
	 YhnU5jctawU8LAlgi5S5soOiLvz0z8q2/7weIoHRFdBFuQTrW8R7QqO8R7mi2ZxmVM
	 nDHGNCQU1DLbdC0VD+vPrLs+64Kf5RnVGyA/wC7dcRBhHCxoMNM14gacsan0aH7ubh
	 eism1djmXjnKzPKrjM9QfGxBj2QtI1rQJOaqTlc3zuBGGHquOoapQPvjJSmXW3f+hh
	 F7XzNLiRXtoOy7v6WW0G9W9TIL2zOk8C64d+XkQq3sJgwnh0+cyx1Defpojx7eaBlq
	 Z1XQSktxoxdXw==
Date: Fri, 18 Aug 2023 00:20:43 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Elad Kalif <eladkal@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20230818002043.GA2155861@millbarge>
Mail-Followup-To: Elad Kalif <eladkal@apache.org>,
	oss-security@lists.openwall.com
References: <4d92373c-e3c9-c1ef-56f7-0cfb4cc8b10f@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
In-Reply-To: <4d92373c-e3c9-c1ef-56f7-0cfb4cc8b10f@apache.org>
Subject: Re: [oss-security] CVE-2023-40272: Apache Airflow Spark Provider
 Arbitrary File Read via JDBC

--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 17, 2023 at 01:07:16PM +0000, Elad Kalif wrote:
> https://airflow.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2023-40272

hello Elad, thanks for contacting the oss-security mail list about this
security issue in an Apache project.

I'd like to suggest that your email would be far more useful if it
included details like a direct link to a patch in a source control
system or attached the patch directly.

It is also helpful to know when a flaw was introduced, if this information
is already known.

This particular email has very few details and no references for a fix so
it is very difficult for anyone to take concrete actions.

Here's two recent postings that are far easier for downstream distributors
and consumers alike to use:
https://www.openwall.com/lists/oss-security/2023/04/04/1
https://www.openwall.com/lists/oss-security/2023/03/21/3

I'd like to encourage Apache to use these as inspiration for future
oss-security postings.

Thanks

--BOKacYhQ+x31HxR3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmTeuVcACgkQ8yFyWZ2N
Lpc5MwgAjcr+J/1uZT0gkSfSS90r1Ui5/TIlvABJpsHqbkeW3xv8OI53ZjOYuTl5
CVaQpY5I84gto1T+6f7erdc1Ns2alhtxMNXs+b25lstywHpwPSuemCMFg4rXjoWM
iEqS1S+OfJqT6f5pUQ8xIZBV7H+NSBOEJdvt41SWjpwONgicVIcWrZgWd9OTyYlL
CBsHqVUIm8OASnHjKrM39lq9u5s6lKeuonMNoca2wwVrqU+f1jb+O0oFa1B8OVE5
PKSVpza5RdF9XzS3VpWTWCu/iQWfCrNhVivsR0oAZWjt/62RlhcjbqUUoA01b6ND
50b+JYnJVLWJuiV1+wQayxmBevukAg==
=7ZPv
-----END PGP SIGNATURE-----

--BOKacYhQ+x31HxR3--
