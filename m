Received: (qmail 30360 invoked by uid 550); 28 Mar 2023 20:22:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30339 invoked from network); 28 Mar 2023 20:22:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1680034953;
	bh=zqbUevUePzltnPeno0bsbe7ELtj9Wnih5ZcLXQgu0q8=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=QagAV5zLLHev74PZg0F2xDhgXYJvzioiaqAqVvZs7iCEzxPRDmNJTdWY1mqtqQZUj
	 /Jfkjff1dLT5qnb17qUsIzmMKnTm6ON0ODqN0/dDSwu5R954q1i4Fpip3eKpIEAI3M
	 uqLzE+oJquodQohBHwQn0a50yzwbPDDwQ75Y+rhL5T0Z35Bs8nDFRU5O1QwvflP2h+
	 x+78ZV6lF4poVbd81RE7P9T26KcrdYMMLOvJTlVkT9/3JTW2H4GTSJE8QfIED77LTQ
	 6GNNcK+AeysQmiYZPyvE60D2cYhCd4C69aS8JFVy5jmyH08HBIYAllKYZgSzAP+qq0
	 hcvwXnWNB9hLg==
Date: Tue, 28 Mar 2023 20:22:30 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20230328202230.GB3145972@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAOvp68HCA1VXqCpnM9hMOo=BTCghgXfy85e6QxzUVFsaykiwvw@mail.gmail.com>
 <20230328140022.GA11153@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KFztAG8eRSV9hGtP"
Content-Disposition: inline
In-Reply-To: <20230328140022.GA11153@openwall.com>
Subject: Re: [oss-security] CVE-2023-28464: Linux: Bluetooth:
 hci_conn_cleanup function has double free

--KFztAG8eRSV9hGtP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 28, 2023 at 04:00:22PM +0200, Solar Designer wrote:
> However, we have not heard from Gentoo, who are "primary" on this and a
> couple of other related tasks.  Gentoo, please let us all know whether
> you intend to handle these tasks, or should we remove the assignment?

I've not seen K_F online in any capacity in years. It is time to ask if
we should remove him from the list, beyond just the assignment of this
task. (If you're around Kristian, and we're just in different circles
these days, hello. :)

Thanks


--KFztAG8eRSV9hGtP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmQjTIEACgkQ8yFyWZ2N
LpfIXQf+N45/NaUquVaoB1/2o+vP+UIyHrlPmKibBjFtK749pnEhxDcO2/oTjBVJ
8El+hNpgu7clHDl8sOspXJngYVh4cMiQI1jgalyaFMeVdSHw8tEQtPK8kMHrb8fS
fkNtMU205eSVfRR343X5QtYfBcK6xbe6IzmDsJdLnp/is6HdBZXRs+EGBxQyG9KP
NP7u8vkbkOc/MIeKFxvfR/hW0/GjehAP9I4MuyDF6EmrrA5F2TGoVLNnr1rrcY+U
3tLPf1xWRR/wft5lebMtKdOeQ3rrIm6wS3rS2w70Y4sYw/bzho/mqWcL5O/Y1QMp
0QYvbmh5D9hoRSadlUnyAhTmIKQR7g==
=xAbb
-----END PGP SIGNATURE-----

--KFztAG8eRSV9hGtP--
