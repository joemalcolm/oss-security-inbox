Received: (qmail 26016 invoked by uid 550); 25 Jan 2025 01:47:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32578 invoked from network); 25 Jan 2025 01:24:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1737768279;
	bh=/Tu2syLLjv2vF8CBoQpBYtMJXK4zQeORzuU+jKQUaWI=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=hcA+8UA5h5AD8GzSOZtsyzq9ZE5cZijBPvyx3mondczpuqfRmSP+JTJQe++8etOV6
	 +FhBImWhiQzC98GZXzkXBllcOHnufTu3iQyrgfMDu4nud4doTG4N8dUrWpFqN3cSqB
	 dxQtZiuWPg89jf0xJVM1cnfipNMlvJ7aOakkI50PnasqaL2jfIIK6NvA59ziIA8dLu
	 ojz1JpfMaysmzS9+Sua4moTxN3fJqeQqRwxiwW6AwcRGJMAdHiMlabswYXfLJfbGX3
	 z3YScblVxLJt0sNMUQD+kS3SBnibraSWPhQ/qdT/Ryvt2zz6xV2n6uawnYws/OT5Xz
	 Mv8U5ydXSobGA==
Date: Sat, 25 Jan 2025 01:24:36 +0000
From: Mark Esler <mark.esler@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <Z5Q9VKUg_v3MBrmh@aeon>
References: <Z5DF00lM-3Q36mhh@kasco.suse.de>
 <2025012206-remember-glare-da7d@gregkh>
 <Z5D-Io-ch6YXKAAn@imap.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ns7K60e17n8IXe2z"
Content-Disposition: inline
In-Reply-To: <Z5D-Io-ch6YXKAAn@imap.suse.de>
Subject: Re: [oss-security] issue with stuck Mitre CVE requests

--Ns7K60e17n8IXe2z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 22, 2025 at 03:18:10PM +0100, Johannes Segitz wrote:
> We're not empowered to do this. We are a CNA for code that we own (e.g.
> zypper), but not for arbitrary open source projects.

The text of SUSE's scope [0] is similar to Canonical's [1]. We
understand "All Canonical issues (including Ubuntu Linux) only" as
including all software we distribute. It does not require us to be the
author of that code.

Mark

[0] https://www.cve.org/PartnerInformation/ListofPartners/partner/canonical
[1] https://www.cve.org/PartnerInformation/ListofPartners/partner/suse


--Ns7K60e17n8IXe2z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE0ZC278nRi4l3b3GjszvZgG6FIMYFAmeUPVIACgkQszvZgG6F
IMYFUg//YCJa1kM0LaFmoMTdM31Z29Djh4UPwgzUfnlG0aADD5IgXJvzddiVUzLl
pAKAgdnS1HeWbk26cI77vRsU76esr3cghObwiHCVSR1H8TGYjIOR5zXsTb+DkYNG
owhNoMz+WYWIDFASopJtFxpeZnKYULsz82DeoD766D3VOkiORh4tXWiuxwzEKnua
N3EREYIuE3bP1ef8J9hO1Cb7q2pWgyX5WBxXePXIvwUHJ2xEsKYxx7btitPnwa79
BFFQBvYzjH4TH8hW5lWe3dBRtPgZ3HIcVvJaoWdmf6pZp14zbaZAO7bOe0qORW/B
Vl29wwztEvTtoJ7YCkhs9X7YDTX1XpRRYmz1egcJ3Op2pCULafUTDdW6wFgyMidO
GQCC9dBV6y4q8qgTAiDf/4/4s4NdiTyBdSKAEGQqaddFVc/8UmITF9iyK06ccGS2
XTErn9xgYiJgHrn42uysWrjphbUR8w5AZPGgJW4e9l4kXpuXvsmoRMZ9JBan4xJ6
aGiOCo36aQl03VqpFOq+g2QsJuuEozG0vusFqONPSv9iiQzsQLf8Nm5iJpiv+5iw
mtA2hr3KkPq1WL3OZctl5/JcY3UsnRf9aQhJsGf+54I5ncAUwWaoJnCcVtUsKqec
zpcVv2JV4hPat4temh9VBxzGEB9Airlm8Aq4vnAaVEwSaNFAFfo=
=7Mou
-----END PGP SIGNATURE-----

--Ns7K60e17n8IXe2z--
