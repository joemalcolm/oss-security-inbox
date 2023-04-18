Received: (qmail 31761 invoked by uid 550); 18 Apr 2023 01:28:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30535 invoked from network); 18 Apr 2023 01:28:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1681781274;
	bh=vNd7lgs8PECFD17V5aajfz5Gxxu+itnSJzPG849cUq8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=AVNu418RwkdmEPV7IvWuNAvrWUVQx4m93feQpDsAWTrJYCR0WyYN+iFByXMW3GxsJ
	 JsbdVsRMrrueOo91U+mcNhIpMOEV7cc0xKTxzkBZiSK4tifaIYhNW0RX9VvIDpfnhR
	 cBGe9Y/g1jEIRQOmvovPZRuuHX4ERUNIYsxk6yzl6sVVGTixUgCkadUzbOh+xbwLHJ
	 GH/6C4YdJE22lMlsTH2wa5rc57PdzbZubz/BLhbG0KJAywA2OgcfjRdNdSq/xvzSJg
	 HgEq3IvSmvdg/GZ+PqG2t7V+OD5D4vkD2BSfJ9sbbvewN2+/TIkks5sIYqE2qcREHT
	 jqKsaENB60qXQ==
Date: Tue, 18 Apr 2023 01:27:52 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: Jacques Le Roux <jleroux@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20230418012752.GI1655348@millbarge>
Mail-Followup-To: Jacques Le Roux <jleroux@apache.org>,
	oss-security@lists.openwall.com
References: <8a4746bb-6c19-dd80-10ca-9aa2b87d605b@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nEsDIrWrg+hrB7l1"
Content-Disposition: inline
In-Reply-To: <8a4746bb-6c19-dd80-10ca-9aa2b87d605b@apache.org>
Subject: Re: [oss-security] CVE-2022-47501: Apache OFBiz: Arbitrary file
 reading vulnerability

--nEsDIrWrg+hrB7l1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 10, 2023 at 09:21:11AM +0000, Jacques Le Roux wrote:
> https://lists.apache.org/list.html?announce@apache.org
> https://ofbiz.apache.org/download.html
> https://ofbiz.apache.org/security.html
> https://ofbiz.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2022-47501

Hello Jacques, thanks for contacting the oss-security mail list about this
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


--nEsDIrWrg+hrB7l1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmQ98hgACgkQ8yFyWZ2N
Lpfx2wgAn3hOi7xDQqW+ZwWTWSNTQzz4y5/xyPxipGcLaux+bYbHJUQ7L4R7sklz
2/yr/ESwBAlYyg5uAugmUjACaqS8CVBaozCUdaWNJoJfIgjcI2A5drhH4am9f3J+
shOVEjv1kwQnv+IknXgU1dMa4/oU1mR4apjn5qUCMIU3WlrBi/ioGsRtIjcz4iiB
Fcajsv5vPI4FsYgegbjtKI/jOuqVxl7vG59sO6Yl2RouBF+f+UehnH8EG2mm1QEd
aSzkJbi6QXkcuM7pFrykBErRmUAwMsAJAvlTsHUVHsC8pL/q84Plesh75RySyHp4
h9Rd+zVDGEzeXztTPINTYWLN1MYk4w==
=r1Mz
-----END PGP SIGNATURE-----

--nEsDIrWrg+hrB7l1--
