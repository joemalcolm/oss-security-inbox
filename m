Received: (qmail 12049 invoked by uid 550); 18 Apr 2023 01:29:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11919 invoked from network); 18 Apr 2023 01:29:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1681781384;
	bh=/mbMVJKdo0hKhf+YHhP2HBugG9Qw8AHA5z1A9+PaorY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=uglTxSXoyyk5IiuekODgeS2hTM8wUXUll8x8KAKEqHQ0bblUB9AWMs3fteJuBLzeq
	 w7TqBht1+HdDwmd+uy/cBogKfVoCtKqEQG4v7VCHgxr1MBBX60eDN5XJLO7PVARQrk
	 gZKJEYvsJ/oqGXjyP3ct+qjncDg+rD4kMWaZye6JUCILMNPVtThg9y+EssvBQUppMi
	 8Fq+LgX7Lje2GjlnrF2rhinL4OHGf7aK228yGhrksK22woFgphr8w6p9miuGVIaIwW
	 pquu+1vd1/gtnhIPTkhFiS2bSRgxLwZyJtxYzzOPgcr2pn7Hj8JmvVI+HB0nI7JBJV
	 Ls2jvs0W7Cv9w==
Date: Tue, 18 Apr 2023 01:29:42 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Daniel Gaspar <dpgaspar@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20230418012942.GL1655348@millbarge>
Mail-Followup-To: Daniel Gaspar <dpgaspar@apache.org>,
	oss-security@lists.openwall.com
References: <8b244a2b-5079-02db-135d-f584af57add3@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eWbcAUUbgrfSEG1c"
Content-Disposition: inline
In-Reply-To: <8b244a2b-5079-02db-135d-f584af57add3@apache.org>
Subject: Re: [oss-security] CVE-2023-25504: Apache Superset: Possible SSRF on
 import datasets

--eWbcAUUbgrfSEG1c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 17, 2023 at 09:57:11AM +0000, Daniel Gaspar wrote:
> https://superset.apache.org
> https://www.cve.org/CVERecord?id=CVE-2023-25504

Hello Daniel, thanks for contacting the oss-security mail list about this
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


--eWbcAUUbgrfSEG1c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmQ98oYACgkQ8yFyWZ2N
LpeqiQgAjeOJ0D+gQGQAJbriuuanRK4l71H5YO0w7/JLrXcG4dRZBzcXRxzmfGMT
xI18T9dBwtPRLCEoYz1h8h4/IBCQ/6rIvi6t5hVQC96DCtNLjItUp1u9hHKpPHf/
/B1e0puIkYTN/Uq4xYB6octyh0RbRtrY4DUvIhwDiQiW4p7Q+UxZiYWzwFEkoGu6
YazoO4w25N6Bh+auUDOIUK8TvzcLCYX5oiRdsJP2bBbvsMdCoKA9QLQ9K/9M6VZN
hWU8ubQmprjPPS5JPUVIsEz5T5zrie8d3+zGcqdkWO4Qmvo94IbDadHeECcwB0l5
07CNz7xU7VWFZM1h9SdtjBItARIi6g==
=Yob7
-----END PGP SIGNATURE-----

--eWbcAUUbgrfSEG1c--
