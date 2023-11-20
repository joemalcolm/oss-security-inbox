Received: (qmail 23745 invoked by uid 550); 20 Nov 2023 13:39:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23724 invoked from network); 20 Nov 2023 13:39:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1700487547; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4gU7YXvF7mHQa8T9jNDII+JjWa1BL6UVCxAdb1KZcs8=;
	b=l3L8a7p8USUEJAat43UfSizsAgZ3ax+l0fSK38z59IB7WDYlYZLuDXm32ph7qeJehgHPko
	rJufkR29ZJkZ9Y58Jljx1kFeEpcIkafqsFsJ7W+YSIkI4zHy3MfjbOft7p62aOYgoIKobC
	Uwjtl7vpjYaDExDc4caYe24GaXGq0M0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1700487547;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4gU7YXvF7mHQa8T9jNDII+JjWa1BL6UVCxAdb1KZcs8=;
	b=sJtb0RzqCcfOz7r7CqcuX3R2PoDj/weyD4j4RBhHQmQneOvyetbDr41MdcViXkFs7nDVRn
	UZ8jcXB38NHf+jDg==
Date: Mon, 20 Nov 2023 14:39:02 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZVthevPKLmczR1-B@kasco.suse.de>
References: <ZVc0QDRY04pR81cs@kasco.suse.de>
 <CAB=ivF-hcDEN3_tXk+4rUUwXpVAKYcmt+efkUpGgedPiA4CDyg@mail.gmail.com>
 <ZVn7eWAIy-zhDFJ0@dojo.mi.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4cQ+LGHrtmTk1mu0"
Content-Disposition: inline
In-Reply-To: <ZVn7eWAIy-zhDFJ0@dojo.mi.org>
Authentication-Results: smtp-out2.suse.de;
	none
Subject: Re: [oss-security] hplip: security issues in `hpps` program due to
 fixed /tmp path usage in prnt/hpps/hppsfilter.c

--4cQ+LGHrtmTk1mu0
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 20 Nov 2023 14:39:02 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] hplip: security issues in `hpps` program due to
 fixed /tmp path usage in prnt/hpps/hppsfilter.c

Hi,

thank you both for your suggestions. I just reached out to
hp-security-alert@hp.com about this.

There are a couple of other hplip issues I know of that have also been
left unattended for a long time that I mentioned there as well.

Best Regards

Matthias

On Sun, Nov 19, 2023 at 07:11:37AM -0500, Mike O'Connor wrote:
> [removing security@hpe.com from the Cc:]
>=20
> This is for hp.com product security, not hpe.com.  HP and HPE are two
> separate companies, and HPE isn't the printer company.=20=20
>=20
> To report a potential security vulnerability with a HP product,
> contact: hp-security-alert@hp.com
>=20
> Both HPE and HP are CVE CNAs.  Here's HP's CVE CNA information:
> https://www.cve.org/PartnerInformation/ListofPartners/partner/hp
>=20
>=20
> HTH,
> -Mike
>=20
>=20
> :Thanks for making the community aware of this issue.
> :
> :Perhaps security@hpe.com can help to route internally to get a CVE issued
> :and find the appropriate owners to fix.

--4cQ+LGHrtmTk1mu0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmVbYXcACgkQFMQFyXGS
NVPYhg//QEn5KCce+lGhaO405OTIlaS8X/iUJEo3gBmEOtqA0zGi9oK4u+2ls9sA
wOZPuQgeuK5DoiFsbU+tIkMcLli/RvQtFPtwluXVwylDiQCNzIGF08te8lXCaMZ8
WFXtSqRD0rsefgbpPPx+Pa1IcET4q8zQQ6Jd0GAS8yTNjJe8d90xf9XPT3t79dBU
ni4K4vU4bC5phJnvma/5IhlCyxR5r1y9Wk5CL7sMCf1JH9KbRezTNEh1nvNwGB8L
OTKuPBZpjEk/LWc+kgWOeJz6If16HcZAwEYP5WiKV7fLBGZt+MtTbhoTYeygvrZK
ToNNJ+ziqWx8wm1ItYEL2Tuk8peW31+cR64NwEhyUp1uQmb/2a1tjIDm3pl2Hpoj
pxM8UuXmntW3jRtpST37Zc1K8cgtQstpu9yxqq1PGH3TDNNPVaSByx5G6LMvxAI7
Pgu52onVb92sRdSNfmjy4J7wGD7yGy29+XYP+nDVMlevZxw0ZHsLV2KP79li849/
+SUGwTGAU0N2YrJcn7uP6Y98kDCHaLldTI7aSd0aJAXUGZlokHF1r9IByMFnRJsd
gsZW0cmLT2F4J0XTagyVfSlsT2r2PmjnAgCTE9RR6/h1Ho1sFjRUSYxXvZ1K2+4m
tZSc0R+2R0/ekGGB8gHFPyo4MAmOOF/warL6spIKaxpmK26xVFo=
=FdRZ
-----END PGP SIGNATURE-----

--4cQ+LGHrtmTk1mu0--
